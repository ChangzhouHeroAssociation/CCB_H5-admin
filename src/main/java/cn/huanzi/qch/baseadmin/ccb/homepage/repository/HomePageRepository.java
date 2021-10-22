package cn.huanzi.qch.baseadmin.ccb.homepage.repository;

import cn.huanzi.qch.baseadmin.ccb.homepage.pojo.HomePage;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
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

    /**
     * 获取第一条数据
     */
    @Query(nativeQuery = true, value = "select * from home_page limit 1")
    HomePage getFirst();
}
