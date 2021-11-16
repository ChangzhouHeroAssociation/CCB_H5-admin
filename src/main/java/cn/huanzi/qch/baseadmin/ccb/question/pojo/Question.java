package cn.huanzi.qch.baseadmin.ccb.question.pojo;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 *  实体类
 *
 * ${author}
 * ${date}
 */
@Entity
@Table(name = "question")
public class Question implements Serializable {
    /** 问卷中问题编号 */
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;

    /** 问题的题目 */
    private String title;

    /** 问题的选项（用&符号隔开）数组返回，索引从1开始 */
    @Column(name = "`option`")
    private String option;

    /** 问题类型1-单选 2-多选 3-判断 4-填空 */
    private Integer category;

    /** 创建时间 */
    private Date createTime;

    /** 更新时间 */
    private Date updateTime;

    /** 倒序 数据校验最大值100 最小0 */
    private Integer weight;

    /** 频道id，频道之间用 ',' 间隔 */
    private String channelId;

    @Transient
    private List<Channel> channels;

    @Override
    public String toString() {
        return "Question{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", option='" + option + '\'' +
                ", category=" + category +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", weight=" + weight +
                ", channelId='" + channelId + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }

    public Integer getCategory() {
        return category;
    }

    public void setCategory(Integer category) {
        this.category = category;
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

    public Integer getWeight() {
        return weight;
    }

    public void setWeight(Integer weight) {
        this.weight = weight;
    }

    public String getChannelId() {
        return channelId;
    }

    public void setChannelId(String channelId) {
        this.channelId = channelId;
    }

    public List<Channel> getChannels() {
        return channels;
    }

    public void setChannels(List<Channel> channels) {
        this.channels = channels;
    }
}

