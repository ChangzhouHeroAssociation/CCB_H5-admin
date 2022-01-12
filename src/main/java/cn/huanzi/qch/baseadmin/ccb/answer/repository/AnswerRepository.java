package cn.huanzi.qch.baseadmin.ccb.answer.repository;

import cn.huanzi.qch.baseadmin.ccb.answer.pojo.Answer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

/**
 *  Repository
 *
 * ${author}
 * ${date}
 */
@Repository
public interface AnswerRepository extends JpaRepository<Answer, Integer>, JpaSpecificationExecutor<Answer> {
}

