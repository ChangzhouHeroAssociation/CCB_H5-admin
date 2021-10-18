package cn.huanzi.qch.baseadmin.ccb.logs.repository;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogChannel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @ClassName: LogChannelRepository
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/18
 * @Version: 1.0
 */

@Repository
public interface LogChannelRepository extends JpaRepository<LogChannel, Integer> {

    @Query(nativeQuery = true,
            value = "select * from log_channel where date(create_time) = date_sub(curdate(), interval 1 day)")
    List<LogChannel> getAllLogChannelYesterday();
}
