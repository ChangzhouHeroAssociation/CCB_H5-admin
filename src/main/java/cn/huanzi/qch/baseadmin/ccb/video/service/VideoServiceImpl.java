package cn.huanzi.qch.baseadmin.ccb.video.service;

import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import cn.huanzi.qch.baseadmin.ccb.video.repository.VideoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.*;
import java.util.Date;
import java.util.List;

/**
 * ServiceImpl
 * <p>
 * ${author}
 * ${date}
 */
@Service
@Transactional
public class VideoServiceImpl implements VideoService {

    @PersistenceContext
    private EntityManager em;

    @Autowired
    private VideoRepository videoRepository;

    @Override
    public Page<Video> pagination(Integer page, Integer limit) {
        // 构建查询条件
        Specification<Video> spec = new Specification<Video>() {
            @Override
            public Predicate toPredicate(Root<Video> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                // 创建 status = 1
                Path<Video> path = root.get("status");
                Predicate equal = criteriaBuilder.equal(path, "1");
                return equal;
            }
        };

        Pageable pageable = PageRequest.of(page, limit);
        Page<Video> videos = videoRepository.findAll(spec, pageable);
        return videos;
    }

    @Override
    public Video getById(Integer id) {
        Video one = videoRepository.findById(id).get();
        return one;
    }

    @Override
    public List getAll() {
        List videos = videoRepository.findAll();
        return videos;
    }

    @Override
    public Video create(Video video) {
        video.setId(videoRepository.getMaxId() + 1);
        video.setCreateTime(new Date());
        video.setUpdateTime(new Date());
        video.setViews(0);
        video.setEnjoyCount(0);
        video.setShareCount(0);
        Video save = videoRepository.save(video);
        return save;
    }


    @Override
    public Video update(Video video) {
        Video origin = videoRepository.findById(video.getId()).get();
        video.setCreateTime(origin.getCreateTime());
        video.setUpdateTime(new Date());
        video.setViews(origin.getViews());
        video.setEnjoyCount(origin.getEnjoyCount());
        video.setShareCount(origin.getShareCount());
        Video save = videoRepository.save(video);
        return save;
    }

    @Override
    public Integer deleteById(Integer id) {
        Video one = videoRepository.findById(id).get();
        one.setStatus(0);
        videoRepository.save(one);
        return id;
    }
}

