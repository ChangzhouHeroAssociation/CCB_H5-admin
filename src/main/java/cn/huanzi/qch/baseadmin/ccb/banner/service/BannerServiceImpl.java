package cn.huanzi.qch.baseadmin.ccb.banner.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.banner.pojo.Banner;
import cn.huanzi.qch.baseadmin.ccb.banner.repository.BannerRepository;
import cn.huanzi.qch.baseadmin.ccb.banner.vo.BannerVo;
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
public class BannerServiceImpl extends CommonServiceImpl<BannerVo, Banner, Integer> implements BannerService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private BannerRepository bannerRepository;

}

