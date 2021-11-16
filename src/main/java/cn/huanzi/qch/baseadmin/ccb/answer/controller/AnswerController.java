package cn.huanzi.qch.baseadmin.ccb.answer.controller;

import cn.huanzi.qch.baseadmin.ccb.answer.pojo.Answer;
import cn.huanzi.qch.baseadmin.ccb.answer.service.AnswerService;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.service.ChannelService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 *  Controller
 *
 * ${author}
 * ${date}
 */
@RestController
@RequestMapping("/ccb/answer/")
public class AnswerController {
    @Autowired
    private AnswerService answerService;

    @Autowired
    private ChannelService channelService;

    @GetMapping("index")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("ccb/answer/answer");
        mav.addObject("channels", channelService.getAll());
        return mav;
    }

    @GetMapping("page")
    public Result<Page> page(Integer page, Integer limit,
                             @RequestParam(name = "channelId", required = false, defaultValue = "") String channelId,
                             @RequestParam(name = "keyword", required = false, defaultValue = "") String keyword) {
        if (page == null || page < 1) {
            page = 1;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }

        Page<Answer> answerPage = answerService.pagination(page - 1, limit, channelId, keyword);

        for (Answer answer : answerPage.getContent()) {
            List<Channel> channels = new ArrayList<>();
            for (String s : answer.getQuestion().getChannelId().split(",")) {
                channels.add(channelService.getById(Integer.parseInt(s)));
            }
            answer.getQuestion().setChannels(channels);
        }

        return Result.of(answerPage);
    }

    @GetMapping("get")
    public Result<Answer> get(Integer id) {
        Answer answer = answerService.getById(id);
        if (answer == null) {
            return Result.of(null, true, 405, "未查询到数据");
        }
        List<Channel> channels = new ArrayList<>();
        for (String s : answer.getQuestion().getChannelId().split(",")) {
            channels.add(channelService.getById(Integer.parseInt(s)));
        }
        answer.getQuestion().setChannels(channels);
        return Result.of(answer);
    }

    @GetMapping("getAll")
    public Result<List<Answer>> getAll() {
        List<Answer> all = answerService.getAll();
        return Result.of(all);
    }

}

