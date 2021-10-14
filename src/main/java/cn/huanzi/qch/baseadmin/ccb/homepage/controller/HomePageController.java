package cn.huanzi.qch.baseadmin.ccb.homepage.controller;

import cn.huanzi.qch.baseadmin.ccb.homepage.service.HomePageService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
        return mav;
    }

    @GetMapping("homepageForm")
    public ModelAndView homePageForm(Integer id) {
        ModelAndView mav = new ModelAndView("ccb/homepage/homepageForm");
        if (id == null) {
            mav.addObject("homepage", null);
        } else  {
            mav.addObject("homepage", homePageService.getById(id));
        }
        return mav;
    }


}
