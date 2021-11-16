package cn.huanzi.qch.baseadmin.ccb.video.dto;

import lombok.Data;

import java.util.Date;
import java.util.List;

/**
 * @ClassName: VideoVo
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/13
 * @Version: 1.0
 */

@Data
public class VideoDTO {
    /** 视频编号 */
    private Integer id;
    /** 视频标题 */
    private String videoTitle;
    /** 视频简介 */
    private String description;
    /** 观看次数统计 */
    private Integer views;
    /** 视频链接 */
    private String url;
    /** 状态：1正常 0删除 --> 软删除 */
    private Integer status;
    /** 点赞数量 */
    private Integer enjoyCount;
    /** 分享数量 */
    private Integer shareCount;
    /** 视频文稿 */
    private String textPage;
    /** 视频封面图片 */
    private String picture;
    /** 是否推荐 1 -> 推荐；0 -> 不推荐 */
    private Integer isRecommend;
    /** 讲师 */
    private List<Integer> teacherIds;
    /** 频道id */
    private Integer channelId;
}
