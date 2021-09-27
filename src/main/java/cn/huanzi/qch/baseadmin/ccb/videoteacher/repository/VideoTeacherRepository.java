package cn.huanzi.qch.baseadmin.ccb.videoteacher.repository;

import cn.huanzi.qch.baseadmin.common.repository.*;
import cn.huanzi.qch.baseadmin.ccb.videoteacher.pojo.VideoTeacher;
import org.springframework.stereotype.Repository;

/**
 * 视频和讲师一对多关系表 Repository
 *
 * ${author}
 * ${date}
 */
@Repository
public interface VideoTeacherRepository extends CommonRepository<VideoTeacher, Integer> {
}

