package cn.huanzi.qch.baseadmin.ccb.answer.service;

import cn.huanzi.qch.baseadmin.ccb.answer.pojo.Answer;
import cn.huanzi.qch.baseadmin.ccb.answer.repository.AnswerRepository;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.question.pojo.Question;
import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.*;
import java.util.ArrayList;
import java.util.List;

/**
 *  ServiceImpl
 *
 * ${author}
 * ${date}
 */
@Service
@Transactional
public class AnswerServiceImpl implements AnswerService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private AnswerRepository answerRepository;

    @Override
    public Page<Answer> pagination(Integer page, Integer limit, String channelId, String keyword) {

        Specification<Answer> spec = new Specification<Answer>() {
            @Override
            public Predicate toPredicate(Root<Answer> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {

                List<Predicate> predicates = new ArrayList<>();
                // 查找问题
                Join<Answer, Question> joinQuestion = root.join("question", JoinType.LEFT);
                predicates.add(criteriaBuilder.like(joinQuestion.get("title").as(String.class), "%" + keyword  + "%"));
                // 查找回答
                predicates.add(criteriaBuilder.like(root.get("result"), "%" + keyword  + "%"));
                Predicate[] array = new Predicate[predicates.size()];
                Predicate titleOrResult = criteriaBuilder.or(predicates.toArray(array));

                // 查找id
                if (!"".equals(channelId.trim())) {
                    Join<Answer, Channel> joinChannel = root.join(root.getModel().getSingularAttribute("channel", Channel.class), JoinType.LEFT);
                    Predicate channelIdEqual = criteriaBuilder.like(joinChannel.get("id").as(String.class), channelId);
                    return criteriaBuilder.and(channelIdEqual, titleOrResult);
                }

                return titleOrResult;
            }
        };

        Pageable pageable = PageRequest.of(page, limit, Sort.by(Sort.Direction.DESC, "createTime"));
        Page<Answer> answerPage = answerRepository.findAll(spec, pageable);
        return answerPage;
    }

    @Override
    public Answer getById(Integer id) {
        Answer answer = answerRepository.findById(id).get();
        return answer;
    }

    @Override
    public List<Answer> getAll() {
        List<Answer> answers = answerRepository.findAll();
        return answers;
    }
}

