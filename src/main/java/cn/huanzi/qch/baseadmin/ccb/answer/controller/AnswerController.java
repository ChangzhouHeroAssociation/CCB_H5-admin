package cn.huanzi.qch.baseadmin.ccb.answer.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.answer.pojo.Answer;
import cn.huanzi.qch.baseadmin.ccb.answer.service.AnswerService;
import cn.huanzi.qch.baseadmin.ccb.answer.vo.AnswerVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 *  Controller
 *
 * ${author}
 * ${date}
 */
@RestController
@RequestMapping("/sys/answer/")
public class AnswerController extends CommonController<AnswerVo, Answer, Integer> {
    @Autowired
    private AnswerService answerService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("sys/answer/index");
    }
}

