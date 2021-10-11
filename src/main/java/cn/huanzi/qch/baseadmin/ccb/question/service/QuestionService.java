package cn.huanzi.qch.baseadmin.ccb.question.service;

import cn.huanzi.qch.baseadmin.ccb.question.pojo.Question;
import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import org.springframework.data.domain.Page;

/**
 *  Service
 *
 * ${author}
 * ${date}
 */
public interface QuestionService {

    Page<Question> pagination(Integer page, Integer limit);

    Question getById(Integer id);

    Question create(Question question);

    Question update(Question question);

    Integer deleteById(Integer id);

}

