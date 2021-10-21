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

 Date: 21/10/2021 20:49:13
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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advertisement
-- ----------------------------
INSERT INTO `advertisement` VALUES (5, '', '2021-10-14 16:12:43', '2021-10-14 16:12:43', 'http://www.baidu.com', 3);
INSERT INTO `advertisement` VALUES (6, '', '2021-10-14 16:13:02', '2021-10-14 16:13:02', 'http://www.baidu.com', 3);

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '问卷结果编号（含多个问题，用&隔开）',
  `question_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '对应题目编号（用&符号隔开）',
  `result` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '回答结果（选项用&符号隔开）',
  `channel_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '对应频道id',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'banner编号',
  `banner_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'banner名称',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'url',
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '倒序 数据校验最大值100 最小0',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (24, 'test2', 'http://ccb-admin.cczuit.cn/upload/img/20211009221955453.jpg', 2, '2021-10-06 17:08:36', '2021-10-09 22:19:57');
INSERT INTO `banner` VALUES (25, 'test1', '', 0, '2021-10-07 11:14:07', '2021-10-07 11:14:07');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'xx');

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
  `enabled` tinyint(3) NOT NULL DEFAULT 1 COMMENT '状态：是否开启 1是 0否',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of channel
-- ----------------------------
INSERT INTO `channel` VALUES (3, '频道3', 'localhost:8081/aaa', '频道描述', 'localhost:80801/test', '2021-10-02 20:27:58', '2021-10-02 20:27:58', 1, 1);
INSERT INTO `channel` VALUES (4, '频道4', 'http://192.168.206.1:8081/upload/img/20211005105520624.jpg', '频道描述', 'http://192.168.206.1:8081/upload/img/20211005105524985.jpg', '2021-10-02 20:28:01', '2021-10-05 10:55:36', 1, 1);
INSERT INTO `channel` VALUES (5, '频道5', 'localhost:8081/aaa', '频道描述', 'localhost:80801/test', '2021-10-02 20:28:04', '2021-10-02 20:28:04', 1, 1);
INSERT INTO `channel` VALUES (6, '频道6', 'localhost:8081/aaa', '频道描述', 'localhost:80801/test', '2021-10-02 20:28:07', '2021-10-02 20:28:07', 1, 1);
INSERT INTO `channel` VALUES (8, '频道8', 'localhost:8081/aaa', '频道描述', 'localhost:80801/test', '2021-10-02 20:28:15', '2021-10-02 20:28:15', 1, 1);
INSERT INTO `channel` VALUES (9, '频道9', 'localhost:8081/aaa', '频道描述', 'localhost:80801/test', '2021-10-02 20:28:19', '2021-10-02 20:28:19', 1, 1);
INSERT INTO `channel` VALUES (10, '频道10', 'localhost:8081/aaa', '频道描述', 'localhost:80801/test', '2021-10-02 20:28:22', '2021-10-02 20:28:22', 1, 1);
INSERT INTO `channel` VALUES (11, '频道11', 'localhost:8081/aaa', '频道描述', 'localhost:80801/test', '2021-10-02 20:28:25', '2021-10-02 20:28:25', 1, 1);
INSERT INTO `channel` VALUES (12, '频道12', 'http://192.168.206.1:8081/upload/img/20211005100110954.jpg', '频道描述', 'http://192.168.206.1:8081/upload/img/20211005100116050.png', '2021-10-02 20:28:28', '2021-10-05 10:01:18', 0, 1);
INSERT INTO `channel` VALUES (13, '频道1', 'http://192.168.206.1:8081/upload/img/20211005095633227.jpg', '频道1描述', 'http://192.168.206.1:8081/upload/img/20211005095642181.png', '2021-10-05 09:56:44', '2021-10-05 09:56:44', 1, 1);

-- ----------------------------
-- Table structure for channel_video_relation
-- ----------------------------
DROP TABLE IF EXISTS `channel_video_relation`;
CREATE TABLE `channel_video_relation`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `video_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of channel_video_relation
-- ----------------------------

-- ----------------------------
-- Table structure for home_page
-- ----------------------------
DROP TABLE IF EXISTS `home_page`;
CREATE TABLE `home_page`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '首页视频',
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '活动介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_page
-- ----------------------------
INSERT INTO `home_page` VALUES (1, 'http://ccb-admin.cczuit.cn/upload/video/20211020104021765.mp4', 'hello');

-- ----------------------------
-- Table structure for log_channel
-- ----------------------------
DROP TABLE IF EXISTS `log_channel`;
CREATE TABLE `log_channel`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL DEFAULT 0 COMMENT '访问次数',
  `channel_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `create_time` date NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_channel
-- ----------------------------

-- ----------------------------
-- Table structure for log_teacher
-- ----------------------------
DROP TABLE IF EXISTS `log_teacher`;
CREATE TABLE `log_teacher`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `teacher_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `create_time` date NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_teacher
-- ----------------------------

-- ----------------------------
-- Table structure for log_video
-- ----------------------------
DROP TABLE IF EXISTS `log_video`;
CREATE TABLE `log_video`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `view_count` int(11) NOT NULL DEFAULT 0 COMMENT '观看次数',
  `share_count` int(11) NOT NULL DEFAULT 0 COMMENT '分享次数',
  `video_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `create_time` date NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_video
-- ----------------------------

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
INSERT INTO `persistent_logins` VALUES ('FJMB0Csj7sDb3zJDpUalwA==', 'sa', '3zhINGvAJBg5hD0JnlR+pQ==', '2021-10-21 20:34:28');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '问卷中问题编号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '问题的题目',
  `option` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '问题的选项（用&符号隔开）数组返回，索引从1开始',
  `channel_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属频道',
  `category` tinyint(3) NOT NULL DEFAULT 0 COMMENT '问题类型1-单选 2-多选 3-判断 4-填空',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `weight` int(11) NOT NULL DEFAULT 0 COMMENT '倒序 数据校验最大值100 最小0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '123', '123&123&123', 3, 1, '2021-10-14 16:14:58', '2021-10-14 16:14:58', 2);

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
  `sort_weight` int(2) NULL DEFAULT NULL COMMENT '同级排序权重：0-10',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0a2589fded6c4d78a4f8a273689ca63a', '主页管理', '/ccb/homepage/index', '', 8, '2021-10-20 10:37:45', '2021-10-20 10:37:45');
INSERT INTO `sys_menu` VALUES ('25f260867fde4f1e892ee8a7e7ea06f8', '分组管理', '/ccb/category/index', '', 6, '2021-10-13 23:44:54', '2021-10-13 23:44:54');
INSERT INTO `sys_menu` VALUES ('35cb950cebb04bb18bb1d8b742a02xaa', '权限管理', '/sys/sysAuthority/authority', '35cb950cebb04bb18bb1d8b742a02xxx', 1, '2019-09-10 10:08:58', '2019-09-10 10:08:58');
INSERT INTO `sys_menu` VALUES ('35cb950cebb04bb18bb1d8b742a02xcc', '菜单管理', '/sys/sysMenu/menu', '35cb950cebb04bb18bb1d8b742a02xxx', 2, '2019-09-10 10:08:58', '2019-09-10 10:08:58');
INSERT INTO `sys_menu` VALUES ('35cb950cebb04bb18bb1d8b742a02xxx', '系统管理', '/sys', '', 0, '2019-09-10 10:08:58', '2019-09-10 10:08:58');
INSERT INTO `sys_menu` VALUES ('35cb950cebb04bb18bb1d8b742a02xzz', '用户管理', '/sys/sysUser/user', '35cb950cebb04bb18bb1d8b742a02xxx', 3, '2019-09-10 10:08:58', '2019-09-10 10:08:58');
INSERT INTO `sys_menu` VALUES ('45421a14448342519d3a5b592f283c89', '轮播图管理', '/ccb/banner/index', '', 1, '2021-10-05 10:35:26', '2021-10-05 10:35:26');
INSERT INTO `sys_menu` VALUES ('74315e162f524a4d88aa931f02416f26', '实时监控', '/monitor', '35cb950cebb04bb18bb1d8b742a02xxx', 4, '2020-06-10 15:07:07', '2020-06-10 15:07:07');
INSERT INTO `sys_menu` VALUES ('79bec6fa28f844859b7ea5534d62f65a', '视频管理', '/ccb/video/index', '', 7, '2021-10-13 23:44:33', '2021-10-13 23:45:06');
INSERT INTO `sys_menu` VALUES ('914aa22c78af4327822061f3eada4067', '实时日志', '/logging', '35cb950cebb04bb18bb1d8b742a02xxx', 5, '2019-09-11 11:19:52', '2019-09-11 11:19:52');
INSERT INTO `sys_menu` VALUES ('9bf18dcf3cec4b14a6af40b5aac4a6a1', '问卷管理', '/ccb/question/index', '', 5, '2021-10-13 23:44:05', '2021-10-13 23:44:05');
INSERT INTO `sys_menu` VALUES ('a9d7a113aefd4e88a704c8f05b231100', '广告管理', '/ccb/advertisement/index', '', 3, '2021-10-05 10:36:14', '2021-10-05 10:36:14');
INSERT INTO `sys_menu` VALUES ('b74d2bc328034cdcb5bc84cecd3797b7', '频道管理', '/ccb/channel/index', '', 2, '2021-10-05 10:35:47', '2021-10-05 10:37:35');
INSERT INTO `sys_menu` VALUES ('bcf17dc0ce304f0ba02d64ce21ddb4f9', '系统设置', '/sys/sysSetting/setting', '35cb950cebb04bb18bb1d8b742a02xxx', 0, '2019-09-17 10:46:11', '2019-09-17 10:46:11');
INSERT INTO `sys_menu` VALUES ('f0723e1ad4d54b0bad9e125cf482d36c', '讲师管理', '/ccb/teacher/index', '', 4, '2021-10-13 23:43:27', '2021-10-13 23:43:27');

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
INSERT INTO `sys_setting` VALUES ('1', '建行攻守道管理系统', 'https://raw.githubusercontent.com/ChangzhouHeroAssociation/CCB_H5-admin/main/logo.jpg', '建行攻守道管理系统', '<h1 style=\"white-space: normal; text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">通知</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(255, 0, 0);\">1、不得在公共场合吸烟；</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(255, 0, 0);\">2、xxxxxxx；</span></p><p><br/></p>', '2019-09-17 10:15:38', '2021-10-20 10:36:08', '123456', 'rgba(54, 123, 183,  0.73)', 'Y', 'N');

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
  `sort_weight` int(2) NULL DEFAULT NULL COMMENT '同级排序权重：0-10',
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
INSERT INTO `sys_user` VALUES ('1', 'sa', '超级管理员', 'E10ADC3949BA59ABBE56E057F20F883E', 'Y', '', NULL, '2019-09-17 12:00:36', '2021-10-21 20:34:29', 'Y', '2019-07-19 16:36:03', '2021-10-20 10:37:59');
INSERT INTO `sys_user` VALUES ('2', 'admin', '管理员', 'E10ADC3949BA59ABBE56E057F20F883E', 'Y', '', NULL, '2019-09-17 12:00:36', '2021-10-21 00:47:50', 'N', '2019-07-19 16:36:03', '2019-09-12 16:14:28');
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
INSERT INTO `sys_user_authority` VALUES ('0dc1b156ed544c0986823e9cd818da08', '2', '3fb1c570496d4c09ab99b8d31b06ccc', '2019-09-12 16:14:28', '2019-09-12 16:14:28');
INSERT INTO `sys_user_authority` VALUES ('5098193d34aa4192a164c7db48a2e458', '1', '3fb1c570496d4c09ab99b8d31b06xxx', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_authority` VALUES ('90c18739f3ad41ae8010f6c2b7eeaac5', '3fb1c570496d4c09ab99b8d31b0671cf', '3fb1c570496d4c09ab99b8d31b06ccc', '2019-09-17 12:09:47', '2019-09-17 12:09:47');
INSERT INTO `sys_user_authority` VALUES ('a414567aaae54b42b8344da02795cb91', '2', '3fb1c570496d4c09ab99b8d31b06zzz', '2019-09-12 16:14:28', '2019-09-12 16:14:28');
INSERT INTO `sys_user_authority` VALUES ('b7385789315440a8be6c1b0673a050ef', '1', '3fb1c570496d4c09ab99b8d31b06zzz', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_authority` VALUES ('de60e5bbbacf4c739e44a60130d0f534', 'b5ac62e154964151a19c565346bb354a', '3fb1c570496d4c09ab99b8d31b06ccc', '2019-09-17 14:28:58', '2019-09-17 14:28:58');
INSERT INTO `sys_user_authority` VALUES ('ed43be135c30448ab34af3b374e95293', '1', '3fb1c570496d4c09ab99b8d31b06ccc', '2021-10-20 10:37:59', '2021-10-20 10:37:59');

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
INSERT INTO `sys_user_menu` VALUES ('135a63b772914420aec524fa4a0a4e4f', '1', 'bcf17dc0ce304f0ba02d64ce21ddb4f9', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('1acf19c6b2f44583b2200a435d3db42c', '1', '35cb950cebb04bb18bb1d8b742a02xcc', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('3232782f25ec44b09438ab9805b85f83', '2', '35cb950cebb04bb18bb1d8b742a02xcc', '2019-09-12 16:14:28', '2019-09-12 16:14:28');
INSERT INTO `sys_user_menu` VALUES ('3a22b3ee04c845a4a0ca558c97303a39', '1', '9bf18dcf3cec4b14a6af40b5aac4a6a1', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('57791437b9774d8abf74562a49c55a1a', '2', '35cb950cebb04bb18bb1d8b742a02xxx', '2019-09-12 16:14:28', '2019-09-12 16:14:28');
INSERT INTO `sys_user_menu` VALUES ('61027bb30ca74397add36ae432a39f07', '1', '25f260867fde4f1e892ee8a7e7ea06f8', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('77e758d781e44f0894fffc77f6e3d585', '1', 'b74d2bc328034cdcb5bc84cecd3797b7', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('89c8342f77f34bad86f361e5117504ae', '1', 'a9d7a113aefd4e88a704c8f05b231100', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('8ddbad7fbd3e45a68345d014e2e0bef0', '1', '79bec6fa28f844859b7ea5534d62f65a', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('8e86ac3ba53a4b93bcee4c2abaf9e6eb', '1', 'f0723e1ad4d54b0bad9e125cf482d36c', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('9f8ccddc9fa84e0b9ff74128d20e9024', '2', '35cb950cebb04bb18bb1d8b742a02xaa', '2019-09-12 16:14:28', '2019-09-12 16:14:28');
INSERT INTO `sys_user_menu` VALUES ('a315596806a9471c831818a6f9b6aa6f', '1', '914aa22c78af4327822061f3eada4067', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('b0d2fce8af1e40b3bfb4e4c1488f0288', '1', '74315e162f524a4d88aa931f02416f26', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('b3b6456e0fc44e398338d8ad5b7d5d53', '1', '45421a14448342519d3a5b592f283c89', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('bbba0aff383b436482a609884d6d0c86', '1', '35cb950cebb04bb18bb1d8b742a02xxx', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('c4220e4602fd4f2ca70da046466c6b45', '2', '35cb950cebb04bb18bb1d8b742a02xzz', '2019-09-12 16:14:28', '2019-09-12 16:14:28');
INSERT INTO `sys_user_menu` VALUES ('e668ff8b2d654410b294aaefbf9b753c', '1', '35cb950cebb04bb18bb1d8b742a02xzz', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('e9110b15c0764b9798f0f4f73880c5fa', '1', '0a2589fded6c4d78a4f8a273689ca63a', '2021-10-20 10:37:59', '2021-10-20 10:37:59');
INSERT INTO `sys_user_menu` VALUES ('fb84f724e0664ceca0741a022f5be1d9', '1', '35cb950cebb04bb18bb1d8b742a02xaa', '2021-10-20 10:37:59', '2021-10-20 10:37:59');

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
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (1, '12', '12', '', 1, '2021-10-14 16:10:39', '2021-10-14 16:10:39');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '视频编号',
  `video_title` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频标题',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频简介',
  `views` int(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '观看次数统计',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '视频链接',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态：1正常 0删除 --> 软删除',
  `enjoy_count` int(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞数量',
  `share_count` int(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分享数量',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------

-- ----------------------------
-- Table structure for video_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `video_category_relation`;
CREATE TABLE `video_category_relation`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `video_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_category_relation
-- ----------------------------
INSERT INTO `video_category_relation` VALUES (3, 1, 2);
INSERT INTO `video_category_relation` VALUES (4, 1, 3);

-- ----------------------------
-- Table structure for video_teacher_relation
-- ----------------------------
DROP TABLE IF EXISTS `video_teacher_relation`;
CREATE TABLE `video_teacher_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '关系编号',
  `video_id` bigint(20) UNSIGNED ZEROFILL NOT NULL DEFAULT 00000000000000000000 COMMENT '视频编号',
  `teacher_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '讲师编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频和讲师一对多关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_teacher_relation
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
