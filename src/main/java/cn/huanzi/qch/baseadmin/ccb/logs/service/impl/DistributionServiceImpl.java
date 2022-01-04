package cn.huanzi.qch.baseadmin.ccb.logs.service.impl;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.Distribution;
import cn.huanzi.qch.baseadmin.ccb.logs.repository.DistributionRepository;
import cn.huanzi.qch.baseadmin.ccb.logs.service.DistributionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

/**
 * @ClassName: DistributionServiceImpl
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2022/1/2
 * @Version: 1.0
 */
@Service
public class DistributionServiceImpl implements DistributionService {
    @Autowired
    private DistributionRepository repository;

    @Override
    public Page<Distribution> pagination(int page, int limit) {
        Pageable pageable = PageRequest.of(page, limit, Sort.by(Sort.Direction.ASC, "id"));
        Page<Distribution> distributions = repository.findAll(pageable);
        return distributions;
    }

    @Override
    public Distribution getById(Integer id) {
        Distribution distribution = repository.findById(id).get();
        return distribution;
    }

    @Override
    public Distribution create(Distribution d) {
        Distribution save = repository.save(d);
        return save;
    }

    @Override
    public Distribution update(Distribution d) {
        Distribution save = repository.save(d);
        return save;
    }

    @Override
    public Integer delete(Integer id) {
        repository.deleteById(id);
        return id;
    }
}
