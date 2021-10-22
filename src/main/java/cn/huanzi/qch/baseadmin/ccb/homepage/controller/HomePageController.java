package cn.huanzi.qch.baseadmin.ccb.homepage.controller;

import cn.huanzi.qch.baseadmin.ccb.homepage.pojo.HomePage;
import cn.huanzi.qch.baseadmin.ccb.homepage.service.HomePageService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;

/**
 * @ClassName: HomePageController
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/14
 * @Version: 1.0
 */

@RestController
@RequestMapping("/ccb/homepage")
public class HomePageController {
    @Autowired
    private HomePageService homePageService;

    @GetMapping("index")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("ccb/homepage/homepage");
        mav.addObject("homepage", homePageService.getFirst());
        return mav;
    }

//    @GetMapping("homepageForm")
    public ModelAndView homePageForm(Integer id) {
        ModelAndView mav = new ModelAndView("ccb/homepage/homepageForm");
        if (id == null) {
            mav.addObject("homepage", null);
        } else  {
            mav.addObject("homepage", homePageService.getById(id));
        }
        return mav;
    }

    @GetMapping("page")
    public Result page(Integer page, Integer limit) {
        if (page == null || page < 1) {
            page = 1;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }

        Page<HomePage> homePages = homePageService.pagination(page - 1, limit);
        return Result.of(homePages);
    }

    @GetMapping("get")
    public Result get(Integer id) {
        if (id == null) {
            return Result.of(id, false, 400, "请输入id");
        }
        HomePage byId = homePageService.getById(id);
        if (byId == null) {
            return Result.of(null, false, 400, "未查找到数据");
        } else {
            return Result.of(byId);
        }
    }

    @PostMapping("create")
    public Result create(HomePage homePage) {
        try {
            HomePage save = homePageService.create(homePage);
            return Result.of(save);
        } catch (Exception e) {
            return Result.of(null, false, 400, "保存失败");
        }
    }

    @PostMapping("update")
    public Result update(HomePage homePage) {
        try {
            HomePage save = homePageService.update(homePage);
            return Result.of(save);
        } catch (Exception e) {
            return Result.of(null, false, 400, "保存失败");
        }
    }

    @PostMapping("delete")
    public Result delete(Integer id) {
        try {
            homePageService.deleteById(id);
            return Result.of(id);
        } catch (Exception e) {
            return Result.of(null, false, 400, "删除失败");
        }

    }
}
