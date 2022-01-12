package cn.huanzi.qch.baseadmin.ccb.logs.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

/**
 * @ClassName: LogChannel
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/18
 * @Version: 1.0
 */

@Entity
@Table(name = "log_channel")
public class LogChannel {
    /** 日志id */
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    /** 访问次数 */
    private Integer count;
    /** 频道名字 */
    private String channelName;
    /** 创建时间 */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date createTime;
    /** 分发渠道 */
    @ManyToOne(cascade={CascadeType.MERGE,CascadeType.REFRESH},optional=false)
    @JoinColumn(name = "distribution_id", referencedColumnName = "id")
    private Distribution distribution;

    @Override
    public String toString() {
        return "LogChannel{" +
                "id=" + id +
                ", count=" + count +
                ", channelName='" + channelName + '\'' +
                ", createTime=" + createTime +
                ", distribution=" + distribution +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public String getChannelName() {
        return channelName;
    }

    public void setChannelName(String channelName) {
        this.channelName = channelName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Distribution getDistribution() {
        return distribution;
    }

    public void setDistribution(Distribution distribution) {
        this.distribution = distribution;
    }
}
