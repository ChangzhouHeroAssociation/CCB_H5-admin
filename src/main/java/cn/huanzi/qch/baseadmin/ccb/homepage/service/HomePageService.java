package cn.huanzi.qch.baseadmin.ccb.homepage.service;

import cn.huanzi.qch.baseadmin.ccb.homepage.pojo.HomePage;
import org.springframework.data.domain.Page;

public interface HomePageService {

    Page<HomePage> pagination(Integer page, Integer limit);

    HomePage getById(Integer id);

    HomePage create(HomePage homePage);

    HomePage update(HomePage homePage);

    Integer deleteById(Integer id);

}
