package cn.huanzi.qch.baseadmin.ccb.channel.vo;

import cn.huanzi.qch.baseadmin.common.pojo.PageCondition;
import lombok.Data;
import java.io.Serializable;
import java.util.Date;

/**
 *  Vo
 *
 * ${author}
 * ${date}
 */
@Data
public class ChannelVo extends PageCondition implements Serializable {
    private Integer id;//频道编号

    private String channelName;//频道名称

    private String icon;//首页icon的url

    private String text;//内容文字介绍

    private String image;//image的url

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

  
}

