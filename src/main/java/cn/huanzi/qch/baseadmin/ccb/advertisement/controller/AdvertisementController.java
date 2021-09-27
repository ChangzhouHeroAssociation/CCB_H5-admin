package cn.huanzi.qch.baseadmin.ccb.advertisement.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.advertisement.pojo.Advertisement;
import cn.huanzi.qch.baseadmin.ccb.advertisement.service.AdvertisementService;
import cn.huanzi.qch.baseadmin.ccb.advertisement.vo.AdvertisementVo;
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
@RequestMapping("/sys/advertisement/")
public class AdvertisementController extends CommonController<AdvertisementVo, Advertisement, Integer> {
    @Autowired
    private AdvertisementService advertisementService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("sys/advertisement/index");
    }
}

