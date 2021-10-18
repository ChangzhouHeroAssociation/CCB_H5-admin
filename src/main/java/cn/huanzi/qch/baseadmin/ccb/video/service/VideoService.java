package cn.huanzi.qch.baseadmin.ccb.video.service;

import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import org.springframework.data.domain.Page;

import java.util.List;

/**
 * Service
 * <p>
 * ${author}
 * ${date}
 */
public interface VideoService {

    Page<Video> pagination(Integer page, Integer limit, String keyword);

    Video getById(Integer id);

    List getAll();

    Video create(Video video);

    Video update(Video video);

    Integer deleteById(Integer id);
}

