package cn.huanzi.qch.baseadmin.ccb.advertisement.controller;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.service.ChannelService;
import cn.huanzi.qch.baseadmin.ccb.upload.service.FileService;
import cn.huanzi.qch.baseadmin.ccb.advertisement.pojo.Advertisement;
import cn.huanzi.qch.baseadmin.ccb.advertisement.service.AdvertisementService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 *  Controller
 *
 * ${author}
 * ${date}
 */
@RestController
@RequestMapping("/ccb/advertisement/")
public class AdvertisementController {
    @Autowired
    private AdvertisementService advertisementService;

    @Autowired
    private ChannelService channelService;

    @Autowired
    private FileService fileService;

    @GetMapping("index")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("ccb/advertisement/advertisement");
        mav.addObject("channels", channelService.getAll());
        return mav;
    }

    @GetMapping("adForm")
    public ModelAndView form(Integer id) {
        ModelAndView mav = new ModelAndView("ccb/advertisement/adForm");

        if (id == null) {
            mav.addObject("ad", null);
        } else {
            Advertisement ad = advertisementService.getById(id);
            mav.addObject("ad", ad);
        }

        mav.addObject("channels", channelService.getAll());

        return mav;
    }

    @GetMapping("page")
    public Result paging(Integer page, Integer limit, @RequestParam(name = "name", required = false, defaultValue = "") String keyword) {
        if (page == null || page < 0) {
            page = 1;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }
        Page pagination = advertisementService.pagination(page - 1, limit, keyword);
        return Result.of(pagination);
    }

    @GetMapping("get")
    public Result getOne(Integer id) {
        if (id == null) {
            return Result.of(null, true, 405, "?????????id");
        }
        Advertisement advertisement = advertisementService.getById(id);
        if (advertisement == null) {
            return Result.of(null, true, 405, "??????????????????");
        }
        return Result.of(advertisement);
    }

    @PostMapping("create")
    public Result create(Advertisement ad, Integer channelId) {
        if (channelId == null) {
            return Result.of(null, false, 400, "??????id????????????");
        }
        Channel channel = channelService.getById(channelId);
        if (channel == null) {
            return Result.of(null, false, 400, "??????????????????");
        }
        ad.setChannel(channel);
        Advertisement advertisement = advertisementService.create(ad);
        return Result.of(advertisement);
    }

    @PostMapping("update")
    public Result update(Advertisement ad, Integer channelId) {
        if (channelId == null) {
            return Result.of(null, false, 400, "??????id????????????");
        }
        Channel channel = channelService.getById(channelId);
        if (channel == null) {
            return Result.of(null, false, 400, "??????????????????");
        }
        ad.setChannel(channel);
        Advertisement advertisement = advertisementService.update(ad);
        return Result.of(advertisement);
    }

    @PostMapping("delete")
    public Result deleteById(Integer id) {
        if (id == null) {
            return Result.of(id, false, 400, "?????????id");
        }
        Advertisement ad = advertisementService.getById(id);
        if (ad == null) {
            return Result.of(id, false, 400, "??????????????????");
        }
        try {
            fileService.deleteImage(ad.getImageUrl());
            advertisementService.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return Result.of(id, false, 400, "????????????");
        }
        return Result.of(id);
    }
}

