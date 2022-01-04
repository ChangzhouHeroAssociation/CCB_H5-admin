package cn.huanzi.qch.baseadmin.ccb.logs.pojo;

import javax.persistence.*;
import java.io.Serializable;

/**
 * @ClassName: Distribution
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2022/1/2
 * @Version: 1.0
 */

@Entity
@Table(name = "log_channel")
public class Distribution implements Serializable {
    /** 分发渠道id */
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    /** 渠道名称 */
    private String name;

    @Override
    public String toString() {
        return "Distribution{" +
                "id=" + id +
                ", name='" + name + '\'' +
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
}
