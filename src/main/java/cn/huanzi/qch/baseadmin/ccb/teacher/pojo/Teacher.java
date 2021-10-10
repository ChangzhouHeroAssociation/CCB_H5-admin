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
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;//讲师编号

    private String teacherName;//讲师姓名

    private String description;//讲师简介

    private String teacherPhoto;//头像url

    private Integer status;//状态：1正常 0删除 --> 软删除

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

}

