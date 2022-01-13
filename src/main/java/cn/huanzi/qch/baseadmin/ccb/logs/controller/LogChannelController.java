package cn.huanzi.qch.baseadmin.ccb.logs.controller;

import cn.huanzi.qch.baseadmin.ccb.channel.service.ChannelService;
import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogChannel;
import cn.huanzi.qch.baseadmin.ccb.logs.service.DistributionService;
import cn.huanzi.qch.baseadmin.ccb.logs.service.LogChannelService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Date;

/**
 * @ClassName: LogChannelController
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2022/1/12
 * @Version: 1.0
 */

@RestController
@RequestMapping("/ccb/logChannel/")
public class LogChannelController {
    @Resource
    private LogChannelService logChannelService;

    @Resource
    private DistributionService distributionService;

    @Resource
    private ChannelService channelService;

    @GetMapping("index")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("/ccb/log/logChannel.html");
        mav.addObject("distributions", distributionService.getAll());
        mav.addObject("channels", channelService.getAll());
        return mav;
    }

    @GetMapping("list")
    public Result<Page> list(
            @RequestParam(required = false, defaultValue = "0") int page,
            @RequestParam(required = false, defaultValue = "10") int limit,
            @RequestParam(required = false) Integer distributionId,
            @RequestParam(required = false, defaultValue = "") String channelName,
            @RequestParam(required = false) Date startTime,
            @RequestParam(required = false) Date endTime
    ) {
        if (page > 0) {
            page--;
        }
        if ("全部".equals(channelName)) {
            channelName = "";
        }
        Page<LogChannel> logChannelPage = logChannelService.getLogPageBy(channelName, distributionId, startTime, endTime, page, limit);
        return Result.of(logChannelPage);
    }

}
