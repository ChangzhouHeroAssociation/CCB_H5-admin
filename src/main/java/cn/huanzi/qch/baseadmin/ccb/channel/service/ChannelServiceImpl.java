package cn.huanzi.qch.baseadmin.ccb.channel.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.repository.ChannelRepository;
import cn.huanzi.qch.baseadmin.ccb.channel.vo.ChannelVo;
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
public class ChannelServiceImpl extends CommonServiceImpl<ChannelVo, Channel, Integer> implements ChannelService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private ChannelRepository channelRepository;

}

