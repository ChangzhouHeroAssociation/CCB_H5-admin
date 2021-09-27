package cn.huanzi.qch.baseadmin.ccb.banner.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.banner.pojo.Banner;
import cn.huanzi.qch.baseadmin.ccb.banner.service.BannerService;
import cn.huanzi.qch.baseadmin.ccb.banner.vo.BannerVo;
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
@RequestMapping("/sys/banner/")
public class BannerController extends CommonController<BannerVo, Banner, Integer> {
    @Autowired
    private BannerService bannerService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("sys/banner/index");
    }
}

