package cn.huanzi.qch.baseadmin.ccb.advertisement.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.advertisement.pojo.Advertisement;
import cn.huanzi.qch.baseadmin.ccb.advertisement.repository.AdvertisementRepository;
import cn.huanzi.qch.baseadmin.ccb.advertisement.vo.AdvertisementVo;
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
public class AdvertisementServiceImpl extends CommonServiceImpl<AdvertisementVo, Advertisement, Integer> implements AdvertisementService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private AdvertisementRepository advertisementRepository;

}

