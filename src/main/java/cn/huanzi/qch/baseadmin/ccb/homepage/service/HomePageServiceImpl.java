package cn.huanzi.qch.baseadmin.ccb.homepage.service;

import cn.huanzi.qch.baseadmin.ccb.homepage.pojo.HomePage;
import cn.huanzi.qch.baseadmin.ccb.homepage.repository.HomePageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

/**
 * @ClassName: HomePageServiceImpl
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/14
 * @Version: 1.0
 */

@Service
public class HomePageServiceImpl implements HomePageService{

    @Autowired
    private HomePageRepository homePageRepository;

    @Override
    public Page<HomePage> pagination(Integer page, Integer limit) {
        Page<HomePage> homePages = homePageRepository.findAll(PageRequest.of(page, limit));
        return homePages;
    }

    @Override
    public HomePage getById(Integer id) {
        HomePage homePage = homePageRepository.findById(id).get();
        return homePage;
    }

    @Override
    public HomePage create(HomePage homePage) {
        HomePage save = homePageRepository.save(homePage);
        return save;
    }

    @Override
    public HomePage update(HomePage homePage) {
        HomePage save = homePageRepository.save(homePage);
        return save;
    }

    @Override
    public Integer deleteById(Integer id) {
        homePageRepository.deleteById(id);
        return id;
    }
}
