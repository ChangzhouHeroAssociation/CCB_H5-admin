package cn.huanzi.qch.baseadmin.ccb.advertisement.pojo;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
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
@Table(name = "advertisement")
@Data
public class Advertisement implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;//广告id

    private String imageUrl;//图片url

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

    private String targetUrl;//跳转的url

    /** 频道 */
    @ManyToOne(cascade={CascadeType.MERGE,CascadeType.REFRESH},optional=false)
    @JoinColumn(name = "channel_id", referencedColumnName = "id")
    private Channel channel;

}

