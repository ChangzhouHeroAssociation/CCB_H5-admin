package cn.huanzi.qch.baseadmin.ccb.banner.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.banner.pojo.Banner;
import cn.huanzi.qch.baseadmin.ccb.banner.repository.BannerRepository;
import cn.huanzi.qch.baseadmin.ccb.banner.vo.BannerVo;
import cn.huanzi.qch.baseadmin.util.CopyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.servlet.error.BasicErrorController;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.Date;
import java.util.Optional;

/**
 *  ServiceImpl
 *
 * ${author}
 * ${date}
 */
@Service
public class BannerServiceImpl extends CommonServiceImpl<BannerVo, Banner, Integer> implements BannerService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private BannerRepository bannerRepository;

    @Override
    public Page<Banner> pagination(Integer page, Integer limit) {
        Page<Banner> bannerPage = bannerRepository.findAll(PageRequest.of(page, limit));
        // CopyUtil.java 将实体类与vo类相互转换。
        return bannerPage;
    }

    @Override
    public Banner findOneById(Integer id) {
        Optional<Banner> banner = bannerRepository.findById(id);
        return banner.get();
    }

    @Override
    @Transactional
    public Banner create(Banner banner) {
        banner.setUpdateTime(new Date());
        Banner banner1 = bannerRepository.save(banner);
        return banner1;
    }

    @Override
    @Transactional
    public Banner update(Banner banner) {
        banner.setUpdateTime(new Date());
        bannerRepository.save(banner);
        return banner;
    }

    @Override
    @Transactional
    public void deleteById(Integer id) {
        bannerRepository.deleteById(id);
    }
}

