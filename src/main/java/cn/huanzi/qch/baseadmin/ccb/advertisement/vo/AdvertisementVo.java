package cn.huanzi.qch.baseadmin.ccb.advertisement.vo;

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
public class AdvertisementVo extends PageCondition implements Serializable {
    private Integer id;//广告id

    private String imageUrl;//图片url

    private Date createTime;//创建时间

    private Date updateTime;//更新时间

    private String targetUrl;//跳转的url

  
}

