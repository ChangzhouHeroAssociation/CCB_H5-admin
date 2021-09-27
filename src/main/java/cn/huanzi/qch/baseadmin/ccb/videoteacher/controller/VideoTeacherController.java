package cn.huanzi.qch.baseadmin.ccb.videoteacher.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.videoteacher.pojo.VideoTeacher;
import cn.huanzi.qch.baseadmin.ccb.videoteacher.service.VideoTeacherService;
import cn.huanzi.qch.baseadmin.ccb.videoteacher.vo.VideoTeacherVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * 视频和讲师一对多关系表 Controller
 *
 * ${author}
 * ${date}
 */
@RestController
@RequestMapping("/sys/videoTeacher/")
public class VideoTeacherController extends CommonController<VideoTeacherVo, VideoTeacher, Integer> {
    @Autowired
    private VideoTeacherService videoTeacherService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("sys/videoteacher/index");
    }
}

