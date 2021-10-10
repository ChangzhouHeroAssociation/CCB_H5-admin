package cn.huanzi.qch.baseadmin.ccb.channel.service;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;

import org.springframework.data.domain.Page;
import java.util.List;

/**
 *  Service
 *
 * ${author}
 * ${date}
 */
public interface ChannelService {

    Page<Channel> pagination(Integer page, Integer limit);

    Channel getById(Integer id);

    List getAll();

    Channel create(Channel channel);

    Channel update(Channel channel);

    Integer deleteById(Integer id);

}

