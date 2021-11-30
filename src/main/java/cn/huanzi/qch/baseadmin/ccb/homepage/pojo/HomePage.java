package cn.huanzi.qch.baseadmin.ccb.homepage.pojo;

import lombok.Data;
import org.apache.tomcat.util.security.PrivilegedSetTccl;

import javax.persistence.*;

/**
 * @ClassName: HomePage
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/14
 * @Version: 1.0
 */

@Entity
@Data
@Table(name = "home_page")
public class HomePage {
    /** 主页id */
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    /** 视频连接 */
    private String videoUrl;
    /** 活动介绍 */
    private String activity;
    /** 封面URL */
    private String picture;
}
