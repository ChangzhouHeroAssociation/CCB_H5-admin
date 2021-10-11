package cn.huanzi.qch.baseadmin.ccb.question.controller;

import cn.huanzi.qch.baseadmin.ccb.advertisement.pojo.Advertisement;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.service.ChannelService;
import cn.huanzi.qch.baseadmin.ccb.question.pojo.Question;
import cn.huanzi.qch.baseadmin.ccb.question.service.QuestionService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import com.sun.xml.internal.messaging.saaj.packaging.mime.util.QEncoderStream;
import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.crypto.Mac;

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
        return new ModelAndView("ccb/question/question");
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

    @GetMapping("page")
    public Result<Page<Question>> queryPage(Integer page, Integer limit) {

        if (page == null || page < 1) {
            page = 1;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }

        Page<Question> questions = questionService.pagination(page - 1, limit);
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
        return Result.of(question);
    }

    @PostMapping("create")
    public Result create(Question question, Integer channelId) {
        if (channelId == null) {
            return Result.of(null, false, 400, "频道id不能为空");
        }
        Channel channel = channelService.getById(channelId);
        if (channel == null) {
            return Result.of(null, false, 400, "未查找到频道");
        }
        question.setChannel(channel);
        Question save = questionService.create(question);
        return Result.of(save);
    }

    @PostMapping("update")
    public Result update(Question question, Integer channelId) {
        if (channelId == null) {
            return Result.of(null, false, 400, "频道id不能为空");
        }
        Channel channel = channelService.getById(channelId);
        if (channel == null) {
            return Result.of(null, false, 400, "未查找到频道");
        }
        question.setChannel(channel);
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

