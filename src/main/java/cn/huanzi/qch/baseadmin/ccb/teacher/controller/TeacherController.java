package cn.huanzi.qch.baseadmin.ccb.teacher.controller;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import cn.huanzi.qch.baseadmin.ccb.teacher.service.TeacherService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import javafx.event.EventTarget;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.querydsl.binding.QuerydslPredicate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
@RequestMapping("/ccb/teacher/")
public class TeacherController {
    @Autowired
    private TeacherService teacherService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("ccb/teacher/teacher");
    }

    @GetMapping("teacherForm")
    public ModelAndView teacherForm(Integer id) {
        ModelAndView mav = new ModelAndView("ccb/teacher/teacherForm");
        if (id == null) {
            mav.addObject("teacher", null);
        } else {
            mav.addObject("teacher", teacherService.getById(id));
        }
        return mav;
    }

    @GetMapping("page")
    public Result queryPage(Integer page, Integer limit) {
        if (page == null || page < 1) {
            page = 1;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }

        Page<Teacher> teacherPage = teacherService.pagination(page - 1, limit);
        return Result.of(teacherPage);
    }

    @GetMapping("get")
    public Result<Teacher> getOne(Integer id) {
        Teacher teacher = teacherService.getById(id);
        if (teacher == null) {
            return Result.of(null, true, 405, "未查询到数据");
        }
        return Result.of(teacher, true, 200, "success");
    }

    @PostMapping("create")
    public Result<Teacher> create(Teacher teacher) {
        Teacher save = teacherService.create(teacher);
        return Result.of(save);
    }

    @PostMapping("update")
    public Result<Teacher> update(Teacher teacher) {
        Teacher save = teacherService.update(teacher);
        return Result.of(save);
    }

    /**
     * 软删除
     */
    @PostMapping("delete")
    public Result softDeleteById(Integer id) {
        if (id == null) {
            return Result.of(id, false, 400, "未输入id");
        }
        Teacher teacher = teacherService.getById(id);
        if (teacher == null) {
            Result.of(id, false, 400, "没有该记录");
        }
        try {
            // 软删除
            teacherService.deleteById(id);
        } catch (Exception e) {
            return Result.of(id, false, 400, "删除失败");
        }
        return Result.of(id, true, "删除成功");
    }

}

