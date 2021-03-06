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
import java.util.ArrayList;
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
    public Page<Video> pagination(Integer page, Integer limit, String channelId, String keyword) {
        // 构建查询条件
        Specification<Video> spec = new Specification<Video>() {
            @Override
            public Predicate toPredicate(Root<Video> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {

                // status 和 频道id 是 and关系
                List<Predicate> andPredicates = new ArrayList<>();
                // 创建 status = 1
                Path<Video> path = root.get("status");
                andPredicates.add(criteriaBuilder.equal(path, "1"));

                if (!"".equals(channelId.trim())) {
                    Join<Video, Channel> joinChannel = root.join(root.getModel().getSingularAttribute("channel", Channel.class), JoinType.LEFT);
                    andPredicates.add(criteriaBuilder.like(joinChannel.get("id").as(String.class), channelId));
                }
                Predicate[] array1 = new Predicate[andPredicates.size()];
                Predicate statusAndChannel = criteriaBuilder.and(andPredicates.toArray(array1));

                // 关键词之间是or关系
                List<Predicate> orPredicates = new ArrayList<>();
                // 按视频标题模糊查找
                orPredicates.add(criteriaBuilder.like(root.get("videoTitle"), "%" + keyword + "%"));
                // 按讲师名字模糊查找
                Join<Video, Teacher> joinTeacher = root.joinList("teachers", JoinType.LEFT);
                orPredicates.add(criteriaBuilder.like(joinTeacher.get("teacherName").as(String.class), "%" + keyword + "%"));

                // 条件之间用 or 连接
                Predicate[] array2 = new Predicate[orPredicates.size()];
                Predicate videoOrTeacherOrChannel = criteriaBuilder.or(orPredicates.toArray(array2));

                // status 和 关键词之间用 and 连接
                Predicate and = criteriaBuilder.and(statusAndChannel, videoOrTeacherOrChannel);
                return and;
            }
        };

        Pageable pageable = PageRequest.of(page, limit, Sort.by(Sort.Direction.ASC, "id"));
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

        Specification<Video> spec = new Specification<Video>() {
            @Override
            public Predicate toPredicate(Root<Video> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                // 创建 status = 1
                Path<Video> path = root.get("status");
                Predicate equal = criteriaBuilder.equal(path, "1");
                return equal;
            }
        };

        List<Video> videos = videoRepository.findAll(Specification.where(spec).and(distinct()));
        return videos;
    }

    @Override
    public Video create(Video video) {
        video.setCreateTime(new Date());
        video.setUpdateTime(new Date());
        video.setStatus(1);
        Video save = videoRepository.save(video);
        return save;
    }


    @Override
    public Video update(Video video) {
        Video origin = videoRepository.findById(video.getId()).get();
        video.setCreateTime(origin.getCreateTime());
        video.setUpdateTime(new Date());
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

