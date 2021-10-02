package cn.huanzi.qch.baseadmin.ccb.answer.vo;

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
public class AnswerVo extends PageCondition implements Serializable {
    private Integer id;//问卷结果编号（含多个问题，用&隔开）

    private Integer questionId;//对应题目编号（用&符号隔开）

    private String result;//回答结果（选项用&符号隔开）

    private Integer channelId;//对应频道id

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

  
}
