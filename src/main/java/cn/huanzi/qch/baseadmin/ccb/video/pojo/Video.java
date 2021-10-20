package cn.huanzi.qch.baseadmin.ccb.video.pojo;

import cn.huanzi.qch.baseadmin.ccb.category.pojo.Category;
import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;
import java.util.Set;

/**
 *  实体类
 *
 * ${author}
 * ${date}
 */
@Entity
@Table(name = "video")
public class Video implements Serializable {
    /** 视频编号 */
    @Id
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
    /** 创建时间 */
    private Date createTime;
    /** 更新时间 */
    private Date updateTime;

    /** 视频-讲师 多对多 */
    @ManyToMany(targetEntity = Teacher.class)
    @JoinTable(
            name = "video_teacher_relation",
            joinColumns = @JoinColumn(name = "video_id"),
            inverseJoinColumns = @JoinColumn(name = "teacher_id")
    )
    private List<Teacher> teachers;

    @ManyToMany(mappedBy = "videos")
    private List<Channel> channels;

    @Override
    public String toString() {
        return "Video{" +
                "id=" + id +
                ", videoTitle='" + videoTitle + '\'' +
                ", description='" + description + '\'' +
                ", views=" + views +
                ", url='" + url + '\'' +
                ", status=" + status +
                ", enjoyCount=" + enjoyCount +
                ", shareCount=" + shareCount +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVideoTitle() {
        return videoTitle;
    }

    public void setVideoTitle(String videoTitle) {
        this.videoTitle = videoTitle;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getViews() {
        return views;
    }

    public void setViews(Integer views) {
        this.views = views;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getEnjoyCount() {
        return enjoyCount;
    }

    public void setEnjoyCount(Integer enjoyCount) {
        this.enjoyCount = enjoyCount;
    }

    public Integer getShareCount() {
        return shareCount;
    }

    public void setShareCount(Integer shareCount) {
        this.shareCount = shareCount;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public List<Teacher> getTeachers() {
        return teachers;
    }

    public void setTeachers(List<Teacher> teachers) {
        this.teachers = teachers;
    }

    public List<Channel> getChannels() {
        return channels;
    }

    public void setChannels(List<Channel> channels) {
        this.channels = channels;
    }
}

