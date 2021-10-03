package cn.huanzi.qch.baseadmin.ccb.upload.controller;

import cn.huanzi.qch.baseadmin.common.pojo.Result;
import cn.huanzi.qch.baseadmin.util.UploadUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName: UploadController
 * @Description: 文件上传
 * @Author: zhuaowei
 * @Date: 2021/10/1
 * @Version: 1.0
 */

@Controller
@RequestMapping("upload")
public class UploadController {

    /**
     * 上传图片
     */
    @PostMapping("image")
    @ResponseBody
    public Result image(@RequestParam("img") MultipartFile file, HttpServletRequest request) throws IOException {

        String image = UploadUtil.uploadImage(file);

        Result<Map> result;
        // 上传成功
        if (image != null) {
            Map data = new HashMap<String, String>();
            data.put("src", image);
            result = Result.of(data, true, 200, "success");
            return result;
        } else {
            result = Result.of(null, true, 400, "failed");
        }
        return result;
    }
}
