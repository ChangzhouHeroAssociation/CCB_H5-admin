package cn.huanzi.qch.baseadmin.ccb.logs.repository;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.Distribution;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DistributionRepository extends JpaRepository<Distribution, Integer> {
}
