package cn.huanzi.qch.baseadmin.ccb.video.service;

import cn.huanzi.qch.baseadmin.ccb.channel.pojo.Channel;
import cn.huanzi.qch.baseadmin.ccb.teacher.pojo.Teacher;
import cn.huanzi.qch.baseadmin.ccb.video.pojo.Video;
import cn.huanzi.qch.baseadmin.ccb.video.repository.VideoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.*;
import javax.print.attribute.standard.Destination;
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
    public Page<Video> pagination(Integer page, Integer limit, String keyword) {
        // 构建查询条件
        Specification<Video> spec = new Specification<Video>() {
            @Override
            public Predicate toPredicate(Root<Video> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                // 创建 status = 1
                Path<Video> path = root.get("status");
                Predicate equal = criteriaBuilder.equal(path, "1");
                // 按视频标题模糊查找
                Predicate videoTitleLike = criteriaBuilder.like(root.get("videoTitle"), "%" + keyword + "%");
                // 按讲师名字模糊查找
                Join<Video, Teacher> joinTeacher = root.joinList("teachers", JoinType.LEFT);
                Predicate teahcerNameLike = criteriaBuilder.like(joinTeacher.get("teacherName").as(String.class), "%" + keyword + "%");
                // 按频道模糊查找
                Join<Video, Channel> joinChannel = root.join("channel", JoinType.LEFT);
                Predicate channelName = criteriaBuilder.like(joinChannel.get("channelName").as(String.class), "%" + keyword + "%");
                Predicate videoOrTeacherOrChannel = criteriaBuilder.or(videoTitleLike, teahcerNameLike, channelName);
                Predicate and = criteriaBuilder.and(equal, videoOrTeacherOrChannel);
                return and;
            }
        };

        Pageable pageable = PageRequest.of(page, limit);
        Page<Video> videos = videoRepository.findAll(Specification.where(spec).and(distinct()), pageable);
        return videos;
    }

    private Specification<Video> distinct() {
        return (Root<Video> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) -> {
            criteriaQuery.distinct(true);
            return criteriaQuery.getRestriction();
        };
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
        video.setCreateTime(new Date());
        video.setUpdateTime(new Date());
        video.setViews(0);
        video.setEnjoyCount(0);
        video.setShareCount(0);
        video.setStatus(1);
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
        video.setStatus(origin.getStatus());
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

