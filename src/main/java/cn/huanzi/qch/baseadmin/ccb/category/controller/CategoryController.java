package cn.huanzi.qch.baseadmin.ccb.category.controller;

import cn.huanzi.qch.baseadmin.ccb.category.pojo.Category;
import cn.huanzi.qch.baseadmin.ccb.category.service.CategoryService;
import cn.huanzi.qch.baseadmin.ccb.category.vo.CategoryVo;
import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import cn.huanzi.qch.baseadmin.ccb.video.service.VideoService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import jdk.internal.dynalink.linker.LinkerServices;
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

    @PostMapping("create")
    public Result create(@RequestBody CategoryVo categoryVo) {

        List<Video> videos = new ArrayList<>();
        for (Integer videoId : categoryVo.getVideoIds()) {
            videos.add(videoService.getById(videoId));
        }

        Category category = new Category();
        category.setCategoryName(categoryVo.getCategoryName());
        category.setVideos(videos);
        Category save = categoryService.create(category);
        return Result.of(save);

    }

    @PostMapping("update")
    public Result update(@RequestBody CategoryVo categoryVo) {

        List<Video> videos = new ArrayList<>();
        for (Integer videoId : categoryVo.getVideoIds()) {
            videos.add(videoService.getById(videoId));
        }

        Category category = new Category();
        category.setCategoryName(categoryVo.getCategoryName());
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