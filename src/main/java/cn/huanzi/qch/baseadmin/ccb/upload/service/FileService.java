package cn.huanzi.qch.baseadmin.ccb.upload.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

/**
 * @ClassName: FileService
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/7
 * @Version: 1.0
 */

@Service
public class FileService {
    @Autowired
    private HttpServletRequest request;

    @Value("${project.server.address}")
    private String address;

    @Value("${server.port}")
    private String port;

    /** 图片上传路径 */
    @Value("${file.upload-path.image}")
    public String imageUploadPath;

    /** 视频上传路径 */
    @Value("${file.upload-path.video}")
    public String videoUploadPath;

    /** 日期格式化 */
    public static SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmssSSS");

    /** 常见图片格式后缀 */
    public static List imageSuffix = new ArrayList<String>(Arrays.asList(".PNG", ".JPG", ".GIF", ".BMP", ".DIB",
            ".PCP", ".DIF", ".WMF", ".TIF", ".EPS", ".PSD", ".CDR", ".IFF", ".TGA", ".PCD", ".MPT", ".JPEG", ".ICO"));

    /** 常见视频格式后缀 */
    public static List videoSuffix = new ArrayList<String>(Arrays.asList(".MP4", ".AVI", ".FLV",
            ".VOB",  ".WMV", ".MOV", ".MPEG"));


    public String getUrl() {
        String url = address + ":" + port;
        return url;
    }

    /**
     * 上传图片
     * file 传入MultipartFile 对象
     */
    public String uploadImage(MultipartFile file) {

        // 图片扩展名
        String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        // 如果不是图片后缀
        if (!imageSuffix.contains(suffix.toUpperCase())) {
            return null;
        }
        // 图片名字，时间作名字
        String fileName = simpleDateFormat.format(new Date());
        // 创建图片对象
        File image = new File(imageUploadPath + "/" + fileName + suffix);
        System.out.println("image absolutePath -> " + image.getAbsolutePath());
        // 判断路径是否存在，不存在则创建
        if (!image.getParentFile().exists()) {
            image.getParentFile().mkdir();
        }
        try {
            file.transferTo(image);
//            String url = "http://ccb-admin.cczuit.cn/upload/img/" + fileName + suffix;
            String url = getUrl() + "/upload/img/" + fileName + suffix;
            System.out.println("url -> " + url);
            return url;
        } catch (IOException e) {
            return null;
        }
    }

    /**
     * 上传视频文件
     */
    public String uploadVideo(MultipartFile file) {
        // 图片扩展名
        String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        // 如果不是图片后缀
        if (!videoSuffix.contains(suffix.toUpperCase())) {
            return null;
        }
        // 图片名字，时间作名字
        String fileName = simpleDateFormat.format(new Date());
        // 创建图片对象
        File video = new File(videoUploadPath + "/" + fileName + suffix);
        System.out.println("video absolutePath -> " + video.getAbsolutePath());
        // 判断路径是否存在，不存在则创建
        if (!video.getParentFile().exists()) {
            video.getParentFile().mkdir();
        }
        try {
            file.transferTo(video);
//            String url = "http://ccb-admin.cczuit.cn/upload/video/" + fileName + suffix;
            String url = getUrl() + "/upload/video/" + fileName + suffix;
            System.out.println("url -> " + url);
            return url;
        } catch (IOException e) {
            return null;
        }
    }

    /**
     * 上传多个文件，图片或视频
     */
//    public List<String> uploadFiles(MultipartFile[] files) {
//        List urls = new ArrayList<String>();
//        for (MultipartFile file : files) {
//            // 文件扩展名
//            String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
//
//            String url = null;
//            if (imageSuffix.contains(suffix.toUpperCase())) {
//                // 如果是图片
//                // 图片名字，时间作名字
//                String fileName = UUIDUtil.getUuid();
//                // 创建图片对象
//                File image = new File(imageUploadPath + "/" + fileName + suffix);
//                System.out.println("video absolutePath -> " + image.getAbsolutePath());
//                if (!image.getParentFile().exists()) {
//                    image.getParentFile().mkdir();
//                }
//                try {
//                    file.transferTo(image);
//                    url = "http://192.168.206.1:8081/upload/img/" + fileName + suffix;
//                    urls.add(url);
//                    System.out.println("image url -> " + url);
//                } catch (Exception e) {
//
//                }
//            }
//        }
//        return null;
//    }

    /**
     * 删除上传的文件
     * imageUrl 传入存储在数据库中的图片url
     */
    public boolean deleteImage(String imageUrl) {
        // 拆分出文件名，不包含 '/'
        String fileName = imageUrl.substring(imageUrl.lastIndexOf('/') + 1);
        // 拼接图片的真实路径
        String fullFileName = imageUploadPath + fileName;
        System.out.println(fullFileName);
        // 创建文件对象
        File imageFile = new File(fullFileName);
        if (imageFile.exists()){
            // 删除文件
            imageFile.delete();
            System.out.println("文件删除成功");
            return true;
        } else {
            System.out.println("文件删除失败");
            return false;
        }
    }

}
