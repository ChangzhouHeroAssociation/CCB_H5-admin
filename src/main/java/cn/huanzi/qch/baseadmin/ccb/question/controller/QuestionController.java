package cn.huanzi.qch.baseadmin.ccb.question.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.question.pojo.Question;
import cn.huanzi.qch.baseadmin.ccb.question.service.QuestionService;
import cn.huanzi.qch.baseadmin.ccb.question.vo.QuestionVo;
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
@RequestMapping("/sys/question/")
public class QuestionController extends CommonController<QuestionVo, Question, Integer> {
    @Autowired
    private QuestionService questionService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("sys/question/index");
    }
}

