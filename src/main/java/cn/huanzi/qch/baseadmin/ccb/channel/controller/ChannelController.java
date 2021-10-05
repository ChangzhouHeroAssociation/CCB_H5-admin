package cn.huanzi.qch.baseadmin.ccb.channel.controller;

import cn.huanzi.qch.baseadmin.ccb.channel.repository.ChannelRepository;
import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.service.ChannelService;
import cn.huanzi.qch.baseadmin.ccb.channel.vo.ChannelVo;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.swing.event.ChangeEvent;

/**
 *  Controller
 *
 * ${author}
 * ${date}
 */
@RestController
@RequestMapping("/ccb/channel/")
public class ChannelController extends CommonController<ChannelVo, Channel, Integer> {
    @Autowired
    private ChannelService channelService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("ccb/channel/index");
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
        channelService.deleteById(id);
        return Result.of(id, true, 200, "success");
    }
}

