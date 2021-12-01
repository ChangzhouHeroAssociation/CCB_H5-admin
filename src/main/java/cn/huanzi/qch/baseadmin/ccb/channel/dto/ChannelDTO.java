package cn.huanzi.qch.baseadmin.ccb.channel.dto;

import lombok.Data;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
public class ChannelDTO {
    /** 频道编号 */
    private Integer id;
    /** 频道名称 */
    private String channelName;
    /** 首页icon的url */
    private String icon;
    /** 内容文字介绍 */
    private String content;
    /** image的url */
    private String image;
    /** 视频的url */
    private String video;
    /** 状态 1正常 0删除 */
    private Integer status;
    /** 是否开启 1 开启: 0 关闭 */
    private Integer enabled;
    /** 关联视频id */
    private List<Integer> videoIds;
    /** 排序 0 - 100 倒序 */
    private Integer weight;
}
