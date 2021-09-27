package cn.huanzi.qch.baseadmin.ccb.log.controller;

import cn.huanzi.qch.baseadmin.common.controller.CommonController;
import cn.huanzi.qch.baseadmin.ccb.log.pojo.Log;
import cn.huanzi.qch.baseadmin.ccb.log.service.LogService;
import cn.huanzi.qch.baseadmin.ccb.log.vo.LogVo;
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
@RequestMapping("/sys/log/")
public class LogController extends CommonController<LogVo, Log, Integer> {
    @Autowired
    private LogService logService;

    @GetMapping("index")
    public ModelAndView index() {
        return new ModelAndView("sys/log/index");
    }
}

