package com.huike.ccb_h5_admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @ClassName: TestController
 * @Description: 测试Controller
 * @Author: zhuaowei
 * @Date: 2021/9/25
 * @Version: 1.0
 */

@Controller
public class TestController {

    @GetMapping("test")
    @ResponseBody
    public String test() {
        return "hello test!";
    }

}
