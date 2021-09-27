package cn.huanzi.qch.baseadmin.ccb.video.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import cn.huanzi.qch.baseadmin.ccb.video.service.VideoService;
import cn.huanzi.qch.baseadmin.ccb.video.vo.VideoVo;
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
@RequestMapping("/sys/video/")
public class VideoController extends CommonController<VideoVo, Video, Integer> {
    @Autowired
    private VideoService videoService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("sys/video/index");
    }
}

