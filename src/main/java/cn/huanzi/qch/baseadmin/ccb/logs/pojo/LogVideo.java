package cn.huanzi.qch.baseadmin.ccb.logs.pojo;

import javax.persistence.*;
import java.util.Date;

/**
 * @ClassName: LogVideo
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/18
 * @Version: 1.0
 */

@Entity
@Table(name = "log_video")
public class LogVideo {
    /** 日志id */
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    /** 观看次数 */
    private Integer viewCount;
    /** 分享次数 */
    private Integer shareCount;
    /** 视频名字 */
    private String videoName;
    /** 创建时间 */
    private Date createTime;
    /** 分发渠道 */
    @ManyToOne(cascade={CascadeType.MERGE,CascadeType.REFRESH},optional=false)
    @JoinColumn(name = "distribution_id", referencedColumnName = "id")
    private Distribution distribution;

    @Override
    public String toString() {
        return "LogVideo{" +
                "id=" + id +
                ", viewCount=" + viewCount +
                ", shareCount=" + shareCount +
                ", videoName='" + videoName + '\'' +
                ", createTime=" + createTime +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getViewCount() {
        return viewCount;
    }

    public void setViewCount(Integer viewCount) {
        this.viewCount = viewCount;
    }

    public Integer getShareCount() {
        return shareCount;
    }

    public void setShareCount(Integer shareCount) {
        this.shareCount = shareCount;
    }

    public String getVideoName() {
        return videoName;
    }

    public void setVideoName(String videoName) {
        this.videoName = videoName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
