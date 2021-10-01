package cn.huanzi.qch.baseadmin.ccb.banner.vo;

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
public class BannerVo extends PageCondition implements Serializable {
    private Integer id;//banner编号

    private String bannerName;//banner名称

    private String url;//url

    private Integer weight;//倒序 数据校验最大值100 最小0

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

  
}

