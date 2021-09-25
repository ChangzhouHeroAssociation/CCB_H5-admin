package com.huike.ccb_h5_admin.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

/**
 * @ClassName: Channel
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/9/25
 * @Version: 1.0
 */

@Data
public class Channel {
    @TableId(type = IdType.AUTO)
    private Integer channelId;
    private String channelName;
    private String icon;
    private String text;
    private String image;
}
