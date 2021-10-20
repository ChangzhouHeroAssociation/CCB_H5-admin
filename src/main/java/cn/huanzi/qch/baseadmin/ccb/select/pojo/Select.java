package cn.huanzi.qch.baseadmin.ccb.select.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @ClassName: Select
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/16
 * @Version: 1.0
 */

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Select {
    /** 显示名字 */
    private String name;
    /** option的值 */
    private Integer value;
    /** 默认不选中 */
    private boolean selected = false;
    /** 默认启用 */
    private boolean disabled = false;
}
