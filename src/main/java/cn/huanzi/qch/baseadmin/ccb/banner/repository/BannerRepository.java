package cn.huanzi.qch.baseadmin.ccb.banner.repository;

import cn.huanzi.qch.baseadmin.common.repository.*;
import cn.huanzi.qch.baseadmin.ccb.banner.pojo.Banner;
import org.hibernate.sql.Insert;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 *  Repository
 *
 * ${author}
 * ${date}
 */
@Repository
public interface BannerRepository extends CommonRepository<Banner, Integer> {
}

