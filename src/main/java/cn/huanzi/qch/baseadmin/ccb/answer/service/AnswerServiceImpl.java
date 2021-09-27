package cn.huanzi.qch.baseadmin.ccb.answer.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.answer.pojo.Answer;
import cn.huanzi.qch.baseadmin.ccb.answer.repository.AnswerRepository;
import cn.huanzi.qch.baseadmin.ccb.answer.vo.AnswerVo;
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
public class AnswerServiceImpl extends CommonServiceImpl<AnswerVo, Answer, Integer> implements AnswerService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private AnswerRepository answerRepository;

}

