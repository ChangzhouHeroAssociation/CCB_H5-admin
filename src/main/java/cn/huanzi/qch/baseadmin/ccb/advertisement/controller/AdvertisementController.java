package cn.huanzi.qch.baseadmin.ccb.advertisement.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.advertisement.pojo.Advertisement;
import cn.huanzi.qch.baseadmin.ccb.advertisement.service.AdvertisementService;
import cn.huanzi.qch.baseadmin.ccb.advertisement.vo.AdvertisementVo;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.PostUpdate;
import java.awt.print.PageFormat;

/**
 *  Controller
 *
 * ${author}
 * ${date}
 */
@RestController
@RequestMapping("/ccb/advertisement/")
public class AdvertisementController extends CommonController<AdvertisementVo, Advertisement, Integer> {
    @Autowired
    private AdvertisementService advertisementService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("ccb/advertisement/index");
    }

    @GetMapping("page")
    public Page paging(Integer page, Integer limit) {
        if (page == null || page < 0) {
            page = 0;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }
        Page pagination = advertisementService.pagination(page, limit);
        return pagination;
    }

    @GetMapping("get")
    public Result getOne(Integer id) {
        Advertisement advertisement = advertisementService.getById(id);
        if (advertisement == null) {
            return Result.of(null, true, 405, "未查找到数据");
        }
        return Result.of(advertisement);
    }

    @PostMapping("create")
    public Result create(Advertisement ad) {
        Advertisement advertisement = advertisementService.create(ad);
        return Result.of(advertisement);
    }

    @PostMapping("update")
    public Result update(Advertisement ad) {
        Advertisement advertisement = advertisementService.update(ad);
        return Result.of(advertisement);
    }

    @PostMapping("delete")
    public Result deleteById(Integer id) {
        advertisementService.deleteById(id);
        return Result.of(id);
    }
}

