package cn.huanzi.qch.baseadmin.ccb.videoteacher.pojo;

import lombok.Data;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * 视频和讲师一对多关系表 实体类
 *
 * ${author}
 * ${date}
 */
@Entity
@Table(name = "video_teacher")
@Data
public class VideoTeacher implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;//关系编号

    private Integer videoId;//视频编号

    private Integer teacherId;//讲师编号

  
}

