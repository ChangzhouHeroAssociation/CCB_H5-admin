package cn.huanzi.qch.baseadmin.ccb.channel.repository;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *  Repository
 *
 * ${author}
 * ${date}
 */
@Repository
public interface ChannelRepository extends JpaRepository<Channel, Integer> {
}

