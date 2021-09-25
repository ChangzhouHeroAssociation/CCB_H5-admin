package com.huike.ccb_h5_admin;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @ClassName: Application
 * @Description: 启动类
 * @Author: zhuaowei
 * @Date: 2021/9/25
 * @Version: 1.0
 */

@SpringBootApplication
@MapperScan("com.huike.ccb_h5_admin")
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
