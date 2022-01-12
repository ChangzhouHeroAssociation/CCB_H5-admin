package cn.huanzi.qch.baseadmin.ccb.logs.controller;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogChannel;
import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogTeacher;
import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogVideo;
import cn.huanzi.qch.baseadmin.ccb.logs.service.LogChannelService;
import cn.huanzi.qch.baseadmin.ccb.logs.service.LogTeacherService;
import cn.huanzi.qch.baseadmin.ccb.logs.service.LogVideoService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: LogChannelController
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/18
 * @Version: 1.0
 */

@RestController
@RequestMapping("/ccb/log/")
public class LogController {

    @Autowired
    private LogChannelService logChannelService;

    @Autowired
    private LogTeacherService logTeacherService;

    @Autowired
    private LogVideoService logVideoService;

    @GetMapping("channel")
    public Result channelLog() {
        Map channelLogs = logChannelService.getAllLogChannelBeforeTheDay();
        return Result.of(channelLogs);
    }

    @GetMapping("cl")
    public Result channelLogList() {
        Page<LogChannel> logChannelPage = logChannelService.getLogPageBy("", null, new Date(1640966400), new Date(), 1, 10);
        return Result.of(logChannelPage);
    }

    @GetMapping("teacher")
    public Result teacherLog() {
        Map teacherLogs = logTeacherService.getAllLogTeacherBeforeTheDay();
        return Result.of(teacherLogs);
    }

    @GetMapping("video")
    public Result videoLog() {
        Map videoLogs = logVideoService.getAllLogVideoBeforeTheDay();
        return Result.of(videoLogs);
    }
}
