package cn.huanzi.qch.baseadmin.ccb.logs.service.impl;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogChannel;
import cn.huanzi.qch.baseadmin.ccb.logs.repository.LogChannelRepository;
import cn.huanzi.qch.baseadmin.ccb.logs.service.LogChannelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: LogChannelServiceImpl
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/18
 * @Version: 1.0
 */

@Service
public class LogChannelServiceImpl implements LogChannelService {
    @Autowired
    private LogChannelRepository logChannelRepository;

    @Override
    public Map getAllLogChannelBeforeTheDay() {
        List<LogChannel> logChannels = logChannelRepository.getAllLogChannelYesterday();
        Map<String, List> formatData = new HashMap<>();
        List<String> channelName = new ArrayList<>();
        List<Integer> value = new ArrayList<>();
        for (LogChannel logChannel : logChannels) {
            channelName.add(logChannel.getChannelName());
            value.add(logChannel.getCount());
        }
        formatData.put("channelName", channelName);
        formatData.put("value", value);
        return formatData;
    }
}
