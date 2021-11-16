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

 Date: 14/11/2021 21:27:27
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
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES (37, 9, 'A', 14, '2021-10-24 05:13:51', '2021-10-24 20:43:04');
INSERT INTO `answer` VALUES (38, 9, 'B', 14, '2021-10-24 05:13:51', '2021-10-24 20:43:09');
INSERT INTO `answer` VALUES (39, 7, 'AB', 15, '2021-10-24 12:19:44', '2021-10-24 20:43:43');
INSERT INTO `answer` VALUES (40, 7, 'AB', 15, '2021-10-24 12:20:06', '2021-10-24 20:43:46');
INSERT INTO `answer` VALUES (41, 7, 'AB', 15, '2021-10-24 12:20:20', '2021-10-24 20:43:51');
INSERT INTO `answer` VALUES (42, 3, 'AB', 1, '2021-10-24 12:51:54', '2021-10-24 12:51:54');
INSERT INTO `answer` VALUES (43, 7, 'A', 14, '2021-11-09 06:57:46', '2021-11-09 06:57:46');
INSERT INTO `answer` VALUES (44, 7, 'B', 14, '2021-11-09 06:57:46', '2021-11-09 06:57:46');
INSERT INTO `answer` VALUES (45, 7, 'A', 14, '2021-11-09 07:03:17', '2021-11-09 07:03:17');
INSERT INTO `answer` VALUES (46, 7, 'A', 14, '2021-11-09 07:31:37', '2021-11-09 07:31:37');
INSERT INTO `answer` VALUES (47, 7, 'A', 14, '2021-11-09 09:46:26', '2021-11-09 09:46:26');
INSERT INTO `answer` VALUES (48, 7, 'A', 14, '2021-11-09 09:56:44', '2021-11-09 09:56:44');
INSERT INTO `answer` VALUES (49, 7, 'A', 14, '2021-11-09 09:59:58', '2021-11-09 09:59:58');
INSERT INTO `answer` VALUES (50, 7, 'B', 14, '2021-11-09 11:36:32', '2021-11-09 11:36:32');
INSERT INTO `answer` VALUES (51, 7, 'B', 14, '2021-11-09 11:38:37', '2021-11-09 11:38:37');
INSERT INTO `answer` VALUES (52, 7, 'A&B&C', 14, '2021-11-09 11:39:13', '2021-11-09 11:39:13');
INSERT INTO `answer` VALUES (53, 6, '问题六的结果', 6, '2021-11-09 11:44:12', '2021-11-09 11:44:12');
INSERT INTO `answer` VALUES (54, 7, 'A', 14, '2021-11-09 11:45:08', '2021-11-09 11:45:08');
INSERT INTO `answer` VALUES (55, 7, 'C', 14, '2021-11-09 11:53:57', '2021-11-09 11:53:57');
INSERT INTO `answer` VALUES (56, 7, 'B&C', 14, '2021-11-09 12:58:31', '2021-11-09 12:58:31');
INSERT INTO `answer` VALUES (57, 7, 'B&C', 14, '2021-11-09 12:58:31', '2021-11-09 12:58:31');
INSERT INTO `answer` VALUES (58, 7, 'B&C', 14, '2021-11-09 12:58:37', '2021-11-09 12:58:37');
INSERT INTO `answer` VALUES (59, 7, 'B&C', 14, '2021-11-09 12:58:37', '2021-11-09 12:58:37');
INSERT INTO `answer` VALUES (60, 7, 'B&C', 14, '2021-11-09 12:58:46', '2021-11-09 12:58:46');
INSERT INTO `answer` VALUES (61, 7, 'B&C', 14, '2021-11-09 12:58:46', '2021-11-09 12:58:46');
INSERT INTO `answer` VALUES (62, 7, 'B&C', 14, '2021-11-09 12:59:02', '2021-11-09 12:59:02');
INSERT INTO `answer` VALUES (63, 7, 'B&C', 14, '2021-11-09 12:59:02', '2021-11-09 12:59:02');
INSERT INTO `answer` VALUES (64, 7, 'B&C', 14, '2021-11-09 12:59:24', '2021-11-09 12:59:24');
INSERT INTO `answer` VALUES (65, 7, 'B&C', 14, '2021-11-09 12:59:24', '2021-11-09 12:59:24');
INSERT INTO `answer` VALUES (66, 7, 'B&C', 14, '2021-11-09 12:59:47', '2021-11-09 12:59:47');
INSERT INTO `answer` VALUES (67, 7, 'B&C', 14, '2021-11-09 12:59:47', '2021-11-09 12:59:47');
INSERT INTO `answer` VALUES (68, 7, 'A', 14, '2021-11-10 05:36:50', '2021-11-10 05:36:50');

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
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '简介视频的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of channel
-- ----------------------------
INSERT INTO `channel` VALUES (14, '保险保障', 'http://ccb-admin.cczuit.cn/upload/img/20211109163046347.png', '保险金信托、大额保单……全面解读高净值人士的保险保障。', '', '2021-10-22 20:43:04', '2021-11-12 19:28:21', 1, 1, 'http://ccb-admin.cczuit.cn/upload/video/20211109105023192.mp4');
INSERT INTO `channel` VALUES (15, '家族传承', 'http://ccb-admin.cczuit.cn/upload/img/20211109163025817.png', '家族信托教你守富“道与术”：家族财富保护、传承、管理一体化。', '', '2021-10-24 20:20:41', '2021-11-11 11:21:23', 1, 1, '');
INSERT INTO `channel` VALUES (16, '频道344', 'http://ccb-admin.cczuit.cn/upload/img/20211024202108719.jpg', '频道3', 'http://ccb-admin.cczuit.cn/upload/img/20211024202111741.jpg', '2021-10-24 20:21:14', '2021-10-24 20:21:30', 0, 1, '');
INSERT INTO `channel` VALUES (17, '资产配置', 'http://ccb-admin.cczuit.cn/upload/img/20211109163011289.png', '资产配置到底是指什么？如何做好资产配置？\r\n在这里，看懂高净值人群资产配置的那些事。', '', '2021-11-01 21:23:22', '2021-11-12 19:27:27', 1, 1, 'http://ccb-admin.cczuit.cn/upload/video/20211105191409578.mp4');
INSERT INTO `channel` VALUES (18, '养老规划', 'http://ccb-admin.cczuit.cn/upload/img/20211109163112532.png', '养老还涉财富传承、管理问题？来看看我们需要做哪些准备。', '', '2021-11-09 16:31:19', '2021-11-11 11:22:16', 1, 1, '');
INSERT INTO `channel` VALUES (19, '公益慈善', 'http://ccb-admin.cczuit.cn/upload/img/20211109164509595.png', '高净值人士为何热衷慈善？慈善能做哪些事？慈善工具怎么用？答案全在这。', '', '2021-11-09 16:33:32', '2021-11-11 11:22:36', 1, 1, '');
INSERT INTO `channel` VALUES (20, '法律法规', 'http://ccb-admin.cczuit.cn/upload/img/20211109164521276.png', '看法律小剧场，避守富大风险。股权代持、遗产传承、家庭婚变、公私不分……预知如何规避风险，看这！', '', '2021-11-09 16:43:54', '2021-11-11 11:22:59', 1, 1, '');

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
INSERT INTO `home_page` VALUES (2, 'http://ccb-admin.cczuit.cn/upload/video/20211024201922919.mp4', '2021年“财富守攻传”私人银行财视频节目全新上线，多位总行级财富顾问再度集结，紧跟高净值人群的财富需求，围绕资产配置、家族信托及传承、保险保障、养老规划和法律等五大方向，展开系列话题分享，共论财富守攻传承之道。');

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
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_channel
-- ----------------------------
INSERT INTO `log_channel` VALUES (58, 1, '频道1', '2021-10-24');
INSERT INTO `log_channel` VALUES (59, 1, '频道1', '2021-11-06');
INSERT INTO `log_channel` VALUES (60, 1, '频道1', '2021-11-07');
INSERT INTO `log_channel` VALUES (61, 1, '资产配置', '2021-11-09');
INSERT INTO `log_channel` VALUES (62, 4, '法律法规', '2021-11-09');
INSERT INTO `log_channel` VALUES (63, 3, '公益慈善', '2021-11-09');
INSERT INTO `log_channel` VALUES (64, 2, '频道344', '2021-11-09');
INSERT INTO `log_channel` VALUES (65, 1, '家族传承', '2021-11-09');
INSERT INTO `log_channel` VALUES (66, 6, '养老规划', '2021-11-09');
INSERT INTO `log_channel` VALUES (67, 1, '资产配置', '2021-11-10');
INSERT INTO `log_channel` VALUES (68, 2, '公益慈善', '2021-11-10');
INSERT INTO `log_channel` VALUES (69, 4, '法律法规', '2021-11-10');
INSERT INTO `log_channel` VALUES (70, 1, '法律法规', '2021-11-10');
INSERT INTO `log_channel` VALUES (71, 1, '资产配置', '2021-11-10');
INSERT INTO `log_channel` VALUES (72, 1, '法律法规', '2021-11-10');
INSERT INTO `log_channel` VALUES (73, 1, '资产配置', '2021-11-10');
INSERT INTO `log_channel` VALUES (74, 1, '资产配置', '2021-11-10');
INSERT INTO `log_channel` VALUES (75, 1, '养老规划', '2021-11-10');
INSERT INTO `log_channel` VALUES (76, 1, '养老规划', '2021-11-10');
INSERT INTO `log_channel` VALUES (77, 1, '频道344', '2021-11-10');
INSERT INTO `log_channel` VALUES (78, 1, '资产配置', '2021-11-10');
INSERT INTO `log_channel` VALUES (79, 1, '养老规划', '2021-11-10');
INSERT INTO `log_channel` VALUES (80, 1, '公益慈善', '2021-11-10');
INSERT INTO `log_channel` VALUES (81, 1, '公益慈善', '2021-11-11');
INSERT INTO `log_channel` VALUES (82, 1, '法律法规', '2021-11-11');
INSERT INTO `log_channel` VALUES (83, 1, '法律法规', '2021-11-11');
INSERT INTO `log_channel` VALUES (84, 1, '公益慈善', '2021-11-11');
INSERT INTO `log_channel` VALUES (85, 1, '资产配置', '2021-11-11');
INSERT INTO `log_channel` VALUES (86, 1, '公益慈善', '2021-11-11');
INSERT INTO `log_channel` VALUES (87, 1, '法律法规', '2021-11-11');
INSERT INTO `log_channel` VALUES (88, 1, '养老规划', '2021-11-11');
INSERT INTO `log_channel` VALUES (89, 1, '资产配置', '2021-11-11');
INSERT INTO `log_channel` VALUES (90, 1, '家族传承', '2021-11-11');
INSERT INTO `log_channel` VALUES (91, 1, '频道344', '2021-11-11');
INSERT INTO `log_channel` VALUES (92, 1, '资产配置', '2021-11-11');
INSERT INTO `log_channel` VALUES (93, 1, '公益慈善', '2021-11-11');
INSERT INTO `log_channel` VALUES (94, 1, '法律法规', '2021-11-11');
INSERT INTO `log_channel` VALUES (95, 1, '养老规划', '2021-11-11');
INSERT INTO `log_channel` VALUES (96, 1, '公益慈善', '2021-11-11');
INSERT INTO `log_channel` VALUES (97, 1, '频道344', '2021-11-11');
INSERT INTO `log_channel` VALUES (98, 1, '法律法规', '2021-11-11');
INSERT INTO `log_channel` VALUES (99, 1, '法律法规', '2021-11-11');
INSERT INTO `log_channel` VALUES (100, 1, '法律法规', '2021-11-11');
INSERT INTO `log_channel` VALUES (101, 1, '公益慈善', '2021-11-11');
INSERT INTO `log_channel` VALUES (102, 1, '养老规划', '2021-11-12');
INSERT INTO `log_channel` VALUES (103, 1, '频道344', '2021-11-12');
INSERT INTO `log_channel` VALUES (104, 1, '公益慈善', '2021-11-12');
INSERT INTO `log_channel` VALUES (105, 1, '频道344', '2021-11-14');
INSERT INTO `log_channel` VALUES (106, 1, '资产配置', '2021-11-14');

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
) ENGINE = InnoDB AUTO_INCREMENT = 107 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_teacher
-- ----------------------------
INSERT INTO `log_teacher` VALUES (66, 1, '讲师1', '2021-10-24');
INSERT INTO `log_teacher` VALUES (67, 1, '讲师1', '2021-10-31');
INSERT INTO `log_teacher` VALUES (68, 1, '讲师2', '2021-11-06');
INSERT INTO `log_teacher` VALUES (69, 2, '讲师3', '2021-11-06');
INSERT INTO `log_teacher` VALUES (70, 1, '讲师5', '2021-11-06');
INSERT INTO `log_teacher` VALUES (71, 1, '讲师1', '2021-11-06');
INSERT INTO `log_teacher` VALUES (72, 1, '讲师3', '2021-11-07');
INSERT INTO `log_teacher` VALUES (73, 1, '讲师5', '2021-11-07');
INSERT INTO `log_teacher` VALUES (74, 1, '讲师2', '2021-11-09');
INSERT INTO `log_teacher` VALUES (75, 5, '讲师3', '2021-11-09');
INSERT INTO `log_teacher` VALUES (76, 4, '讲师5', '2021-11-09');
INSERT INTO `log_teacher` VALUES (77, 2, '讲师3', '2021-11-10');
INSERT INTO `log_teacher` VALUES (78, 1, '讲师5', '2021-11-10');
INSERT INTO `log_teacher` VALUES (79, 1, '讲师1', '2021-11-10');
INSERT INTO `log_teacher` VALUES (80, 1, '讲师3', '2021-11-10');
INSERT INTO `log_teacher` VALUES (81, 1, '讲师3', '2021-11-10');
INSERT INTO `log_teacher` VALUES (82, 1, '讲师3', '2021-11-10');
INSERT INTO `log_teacher` VALUES (83, 1, '讲师3', '2021-11-10');
INSERT INTO `log_teacher` VALUES (84, 1, '讲师3', '2021-11-10');
INSERT INTO `log_teacher` VALUES (85, 1, '讲师3', '2021-11-10');
INSERT INTO `log_teacher` VALUES (86, 1, '讲师2', '2021-11-10');
INSERT INTO `log_teacher` VALUES (87, 1, '讲师3', '2021-11-11');
INSERT INTO `log_teacher` VALUES (88, 1, '讲师3', '2021-11-11');
INSERT INTO `log_teacher` VALUES (89, 1, '讲师3', '2021-11-11');
INSERT INTO `log_teacher` VALUES (90, 3, '讲师3', '2021-11-11');
INSERT INTO `log_teacher` VALUES (91, 1, '讲师5', '2021-11-11');
INSERT INTO `log_teacher` VALUES (92, 2, '讲师2', '2021-11-11');
INSERT INTO `log_teacher` VALUES (93, 1, '讲师5', '2021-11-11');
INSERT INTO `log_teacher` VALUES (94, 1, '讲师3', '2021-11-11');
INSERT INTO `log_teacher` VALUES (95, 1, '讲师3', '2021-11-11');
INSERT INTO `log_teacher` VALUES (96, 1, '讲师3', '2021-11-12');
INSERT INTO `log_teacher` VALUES (97, 1, '讲师3', '2021-11-12');
INSERT INTO `log_teacher` VALUES (98, 1, '王刚', '2021-11-12');
INSERT INTO `log_teacher` VALUES (99, 1, '谢池', '2021-11-12');
INSERT INTO `log_teacher` VALUES (100, 1, '郭娜', '2021-11-12');
INSERT INTO `log_teacher` VALUES (101, 1, '毕文婷', '2021-11-12');
INSERT INTO `log_teacher` VALUES (102, 1, '毕文婷', '2021-11-12');
INSERT INTO `log_teacher` VALUES (103, 1, '王刚', '2021-11-12');
INSERT INTO `log_teacher` VALUES (104, 1, '谢池', '2021-11-12');
INSERT INTO `log_teacher` VALUES (105, 1, '梁凌', '2021-11-12');
INSERT INTO `log_teacher` VALUES (106, 1, '王刚', '2021-11-13');

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
) ENGINE = InnoDB AUTO_INCREMENT = 178 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log_video
-- ----------------------------
INSERT INTO `log_video` VALUES (65, 1, 1, '视频一', '2021-10-24');
INSERT INTO `log_video` VALUES (66, 3, 0, '视频一', '2021-11-04');
INSERT INTO `log_video` VALUES (67, 1, 0, '视频三', '2021-11-04');
INSERT INTO `log_video` VALUES (68, 1, 0, '视频二', '2021-11-04');
INSERT INTO `log_video` VALUES (69, 33, 0, '视频一', '2021-11-04');
INSERT INTO `log_video` VALUES (70, 2, 0, '视频一', '2021-11-05');
INSERT INTO `log_video` VALUES (71, 11, 0, '视频一', '2021-11-05');
INSERT INTO `log_video` VALUES (72, 7, 0, '视频一', '2021-11-06');
INSERT INTO `log_video` VALUES (73, 52, 0, '视频一', '2021-11-06');
INSERT INTO `log_video` VALUES (74, 82, 0, '视频二', '2021-11-06');
INSERT INTO `log_video` VALUES (75, 141, 0, '视频一', '2021-11-06');
INSERT INTO `log_video` VALUES (76, 46, 0, '视频二', '2021-11-06');
INSERT INTO `log_video` VALUES (77, 25, 0, '视频一', '2021-11-06');
INSERT INTO `log_video` VALUES (78, 104, 0, '视频一', '2021-11-07');
INSERT INTO `log_video` VALUES (79, 7, 0, '视频一', '2021-11-07');
INSERT INTO `log_video` VALUES (80, 1, 0, '视频一', '2021-11-07');
INSERT INTO `log_video` VALUES (81, 9, 0, '视频一', '2021-11-09');
INSERT INTO `log_video` VALUES (82, 8, 0, '111', '2021-11-09');
INSERT INTO `log_video` VALUES (83, 2, 0, '视频三', '2021-11-09');
INSERT INTO `log_video` VALUES (84, 50, 0, '视频一', '2021-11-09');
INSERT INTO `log_video` VALUES (85, 76, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-09');
INSERT INTO `log_video` VALUES (86, 8, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-09');
INSERT INTO `log_video` VALUES (87, 4, 0, '视频三', '2021-11-09');
INSERT INTO `log_video` VALUES (88, 66, 0, '视频一', '2021-11-09');
INSERT INTO `log_video` VALUES (89, 10, 0, '视频二', '2021-11-09');
INSERT INTO `log_video` VALUES (90, 54, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-09');
INSERT INTO `log_video` VALUES (91, 34, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-09');
INSERT INTO `log_video` VALUES (92, 2, 0, '视频二', '2021-11-09');
INSERT INTO `log_video` VALUES (93, 5, 0, '视频一', '2021-11-09');
INSERT INTO `log_video` VALUES (94, 3, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-09');
INSERT INTO `log_video` VALUES (95, 2, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-10');
INSERT INTO `log_video` VALUES (96, 3, 0, '视频二', '2021-11-10');
INSERT INTO `log_video` VALUES (97, 4, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-10');
INSERT INTO `log_video` VALUES (98, 31, 0, '视频一', '2021-11-10');
INSERT INTO `log_video` VALUES (99, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (100, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (101, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (102, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (103, 2, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-10');
INSERT INTO `log_video` VALUES (104, 2, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-10');
INSERT INTO `log_video` VALUES (105, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (106, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (107, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (108, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (109, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (110, 3, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (111, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (112, 3, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (113, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (114, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (115, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (116, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (117, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (118, 2, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-10');
INSERT INTO `log_video` VALUES (119, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (120, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (121, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (122, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (123, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (124, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (125, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (126, 4, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (127, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (128, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (129, 2, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-10');
INSERT INTO `log_video` VALUES (130, 4, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-10');
INSERT INTO `log_video` VALUES (131, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (132, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (133, 1, 0, '视频一', '2021-11-10');
INSERT INTO `log_video` VALUES (134, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (135, 4, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (136, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (137, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (138, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-10');
INSERT INTO `log_video` VALUES (139, 2, 0, '视频测试一', '2021-11-10');
INSERT INTO `log_video` VALUES (140, 2, 0, '视频测试一', '2021-11-11');
INSERT INTO `log_video` VALUES (141, 2, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-11');
INSERT INTO `log_video` VALUES (142, 1, 0, '视频测试一', '2021-11-11');
INSERT INTO `log_video` VALUES (143, 1, 0, '视频测试一', '2021-11-11');
INSERT INTO `log_video` VALUES (144, 2, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-11');
INSERT INTO `log_video` VALUES (145, 1, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-11');
INSERT INTO `log_video` VALUES (146, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-11');
INSERT INTO `log_video` VALUES (147, 2, 0, '视频测试一', '2021-11-11');
INSERT INTO `log_video` VALUES (148, 2, 0, '视频测试一', '2021-11-11');
INSERT INTO `log_video` VALUES (149, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-11');
INSERT INTO `log_video` VALUES (150, 2, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-11');
INSERT INTO `log_video` VALUES (151, 2, 0, '视频测试一', '2021-11-11');
INSERT INTO `log_video` VALUES (152, 2, 0, '视频测试一', '2021-11-11');
INSERT INTO `log_video` VALUES (153, 3, 0, '视频测试一', '2021-11-11');
INSERT INTO `log_video` VALUES (154, 4, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-11');
INSERT INTO `log_video` VALUES (155, 4, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-11');
INSERT INTO `log_video` VALUES (156, 8, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-11');
INSERT INTO `log_video` VALUES (157, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-11');
INSERT INTO `log_video` VALUES (158, 2, 0, '视频测试一', '2021-11-11');
INSERT INTO `log_video` VALUES (159, 2, 0, '大风浪下，如何“守”住家庭财富？', '2021-11-11');
INSERT INTO `log_video` VALUES (160, 2, 0, '视频测试一', '2021-11-11');
INSERT INTO `log_video` VALUES (161, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-11');
INSERT INTO `log_video` VALUES (162, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-11');
INSERT INTO `log_video` VALUES (163, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-12');
INSERT INTO `log_video` VALUES (164, 2, 0, '全球大降息！家庭资产如何配置“攻”守…', '2021-11-12');
INSERT INTO `log_video` VALUES (165, 2, 0, '视频测试一', '2021-11-12');
INSERT INTO `log_video` VALUES (166, 2, 0, '视频测试一', '2021-11-12');
INSERT INTO `log_video` VALUES (167, 3, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-12');
INSERT INTO `log_video` VALUES (168, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-12');
INSERT INTO `log_video` VALUES (169, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-12');
INSERT INTO `log_video` VALUES (170, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-12');
INSERT INTO `log_video` VALUES (171, 2, 0, '我们该为养老做哪些准备', '2021-11-12');
INSERT INTO `log_video` VALUES (172, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-12');
INSERT INTO `log_video` VALUES (173, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-13');
INSERT INTO `log_video` VALUES (174, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-13');
INSERT INTO `log_video` VALUES (175, 4, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-13');
INSERT INTO `log_video` VALUES (176, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-14');
INSERT INTO `log_video` VALUES (177, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-14');

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
INSERT INTO `persistent_logins` VALUES ('JL2i53XSOjsLUpGDfmETZg==', 'admin', 'NmHEXLwADyRmDgvAkC6Fkw==', '2021-11-14 20:17:38');
INSERT INTO `persistent_logins` VALUES ('Ruioo38iUEz1SNQLOT4MlQ==', 'admin', 'cli/s0e7t2xJwi5KhCJR6A==', '2021-11-14 18:26:49');
INSERT INTO `persistent_logins` VALUES ('WlRgfGFfoUvGotl/nedzUQ==', 'admin', 'YUCVRI3XfdAYv19XJ1AdqQ==', '2021-11-14 18:37:01');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '问卷中问题编号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '问题的题目',
  `option` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '问题的选项（用&符号隔开）数组返回，索引从1开始',
  `channel_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '所属频道(逗号分隔)',
  `category` tinyint(4) NOT NULL DEFAULT 0 COMMENT '问题类型1-单选 2-多选 3-判断 4-填空',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `weight` int(11) NOT NULL DEFAULT 0 COMMENT '倒序 数据校验最大值100 最小0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (7, '3.您需要通过专业机构和专业人士为您提供养老规划帮助吗？', '需要&不需要', 14, 1, '2021-10-22 21:03:34', '2021-11-12 19:20:41', 98);
INSERT INTO `question` VALUES (9, '1.    您认为养老规划是不是自己目前需要考虑的问题？', '是&否', 14, 1, '2021-10-24 20:23:26', '2021-11-12 19:18:53', 100);
INSERT INTO `question` VALUES (10, '2.在养老规划中，当前您更重视以下哪一个方面？          ', '家族企业的传递交接&家庭资产的保值增值&家庭财富的传承安排&养老生活的具体计划', 14, 1, '2021-11-09 17:31:55', '2021-11-12 19:20:02', 99);
INSERT INTO `question` VALUES (11, '4.您认为在养老规划中需要使用到哪些管理工具？   ', '遗嘱&赠与协议&家族信托&年金养老保险&保险金信托&意定监护协议&其他     ', 14, 1, '2021-11-12 19:22:07', '2021-11-12 19:22:07', 97);
INSERT INTO `question` VALUES (12, '1、您是否有意愿参与公益慈善？', '是&否', 19, 1, '2021-11-12 19:23:03', '2021-11-12 19:23:03', 96);
INSERT INTO `question` VALUES (13, '2、如果参与公益慈善，什么是您最看重的因素？', '对社会现象各弱势群体的关注&受国家政策鼓励和引导&家族企业的社会责任&家族精神的传承', 19, 1, '2021-11-12 19:24:02', '2021-11-12 19:24:02', 95);
INSERT INTO `question` VALUES (14, '3、以下哪种公益慈善内容您最想尝试？', '贫困地区捐款捐物&就业支持&教育改善&医疗卫生建设', 19, 1, '2021-11-12 19:25:10', '2021-11-12 19:25:10', 94);
INSERT INTO `question` VALUES (15, '4、您会倾向于使用什么工具来进行公益慈善活动？', '直接捐赠&非公募基金会&慈善信托&专项基金&影响力投资&金融产品收益捐赠', 19, 1, '2021-11-12 19:26:42', '2021-11-12 19:26:42', 93);

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
INSERT INTO `sys_user` VALUES ('1', 'sa', '超级管理员', 'E10ADC3949BA59ABBE56E057F20F883E', 'Y', '', NULL, '2019-09-17 12:00:36', '2021-11-13 15:27:01', 'Y', '2019-07-19 16:36:03', '2021-10-24 10:14:49');
INSERT INTO `sys_user` VALUES ('2', 'admin', '管理员', 'E10ADC3949BA59ABBE56E057F20F883E', 'Y', '', NULL, '2019-09-17 12:00:36', '2021-11-14 20:17:38', 'Y', '2019-07-19 16:36:03', '2021-10-24 10:14:54');
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
  `weight` int(11) NOT NULL DEFAULT 0 COMMENT '倒序 数据校验最大值100 最小0',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (5, '陈静', '26年金融从业经验，拥有CFP、CPB等专业资质。团队管理资产108亿元。曾多次获得总行私人银行业务多项荣誉和称号，2019年度“中国银行业协会优秀财富顾问”。', 'http://ccb-admin.cczuit.cn/upload/img/20211112183630964.png', 1, '建行家族办公室北京团队主管', 0, '2021-10-22 21:03:02', '2021-11-12 18:40:58');
INSERT INTO `teacher` VALUES (6, '黄光涛', '35年金融从业经验，拥有AFP、CFP、CPB、CRFA、CTP等专业资质。团队管理资产120亿元。曾荣获全国精英理财师40强,全国十佳明星理财师第一名,中国银行业“优秀私人财富顾问”等行内外荣誉和称号。', 'http://ccb-admin.cczuit.cn/upload/img/20211112184137193.png', 1, '重庆分行私行首席高级财富顾问', 0, '2021-10-22 22:08:20', '2021-11-12 18:41:41');
INSERT INTO `teacher` VALUES (7, '讲师3', '讲师', 'http://ccb-admin.cczuit.cn/upload/img/20211023092541910.jpg', 0, '软件工程师', 0, '2021-10-23 09:25:44', '2021-10-23 09:25:44');
INSERT INTO `teacher` VALUES (8, '万辉斌', '28年银行从业经验，拥有RFP、GIA等专业资质。管理资产规模超100亿元，曾获中国百佳金融理财师称号。 ', 'http://ccb-admin.cczuit.cn/upload/img/20211112184224494.png', 1, '广东省分行首席财富顾问', 0, '2021-10-24 20:24:21', '2021-11-12 18:42:27');
INSERT INTO `teacher` VALUES (9, '讲师3', '讲师3', 'http://ccb-admin.cczuit.cn/upload/img/20211024202459549.jpg', 0, '软件工程师', 0, '2021-10-24 20:25:00', '2021-10-24 20:25:00');
INSERT INTO `teacher` VALUES (10, '王虹', '23年银行从业经验，直接管理客户家族资产50亿元，直接服务5个家族办公室家族客户，曾获2019年度“中国银行业协会优秀私人财富顾问”等荣誉。', 'http://ccb-admin.cczuit.cn/upload/img/20211112184452713.png', 1, '山东省分行私人银行部副总经理、家族办公室（山东中心）负责人', 0, '2021-11-12 18:44:55', '2021-11-12 18:44:55');
INSERT INTO `teacher` VALUES (11, '方一男', '31年银行从业经验，管理资产规模超百亿。协助客户签署家族信托或跨境投资超100单。', 'http://ccb-admin.cczuit.cn/upload/img/20211112184555421.png', 1, '国际公认“反洗钱师（CAMS）”', 0, '2021-11-12 18:45:57', '2021-11-12 18:45:57');
INSERT INTO `teacher` VALUES (12, '毕文婷', '16年财富管理及私人银行从业经验，CFP持证。团队管理资产460亿元，曾获多项全国赛事奖项，受邀担任2019年中国私人银行精英赛专家评审。', 'http://ccb-admin.cczuit.cn/upload/img/20211112184629508.png', 1, '上海分行私行财富顾问团队主管', 0, '2021-11-12 18:46:31', '2021-11-12 18:46:31');
INSERT INTO `teacher` VALUES (13, '郭娜', '17年银行从业经验，12年私人银行从业经验，客户资产规模超百亿。新加坡管理大学财富管理硕士，清华大学工商管理硕士。曾获建行总行优秀百度顾问，北京银行业协会优秀理财师等荣誉。', 'http://ccb-admin.cczuit.cn/upload/img/20211112184735008.png', 1, '这里是空的', 0, '2021-11-12 18:47:36', '2021-11-12 18:47:36');
INSERT INTO `teacher` VALUES (14, '毛宇', '从业二十多年，精研家族服务、慈善、股权投资、风险管理、税收筹划，服务多家上市公司，率先完成国内首单股票家族信托、深圳首单家族产业基金的方案设置及实践。国际金融理财师CFP，私人银行家CPB，新加坡私人银行家证书。', 'http://ccb-admin.cczuit.cn/upload/img/20211112184844493.png', 1, '建行南山私人银行总经理、总行级财富顾问、培训师，', 0, '2021-11-12 18:48:46', '2021-11-12 18:48:46');
INSERT INTO `teacher` VALUES (15, '梁凌', '16年银行从业经验，拥有CFP、CPB等专业资质。团队管理资产300亿元，曾获建行总行年度优秀财富顾问等荣誉。', 'http://ccb-admin.cczuit.cn/upload/img/20211112184914988.png', 1, '厦门分行私行财富顾问', 0, '2021-11-12 18:49:16', '2021-11-12 18:49:16');
INSERT INTO `teacher` VALUES (16, '方芃芃', '15年银行从业经验，双硕士学位，CPB持证。建行家族办公室广东团队牵头人，团队管理资产规模140亿元，曾获首届中国优秀金融理财师称号。 受邀担任2021年第三届中国私人银行精英赛专家评审。', 'http://ccb-admin.cczuit.cn/upload/img/20211112184947969.png', 1, '广东省分行私人银行首席财富顾问', 0, '2021-11-12 18:49:49', '2021-11-12 18:49:49');
INSERT INTO `teacher` VALUES (17, '谢池', '11年银行从业经验，直接管理家族客户超100户，管理家族客户资产近30亿元，曾获建行总行年度优秀财富顾问等荣誉。', 'http://ccb-admin.cczuit.cn/upload/img/20211112185016414.png', 1, '福建分行私人银行财富顾问', 0, '2021-11-12 18:50:18', '2021-11-12 18:50:18');
INSERT INTO `teacher` VALUES (18, '王刚', '11年私人银行财富顾问工作经验，拥有CFP、CPB等专业资质。团队管理资产100亿元，曾获建行总行年度优秀财富顾问等荣誉。', 'http://ccb-admin.cczuit.cn/upload/img/20211112185049138.png', 1, '大连星海湾私行中心主任', 0, '2021-11-12 18:50:50', '2021-11-12 18:50:50');

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
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '封面图片URL',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, '亿元保单频现背后，高净值人群配置保险用意何在？', '2', 579, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 165, 129, '2020-10-23 00:00:00', '2021-11-12 19:38:22', 14, 'http://ccb-admin.cczuit.cn/upload/img/20211112193810432.jpg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211112193810432.jpg');
INSERT INTO `video` VALUES (2, '视频二', '视频描述二', 798, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 0, 145, 176, '2020-10-23 00:00:00', '2021-10-24 20:25:30', 14, 'http://ccb-admin.cczuit.cn/upload/img/20211022210300431.jpg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211112193810432.jpg');
INSERT INTO `video` VALUES (3, '法律剧场', '大风浪下，如何“守”住家庭财富？', 625, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 115, 116, '2020-10-23 00:00:00', '2021-11-12 19:42:17', 20, 'http://ccb-admin.cczuit.cn/upload/img/20211110192000616.jpeg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211112193810432.jpg');
INSERT INTO `video` VALUES (8, '“第三次分配”火了，国内越来越多富人热衷公益', '视频', 28, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 10, 0, '2021-10-24 20:32:44', '2021-11-12 19:37:07', 19, 'http://ccb-admin.cczuit.cn/upload/img/20211112193628392.jpg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211112193810432.jpg');
INSERT INTO `video` VALUES (9, '从资管新规出发，聊聊资产配置的那些事', '视频5', 82, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 10, 0, '2021-10-26 18:16:44', '2021-11-12 19:41:24', 17, 'http://ccb-admin.cczuit.cn/upload/img/20211112194118624.jpg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211112193810432.jpg');
INSERT INTO `video` VALUES (10, '我们该为养老做哪些准备', '1', 167, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 28, 0, '2021-11-09 10:51:55', '2021-11-12 19:39:16', 18, 'http://ccb-admin.cczuit.cn/upload/img/20211112193907294.jpg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211112193810432.jpg');
INSERT INTO `video` VALUES (11, '家族信托知多少：专家教你保护、传承和管理家庭财富', '1', 85, 'http://ccb-admin.cczuit.cn/upload/video/20211110151033648.mp4', 1, 15, 0, '2021-11-10 15:10:40', '2021-11-12 19:40:12', 15, 'http://ccb-admin.cczuit.cn/upload/img/20211112193958235.jpg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211112193810432.jpg');

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
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频和讲师一对多关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_teacher_relation
-- ----------------------------
INSERT INTO `video_teacher_relation` VALUES (13, 2, 6);
INSERT INTO `video_teacher_relation` VALUES (14, 2, 8);
INSERT INTO `video_teacher_relation` VALUES (35, 8, 12);
INSERT INTO `video_teacher_relation` VALUES (36, 1, 8);
INSERT INTO `video_teacher_relation` VALUES (37, 10, 6);
INSERT INTO `video_teacher_relation` VALUES (38, 11, 5);
INSERT INTO `video_teacher_relation` VALUES (40, 9, 5);

SET FOREIGN_KEY_CHECKS = 1;
