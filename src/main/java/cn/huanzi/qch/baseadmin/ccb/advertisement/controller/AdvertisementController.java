package cn.huanzi.qch.baseadmin.ccb.advertisement.controller;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.channel.service.ChannelService;
import cn.huanzi.qch.baseadmin.ccb.upload.service.FileService;
import cn.huanzi.qch.baseadmin.ccb.advertisement.pojo.Advertisement;
import cn.huanzi.qch.baseadmin.ccb.advertisement.service.AdvertisementService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.PropertyValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.print.attribute.standard.NumberUp;

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
        return new ModelAndView("ccb/advertisement/advertisement");
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
    public Result paging(Integer page, Integer limit) {
        if (page == null || page < 0) {
            page = 1;
        }
        if (limit == null || limit < 1) {
            limit = 10;
        }
        Page pagination = advertisementService.pagination(page - 1, limit);
        return Result.of(pagination);
    }

    @GetMapping("get")
    public Result getOne(Integer id) {
        if (id == null) {
            return Result.of(null, true, 405, "请输入id");
        }
        Advertisement advertisement = advertisementService.getById(id);
        if (advertisement == null) {
            return Result.of(null, true, 405, "未查找到数据");
        }
        return Result.of(advertisement);
    }

    @PostMapping("create")
    public Result create(Advertisement ad, Integer channelId) {
        if (channelId == null) {
            return Result.of(null, false, 400, "频道id不能为空");
        }
        Channel channel = channelService.getById(channelId);
        if (channel == null) {
            return Result.of(null, false, 400, "未查找到频道");
        }
        ad.setChannel(channel);
        Advertisement advertisement = advertisementService.create(ad);
        return Result.of(advertisement);
    }

    @PostMapping("update")
    public Result update(Advertisement ad, Integer channelId) {
        if (channelId == null) {
            return Result.of(null, false, 400, "频道id不能为空");
        }
        Channel channel = channelService.getById(channelId);
        if (channel == null) {
            return Result.of(null, false, 400, "未查找到频道");
        }
        ad.setChannel(channel);
        Advertisement advertisement = advertisementService.update(ad);
        return Result.of(advertisement);
    }

    @PostMapping("delete")
    public Result deleteById(Integer id) {
        if (id == null) {
            return Result.of(id, false, 400, "请输入id");
        }
        Advertisement ad = advertisementService.getById(id);
        if (ad == null) {
            return Result.of(id, false, 400, "未查找到记录");
        }
        try {
            fileService.deleteImage(ad.getImageUrl());
            advertisementService.deleteById(id);
        } catch (Exception e) {
            e.printStackTrace();
            return Result.of(id, false, 400, "删除失败");
        }
        return Result.of(id);
    }
}

