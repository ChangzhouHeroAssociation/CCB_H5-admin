package cn.huanzi.qch.baseadmin.ccb.videoteacher.service;

import cn.huanzi.qch.baseadmin.common.service.CommonServiceImpl;
import cn.huanzi.qch.baseadmin.ccb.videoteacher.pojo.VideoTeacher;
import cn.huanzi.qch.baseadmin.ccb.videoteacher.repository.VideoTeacherRepository;
import cn.huanzi.qch.baseadmin.ccb.videoteacher.vo.VideoTeacherVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * 视频和讲师一对多关系表 ServiceImpl
 *
 * ${author}
 * ${date}
 */
@Service
@Transactional
public class VideoTeacherServiceImpl extends CommonServiceImpl<VideoTeacherVo, VideoTeacher, Integer> implements VideoTeacherService{

    @PersistenceContext
    private EntityManager em;
    
    @Autowired
    private VideoTeacherRepository videoTeacherRepository;

}

