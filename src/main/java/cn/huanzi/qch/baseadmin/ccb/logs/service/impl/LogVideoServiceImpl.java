package cn.huanzi.qch.baseadmin.ccb.logs.service.impl;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogTeacher;
import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogVideo;
import cn.huanzi.qch.baseadmin.ccb.logs.repository.LogVideoRepository;
import cn.huanzi.qch.baseadmin.ccb.logs.service.LogVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: LogVideoServiceImpl
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/19
 * @Version: 1.0
 */
@Service
public class LogVideoServiceImpl implements LogVideoService {
    @Autowired
    private LogVideoRepository logVideoRepository;

    @Override
    public Map getAllLogVideoBeforeTheDay() {
        List<LogVideo> logVideos = logVideoRepository.getAllLogVideoYesterday();
        List<String> videoName = new ArrayList<>();
        List<Integer> viewCount = new ArrayList<>();
        List<Integer> shareCount = new ArrayList<>();
        Map<String, List> formatData = new HashMap<>();
        for (LogVideo logVideo : logVideos) {
            videoName.add(logVideo.getVideoName());
            viewCount.add(logVideo.getViewCount());
            shareCount.add(logVideo.getShareCount());
        }
        formatData.put("videoName", videoName);
        formatData.put("viewCount", viewCount);
        formatData.put("shareCount", shareCount);
        return formatData;
    }
}
