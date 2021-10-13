package cn.huanzi.qch.baseadmin.ccb.upload.controller;

import cn.huanzi.qch.baseadmin.ccb.upload.service.FileService;
import cn.huanzi.qch.baseadmin.common.pojo.Result;
import com.sun.org.apache.xpath.internal.operations.Mult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.*;

/**
 * @ClassName: UploadController
 * @Description: 文件上传
 * @Author: zhuaowei
 * @Date: 2021/10/1
 * @Version: 1.0
 */

@Controller
@RequestMapping("uploadFile")
public class UploadController {

    @Autowired
    private FileService fileService;

    /**
     * 上传图片
     */
    @PostMapping("image")
    @ResponseBody
    public Result image(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {

        Map data = new HashMap<String, String>();
        String imageUrl = fileService.uploadImage(file);
        if (imageUrl == null) {
            data.put("url", null);
            return Result.of(data, false, 400, "上传失败");
        } else {
            data.put("url", imageUrl);
            return Result.of(data);
        }

    }

    /**
     * 上传视频
     */
    @PostMapping("video")
    @ResponseBody
    public Result video(@RequestParam("file") MultipartFile file, HttpServletRequest request) {

        Map data = new HashMap<String, String>();
        String videoUrl = fileService.uploadVideo(file);
        if (videoUrl == null) {
            data.put("url", null);
            return Result.of(data, false, 400, "上传失败");
        } else {
            data.put("url", videoUrl);
            return Result.of(data);
        }
    }
}
