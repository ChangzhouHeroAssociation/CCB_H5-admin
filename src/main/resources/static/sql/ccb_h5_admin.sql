/*
 Navicat Premium Data Transfer

 Source Server         : huike
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : 39.96.56.19:3306
 Source Schema         : ccb

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 03/11/2021 22:45:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for advertisement
-- ----------------------------
DROP TABLE IF EXISTS `advertisement`;
CREATE TABLE `advertisement`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '图片url',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `target_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '跳转的url',
  `channel_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '频道编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advertisement
-- ----------------------------
INSERT INTO `advertisement` VALUES (7, 'http://ccb-admin.cczuit.cn/upload/img/20211022204312939.jpg', '2021-10-22 20:43:24', '2021-10-22 20:43:24', 'http://www.baidu.com', 14);

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '回答编号（单位是每题）',
  `question_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '对应题目编号',
  `result` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '回答结果',
  `channel_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '对应频道id',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (37, 9, 'A', 14, '2021-10-24 05:13:51', '2021-10-24 20:43:04');
INSERT INTO `answer` VALUES (38, 9, 'B', 14, '2021-10-24 05:13:51', '2021-10-24 20:43:09');
INSERT INTO `answer` VALUES (39, 7, 'AB', 15, '2021-10-24 12:19:44', '2021-10-24 20:43:43');
INSERT INTO `answer` VALUES (40, 7, 'AB', 15, '2021-10-24 12:20:06', '2021-10-24 20:43:46');
INSERT INTO `answer` VALUES (41, 7, 'AB', 15, '2021-10-24 12:20:20', '2021-10-24 20:43:51');
INSERT INTO `answer` VALUES (42, 3, 'AB', 1, '2021-10-24 12:51:54', '2021-10-24 12:51:54');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'banner编号',
  `banner_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'banner名称',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'url',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '倒序 数据校验最大值100 最小0',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (25, 'test1', 'http://ccb-admin.cczuit.cn/upload/img/20211022204235763.jpg', 0, '2021-10-07 11:14:07', '2021-10-22 20:42:37');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (5, '分组1');

-- ----------------------------
-- Table structure for channel
-- ----------------------------
DROP TABLE IF EXISTS `channel`;
CREATE TABLE `channel`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '频道编号',
  `channel_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '频道名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '首页icon的url',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '内容文字介绍',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'image的url',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1正常 0删除 --> 软删除',
  `enabled` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态：是否开启 1是 0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of channel
-- ----------------------------
INSERT INTO `channel` VALUES (14, '频道1', 'http://ccb-admin.cczuit.cn/upload/img/20211022204254835.jpg', '123', 'http://ccb-admin.cczuit.cn/upload/img/20211022204258336.jpg', '2021-10-22 20:43:04', '2021-10-25 18:24:44', 1, 1);
INSERT INTO `channel` VALUES (15, '频道2', 'http://ccb-admin.cczuit.cn/upload/img/20211024202035874.jpg', '频道2', 'http://ccb-admin.cczuit.cn/upload/img/20211024202038915.jpg', '2021-10-24 20:20:41', '2021-10-25 18:24:50', 1, 1);
INSERT INTO `channel` VALUES (16, '频道344', 'http://ccb-admin.cczuit.cn/upload/img/20211024202108719.jpg', '频道3', 'http://ccb-admin.cczuit.cn/upload/img/20211024202111741.jpg', '2021-10-24 20:21:14', '2021-10-24 20:21:30', 0, 1);
INSERT INTO `channel` VALUES (17, '资产配置', '', '资产配置', '', '2021-11-01 21:23:22', '2021-11-01 21:23:22', 1, 1);

-- ----------------------------
-- Table structure for home_page
-- ----------------------------
DROP TABLE IF EXISTS `home_page`;
CREATE TABLE `home_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '首页视频',
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '活动介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_page
-- ----------------------------
INSERT INTO `home_page` VALUES (2, 'http://ccb-admin.cczuit.cn/upload/video/20211024201922919.mp4', '活动介绍111');

-- ----------------------------
-- Table structure for log_channel
-- ----------------------------
DROP TABLE IF EXISTS `log_channel`;
CREATE TABLE `log_channel`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL DEFAULT 0 COMMENT '访问次数',
  `channel_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `create_time` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_channel
-- ----------------------------
INSERT INTO `log_channel` VALUES (58, 1, '频道1', '2021-10-24');

-- ----------------------------
-- Table structure for log_teacher
-- ----------------------------
DROP TABLE IF EXISTS `log_teacher`;
CREATE TABLE `log_teacher`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `teacher_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `create_time` date NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_teacher
-- ----------------------------
INSERT INTO `log_teacher` VALUES (66, 1, '讲师1', '2021-10-24');
INSERT INTO `log_teacher` VALUES (67, 1, '讲师1', '2021-10-31');

-- ----------------------------
-- Table structure for log_video
-- ----------------------------
DROP TABLE IF EXISTS `log_video`;
CREATE TABLE `log_video`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `view_count` int(11) NOT NULL DEFAULT 0 COMMENT '观看次数',
  `share_count` int(11) NOT NULL DEFAULT 0 COMMENT '分享次数',
  `video_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `create_time` date NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_video
-- ----------------------------
INSERT INTO `log_video` VALUES (65, 1, 1, '视频一', '2021-10-24');

-- ----------------------------
-- Table structure for persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `persistent_logins`;
CREATE TABLE `persistent_logins`  (
  `series` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'id',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '登陆账号',
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'cookie令牌',
  `last_used` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '最后更新时间',
  PRIMARY KEY (`series`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = 'persistent_logins表，用户实现记住我功能' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of persistent_logins
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '问卷中问题编号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '问题的题目',
  `option` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '问题的选项（用&符号隔开）数组返回，索引从1开始',
  `channel_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属频道',
  `category` tinyint(4) NOT NULL DEFAULT 0 COMMENT '问题类型1-单选 2-多选 3-判断 4-填空',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `weight` int(11) NOT NULL DEFAULT 0 COMMENT '倒序 数据校验最大值100 最小0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (7, '测试题', 'A&B&C', 14, 1, '2021-10-22 21:03:34', '2021-10-22 21:03:34', 1);
INSERT INTO `question` VALUES (9, '测试题3', '对&错', 15, 3, '2021-10-24 20:23:26', '2021-10-24 20:23:26', 54);

-- ----------------------------
-- Table structure for sys_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority`;
CREATE TABLE `sys_authority`  (
  `authority_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限id',
  `authority_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称，ROLE_开头，全大写',
  `authority_remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限描述',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  `authority_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限内容，可访问的url，多个时用,隔开',
  PRIMARY KEY (`authority_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_authority
-- ----------------------------
INSERT INTO `sys_authority` VALUES ('3fb1c570496d4c09ab99b8d31b06ccc', 'ROLE_USER', '普通用户', '2019-09-10 10:08:58', '2019-09-10 10:08:58', '');
INSERT INTO `sys_authority` VALUES ('3fb1c570496d4c09ab99b8d31b06xxx', 'ROLE_SA', '超级管理员', '2019-09-10 10:08:58', '2019-09-10 10:08:58', '/sys/**,/logging');
INSERT INTO `sys_authority` VALUES ('3fb1c570496d4c09ab99b8d31b06zzz', 'ROLE_ADMIN', '管理员', '2019-09-10 10:08:58', '2019-09-10 10:08:58', '/sys/**');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单id',
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `menu_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单路径',
  `menu_parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级id',
  `sort_weight` int(11) NULL DEFAULT NULL COMMENT '同级排序权重：0-10',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('26ceaee48f4642809d6aa34c1bb39799', '问卷结果', '/ccb/answer/index', '', 9, '2021-10-24 10:14:27', '2021-10-24 10:14:27');
INSERT INTO `sys_menu` VALUES ('2741ff82d20a4dec904269bef1040017', '分组管理', '/ccb/category/index', '', 4, '2021-10-22 15:15:47', '2021-10-22 15:15:47');
INSERT INTO `sys_menu` VALUES ('35cb950cebb04bb18bb1d8b742a02xaa', '权限管理', '/sys/sysAuthority/authority', '35cb950cebb04bb18bb1d8b742a02xxx', 1, '2019-09-10 10:08:58', '2019-09-10 10:08:58');
INSERT INTO `sys_menu` VALUES ('35cb950cebb04bb18bb1d8b742a02xcc', '菜单管理', '/sys/sysMenu/menu', '35cb950cebb04bb18bb1d8b742a02xxx', 2, '2019-09-10 10:08:58', '2019-09-10 10:08:58');
INSERT INTO `sys_menu` VALUES ('35cb950cebb04bb18bb1d8b742a02xxx', '系统管理', '/sys', '', 0, '2019-09-10 10:08:58', '2019-09-10 10:08:58');
INSERT INTO `sys_menu` VALUES ('35cb950cebb04bb18bb1d8b742a02xzz', '用户管理', '/sys/sysUser/user', '35cb950cebb04bb18bb1d8b742a02xxx', 3, '2019-09-10 10:08:58', '2019-09-10 10:08:58');
INSERT INTO `sys_menu` VALUES ('3dd381899bab495096a0ae627797eed2', '主页管理', '/ccb/homepage/index', '', 8, '2021-10-22 15:19:01', '2021-10-22 15:19:01');
INSERT INTO `sys_menu` VALUES ('45421a14448342519d3a5b592f283c89', '轮播图管理', '/ccb/banner/index', '', 1, '2021-10-05 10:35:26', '2021-10-05 10:35:26');
INSERT INTO `sys_menu` VALUES ('698d588e500a42dd8c955ec96aad67e2', '视频管理', '/ccb/video/index', '', 5, '2021-10-22 15:17:14', '2021-10-22 15:17:14');
INSERT INTO `sys_menu` VALUES ('74315e162f524a4d88aa931f02416f26', '实时监控', '/monitor', '35cb950cebb04bb18bb1d8b742a02xxx', 4, '2020-06-10 15:07:07', '2020-06-10 15:07:07');
INSERT INTO `sys_menu` VALUES ('78185417f1c34ea1bf6232fd8d2ebeb8', '讲师管理', '/ccb/teacher/index', '', 6, '2021-10-22 15:17:49', '2021-10-22 15:17:49');
INSERT INTO `sys_menu` VALUES ('914aa22c78af4327822061f3eada4067', '实时日志', '/logging', '35cb950cebb04bb18bb1d8b742a02xxx', 5, '2019-09-11 11:19:52', '2019-09-11 11:19:52');
INSERT INTO `sys_menu` VALUES ('a9d7a113aefd4e88a704c8f05b231100', '广告管理', '/ccb/advertisement/index', '', 3, '2021-10-05 10:36:14', '2021-10-05 10:36:14');
INSERT INTO `sys_menu` VALUES ('b74d2bc328034cdcb5bc84cecd3797b7', '频道管理', '/ccb/channel/index', '', 2, '2021-10-05 10:35:47', '2021-10-05 10:37:35');
INSERT INTO `sys_menu` VALUES ('bcf17dc0ce304f0ba02d64ce21ddb4f9', '系统设置', '/sys/sysSetting/setting', '35cb950cebb04bb18bb1d8b742a02xxx', 0, '2019-09-17 10:46:11', '2019-09-17 10:46:11');
INSERT INTO `sys_menu` VALUES ('cf17fadfa4834402b814fcd9b2614099', '问卷管理', '/ccb/question/index', '', 7, '2021-10-22 15:18:20', '2021-10-22 15:18:20');

-- ----------------------------
-- Table structure for sys_setting
-- ----------------------------
DROP TABLE IF EXISTS `sys_setting`;
CREATE TABLE `sys_setting`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '表id',
  `sys_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统名称',
  `sys_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统logo图标',
  `sys_bottom_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统底部信息',
  `sys_notice_text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '系统公告',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `user_init_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户管理：初始、重置密码',
  `sys_color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统颜色',
  `sys_api_encrypt` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'API加密 Y/N',
  `sys_open_api_limiter_encrypt` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'OpenAPI限流 Y/N',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统设置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_setting
-- ----------------------------
INSERT INTO `sys_setting` VALUES ('1', '建行攻守传管理系统', 'https://github.com/ChangzhouHeroAssociation/CCB_H5-admin/blob/main/logo.jpg?raw=true', '建行攻守传管理系统', '<h1 style=\"white-space: normal; text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">通知</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(255, 0, 0);\">1、不得在公共场合吸烟；</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(255, 0, 0);\">2、xxxxxxx；</span></p><p><br/></p>', '2019-09-17 10:15:38', '2021-10-23 12:11:43', '123456', 'rgba(54, 123, 183,  0.73)', 'Y', 'N');

-- ----------------------------
-- Table structure for sys_shortcut_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_shortcut_menu`;
CREATE TABLE `sys_shortcut_menu`  (
  `shortcut_menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户快捷菜单id',
  `shortcut_menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户快捷菜单名称',
  `shortcut_menu_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户快捷菜单路径',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `shortcut_menu_parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级id',
  `sort_weight` int(11) NULL DEFAULT NULL COMMENT '同级排序权重：0-10',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`shortcut_menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户快捷菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_shortcut_menu
-- ----------------------------
INSERT INTO `sys_shortcut_menu` VALUES ('104370a3fa7948bab156afd4a5f2a730', '个性化菜单', '', '1', '', 0, '2019-09-12 18:35:13', '2019-09-12 18:35:13');
INSERT INTO `sys_shortcut_menu` VALUES ('72d94b41b9994038bd2f2135a1de28d8', '快捷菜单', '', 'b5ac62e154964151a19c565346bb354a', '', 0, '2019-09-17 14:36:28', '2019-09-17 14:36:28');
INSERT INTO `sys_shortcut_menu` VALUES ('88353f04ad5d47b182c984bfbb1693cc', 'ggg', '/xxx', 'b5ac62e154964151a19c565346bb354a', '72d94b41b9994038bd2f2135a1de28d8', 0, '2019-09-17 14:36:50', '2019-09-17 14:36:50');
INSERT INTO `sys_shortcut_menu` VALUES ('bd36d4507327434eb57b67b21343246f', '腾讯云', 'https://cloud.tencent.com/', '1', '104370a3fa7948bab156afd4a5f2a730', 0, '2020-10-15 18:42:39', '2020-12-31 14:44:18');
INSERT INTO `sys_shortcut_menu` VALUES ('c309dafafe964a9d8de021b0da193bad', '啊啊啊', '/aaa', '1', 'db234c8f4fad4b0c9a4522e872c0f588', 0, '2020-10-16 10:20:20', '2020-10-16 10:20:20');
INSERT INTO `sys_shortcut_menu` VALUES ('cf78ced9ce7b480c85812540d1936145', '百度', 'https://www.baidu.com', '1', '104370a3fa7948bab156afd4a5f2a730', 2, '2019-09-12 18:35:39', '2020-12-31 14:44:27');
INSERT INTO `sys_shortcut_menu` VALUES ('cf78ced9ce7b480c85fd2540d1936145', '阿里云', 'https://www.aliyun.com/', '1', '104370a3fa7948bab156afd4a5f2a730', 1, '2019-09-12 18:35:39', '2020-12-31 14:44:23');
INSERT INTO `sys_shortcut_menu` VALUES ('db234c8f4fad4b0c9a4522e872c0f588', '菜单2', '', '1', '', 1, '2020-10-16 10:20:02', '2020-10-16 10:20:02');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `login_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录名',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录密码',
  `valid` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '软删除标识，Y/N',
  `limited_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '限制允许登录的IP集合',
  `expired_time` datetime(0) NULL DEFAULT NULL COMMENT '账号失效时间，超过时间将不能登录系统',
  `last_change_pwd_time` datetime(0) NOT NULL COMMENT '最近修改密码时间，超出时间间隔，提示用户修改密码',
  `last_login_time` datetime(0) NOT NULL COMMENT '最近登录时间，最后活跃时间',
  `limit_multi_login` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否允许账号同一个时刻多人在线，Y/N',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'sa', '超级管理员', 'E10ADC3949BA59ABBE56E057F20F883E', 'Y', '', NULL, '2019-09-17 12:00:36', '2021-10-24 20:15:01', 'Y', '2019-07-19 16:36:03', '2021-10-24 10:14:49');
INSERT INTO `sys_user` VALUES ('2', 'admin', '管理员', 'E10ADC3949BA59ABBE56E057F20F883E', 'Y', '', NULL, '2019-09-17 12:00:36', '2021-11-01 21:59:34', 'Y', '2019-07-19 16:36:03', '2021-10-24 10:14:54');
INSERT INTO `sys_user` VALUES ('3fb1c570496d4c09ab99b8d31b0671cf', 'daji', '妲己', 'E10ADC3949BA59ABBE56E057F20F883E', 'Y', '', NULL, '2019-09-17 12:00:36', '2019-09-17 12:00:36', 'Y', '2019-09-11 18:11:41', '2019-09-17 12:09:47');
INSERT INTO `sys_user` VALUES ('b5ac62e154964151a19c565346bb354a', 'xiaofang', '小芳', '96E79218965EB72C92A549DD5A330112', 'Y', '', NULL, '2019-09-17 12:00:36', '2019-09-17 12:00:36', 'N', '2019-09-17 14:12:41', '2019-09-17 14:28:57');

-- ----------------------------
-- Table structure for sys_user_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_authority`;
CREATE TABLE `sys_user_authority`  (
  `user_authority_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户权限表id',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `authority_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限id',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_authority_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_authority
-- ----------------------------
INSERT INTO `sys_user_authority` VALUES ('002522e2e8d44a8389f8ed4cf6607c86', '2', '3fb1c570496d4c09ab99b8d31b06zzz', '2021-10-24 10:14:55', '2021-10-24 10:14:55');
INSERT INTO `sys_user_authority` VALUES ('90c18739f3ad41ae8010f6c2b7eeaac5', '3fb1c570496d4c09ab99b8d31b0671cf', '3fb1c570496d4c09ab99b8d31b06ccc', '2019-09-17 12:09:47', '2019-09-17 12:09:47');
INSERT INTO `sys_user_authority` VALUES ('ae06dc8244434bb0a6596b611d316fe3', '2', '3fb1c570496d4c09ab99b8d31b06ccc', '2021-10-24 10:14:55', '2021-10-24 10:14:55');
INSERT INTO `sys_user_authority` VALUES ('b7cfac5b92ec44ba899ad4c90e6e056e', '1', '3fb1c570496d4c09ab99b8d31b06zzz', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_authority` VALUES ('de56fc80de554d0fa7befd665e13a1e7', '1', '3fb1c570496d4c09ab99b8d31b06xxx', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_authority` VALUES ('de60e5bbbacf4c739e44a60130d0f534', 'b5ac62e154964151a19c565346bb354a', '3fb1c570496d4c09ab99b8d31b06ccc', '2019-09-17 14:28:58', '2019-09-17 14:28:58');
INSERT INTO `sys_user_authority` VALUES ('f5b9343ca5d34a4ab196b70d9c4c1f45', '1', '3fb1c570496d4c09ab99b8d31b06ccc', '2021-10-24 10:14:49', '2021-10-24 10:14:49');

-- ----------------------------
-- Table structure for sys_user_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_menu`;
CREATE TABLE `sys_user_menu`  (
  `user_menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户菜单表id',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `menu_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单id',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user_menu
-- ----------------------------
INSERT INTO `sys_user_menu` VALUES ('091aaab14c764ef1bcfc3d6cd085da72', '1', 'cf17fadfa4834402b814fcd9b2614099', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('14f7e9289df1423891b977fbe8aa1028', '1', '35cb950cebb04bb18bb1d8b742a02xcc', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('22962e80429b42a78328a9a755753725', '2', '2741ff82d20a4dec904269bef1040017', '2021-10-24 10:14:55', '2021-10-24 10:14:55');
INSERT INTO `sys_user_menu` VALUES ('275ab326422141cfbd9446513a920cfe', '2', 'cf17fadfa4834402b814fcd9b2614099', '2021-10-24 10:14:55', '2021-10-24 10:14:55');
INSERT INTO `sys_user_menu` VALUES ('2949762665ef433c82394b1df188c173', '1', '914aa22c78af4327822061f3eada4067', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('3c3f6847108d4d1ebe27106706ffd9b3', '1', '35cb950cebb04bb18bb1d8b742a02xaa', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('51cf23148b094c76ad0f1485e3c477bf', '2', 'b74d2bc328034cdcb5bc84cecd3797b7', '2021-10-24 10:14:55', '2021-10-24 10:14:55');
INSERT INTO `sys_user_menu` VALUES ('5343ea19179344ebac14fafd55b1da83', '1', '35cb950cebb04bb18bb1d8b742a02xxx', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('5509690b6edb42a584d41cc55d9bf92b', '1', '35cb950cebb04bb18bb1d8b742a02xzz', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('5faea7c009c8485481a7ce5a07ec5bbc', '1', '26ceaee48f4642809d6aa34c1bb39799', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('655383a8a5b84c179f6777a6a0647c97', '1', '698d588e500a42dd8c955ec96aad67e2', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('676348d398cc41a6a12c557548ad2503', '2', '3dd381899bab495096a0ae627797eed2', '2021-10-24 10:14:55', '2021-10-24 10:14:55');
INSERT INTO `sys_user_menu` VALUES ('7d8d1775274347728c93f421c3341f2e', '2', 'a9d7a113aefd4e88a704c8f05b231100', '2021-10-24 10:14:55', '2021-10-24 10:14:55');
INSERT INTO `sys_user_menu` VALUES ('82282091f22b4bc89af209346d5f9860', '1', '2741ff82d20a4dec904269bef1040017', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('8595f07a7df84a89ae745c499b0fc0e3', '1', '3dd381899bab495096a0ae627797eed2', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('99d45a5b0ed14d5caa4b03c4b68a26d8', '1', '78185417f1c34ea1bf6232fd8d2ebeb8', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('a130aabc952c4802a14a9e7b583d9b5c', '1', 'b74d2bc328034cdcb5bc84cecd3797b7', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('a7010a493dda457493651a5bf8a40171', '2', '45421a14448342519d3a5b592f283c89', '2021-10-24 10:14:55', '2021-10-24 10:14:55');
INSERT INTO `sys_user_menu` VALUES ('ab62dd8e3d1d4cd79a405007ae506ed3', '1', '74315e162f524a4d88aa931f02416f26', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('ab8339f64019427893d83226513a52fb', '1', '45421a14448342519d3a5b592f283c89', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('c40bbd0056424dc78ab8d0d131720e20', '1', 'bcf17dc0ce304f0ba02d64ce21ddb4f9', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('c74faef0c129410ea1cefc78e20f58be', '2', '78185417f1c34ea1bf6232fd8d2ebeb8', '2021-10-24 10:14:55', '2021-10-24 10:14:55');
INSERT INTO `sys_user_menu` VALUES ('d1d22c1c610c4600a95e83f6036c1392', '1', 'a9d7a113aefd4e88a704c8f05b231100', '2021-10-24 10:14:49', '2021-10-24 10:14:49');
INSERT INTO `sys_user_menu` VALUES ('d2b815b56f5d45bfba583f3ca5aef19a', '2', '698d588e500a42dd8c955ec96aad67e2', '2021-10-24 10:14:55', '2021-10-24 10:14:55');
INSERT INTO `sys_user_menu` VALUES ('f16b87c26c054bdf936e4355d345f681', '2', '26ceaee48f4642809d6aa34c1bb39799', '2021-10-24 10:14:55', '2021-10-24 10:14:55');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '讲师编号',
  `teacher_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '讲师姓名',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '讲师简介',
  `teacher_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '头像url',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1正常 0删除 --> 软删除',
  `job` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '讲师职务',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (5, '讲师1', '讲师', 'http://ccb-admin.cczuit.cn/upload/img/20211022210300431.jpg', 1, '软件工程师', '2021-10-22 21:03:02', '2021-10-22 21:03:02');
INSERT INTO `teacher` VALUES (6, '讲师2', '讲师2', 'http://ccb-admin.cczuit.cn/upload/img/20211022220818301.jpg', 1, '软件工程师', '2021-10-22 22:08:20', '2021-10-22 22:08:20');
INSERT INTO `teacher` VALUES (7, '讲师3', '讲师', 'http://ccb-admin.cczuit.cn/upload/img/20211023092541910.jpg', 0, '软件工程师', '2021-10-23 09:25:44', '2021-10-23 09:25:44');
INSERT INTO `teacher` VALUES (8, '讲师5', '讲师5', 'http://ccb-admin.cczuit.cn/upload/img/20211024202420269.jpg', 1, '软件工程师', '2021-10-24 20:24:21', '2021-10-24 20:24:33');
INSERT INTO `teacher` VALUES (9, '讲师3', '讲师3', 'http://ccb-admin.cczuit.cn/upload/img/20211024202459549.jpg', 0, '软件工程师', '2021-10-24 20:25:00', '2021-10-24 20:25:00');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '视频编号',
  `video_title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频标题',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频简介',
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '观看次数统计',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频链接',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1正常 0删除 --> 软删除',
  `enjoy_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数量',
  `share_count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分享数量',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `channel_id` bigint(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '频道ID',
  `text_page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '视频文稿图片URL',
  `is_recommend` tinyint(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否推荐',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, '视频一', '视频描述一', 29, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 143, 129, '2020-10-23 00:00:00', '2020-10-23 00:00:00', 14, 'ttt', 1);
INSERT INTO `video` VALUES (2, '视频二', '视频描述二', 655, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 0, 145, 176, '2020-10-23 00:00:00', '2021-10-24 20:25:30', 14, 'ttttt', 1);
INSERT INTO `video` VALUES (3, '视频三', '视频描述三', 618, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 115, 116, '2020-10-23 00:00:00', '2021-10-24 20:25:35', 14, 'tttt', 1);
INSERT INTO `video` VALUES (8, '视频4', '视频4', 0, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 0, 0, '2021-10-24 20:32:44', '2021-10-24 20:32:44', 15, 'tttt', 0);
INSERT INTO `video` VALUES (9, '视频5', '视频5', 0, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 0, 0, '2021-10-26 18:16:44', '2021-10-26 18:16:47', 14, 'tttt', 0);

-- ----------------------------
-- Table structure for video_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `video_category_relation`;
CREATE TABLE `video_category_relation`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `video_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_category_relation
-- ----------------------------
INSERT INTO `video_category_relation` VALUES (9, 5, 1);

-- ----------------------------
-- Table structure for video_teacher_relation
-- ----------------------------
DROP TABLE IF EXISTS `video_teacher_relation`;
CREATE TABLE `video_teacher_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '关系编号',
  `video_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '视频编号',
  `teacher_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '讲师编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频和讲师一对多关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_teacher_relation
-- ----------------------------
INSERT INTO `video_teacher_relation` VALUES (9, 1, 5);
INSERT INTO `video_teacher_relation` VALUES (10, 1, 6);
INSERT INTO `video_teacher_relation` VALUES (13, 2, 6);
INSERT INTO `video_teacher_relation` VALUES (14, 2, 8);
INSERT INTO `video_teacher_relation` VALUES (15, 3, 5);
INSERT INTO `video_teacher_relation` VALUES (16, 8, 6);

SET FOREIGN_KEY_CHECKS = 1;
