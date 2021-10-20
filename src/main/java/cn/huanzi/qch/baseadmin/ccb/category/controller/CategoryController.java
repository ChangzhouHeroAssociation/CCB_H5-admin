package cn.huanzi.qch.baseadmin.ccb.category.controller;

import cn.huanzi.qch.baseadmin.ccb.category.pojo.Category;
import cn.huanzi.qch.baseadmin.ccb.category.service.CategoryService;
import cn.huanzi.qch.baseadmin.ccb.category.dto.CategoryDTO;
import cn.huanzi.qch.baseadmin.ccb.select.pojo.Select;
import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import cn.huanzi.qch.baseadmin.ccb.video.service.VideoService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

/**
 * @ClassName: CategoryController
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/11
 * @Version: 1.0
 */

@RestController
@RequestMapping("/ccb/category/")
public class CategoryController {

    @Autowired
    private CategoryService categoryService;

    @Autowired
    private VideoService videoService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("ccb/category/category");
    }

    @GetMapping("categoryForm")
    public ModelAndView categoryForm(Integer id) {
        ModelAndView mav = new ModelAndView("ccb/category/categoryForm");
        if (id == null) {
            mav.addObject("category", null);
        } else {
            Category category = categoryService.getById(id);
            mav.addObject("category", category);
        }
        mav.addObject("videos", videoService.getAll());
        return mav;
    }

    @GetMapping("page")
    public Result<Page<Category>> page(Integer page, Integer limit, String categoryName) {
        if (page == null || page < 1) {
            page = 1;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }
        if (categoryName == null) {
            categoryName = "";
        }
        Page<Category> categoryPage = categoryService.pagination(page - 1, limit, categoryName);
        return Result.of(categoryPage);
    }

    /** 返回给多选框 */
    @GetMapping("videoSelectList")
    public Result allVideoAndCategory(Integer id) {

        Category category = null;
        if (id != null) {
            category = categoryService.getById(id);
        }

        /** 处理视频多选选项 */
        List<Video> videos = videoService.getAll();
        List<Select> selects = new ArrayList<>();
        for (Video video : videos) {
            Select tempSelect = new Select();
            tempSelect.setName(video.getVideoTitle());
            tempSelect.setValue(video.getId());
            if (category != null) {
                for (Video categoryVideo : category.getVideos()) {
                    if (categoryVideo.getId().equals(video.getId())) {
                        tempSelect.setSelected(true);
                    }
                }
            }
            selects.add(tempSelect);
        }

        return Result.of(selects);
    }

    @PostMapping("create")
    public Result create(@RequestBody CategoryDTO categoryDTO) {

        List<Video> videos = new ArrayList<>();
        for (Integer videoId : categoryDTO.getVideoIds()) {
            videos.add(videoService.getById(videoId));
        }

        Category category = new Category();
        category.setCategoryName(categoryDTO.getCategoryName());
        category.setVideos(videos);
        Category save = categoryService.create(category);
        return Result.of(save);

    }

    @PostMapping("update")
    public Result update(@RequestBody CategoryDTO categoryDTO) {

        List<Video> videos = new ArrayList<>();
        for (Integer videoId : categoryDTO.getVideoIds()) {
            videos.add(videoService.getById(videoId));
        }

        Category category = new Category();
        category.setId(categoryDTO.getId());
        category.setCategoryName(categoryDTO.getCategoryName());
        category.setVideos(videos);
        Category save = categoryService.update(category);
        return Result.of(save);

    }

    @PostMapping("delete")
    public Result delete(Integer id) {
        categoryService.deleteById(id);
        return Result.of(id);
    }
}