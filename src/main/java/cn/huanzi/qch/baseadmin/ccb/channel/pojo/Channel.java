package cn.huanzi.qch.baseadmin.ccb.channel.pojo;

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
@Table(name = "channel")
@Data
public class Channel implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;//频道编号

    private String channelName;//频道名称

    private String icon;//首页icon的url

    private String text;//内容文字介绍

    private String image;//image的url

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

  
}

