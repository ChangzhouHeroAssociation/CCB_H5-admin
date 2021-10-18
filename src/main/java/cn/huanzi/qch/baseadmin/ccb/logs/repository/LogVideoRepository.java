package cn.huanzi.qch.baseadmin.ccb.logs.repository;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogVideo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface LogVideoRepository extends JpaRepository<LogVideo, Integer> {

    @Query(nativeQuery = true,
            value = "select * from log_video where date(create_time) = date_sub(curdate(), interval 1 day)")
    List<LogVideo> getAllLogVideoYesterday();
}
