package cn.huanzi.qch.baseadmin.ccb.logs.service;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.Distribution;
import org.springframework.data.domain.Page;

public interface DistributionService {
    Page<Distribution> pagination(int page, int limit);
    Distribution getById(Integer id);
    Distribution create(Distribution d);
    Distribution update(Distribution d);
    Integer delete(Integer id);
}
