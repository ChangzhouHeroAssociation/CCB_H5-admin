package cn.huanzi.qch.baseadmin.ccb.question.pojo;

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
@Table(name = "question")
@Data
public class Question implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;//问卷中问题编号

    private String title;//问题的题目

    private String option;//问题的选项（用&符号隔开）数组返回，索引从1开始

    private Integer channelId;//所属频道

    private Integer category;//问题类型1-单选 2-多选 3-判断 4-填空

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

    private Integer weight;//倒序 数据校验最大值100 最小0

  
}

