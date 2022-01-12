package cn.huanzi.qch.baseadmin.ccb.logs.service.impl;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogChannel;
import cn.huanzi.qch.baseadmin.ccb.logs.repository.LogChannelRepository;
import cn.huanzi.qch.baseadmin.ccb.logs.service.LogChannelService;
import com.mysql.jdbc.StringUtils;
import com.mysql.jdbc.log.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.*;
import javax.xml.ws.soap.Addressing;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @ClassName: LogChannelServiceImpl
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/18
 * @Version: 1.0
 */

@Service
public class LogChannelServiceImpl implements LogChannelService {
    @Autowired
    private LogChannelRepository logChannelRepository;

    @Override
    public Map getAllLogChannelBeforeTheDay() {
        List<LogChannel> logChannels = logChannelRepository.getAllLogChannelYesterday();
        Map<String, List> formatData = new HashMap<>();
        List<String> channelName = new ArrayList<>();
        List<Integer> value = new ArrayList<>();
        for (LogChannel logChannel : logChannels) {
            channelName.add(logChannel.getChannelName());
            value.add(logChannel.getCount());
        }
        formatData.put("channelName", channelName);
        formatData.put("value", value);
        return formatData;
    }

    @Override
    public Page<LogChannel> getLogPageBy(String channelName, Integer distributionId, Date startTime, Date endTime, Integer page, Integer limit) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Specification<LogChannel> spec = new Specification<LogChannel>() {
            @Override
            public Predicate toPredicate(Root<LogChannel> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
                // 各条件之间为and
                List<Predicate> andPredicates = new ArrayList<>();

                andPredicates.add(criteriaBuilder.like(root.get("channelName"), "%" + channelName + "%"));
                if (distributionId != null) {
                    andPredicates.add(criteriaBuilder.equal(root.get("distributionId"), distributionId));
                }
                if (!StringUtils.isNullOrEmpty(sdf.format(startTime)) && !StringUtils.isNullOrEmpty(sdf.format(endTime))) {
                    andPredicates.add(criteriaBuilder.between(root.get("createTime"), startTime, endTime));
                }
                Predicate[] predicates = new Predicate[andPredicates.size()];
                Predicate searchPredicates = criteriaBuilder.and(andPredicates.toArray(predicates));
                return searchPredicates;
            }
        };
        PageRequest pageRequest = PageRequest.of(page, limit);
        Page<LogChannel> logChannelPage = logChannelRepository.findAll(spec, pageRequest);
        return logChannelPage;
    }
}
