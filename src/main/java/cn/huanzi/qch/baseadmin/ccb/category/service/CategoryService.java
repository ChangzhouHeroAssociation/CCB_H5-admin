package cn.huanzi.qch.baseadmin.ccb.category.service;

import cn.huanzi.qch.baseadmin.ccb.category.pojo.Category;
import org.springframework.data.domain.Page;

import java.util.List;

/**
 * @ClassName: CategoryService
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/11
 * @Version: 1.0
 */

public interface CategoryService {

    Page<Category> pagination(Integer page, Integer limit, String categoryName);

    Category getById(Integer id);

    List getAll();

    Category create(Category category);

    Category update(Category category);

    Integer deleteById(Integer id);

}
