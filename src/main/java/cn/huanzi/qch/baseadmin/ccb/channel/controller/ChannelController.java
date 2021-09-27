package cn.huanzi.qch.baseadmin.ccb.channel.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.service.ChannelService;
import cn.huanzi.qch.baseadmin.ccb.channel.vo.ChannelVo;
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
@RequestMapping("/sys/channel/")
public class ChannelController extends CommonController<ChannelVo, Channel, Integer> {
    @Autowired
    private ChannelService channelService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("sys/channel/index");
    }
}

