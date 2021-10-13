package cn.huanzi.qch.baseadmin.ccb.category.service;

import cn.huanzi.qch.baseadmin.ccb.category.pojo.Category;
import cn.huanzi.qch.baseadmin.ccb.category.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import javax.persistence.criteria.*;
import java.util.List;

/**
 * @ClassName: CategoryServiceImpl
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/11
 * @Version: 1.0
 */

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public Page<Category> pagination(Integer page, Integer limit, String categoryName) {

        Specification<Category> spec = new Specification<Category>() {
            @Override
            public Predicate toPredicate(Root<Category> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                Path<Object> path = root.get("categoryName");
                Predicate like = criteriaBuilder.like(path.as(String.class), "%" + categoryName + "%");
                return like;
            }
        };
        Page<Category> categoryPage = categoryRepository.findAll(spec, PageRequest.of(page, limit));
        return categoryPage;
    }

    @Override
    public Category getById(Integer id) {
        Category one = categoryRepository.findById(id).get();
        return one;
    }

    @Override
    public List getAll() {
        List Categories = categoryRepository.findAll();
        return Categories;
    }

    @Override
    public Category create(Category video) {
        Category save = categoryRepository.save(video);
        return save;
    }

    @Override
    public Category update(Category video) {
        Category save = categoryRepository.save(video);
        return save;
    }

    @Override
    public Integer deleteById(Integer id) {
        categoryRepository.deleteById(id);
        return id;
    }
}
