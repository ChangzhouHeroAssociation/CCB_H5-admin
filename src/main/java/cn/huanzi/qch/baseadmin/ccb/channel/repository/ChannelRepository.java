package cn.huanzi.qch.baseadmin.ccb.channel.repository;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

/**
 *  Repository
 *
 * ${author}
 * ${date}
 */
@Repository
public interface ChannelRepository extends JpaRepository<Channel, Integer>, JpaSpecificationExecutor<Channel> {

    @Override
    @Query(value = "select c from Channel c where c.status = 1")
    List findAll();

    @Query(value = "select c from Channel c where c.id = ?1 and c.status = 1")
    Channel findOne(Integer id);

}

