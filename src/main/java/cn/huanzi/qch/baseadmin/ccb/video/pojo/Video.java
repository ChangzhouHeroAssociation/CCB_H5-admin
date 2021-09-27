package cn.huanzi.qch.baseadmin.ccb.video.pojo;

import lombok.Data;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 *  实体类
 *
 * ${author}
 * ${date}
 */
@Entity
@Table(name = "video")
@Data
public class Video implements Serializable {
    @Id
        private Integer id;//视频编号

    private String videoTitle;//视频标题

    private String description;//视频简介

    private Integer views;//观看次数统计

    private String url;//视频链接

    private Integer channelId;//频道编号

    private Integer status;//状态：1正常 0删除 --> 软删除

    private Integer enjoyCount;//点赞数量

    private Integer shareCount;//分享数量

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

  
}

