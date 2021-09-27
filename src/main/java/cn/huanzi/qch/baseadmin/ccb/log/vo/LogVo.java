package cn.huanzi.qch.baseadmin.ccb.log.vo;

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
public class LogVo extends PageCondition implements Serializable {
    private Integer id;//日志编号

    private String logPath;//日志路径

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

  
}

