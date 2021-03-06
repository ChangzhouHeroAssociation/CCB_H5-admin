package cn.huanzi.qch.baseadmin.ccb.channel.service;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.repository.ChannelRepository;
import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.*;
import java.util.*;

/**
 *  ServiceImpl
 *
 * ${author}
 * ${date}
 */
@Service
@Transactional
public class ChannelServiceImpl implements ChannelService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private ChannelRepository channelRepository;


    /**
     * 分页查询
     */
    @Override
    public Page<Channel> pagination(Integer page, Integer limit) {
        // 构建查询条件
        Specification<Channel> spec = new Specification<Channel>() {
            @Override
            public Predicate toPredicate(Root<Channel> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                Path<Channel> path = root.get("status");
                Predicate equal = criteriaBuilder.equal(path, "1");
                return equal;
            }
        };

        Pageable pageable = PageRequest.of(page, limit, Sort.by(Sort.Direction.DESC, "weight"));
        Page<Channel> channels = channelRepository.findAll(Specification.where(spec).and(distinct()), pageable);
        return channels;
    }

    private Specification<Channel> distinct() {
        return (Root<Channel> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) -> {
            criteriaQuery.distinct(true);
            return criteriaQuery.getRestriction();
        };
    }

    /**
     * 按id查询
     */
    @Override
    public Channel getById(Integer id) {
        Channel byId = channelRepository.findById(id).get();
        return byId;
    }

    @Override
    public List<Channel> getAll() {
        return channelRepository.findAll();
    }

    /**
     * 添加
     */
    @Override
    @Transactional
    public Channel create(Channel channel) {
        channel.setCreateTime(new Date());
        channel.setUpdateTime(new Date());
        channel.setStatus(1);
        Channel channel1 = channelRepository.save(channel);
        return channel1;
    }

    /**
     * 更新
     */
    @Override
    @Transactional
    public Channel update(Channel channel) {
        // 设置创建时间
        Channel origin = channelRepository.findById(channel.getId()).get();
        channel.setCreateTime(origin.getCreateTime());
        // 设置更新时间
        channel.setUpdateTime(new Date());
        Channel channel1 = channelRepository.save(channel);
        return channel1;
    }

    @Override
    @Transactional
    public Integer deleteById(Integer id) {
        Channel one = channelRepository.findById(id).get();
        one.setStatus(0);
        channelRepository.save(one);
        return id;
    }
}

