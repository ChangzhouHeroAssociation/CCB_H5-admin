package cn.huanzi.qch.baseadmin.ccb.videoteacher.vo;

import cn.huanzi.qch.baseadmin.common.pojo.PageCondition;
import lombok.Data;
import java.io.Serializable;
import java.util.Date;

/**
 * 视频和讲师一对多关系表 Vo
 *
 * ${author}
 * ${date}
 */
@Data
public class VideoTeacherVo extends PageCondition implements Serializable {
    private Integer id;//关系编号

    private Integer videoId;//视频编号

    private Integer teacherId;//讲师编号

  
}

