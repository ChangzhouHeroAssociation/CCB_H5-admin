package com.huike.ccb_h5_admin;

import com.huike.ccb_h5_admin.entity.User;
import com.huike.ccb_h5_admin.mapper.UserMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

/**
 * @ClassName: TestDataSource
 * @Description: 测试数据源
 * @Author: zhuaowei
 * @Date: 2021/9/25
 * @Version: 1.0
 */

@SpringBootTest
public class TestDataSource {
    @Resource
    private UserMapper userMapper;

    /**
     * @Author zhuaowei
     * @Description
     * @Date 2021/9/25 21:03
     */
    @Test
    public void test() {
        User user = userMapper.selectById(1);
        System.out.println(user);
    }
}
