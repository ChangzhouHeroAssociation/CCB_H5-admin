package cn.huanzi.qch.baseadmin.ccb.teacher.service;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import cn.huanzi.qch.baseadmin.ccb.teacher.repository.TeacherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.*;
import java.util.Date;
import java.util.List;

/**
 *  ServiceImpl
 *
 * ${author}
 * ${date}
 */
@Service
@Transactional
public class TeacherServiceImpl implements TeacherService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private TeacherRepository teacherRepository;

    @Override
    public Page<Teacher> pagination(Integer page, Integer limit) {
        // 构建查询条件
        Specification<Teacher> spec = new Specification<Teacher>() {
            @Override
            public Predicate toPredicate(Root<Teacher> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                Path<Channel> path = root.get("status");
                Predicate equal = criteriaBuilder.equal(path, "1");
                return equal;
            }
        };

        Pageable pageable = PageRequest.of(page, limit, Sort.by(Sort.Direction.DESC, "weight"));

        Page<Teacher> teachers = teacherRepository.findAll(spec, pageable);

        return teachers;
    }

    @Override
    public Teacher getById(Integer id) {
        Teacher teacher = teacherRepository.findById(id).get();
        return teacher;
    }

    @Override
    public List<Teacher> getAll() {
        List<Teacher> teachers = teacherRepository.findAll();
        return teachers;
    }

    @Override
    public Teacher create(Teacher teacher) {
        teacher.setCreateTime(new Date());
        teacher.setUpdateTime(new Date());
        teacherRepository.save(teacher);
        return null;
    }

    @Override
    public Teacher update(Teacher teacher) {
        teacher.setUpdateTime(new Date());

        Teacher origin = teacherRepository.findById(teacher.getId()).get();
        teacher.setCreateTime(origin.getCreateTime());

        Teacher save = teacherRepository.save(teacher);
        return save;
    }

    @Override
    public Integer deleteById(Integer id) {
        Teacher one = teacherRepository.findById(id).get();
        one.setStatus(0);
        teacherRepository.save(one);
        return id;
    }
}

