package cn.huanzi.qch.baseadmin.ccb.homepage.repository;

import cn.huanzi.qch.baseadmin.ccb.homepage.pojo.HomePage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @ClassName: HomePageRepository
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/14
 * @Version: 1.0
 */

@Repository
public interface HomePageRepository extends JpaRepository<HomePage, Integer> {
}
