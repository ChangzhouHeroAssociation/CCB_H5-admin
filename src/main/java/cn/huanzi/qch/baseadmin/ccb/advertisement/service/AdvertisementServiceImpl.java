package cn.huanzi.qch.baseadmin.ccb.advertisement.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.advertisement.pojo.Advertisement;
import cn.huanzi.qch.baseadmin.ccb.advertisement.repository.AdvertisementRepository;
import cn.huanzi.qch.baseadmin.ccb.advertisement.vo.AdvertisementVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
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
@Transactional
public class AdvertisementServiceImpl extends CommonServiceImpl<AdvertisementVo, Advertisement, Integer> implements AdvertisementService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private AdvertisementRepository advertisementRepository;

    @Override
    public Page pagination(Integer page, Integer limit) {
        Page<Advertisement> advertisements = advertisementRepository.findAll(PageRequest.of(page, limit));
        return advertisements;
    }

    @Override
    public Advertisement getById(Integer id) {
        Optional<Advertisement> advertisement = advertisementRepository.findById(id);
        return advertisement.get();
    }

    @Override
    public Advertisement create(Advertisement ad) {
        ad.setCreateTime(new Date());
        ad.setUpdateTime(new Date());
        Advertisement advertisement = advertisementRepository.save(ad);
        return advertisement;
    }

    @Override
    public Advertisement update(Advertisement ad) {
        // 设置创建时间
        Advertisement origin = getById(ad.getId());
        ad.setCreateTime(origin.getCreateTime());
        // 设置更新时间
        ad.setUpdateTime(new Date());
        Advertisement advertisement = advertisementRepository.save(ad);
        return advertisement;
    }

    @Override
    public Integer deleteById(Integer id) {
        advertisementRepository.deleteById(id);
        return id;
    }
}

