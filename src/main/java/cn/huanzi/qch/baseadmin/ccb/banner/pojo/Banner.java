package cn.huanzi.qch.baseadmin.ccb.banner.pojo;

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
@Table(name = "banner")
@Data
public class Banner implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;//banner编号

    private String bannerName;//banner名称

    private String url;//url

    private Integer weight;//倒序 数据校验最大值100 最小0

    private Date createTime;//创建时间

    private Date updateTime;//更新时间
}

