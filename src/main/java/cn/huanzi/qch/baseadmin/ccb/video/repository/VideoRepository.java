package cn.huanzi.qch.baseadmin.ccb.video.repository;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 *  Repository
 *
 * ${author}
 * ${date}
 */
@Repository
public interface VideoRepository extends JpaRepository<Video, Integer>, JpaSpecificationExecutor<Video> {

    @Override
    @Query(value = "select v from Video v where v.status = 1")
    List findAll();

    @Query(value = "select v from Video v where v.id = ?1 and v.status = 1")
    Channel findOne(Integer id);

    @Query(nativeQuery = true, value = "SELECT max(id) FROM video")
    Integer getMaxId();

}