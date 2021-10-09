package cn.huanzi.qch.baseadmin.ccb.advertisement.service;

import cn.huanzi.qch.baseadmin.ccb.advertisement.pojo.Advertisement;
import org.springframework.data.domain.Page;

/**
 *  Service
 *
 * ${author}
 * ${date}
 */
public interface AdvertisementService {

    Page pagination(Integer page, Integer limit);

    Advertisement getById(Integer id);

    Advertisement create(Advertisement ad);

    Advertisement update(Advertisement ad);

    Integer deleteById(Integer id);

}

