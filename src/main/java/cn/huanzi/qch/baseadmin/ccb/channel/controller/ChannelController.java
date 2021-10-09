package cn.huanzi.qch.baseadmin.ccb.channel.controller;

import cn.huanzi.qch.baseadmin.ccb.upload.service.FileService;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.service.ChannelService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
@RequestMapping("/ccb/channel/")
public class ChannelController {
    @Autowired
    private ChannelService channelService;

    @Autowired
    private FileService fileService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("ccb/channel/channel");
    }

    @GetMapping("channelForm")
    public ModelAndView channelForm(Integer id) {
        ModelAndView mav = new ModelAndView("ccb/channel/channelForm");

        if (id == null) {
            mav.addObject("channel", null);
        } else {
            Channel channel = channelService.getById(id);
            mav.addObject("channel", channel);
        }

        return mav;
    }

    @GetMapping("page")
    public Result paging(Integer page, Integer limit) {
        if (page == null || page < 0) {
            page = 0;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }
        Page<Channel> channels = channelService.pagination(page - 1, limit);
        return Result.of(channels);
    }

    @GetMapping("get")
    public Result getOne(Integer id) {
        Channel channel = channelService.getById(id);
        Result result;
        if (channel == null) {
            return Result.of(null, true, 405, "未查询到数据");
        }
        return Result.of(channel, true, 200, "success");
    }

    @PostMapping("create")
    public Result create(Channel channel) {
        Channel channel1 = channelService.create(channel);
        return Result.of(channel1, true, 200, "success");
    }

    @PostMapping("update")
    public Result update(Channel channel) {
        Channel channel1 = channelService.update(channel);
        return Result.of(channel1, true, 200, "success");
    }

    @PostMapping("delete")
    public Result deleteById(Integer id) {
        if (id == null) {
            return Result.of(id, false, 400, "未输入id");
        }
        Channel result = channelService.getById(id);
        if (result == null) {
            Result.of(id, false, 400, "没有该记录");
        }
        try {
            fileService.deleteImage(result.getIcon());
            fileService.deleteImage(result.getImage());
            channelService.deleteById(id);
        } catch (Exception e) {
            return Result.of(id, false, 400, "删除失败");
        }
        return Result.of(id, true, "删除成功");
    }
}

