package cn.huanzi.qch.baseadmin.ccb.channel.service;

import cn.huanzi.qch.baseadmin.common.service.*;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.vo.ChannelVo;
import org.springframework.data.domain.Page;

/**
 *  Service
 *
 * ${author}
 * ${date}
 */
public interface ChannelService extends CommonService<ChannelVo, Channel, Integer> {

    Page<Channel> pagination(Integer page, Integer limit);

    Channel getById(Integer id);

    Channel create(Channel channel);

    Channel update(Channel channel);

    Integer deleteById(Integer id);
}

