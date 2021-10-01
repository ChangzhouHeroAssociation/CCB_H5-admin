package cn.huanzi.qch.baseadmin.ccb.banner.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.banner.pojo.Banner;
import cn.huanzi.qch.baseadmin.ccb.banner.service.BannerService;
import cn.huanzi.qch.baseadmin.ccb.banner.vo.BannerVo;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

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



    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("ccb/banner/index");
    }

    @GetMapping("page")
    @ResponseBody
    public Page<Banner> paging(Integer page, Integer limit) {
        if (page == null || page < 0) {
            page = 0;
        }
        if (limit == null) {
            limit = 10;
        }
        Page<Banner> bannerPage = bannerService.pagination(page, limit);
        return bannerPage;
    }

    @GetMapping("get")
    public Result<Banner> getOne(Integer id) {
        Banner banner = bannerService.findOneById(id);
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
            return Result.of(null, true, 400, "删除失败");
        }
        bannerService.deleteById(id);
        return Result.of(null, true, "删除成功");
    }

}

