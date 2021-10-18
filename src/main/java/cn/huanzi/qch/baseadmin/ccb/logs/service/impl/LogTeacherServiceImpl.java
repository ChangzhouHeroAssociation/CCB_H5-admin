package cn.huanzi.qch.baseadmin.ccb.logs.service.impl;

import cn.huanzi.qch.baseadmin.ccb.logs.pojo.LogTeacher;
import cn.huanzi.qch.baseadmin.ccb.logs.repository.LogTeacherRepository;
import cn.huanzi.qch.baseadmin.ccb.logs.service.LogTeacherService;
import jdk.nashorn.internal.ir.LiteralNode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.swing.border.EtchedBorder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName: LogTeacherServiceImpl
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/19
 * @Version: 1.0
 */
@Service
public class LogTeacherServiceImpl implements LogTeacherService {

    @Autowired
    private LogTeacherRepository logTeacherRepository;

    @Override
    public Map getAllLogTeacherBeforeTheDay() {
        List<LogTeacher> logTeachers = logTeacherRepository.getAllLogTeacherYesterday();
        List<String> teacherName = new ArrayList<>();
        List<Integer> value = new ArrayList<>();
        Map<String, List> formatData = new HashMap<>();
        for (LogTeacher logTeacher : logTeachers) {
            teacherName.add(logTeacher.getTeacherName());
            value.add(logTeacher.getCount());
        }
        formatData.put("teacherName", teacherName);
        formatData.put("value", value);
        return formatData;
    }
}
