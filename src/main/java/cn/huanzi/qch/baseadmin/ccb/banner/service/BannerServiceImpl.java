package cn.huanzi.qch.baseadmin.ccb.banner.service;

import cn.huanzi.qch.baseadmin.ccb.banner.pojo.Banner;
import cn.huanzi.qch.baseadmin.ccb.banner.repository.BannerRepository;
import cn.huanzi.qch.baseadmin.ccb.banner.vo.BannerVo;
import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
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
        Page<Banner> bannerPage = bannerRepository.findAll(PageRequest.of(page, limit, Sort.by(Sort.Direction.DESC, "weight")));
        return bannerPage;
    }

    @Override
    public Banner getById(Integer id) {
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
        // 设置创建时间
        Banner origin = bannerRepository.findById(banner.getId()).get();
        banner.setCreateTime(origin.getCreateTime());
        // 设置更新时间
        banner.setUpdateTime(new Date());
        Banner save = bannerRepository.save(banner);
        return save;
    }

    @Override
    @Transactional
    public void deleteById(Integer id) {
        bannerRepository.deleteById(id);
    }
}

