package cn.huanzi.qch.baseadmin.ccb.teacher.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import cn.huanzi.qch.baseadmin.ccb.teacher.service.TeacherService;
import cn.huanzi.qch.baseadmin.ccb.teacher.vo.TeacherVo;
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
@RequestMapping("/sys/teacher/")
public class TeacherController extends CommonController<TeacherVo, Teacher, Integer> {
    @Autowired
    private TeacherService teacherService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("sys/teacher/index");
    }
}

