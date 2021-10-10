package cn.huanzi.qch.baseadmin.ccb.teacher.service;

import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import org.springframework.data.domain.Page;

import java.util.List;

/**
 *  Service
 *
 * ${author}
 * ${date}
 */
public interface TeacherService {

    Page<Teacher> pagination(Integer page, Integer limit);

    Teacher getById(Integer id);

    List<Teacher> getAll();

    Teacher create(Teacher teacher);

    Teacher update(Teacher teacher);

    Integer deleteById(Integer id);
}

