package cn.huanzi.qch.baseadmin.ccb.channel.service;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import org.springframework.data.domain.Page;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.List;
import java.util.Map;

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

