package cn.huanzi.qch.baseadmin.ccb.answer.service;

import cn.huanzi.qch.baseadmin.ccb.answer.pojo.Answer;
import org.springframework.data.domain.Page;

import java.util.List;

/**
 *  Service
 *
 * ${author}
 * ${date}
 */
public interface AnswerService {
    Page<Answer> pagination(Integer page, Integer limit, String channelId, String keyword);

    Answer getById(Integer id);

    List<Answer> getAll();
}

