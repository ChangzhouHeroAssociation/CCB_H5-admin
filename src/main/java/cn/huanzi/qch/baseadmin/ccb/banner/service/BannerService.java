package cn.huanzi.qch.baseadmin.ccb.banner.service;

import cn.huanzi.qch.baseadmin.common.service.*;
import cn.huanzi.qch.baseadmin.ccb.banner.pojo.Banner;
import cn.huanzi.qch.baseadmin.ccb.banner.vo.BannerVo;
import org.springframework.data.domain.Page;

import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 *  Service
 *
 * ${author}
 * ${date}
 */
public interface BannerService extends CommonService<BannerVo, Banner, Integer> {

    Page<Banner> pagination(Integer page, Integer limit);

    Banner getById(Integer id);

    Banner create(Banner banner);

    Banner update(Banner banner);

    void deleteById(Integer id);
}

