package com.huike.ccb_h5_admin.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.util.Date;
import java.util.concurrent.TimeUnit;

/**
 * @ClassName: Answer
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/9/25
 * @Version: 1.0
 */

@Data
public class Answer {
    @TableId(type = IdType.AUTO)
    private Integer answerId;
    private String result;
    private Integer userId;
    private Integer questionId;
    private Date time;
}
