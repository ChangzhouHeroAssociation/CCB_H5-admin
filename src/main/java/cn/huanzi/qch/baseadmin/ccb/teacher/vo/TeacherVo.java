package cn.huanzi.qch.baseadmin.ccb.teacher.vo;

import cn.huanzi.qch.baseadmin.common.pojo.PageCondition;
import lombok.Data;
import java.io.Serializable;
import java.util.Date;

/**
 *  Vo
 *
 * ${author}
 * ${date}
 */
@Data
public class TeacherVo extends PageCondition implements Serializable {
    private Integer id;//讲师编号

    private String teacherName;//讲师姓名

    private String description;//讲师简介

    private String teacherPhoto;//头像url

    private Integer status;//状态：1正常 0删除 --> 软删除

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

  
}

