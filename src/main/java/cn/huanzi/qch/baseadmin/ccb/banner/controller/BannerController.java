package cn.huanzi.qch.baseadmin.ccb.banner.controller;

import cn.huanzi.qch.baseadmin.ccb.upload.service.FileService;
import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.banner.pojo.Banner;
import cn.huanzi.qch.baseadmin.ccb.banner.service.BannerService;
import cn.huanzi.qch.baseadmin.ccb.banner.vo.BannerVo;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import java.util.Date;

/**
 *  Controller
 *
 * ${author}
 * ${date}
 */
@RestController
@RequestMapping("/ccb/banner/")
public class BannerController extends CommonController<BannerVo, Banner, Integer> {
    @Autowired
    private BannerService bannerService;

    @Autowired
    private FileService fileService;


    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("ccb/banner/banner");
    }

    @GetMapping("bannerForm")
    public ModelAndView form(Integer id) {
        ModelAndView mav = new ModelAndView("ccb/banner/bannerForm");

        if (id == null) {
            mav.addObject("banner", null);
        } else {
            Banner banner = bannerService.getById(id);
            mav.addObject("banner", banner);
        }

        return mav;
    }


    @GetMapping("page")
    @ResponseBody
    public Result paging(Integer page, Integer limit) {
        if (page == null || page < 0) {
            page = 1;
        } else {
            page--;
        }
        if (limit == null) {
            limit = 10;
        }
        Page<Banner> bannerPage = bannerService.pagination(page, limit);
        return Result.of(bannerPage);
    }

    @GetMapping("get")
    public Result<Banner> getOne(Integer id) {
        Banner banner = bannerService.getById(id);
        if (banner == null) {
            return Result.of(banner, true, 204, "没有查找到内容");
        }

        return Result.of(banner, true, 200, "查找成功");
    }

    @PostMapping("create")
    public Result<Banner> create(Banner banner) {
        if (banner.getId() == null) {
            banner.setCreateTime(new Date());
        }
        Banner banner1 = bannerService.create(banner);
        return Result.of(banner1, true, "保存成功");
    }

    @PostMapping("update")
    public Result update(Banner banner) {
        bannerService.update(banner);
        return Result.of(banner);
    }

    @PostMapping("delete")
    public Result deleteById(Integer id) {
        if (id == null) {
            return Result.of(id, false, 400, "未输入id");
        }
        Banner result = bannerService.getById(id);
        if (result == null) {
            Result.of(id, false, 400, "没有该记录");
        }
        try {
            fileService.deleteImage(result.getUrl());
            bannerService.deleteById(id);
        } catch (Exception e) {
            return Result.of(id, false, 400, "删除失败");
        }
        return Result.of(id, true, "删除成功");
    }

}

