package cn.huanzi.qch.baseadmin.ccb.logs.service;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.Distribution;
import org.springframework.data.domain.Page;

import java.util.List;

public interface DistributionService {
    Page<Distribution> pagination(int page, int limit);
    Distribution getById(Integer id);
    List<Distribution> getAll();
    Distribution create(Distribution d);
    Distribution update(Distribution d);
    Integer delete(Integer id);
}
