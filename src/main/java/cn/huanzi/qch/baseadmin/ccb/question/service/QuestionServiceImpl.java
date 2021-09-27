package cn.huanzi.qch.baseadmin.ccb.question.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.question.pojo.Question;
import cn.huanzi.qch.baseadmin.ccb.question.repository.QuestionRepository;
import cn.huanzi.qch.baseadmin.ccb.question.vo.QuestionVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *  ServiceImpl
 *
 * ${author}
 * ${date}
 */
@Service
@Transactional
public class QuestionServiceImpl extends CommonServiceImpl<QuestionVo, Question, Integer> implements QuestionService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private QuestionRepository questionRepository;

}

