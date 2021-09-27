package cn.huanzi.qch.baseadmin.ccb.video.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import cn.huanzi.qch.baseadmin.ccb.video.repository.VideoRepository;
import cn.huanzi.qch.baseadmin.ccb.video.vo.VideoVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *  ServiceImpl
 *
 * ${author}
 * ${date}
 */
@Service
@Transactional
public class VideoServiceImpl extends CommonServiceImpl<VideoVo, Video, Integer> implements VideoService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private VideoRepository videoRepository;

}

