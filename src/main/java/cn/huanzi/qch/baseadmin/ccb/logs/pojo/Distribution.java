package cn.huanzi.qch.baseadmin.ccb.logs.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * @ClassName: Distribution
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2022/1/2
 * @Version: 1.0
 */

@Entity
@Table(name = "distribution")
public class Distribution implements Serializable {
    /** 分发渠道id */
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    /** 渠道名称 */
    private String name;

    /** 链接 */
    private String url;

    /** 创建时间 */
    private Date createTime;

    @Override
    public String toString() {
        return "Distribution{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", url='" + url + '\'' +
                ", createTime=" + createTime +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
