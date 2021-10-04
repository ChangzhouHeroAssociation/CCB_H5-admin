package cn.huanzi.qch.baseadmin.config.websocket;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @ClassName: WebAppConfig
 * @Description: TODO add a description
 * @Author: zhuaowei
 * @Date: 2021/10/4
 * @Version: 1.0
 */

@Configuration
public class WebAppConfig implements WebMvcConfigurer {
    /** 图片上传路径 */
    @Value("${file.upload-path.image}")
    private String imageUploadPath;

    /** 视频上传路径 */
    @Value("${file.upload-path.video}")
    private String videoUploadPath;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        /**
         * 配置资源映射
         * 意思是：如果访问的资源路径是以“/images/”开头的，
         * 就给我映射到本机的“E:/images/”这个文件夹内，去找你要的资源
         * 注意：E:/images/ 后面的 “/”一定要带上
         */
        registry.addResourceHandler("/upload/img/**")
                .addResourceLocations("file:"+imageUploadPath);
        registry.addResourceHandler("/upload/video/**")
                .addResourceLocations("file:"+videoUploadPath);

    }
}
