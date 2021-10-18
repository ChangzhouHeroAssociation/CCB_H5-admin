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

 Date: 18/10/2021 22:45:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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

SET FOREIGN_KEY_CHECKS = 1;
