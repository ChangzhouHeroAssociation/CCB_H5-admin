package cn.huanzi.qch.baseadmin.ccb.channel.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.repository.ChannelRepository;
import cn.huanzi.qch.baseadmin.ccb.channel.vo.ChannelVo;
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
public class ChannelServiceImpl extends CommonServiceImpl<ChannelVo, Channel, Integer> implements ChannelService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private ChannelRepository channelRepository;

    /**
     * 分页查询
     */
    @Override
    public Page<Channel> pagination(Integer page, Integer limit) {
        Page<Channel> channels = channelRepository.findAll(PageRequest.of(page, limit));
        return channels;
    }

    /**
     * 按id查询
     */
    @Override
    public Channel getById(Integer id) {
        Optional<Channel> byId = channelRepository.findById(id);
        return byId.get();
    }

    /**
     * 添加
     */
    @Override
    @Transactional
    public Channel create(Channel channel) {
        channel.setCreateTime(new Date());
        channel.setUpdateTime(new Date());
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
        Channel origin = getById(channel.getId());
        channel.setCreateTime(origin.getCreateTime());
        // 设置更新时间
        channel.setUpdateTime(new Date());
        Channel channel1 = channelRepository.save(channel);
        return channel1;
    }

    @Override
    @Transactional
    public Integer deleteById(Integer id) {
        channelRepository.deleteById(id);
        return id;
    }
}

