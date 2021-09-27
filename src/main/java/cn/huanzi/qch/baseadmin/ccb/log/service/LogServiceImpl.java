package cn.huanzi.qch.baseadmin.ccb.log.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.log.pojo.Log;
import cn.huanzi.qch.baseadmin.ccb.log.repository.LogRepository;
import cn.huanzi.qch.baseadmin.ccb.log.vo.LogVo;
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
public class LogServiceImpl extends CommonServiceImpl<LogVo, Log, Integer> implements LogService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private LogRepository logRepository;

}

