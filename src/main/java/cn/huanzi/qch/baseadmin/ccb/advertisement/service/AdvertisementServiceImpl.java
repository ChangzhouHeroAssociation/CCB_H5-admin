package cn.huanzi.qch.baseadmin.ccb.advertisement.service;

import cn.huanzi.qch.baseadmin.ccb.advertisement.pojo.Advertisement;
import cn.huanzi.qch.baseadmin.ccb.advertisement.repository.AdvertisementRepository;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.*;
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
public class AdvertisementServiceImpl implements AdvertisementService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private AdvertisementRepository advertisementRepository;

    @Override
    public Page pagination(Integer page, Integer limit, String keyword) {

        Specification<Advertisement> spec = new Specification<Advertisement>() {
            @Override
            public Predicate toPredicate(Root<Advertisement> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {

                if (keyword.trim().equals("")) {
                    return null;
                } else {
                    // 按id查找
                    Join<Advertisement, Channel> joinChannel = root.join(root.getModel().getSingularAttribute("channel", Channel.class), JoinType.LEFT);
                    Predicate channelNameEqual = criteriaBuilder.equal(joinChannel.get("id").as(String.class), keyword);
                    return channelNameEqual;
                }
            }
        };

        Page<Advertisement> advertisements = advertisementRepository.findAll(spec, PageRequest.of(page, limit));
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
        Advertisement origin = advertisementRepository.findById(ad.getId()).get();
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

