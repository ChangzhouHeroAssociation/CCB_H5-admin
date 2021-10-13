package cn.huanzi.qch.baseadmin.ccb.category.vo;

import lombok.Data;

import java.util.List;

/**
 * @ClassName: CategoryVo
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/13
 * @Version: 1.0
 */

@Data
public class CategoryVo {

    private Integer id;
    private String categoryName;
    private List<Integer> videoIds;

}
