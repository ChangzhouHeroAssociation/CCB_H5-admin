package cn.huanzi.qch.baseadmin.ccb.log.pojo;

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
@Table(name = "log")
@Data
public class Log implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;//日志编号

    private String logPath;//日志路径

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

  
}

