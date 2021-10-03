package cn.huanzi.qch.baseadmin.util;

import org.springframework.util.ResourceUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.IIOImage;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @ClassName: UploadUtil
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/1
 * @Version: 1.0
 */

public class UploadUtil {

    // 图片访问路径
    private static final String IMAGE_SERVER_PATH = "http://localhost:8081/upload/img/";
    // 视频访问路径
    private static final String VIDEO_SERVER_PATH = "http://localhost:8081/upload/video/";

    /**
     * 上传图片
     * 返回图片的访问路径
     */
    public static String uploadImage(MultipartFile file) throws FileNotFoundException {
        //获取根目录
        File rootPath = new File(ResourceUtils.getURL("classpath:").getPath());
        if (!rootPath.exists()){
            rootPath = new File("");
        }
        File image_base_path = new File(rootPath.getAbsolutePath(),"static/upload/img/");
        if (!image_base_path.exists()){
            image_base_path.mkdirs();
        }

        // 图片名字
        String fileName = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
        // 扩展名
        String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        // 创建图片对象
        File image = new File(image_base_path, fileName + suffix);
        // 判断路径是否存在，不存在则创建
        if (!image.getParentFile().exists()) {
            image.getParentFile().mkdir();
        }
        try {
            file.transferTo(image);
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
        return IMAGE_SERVER_PATH + fileName + suffix;
    }
}
