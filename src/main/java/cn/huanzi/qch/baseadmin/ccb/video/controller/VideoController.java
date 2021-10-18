package cn.huanzi.qch.baseadmin.ccb.video.controller;

import cn.huanzi.qch.baseadmin.ccb.category.service.CategoryService;
import cn.huanzi.qch.baseadmin.ccb.channel.service.ChannelService;
import cn.huanzi.qch.baseadmin.ccb.select.pojo.Select;
import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import cn.huanzi.qch.baseadmin.ccb.teacher.service.TeacherService;
import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import cn.huanzi.qch.baseadmin.ccb.video.service.VideoService;
import cn.huanzi.qch.baseadmin.ccb.video.dto.VideoDTO;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 *  Controller
 *
 * ${author}
 * ${date}
 */
@RestController
@RequestMapping("/ccb/video/")
public class VideoController {
    @Autowired
    private VideoService videoService;

    @Autowired
    private ChannelService channelService;

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private TeacherService teacherService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("ccb/video/video");
    }

    @GetMapping("videoForm")
    public ModelAndView videoForm(Integer id) {
        ModelAndView mav = new ModelAndView("ccb/video/videoForm");
        if (id == null) {
            mav.addObject("video", null);
        } else {
            mav.addObject("video", videoService.getById(id));
        }
        mav.addObject("channels", channelService.getAll());

        return mav;
    }

    @GetMapping("page")
    public Result<Page<Video>> page(Integer page, Integer limit, @RequestParam(name = "name", required = false, defaultValue = "") String keyword) {
        if (page == null || page < 1) {
            page = 1;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }
        if (keyword == null) {
            keyword = "";
        }

        Page<Video> videoPage = videoService.pagination(page - 1, limit, keyword);
        return Result.of(videoPage);
    }

    @GetMapping("teacherSelectList")
    public Result teachersInVideo(Integer id) {
        Video video = null;
        if (id != null) {
            video = videoService.getById(id);
        }

        List<Select> teacherSelects = new ArrayList<>();
        List<Teacher> teachers = teacherService.getAll();
        for (Teacher teacher : teachers) {
            Select tempSelect = new Select();
            tempSelect.setName(teacher.getTeacherName());
            tempSelect.setValue(teacher.getId().toString());
            if (video != null) {
                for (Teacher videoTeacher : video.getTeachers()) {
                    if (videoTeacher.getId().equals(teacher.getId())) {
                        tempSelect.setSelected(true);
                    }
                }
            }
            teacherSelects.add(tempSelect);
        }

        return Result.of(teacherSelects);
    }


    @PostMapping(value = "create")
    public Result create(@RequestBody VideoDTO videoDTO) {

        List<Teacher> teachers = new ArrayList<>();
        for (Integer teacherId : videoDTO.getTeacherIds()) {
            teachers.add(teacherService.getById(teacherId));
        }

        Video video = new Video();
        video.setVideoTitle(videoDTO.getVideoTitle());
        video.setDescription(videoDTO.getDescription());
        video.setUrl(videoDTO.getUrl());
        video.setStatus(1);
        video.setTeachers(teachers);
        Video save = videoService.create(video);
        return Result.of(save);

    }

    @PostMapping(value = "update")
    public Result update(@RequestBody VideoDTO videoDTO) {
        List<Integer> teacherIds = videoDTO.getTeacherIds();

        List<Teacher> teachers = new ArrayList<>();
        for (Integer teacherId : teacherIds) {
            teachers.add(teacherService.getById(teacherId));
        }

        Video video = new Video();
        video.setId(videoDTO.getId());
        video.setVideoTitle(videoDTO.getVideoTitle());
        video.setDescription(videoDTO.getDescription());
        video.setUrl(videoDTO.getUrl());
        video.setStatus(1);
        video.setTeachers(teachers);

        Video save = videoService.update(video);
        return Result.of(save);
    }

    @PostMapping("delete")
    public Result delete(Integer id) {
        videoService.deleteById(id);
        return Result.of(id);
    }
}

