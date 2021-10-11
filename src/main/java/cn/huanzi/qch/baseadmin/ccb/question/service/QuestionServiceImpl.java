package cn.huanzi.qch.baseadmin.ccb.question.service;

import cn.huanzi.qch.baseadmin.ccb.question.pojo.Question;
import cn.huanzi.qch.baseadmin.ccb.question.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.Id;
import javax.persistence.PersistenceContext;
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
    public Page<Question> pagination(Integer page, Integer limit) {
        Page<Question> questions = questionRepository.findAll(
                PageRequest.of(page, limit, Sort.by(Sort.Direction.DESC, "weight"))
        );
        return questions;
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

