package com.huike.ccb_h5_admin.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

/**
 * @ClassName: Video
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/9/25
 * @Version: 1.0
 */

@Data
public class Video {
    @TableId(type = IdType.AUTO)
    private Integer videoId;
    private String videoTitle;
    private String description;
    private Integer views;
    private String url;
    private Integer channelId;
    private Integer status;
    private Integer enjoyCount;
    private Integer shareCount;
}
