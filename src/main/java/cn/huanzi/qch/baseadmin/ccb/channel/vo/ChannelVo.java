package cn.huanzi.qch.baseadmin.ccb.channel.vo;

import lombok.Data;
import org.apache.catalina.LifecycleState;

import java.util.Date;
import java.util.List;

/**
 * @ClassName: ChannelVo
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/16
 * @Version: 1.0
 */

@Data
public class ChannelVo {
    private Integer id;//频道编号

    private String channelName;//频道名称

    private String icon;//首页icon的url

    private String content;//内容文字介绍

    private String image;//image的url

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

    private Integer status;//状态 1正常 0删除

    private Integer enabled;//是否开启 1 开启: 0 关闭

    private List<Integer> videoIds;// 关联视频id
}
