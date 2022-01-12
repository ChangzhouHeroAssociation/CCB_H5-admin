package cn.huanzi.qch.baseadmin.ccb.logs.service;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogChannel;
import org.springframework.data.domain.Page;

import java.util.Date;
import java.util.Map;

public interface LogChannelService {

    Map getAllLogChannelBeforeTheDay();


    Page<LogChannel> getLogPageBy(String channelName, Integer distributionId, Date startTime, Date endTime, Integer page, Integer limit);
}
