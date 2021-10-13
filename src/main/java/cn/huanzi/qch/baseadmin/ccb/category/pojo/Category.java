package cn.huanzi.qch.baseadmin.ccb.category.pojo;

import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.List;
import java.util.Set;

/**
 * @ClassName: Category
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/11
 * @Version: 1.0
 */

@Entity
@Table(name = "category")
public class Category {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    /** 类别id */
    private Integer id;
    /** 类别名 */
    private String categoryName;

    /** 视频列表 */
    @ManyToMany(targetEntity = Video.class, fetch = FetchType.EAGER)
    @JoinTable(
            name = "video_category_relation",
            joinColumns = @JoinColumn(name = "category_id", referencedColumnName = "id"),
            inverseJoinColumns = @JoinColumn(name = "video_id", referencedColumnName = "id")
    )
    private List<Video> videos;

    @Override
    public String toString() {
        return "Category{" +
                "id=" + id +
                ", categoryName='" + categoryName + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public List<Video> getVideos() {
        return videos;
    }

    public void setVideos(List<Video> videos) {
        this.videos = videos;
    }
}
