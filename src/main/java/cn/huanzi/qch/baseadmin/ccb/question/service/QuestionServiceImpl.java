package cn.huanzi.qch.baseadmin.ccb.question.service;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.question.pojo.Question;
import cn.huanzi.qch.baseadmin.ccb.question.repository.QuestionRepository;
import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import cn.huanzi.qch.baseadmin.ccb.video.repository.VideoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.*;
import java.util.Date;

/**
 *  ServiceImpl
 *
 * ${author}
 * ${date}
 */
@Service
@Transactional
public class QuestionServiceImpl implements QuestionService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private QuestionRepository questionRepository;

    @Override
    public Page<Question> pagination(Integer page, Integer limit, String keyword) {

        Specification<Question> spec = new Specification<Question>() {
            @Override
            public Predicate toPredicate(Root<Question> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                // 按频道模糊查找
                Join<Question, Channel> joinChannel = root.join(root.getModel().getSingularAttribute("channel", Channel.class), JoinType.LEFT);
                Predicate channelNameLike = criteriaBuilder.like(joinChannel.get("channelName").as(String.class), "%" + keyword + "%");

                return channelNameLike;
            }
        };

        PageRequest pageable = PageRequest.of(page, limit, Sort.by(Sort.Direction.DESC, "weight"));
        Page<Question> questionPage = questionRepository.findAll(spec, pageable);
        return questionPage;
    }

    @Override
    public Question getById(Integer id) {
        Question one = questionRepository.findById(id).get();
        return one;
    }

    @Override
    public Question create(Question question) {
        question.setCreateTime(new Date());
        question.setUpdateTime(new Date());
        Question save = questionRepository.save(question);
        return save;
    }

    @Override
    public Question update(Question question) {
        question.setUpdateTime(new Date());

        Question origin = questionRepository.findById(question.getId()).get();
        question.setCreateTime(origin.getCreateTime());
        Question save = questionRepository.save(question);
        return save;
    }

    @Override
    public Integer deleteById(Integer id) {
        questionRepository.deleteById(id);
        return null;
    }
}

