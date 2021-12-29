package cn.huanzi.qch.baseadmin.ccb.teacher.pojo;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 *  实体类
 *
 * ${author}
 * ${date}
 */
@Entity
@Table(name = "teacher")
@Data
public class Teacher implements Serializable {
    /** 讲师编号 */
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;

    /** 讲师姓名 */
    private String teacherName;

    /** 讲师简介 */
    private String description;

    /** 头像url */
    private String teacherPhoto;

    /** 状态：1正常 0删除 --> 软删除 */
    private Integer status;

    /** 讲师职务 */
    private String job;

    /** 排序 0 - 100 数字越大，排名越靠前 */
    private Integer weight;

    /** 创建时间 */
    private Date createTime;

    /** 更新时间 */
    private Date updateTime;

    /** 视频URL */
    private String video;

}

