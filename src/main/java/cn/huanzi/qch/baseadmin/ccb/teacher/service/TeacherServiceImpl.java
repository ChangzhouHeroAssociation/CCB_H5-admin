package cn.huanzi.qch.baseadmin.ccb.teacher.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import cn.huanzi.qch.baseadmin.ccb.teacher.repository.TeacherRepository;
import cn.huanzi.qch.baseadmin.ccb.teacher.vo.TeacherVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *  ServiceImpl
 *
 * ${author}
 * ${date}
 */
@Service
@Transactional
public class TeacherServiceImpl extends CommonServiceImpl<TeacherVo, Teacher, Integer> implements TeacherService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private TeacherRepository teacherRepository;

}

