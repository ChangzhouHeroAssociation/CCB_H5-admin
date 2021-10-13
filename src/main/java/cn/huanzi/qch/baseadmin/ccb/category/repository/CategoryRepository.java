package cn.huanzi.qch.baseadmin.ccb.category.repository;

import cn.huanzi.qch.baseadmin.ccb.category.pojo.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

/**
 * @ClassName: CategoryRepository
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/11
 * @Version: 1.0
 */
@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer>, JpaSpecificationExecutor<Category> {
}
