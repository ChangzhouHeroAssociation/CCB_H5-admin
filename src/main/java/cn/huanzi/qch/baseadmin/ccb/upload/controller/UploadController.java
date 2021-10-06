package cn.huanzi.qch.baseadmin.ccb.upload.controller;

import cn.huanzi.qch.baseadmin.common.pojo.Result;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.xml.crypto.dsig.keyinfo.RetrievalMethod;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.*;

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

    /** 图片上传路径 */
    @Value("${file.upload-path.image}")
    public String imageUploadPath;

    /** 视频上传路径 */
    @Value("${file.upload-path.video}")
    public String videoUploadPath;

    /** 日期格式化 */
    public SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");


    /**
     * 上传图片
     */
    @PostMapping("image")
    @ResponseBody
    public Result image(@RequestParam("file") MultipartFile file, HttpServletRequest request) throws IOException {
        // 常见图片格式后缀
        List imageSuffix = new ArrayList<String>(Arrays.asList(".PNG", ".JPG", ".GIF", ".BMP", ".DIB",
                ".PCP", ".DIF", ".WMF", ".TIF", ".EPS", ".PSD", ".CDR", ".IFF", ".TGA", ".PCD", ".MPT"));
        // 图片扩展名
        String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        // 如果不是图片后缀
        if (!imageSuffix.contains(suffix.toUpperCase())) {
            return Result.of(null, false, 400, "文件格式不支持");
        }

        // 图片名字，时间作名字
        String fileName = simpleDateFormat.format(new Date());
        // 创建图片对象
        File image = new File(imageUploadPath + "/" + fileName + suffix);
        System.out.println(image.getAbsolutePath());
        // 判断路径是否存在，不存在则创建
        if (!image.getParentFile().exists()) {
            image.getParentFile().mkdir();
        }
        Map data = new HashMap<String, String>();
        try {
            file.transferTo(image);
            String url = "http://ccb-admin.cczuit.cn/upload/img/" + fileName + suffix;
            System.out.println("url ->" + url);
            data.put("url", url);
            return Result.of(data);
        } catch (IOException e) {
            data.put("url", null);
            return Result.of(data, false, 400, "上传失败");
        }
    }
}
