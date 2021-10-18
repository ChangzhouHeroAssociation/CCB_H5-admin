package cn.huanzi.qch.baseadmin.ccb.logs.pojo;

import javax.persistence.*;
import java.util.Date;

/**
 * @ClassName: LogTeacher
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/18
 * @Version: 1.0
 */

@Entity
@Table(name = "log_teacher")
public class LogTeacher {

    /** 日志id */
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    /** 访问次数 */
    private Integer count;
    /** 讲师名字 */
    private String teacherName;
    /** 创建时间 */
    private Date createTime;

    @Override
    public String toString() {
        return "LogChannel{" +
                "id=" + id +
                ", count=" + count +
                ", teacherName='" + teacherName + '\'' +
                ", createTime=" + createTime +
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

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String channelName) {
        this.teacherName = channelName;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
