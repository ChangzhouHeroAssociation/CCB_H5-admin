package cn.huanzi.qch.baseadmin.ccb.question.repository;

import cn.huanzi.qch.baseadmin.ccb.question.pojo.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *  Repository
 *
 * ${author}
 * ${date}
 */
@Repository
public interface QuestionRepository extends JpaRepository<Question, Integer> {
}

