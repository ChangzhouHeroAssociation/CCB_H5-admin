package cn.huanzi.qch.baseadmin.ccb.channel.pojo;

import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import lombok.Data;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

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

    private String content;//内容文字介绍

    private String image;//image的url

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

    private Integer status;//状态 1正常 0删除

    private Integer enabled;//是否开启 1 开启: 0 关闭

}

