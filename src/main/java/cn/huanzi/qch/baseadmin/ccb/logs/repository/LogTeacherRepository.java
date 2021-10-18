package cn.huanzi.qch.baseadmin.ccb.logs.repository;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogTeacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @ClassName: LogTeacher
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/18
 * @Version: 1.0
 */
@Repository
public interface LogTeacherRepository extends JpaRepository<LogTeacher, Integer> {

    @Query(nativeQuery = true,
            value = "select * from log_teacher where date(create_time) = date_sub(curdate(), interval 1 day)")
    List<LogTeacher> getAllLogTeacherYesterday();
}
