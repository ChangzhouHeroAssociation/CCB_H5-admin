package cn.huanzi.qch.baseadmin.ccb.teacher.repository;

import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

/**
 *  Repository
 *
 * ${author}
 * ${date}
 */
@Repository
public interface TeacherRepository extends JpaRepository<Teacher, Integer>, JpaSpecificationExecutor<Teacher> {

    @Override
    @Query("select t from Teacher t where t.status = 1")
    List<Teacher> findAll();

    @Query("select t from Teacher t where t.id = ?1 and t.status = 1")
    Teacher findOne(Integer id);
}

