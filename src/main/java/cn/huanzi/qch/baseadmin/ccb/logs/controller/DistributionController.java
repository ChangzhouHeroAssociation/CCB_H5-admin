package cn.huanzi.qch.baseadmin.ccb.logs.controller;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.Distribution;
import cn.huanzi.qch.baseadmin.ccb.logs.service.DistributionService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName: DistributionController
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2022/1/2
 * @Version: 1.0
 */

@RestController
@RequestMapping("/ccb/distribution")
public class DistributionController {
    @Autowired
    private DistributionService distributionService;

    @GetMapping("index")
    public ModelAndView index() {
        ModelAndView mav = new ModelAndView("ccb/distribution/d.html");
        return mav;
    }

    @GetMapping("page")
    public Result<Page> page(@RequestParam(required = false, defaultValue = "0") int page,
                             @RequestParam(required = false, defaultValue = "10") int limit) {
        Page<Distribution> distributionPage = distributionService.pagination(page, limit);
        return Result.of(distributionPage);
    }

    @GetMapping("get")
    public Result get(Integer id) {
        Distribution distribution = distributionService.getById(id);
        return Result.of(distribution);
    }

    @PostMapping("create")
    public Result create(Distribution d) {
        Distribution distribution = distributionService.create(d);
        return Result.of(distribution);
    }

    @PostMapping("update")
    public Result update(Distribution d) {
        Distribution distribution = distributionService.update(d);
        return Result.of(distribution);
    }

    @PostMapping("delete")
    public Result delete(Integer id) {
        Integer deleteId = distributionService.delete(id);
        return  Result.of(deleteId);
    }
}
