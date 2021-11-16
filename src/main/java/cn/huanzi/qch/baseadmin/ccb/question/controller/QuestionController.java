package cn.huanzi.qch.baseadmin.ccb.question.controller;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.service.ChannelService;
import cn.huanzi.qch.baseadmin.ccb.question.pojo.Question;
import cn.huanzi.qch.baseadmin.ccb.question.service.QuestionService;
import cn.huanzi.qch.baseadmin.ccb.select.pojo.Select;
import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.w3c.dom.stylesheets.LinkStyle;

import java.util.ArrayList;
import java.util.List;

/**
 *  Controller
 *
 * ${author}
 * ${date}
 */
@RestController
@RequestMapping("/ccb/question/")
public class QuestionController {
    @Autowired
    private QuestionService questionService;

    @Autowired
    private ChannelService channelService;

    @GetMapping("index")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("ccb/question/question");
        mav.addObject("channels", channelService.getAll());
        return mav;
    }

    @GetMapping("questionForm")
    public ModelAndView questionForm(Integer id) {
        ModelAndView mav = new ModelAndView("ccb/question/questionForm");

        if (id == null) {
            mav.addObject("question", null);
        } else {
            mav.addObject("question", questionService.getById(id));
        }

        mav.addObject("channels", channelService.getAll());
        return mav;
    }

    @GetMapping("channelSelectList")
    public Result<List<Select>> channelsInQuestion(Integer id) {
        Question question = null;
        if (id != null) {
            question = questionService.getById(id);
        }
        List<Select> channelSelects = new ArrayList<>();
        List<Channel> channels = channelService.getAll();
        for (Channel channel : channels) {
            Select tempSelect = new Select();
            tempSelect.setName(channel.getChannelName());
            tempSelect.setValue(channel.getId());
            if (question != null) {
                for (String s : question.getChannelId().split(",")) {
                    if (s.equals(channel.getId().toString())) {
                        tempSelect.setSelected(true);
                    }
                }
            }
            channelSelects.add(tempSelect);
        }
        return Result.of(channelSelects);
    }

    @GetMapping("page")
    public Result<Page<Question>> queryPage(Integer page, Integer limit,
                                            @RequestParam(name = "name", required = false, defaultValue = "") String keyword) {

        if (page == null || page < 1) {
            page = 1;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }

        Page<Question> questions = questionService.pagination(page - 1, limit, keyword);
        for (Question question : questions.getContent()) {
            List<Channel> channels = new ArrayList<>();
            for (String s : question.getChannelId().split(",")) {
                channels.add(channelService.getById(Integer.parseInt(s)));
            }
            question.setChannels(channels);
        }
        return Result.of(questions);
    }

    @GetMapping("get")
    public Result<Question> getOne(Integer id) {
        if (id == null) {
            return Result.of(null, true, 405, "请输入id");
        }
        Question question = questionService.getById(id);
        if (question == null) {
            return Result.of(null, true, 405, "未查找到数据");
        }
        List<Channel> channels = new ArrayList<>();
        for (String s : question.getChannelId().split(",")) {
            channels.add(channelService.getById(Integer.parseInt(s)));
        }
        question.setChannels(channels);
        return Result.of(question);
    }

    @PostMapping("create")
    public Result create(Question question) {
        Question save = questionService.create(question);
        return Result.of(save);
    }

    @PostMapping("update")
    public Result update(Question question) {
        Question save = questionService.update(question);
        return Result.of(save);
    }

    @PostMapping("delete")
    public Result delteById(Integer id) {
        if (id == null) {
            return Result.of(id, false, 400, "请输入id");
        }
        Question question = questionService.getById(id);
        if (question == null) {
            return Result.of(id, false, 400, "未查找到记录");
        }
        try {
            questionService.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return Result.of(id, false, 400, "删除失败");
        }
        return Result.of(id);
    }
}

