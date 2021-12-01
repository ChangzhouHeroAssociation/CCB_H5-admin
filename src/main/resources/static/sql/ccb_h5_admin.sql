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

 Date: 01/12/2021 10:11:53
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
) ENGINE = InnoDB AUTO_INCREMENT = 274 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `answer` VALUES (69, 15, '专项基金', 19, '2021-11-18 01:03:14', '2021-11-18 01:03:14');
INSERT INTO `answer` VALUES (70, 11, '其他', 14, '2021-11-18 02:34:21', '2021-11-18 02:34:21');
INSERT INTO `answer` VALUES (71, 10, '家族企业的传递交接', 14, '2021-11-18 02:44:17', '2021-11-18 02:44:17');
INSERT INTO `answer` VALUES (72, 10, '家庭资产的保值增值', 14, '2021-11-18 03:05:57', '2021-11-18 03:05:57');
INSERT INTO `answer` VALUES (73, 7, '需要', 14, '2021-11-18 03:05:57', '2021-11-18 03:05:57');
INSERT INTO `answer` VALUES (74, 10, '家族企业的传递交接', 14, '2021-11-18 03:06:37', '2021-11-18 03:06:37');
INSERT INTO `answer` VALUES (75, 7, '不需要', 14, '2021-11-18 03:06:37', '2021-11-18 03:06:37');
INSERT INTO `answer` VALUES (76, 9, '否', 14, '2021-11-18 12:56:05', '2021-11-18 12:56:05');
INSERT INTO `answer` VALUES (77, 10, '家族企业的传递交接', 14, '2021-11-18 12:56:05', '2021-11-18 12:56:05');
INSERT INTO `answer` VALUES (78, 7, '需要', 14, '2021-11-18 12:56:05', '2021-11-18 12:56:05');
INSERT INTO `answer` VALUES (79, 11, '赠与协议', 14, '2021-11-18 12:56:05', '2021-11-18 12:56:05');
INSERT INTO `answer` VALUES (80, 12, '是', 19, '2021-11-18 12:58:01', '2021-11-18 12:58:01');
INSERT INTO `answer` VALUES (81, 13, '家族企业的社会责任', 19, '2021-11-18 12:58:01', '2021-11-18 12:58:01');
INSERT INTO `answer` VALUES (82, 14, '就业支持', 19, '2021-11-18 12:58:01', '2021-11-18 12:58:01');
INSERT INTO `answer` VALUES (83, 15, '慈善信托', 19, '2021-11-18 12:58:01', '2021-11-18 12:58:01');
INSERT INTO `answer` VALUES (84, 12, '是', 19, '2021-11-18 12:58:11', '2021-11-18 12:58:11');
INSERT INTO `answer` VALUES (85, 13, '家族企业的社会责任', 19, '2021-11-18 12:58:11', '2021-11-18 12:58:11');
INSERT INTO `answer` VALUES (86, 14, '就业支持', 19, '2021-11-18 12:58:11', '2021-11-18 12:58:11');
INSERT INTO `answer` VALUES (87, 15, '慈善信托', 19, '2021-11-18 12:58:11', '2021-11-18 12:58:11');
INSERT INTO `answer` VALUES (88, 18, '21-50年', 15, '2021-11-19 06:56:05', '2021-11-19 06:56:05');
INSERT INTO `answer` VALUES (89, 19, '是', 15, '2021-11-19 06:56:05', '2021-11-19 06:56:05');
INSERT INTO `answer` VALUES (90, 20, '是', 15, '2021-11-19 06:56:05', '2021-11-19 06:56:05');
INSERT INTO `answer` VALUES (91, 21, '集合信托计划', 15, '2021-11-19 06:56:05', '2021-11-19 06:56:05');
INSERT INTO `answer` VALUES (92, 22, 'A、资产配置', 15, '2021-11-19 06:56:05', '2021-11-19 06:56:05');
INSERT INTO `answer` VALUES (93, 23, 'A、财富传承分配', 15, '2021-11-19 06:56:05', '2021-11-19 06:56:05');
INSERT INTO `answer` VALUES (94, 24, 'A、是', 15, '2021-11-19 06:56:05', '2021-11-19 06:56:05');
INSERT INTO `answer` VALUES (95, 25, 'B、上市股权', 15, '2021-11-19 06:56:05', '2021-11-19 06:56:05');
INSERT INTO `answer` VALUES (96, 26, 'B、否', 15, '2021-11-19 06:56:05', '2021-11-19 06:56:05');
INSERT INTO `answer` VALUES (97, 27, 'B、否', 15, '2021-11-19 06:56:05', '2021-11-19 06:56:05');
INSERT INTO `answer` VALUES (98, 18, '21-50年', 15, '2021-11-19 06:56:08', '2021-11-19 06:56:08');
INSERT INTO `answer` VALUES (99, 19, '是', 15, '2021-11-19 06:56:08', '2021-11-19 06:56:08');
INSERT INTO `answer` VALUES (100, 20, '是', 15, '2021-11-19 06:56:08', '2021-11-19 06:56:08');
INSERT INTO `answer` VALUES (101, 21, '集合信托计划', 15, '2021-11-19 06:56:08', '2021-11-19 06:56:08');
INSERT INTO `answer` VALUES (102, 22, 'A、资产配置', 15, '2021-11-19 06:56:08', '2021-11-19 06:56:08');
INSERT INTO `answer` VALUES (103, 23, 'A、财富传承分配', 15, '2021-11-19 06:56:08', '2021-11-19 06:56:08');
INSERT INTO `answer` VALUES (104, 24, 'A、是', 15, '2021-11-19 06:56:08', '2021-11-19 06:56:08');
INSERT INTO `answer` VALUES (105, 25, 'B、上市股权', 15, '2021-11-19 06:56:08', '2021-11-19 06:56:08');
INSERT INTO `answer` VALUES (106, 26, 'B、否', 15, '2021-11-19 06:56:08', '2021-11-19 06:56:08');
INSERT INTO `answer` VALUES (107, 27, 'B、否', 15, '2021-11-19 06:56:08', '2021-11-19 06:56:08');
INSERT INTO `answer` VALUES (108, 18, '21-50年', 15, '2021-11-19 07:11:10', '2021-11-19 07:11:10');
INSERT INTO `answer` VALUES (109, 19, '是', 15, '2021-11-19 07:11:10', '2021-11-19 07:11:10');
INSERT INTO `answer` VALUES (110, 20, '否', 15, '2021-11-19 07:11:10', '2021-11-19 07:11:10');
INSERT INTO `answer` VALUES (111, 21, '集合信托计划', 15, '2021-11-19 07:11:10', '2021-11-19 07:11:10');
INSERT INTO `answer` VALUES (112, 22, 'B、财产配置', 15, '2021-11-19 07:11:10', '2021-11-19 07:11:10');
INSERT INTO `answer` VALUES (113, 23, 'C、婚前财产保护', 15, '2021-11-19 07:11:10', '2021-11-19 07:11:10');
INSERT INTO `answer` VALUES (114, 24, 'A、是', 15, '2021-11-19 07:11:10', '2021-11-19 07:11:10');
INSERT INTO `answer` VALUES (115, 25, 'F、以上都不感兴趣', 15, '2021-11-19 07:11:10', '2021-11-19 07:11:10');
INSERT INTO `answer` VALUES (116, 26, 'A、是', 15, '2021-11-19 07:11:10', '2021-11-19 07:11:10');
INSERT INTO `answer` VALUES (117, 27, 'A、是', 15, '2021-11-19 07:11:10', '2021-11-19 07:11:10');
INSERT INTO `answer` VALUES (118, 18, '10-20年', 15, '2021-11-19 07:13:15', '2021-11-19 07:13:15');
INSERT INTO `answer` VALUES (119, 19, '否', 15, '2021-11-19 07:13:15', '2021-11-19 07:13:15');
INSERT INTO `answer` VALUES (120, 20, '是', 15, '2021-11-19 07:13:15', '2021-11-19 07:13:15');
INSERT INTO `answer` VALUES (121, 21, '理财产品', 15, '2021-11-19 07:13:15', '2021-11-19 07:13:15');
INSERT INTO `answer` VALUES (122, 22, 'C、风险隔离', 15, '2021-11-19 07:13:15', '2021-11-19 07:13:15');
INSERT INTO `answer` VALUES (123, 23, 'B、家企分离', 15, '2021-11-19 07:13:15', '2021-11-19 07:13:15');
INSERT INTO `answer` VALUES (124, 24, 'B、否', 15, '2021-11-19 07:13:15', '2021-11-19 07:13:15');
INSERT INTO `answer` VALUES (125, 25, 'B、上市股权', 15, '2021-11-19 07:13:15', '2021-11-19 07:13:15');
INSERT INTO `answer` VALUES (126, 26, 'A、是', 15, '2021-11-19 07:13:15', '2021-11-19 07:13:15');
INSERT INTO `answer` VALUES (127, 27, 'A、是', 15, '2021-11-19 07:13:15', '2021-11-19 07:13:15');
INSERT INTO `answer` VALUES (128, 18, '101年以上', 15, '2021-11-19 07:14:07', '2021-11-19 07:14:07');
INSERT INTO `answer` VALUES (129, 19, '是', 15, '2021-11-19 07:14:07', '2021-11-19 07:14:07');
INSERT INTO `answer` VALUES (130, 20, '否', 15, '2021-11-19 07:14:07', '2021-11-19 07:14:07');
INSERT INTO `answer` VALUES (131, 21, '和保险差不多', 15, '2021-11-19 07:14:07', '2021-11-19 07:14:07');
INSERT INTO `answer` VALUES (132, 22, 'B、财产配置', 15, '2021-11-19 07:14:07', '2021-11-19 07:14:07');
INSERT INTO `answer` VALUES (133, 23, 'B、家企分离', 15, '2021-11-19 07:14:07', '2021-11-19 07:14:07');
INSERT INTO `answer` VALUES (134, 24, 'A、是', 15, '2021-11-19 07:14:07', '2021-11-19 07:14:07');
INSERT INTO `answer` VALUES (135, 25, 'A、不动产', 15, '2021-11-19 07:14:07', '2021-11-19 07:14:07');
INSERT INTO `answer` VALUES (136, 26, 'A、是', 15, '2021-11-19 07:14:07', '2021-11-19 07:14:07');
INSERT INTO `answer` VALUES (137, 27, 'B、否', 15, '2021-11-19 07:14:07', '2021-11-19 07:14:07');
INSERT INTO `answer` VALUES (138, 18, '101年以上', 15, '2021-11-19 07:14:13', '2021-11-19 07:14:13');
INSERT INTO `answer` VALUES (139, 19, '是', 15, '2021-11-19 07:14:13', '2021-11-19 07:14:13');
INSERT INTO `answer` VALUES (140, 20, '否', 15, '2021-11-19 07:14:13', '2021-11-19 07:14:13');
INSERT INTO `answer` VALUES (141, 21, '和保险差不多', 15, '2021-11-19 07:14:13', '2021-11-19 07:14:13');
INSERT INTO `answer` VALUES (142, 22, 'B、财产配置', 15, '2021-11-19 07:14:13', '2021-11-19 07:14:13');
INSERT INTO `answer` VALUES (143, 23, 'B、家企分离', 15, '2021-11-19 07:14:13', '2021-11-19 07:14:13');
INSERT INTO `answer` VALUES (144, 24, 'A、是', 15, '2021-11-19 07:14:13', '2021-11-19 07:14:13');
INSERT INTO `answer` VALUES (145, 25, 'A、不动产', 15, '2021-11-19 07:14:13', '2021-11-19 07:14:13');
INSERT INTO `answer` VALUES (146, 26, 'A、是', 15, '2021-11-19 07:14:13', '2021-11-19 07:14:13');
INSERT INTO `answer` VALUES (147, 27, 'B、否', 15, '2021-11-19 07:14:13', '2021-11-19 07:14:13');
INSERT INTO `answer` VALUES (148, 18, '101年以上', 15, '2021-11-19 07:14:29', '2021-11-19 07:14:29');
INSERT INTO `answer` VALUES (149, 19, '是', 15, '2021-11-19 07:14:29', '2021-11-19 07:14:29');
INSERT INTO `answer` VALUES (150, 20, '否', 15, '2021-11-19 07:14:29', '2021-11-19 07:14:29');
INSERT INTO `answer` VALUES (151, 21, '和保险差不多', 15, '2021-11-19 07:14:29', '2021-11-19 07:14:29');
INSERT INTO `answer` VALUES (152, 22, 'B、财产配置', 15, '2021-11-19 07:14:29', '2021-11-19 07:14:29');
INSERT INTO `answer` VALUES (153, 23, 'B、家企分离', 15, '2021-11-19 07:14:29', '2021-11-19 07:14:29');
INSERT INTO `answer` VALUES (154, 24, 'A、是', 15, '2021-11-19 07:14:29', '2021-11-19 07:14:29');
INSERT INTO `answer` VALUES (155, 25, 'A、不动产', 15, '2021-11-19 07:14:29', '2021-11-19 07:14:29');
INSERT INTO `answer` VALUES (156, 26, 'A、是', 15, '2021-11-19 07:14:29', '2021-11-19 07:14:29');
INSERT INTO `answer` VALUES (157, 27, 'B、否', 15, '2021-11-19 07:14:29', '2021-11-19 07:14:29');
INSERT INTO `answer` VALUES (158, 18, '101年以上', 15, '2021-11-19 07:14:55', '2021-11-19 07:14:55');
INSERT INTO `answer` VALUES (159, 19, '是', 15, '2021-11-19 07:14:55', '2021-11-19 07:14:55');
INSERT INTO `answer` VALUES (160, 20, '否', 15, '2021-11-19 07:14:55', '2021-11-19 07:14:55');
INSERT INTO `answer` VALUES (161, 21, '定制化解决方案', 15, '2021-11-19 07:14:55', '2021-11-19 07:14:55');
INSERT INTO `answer` VALUES (162, 22, 'A、资产配置', 15, '2021-11-19 07:14:55', '2021-11-19 07:14:55');
INSERT INTO `answer` VALUES (163, 23, 'A、财富传承分配', 15, '2021-11-19 07:14:55', '2021-11-19 07:14:55');
INSERT INTO `answer` VALUES (164, 24, 'A、是', 15, '2021-11-19 07:14:55', '2021-11-19 07:14:55');
INSERT INTO `answer` VALUES (165, 25, 'B、上市股权', 15, '2021-11-19 07:14:55', '2021-11-19 07:14:55');
INSERT INTO `answer` VALUES (166, 26, 'B、否', 15, '2021-11-19 07:14:55', '2021-11-19 07:14:55');
INSERT INTO `answer` VALUES (167, 27, 'B、否', 15, '2021-11-19 07:14:55', '2021-11-19 07:14:55');
INSERT INTO `answer` VALUES (168, 18, '21-50年', 15, '2021-11-19 07:15:55', '2021-11-19 07:15:55');
INSERT INTO `answer` VALUES (169, 19, '是', 15, '2021-11-19 07:15:55', '2021-11-19 07:15:55');
INSERT INTO `answer` VALUES (170, 20, '否', 15, '2021-11-19 07:15:55', '2021-11-19 07:15:55');
INSERT INTO `answer` VALUES (171, 21, '理财产品', 15, '2021-11-19 07:15:55', '2021-11-19 07:15:55');
INSERT INTO `answer` VALUES (172, 22, 'A、资产配置', 15, '2021-11-19 07:15:55', '2021-11-19 07:15:55');
INSERT INTO `answer` VALUES (173, 23, 'B、家企分离', 15, '2021-11-19 07:15:55', '2021-11-19 07:15:55');
INSERT INTO `answer` VALUES (174, 24, 'A、是', 15, '2021-11-19 07:15:55', '2021-11-19 07:15:55');
INSERT INTO `answer` VALUES (175, 25, 'D、其他贵重物品', 15, '2021-11-19 07:15:55', '2021-11-19 07:15:55');
INSERT INTO `answer` VALUES (176, 26, 'B、否', 15, '2021-11-19 07:15:55', '2021-11-19 07:15:55');
INSERT INTO `answer` VALUES (177, 27, 'A、是', 15, '2021-11-19 07:15:55', '2021-11-19 07:15:55');
INSERT INTO `answer` VALUES (178, 18, '21-50年', 15, '2021-11-19 07:16:42', '2021-11-19 07:16:42');
INSERT INTO `answer` VALUES (179, 19, '是', 15, '2021-11-19 07:16:42', '2021-11-19 07:16:42');
INSERT INTO `answer` VALUES (180, 20, '是', 15, '2021-11-19 07:16:42', '2021-11-19 07:16:42');
INSERT INTO `answer` VALUES (181, 21, '和保险差不多', 15, '2021-11-19 07:16:42', '2021-11-19 07:16:42');
INSERT INTO `answer` VALUES (182, 22, 'D、公益（慈善）', 15, '2021-11-19 07:16:42', '2021-11-19 07:16:42');
INSERT INTO `answer` VALUES (183, 23, 'B、家企分离', 15, '2021-11-19 07:16:42', '2021-11-19 07:16:42');
INSERT INTO `answer` VALUES (184, 24, 'B、否', 15, '2021-11-19 07:16:42', '2021-11-19 07:16:42');
INSERT INTO `answer` VALUES (185, 25, 'F、以上都不感兴趣', 15, '2021-11-19 07:16:42', '2021-11-19 07:16:42');
INSERT INTO `answer` VALUES (186, 26, 'B、否', 15, '2021-11-19 07:16:42', '2021-11-19 07:16:42');
INSERT INTO `answer` VALUES (187, 27, 'B、否', 15, '2021-11-19 07:16:42', '2021-11-19 07:16:42');
INSERT INTO `answer` VALUES (188, 18, '101年以上', 15, '2021-11-19 07:28:25', '2021-11-19 07:28:25');
INSERT INTO `answer` VALUES (189, 19, '否', 15, '2021-11-19 07:28:25', '2021-11-19 07:28:25');
INSERT INTO `answer` VALUES (190, 20, '否', 15, '2021-11-19 07:28:25', '2021-11-19 07:28:25');
INSERT INTO `answer` VALUES (191, 21, '集合信托计划', 15, '2021-11-19 07:28:25', '2021-11-19 07:28:25');
INSERT INTO `answer` VALUES (192, 22, 'B、财产配置', 15, '2021-11-19 07:28:25', '2021-11-19 07:28:25');
INSERT INTO `answer` VALUES (193, 23, 'B、家企分离', 15, '2021-11-19 07:28:25', '2021-11-19 07:28:25');
INSERT INTO `answer` VALUES (194, 24, 'B、否', 15, '2021-11-19 07:28:25', '2021-11-19 07:28:25');
INSERT INTO `answer` VALUES (195, 25, 'F、以上都不感兴趣', 15, '2021-11-19 07:28:25', '2021-11-19 07:28:25');
INSERT INTO `answer` VALUES (196, 26, 'B、否', 15, '2021-11-19 07:28:25', '2021-11-19 07:28:25');
INSERT INTO `answer` VALUES (197, 27, 'A、是', 15, '2021-11-19 07:28:25', '2021-11-19 07:28:25');
INSERT INTO `answer` VALUES (198, 18, '10-20年', 15, '2021-11-20 04:12:15', '2021-11-20 04:12:15');
INSERT INTO `answer` VALUES (199, 19, '是', 15, '2021-11-20 04:12:15', '2021-11-20 04:12:15');
INSERT INTO `answer` VALUES (200, 20, '是', 15, '2021-11-20 04:12:15', '2021-11-20 04:12:15');
INSERT INTO `answer` VALUES (201, 21, '集合信托计划', 15, '2021-11-20 04:12:15', '2021-11-20 04:12:15');
INSERT INTO `answer` VALUES (202, 22, 'C、风险隔离', 15, '2021-11-20 04:12:15', '2021-11-20 04:12:15');
INSERT INTO `answer` VALUES (203, 23, 'A、财富传承分配', 15, '2021-11-20 04:12:15', '2021-11-20 04:12:15');
INSERT INTO `answer` VALUES (204, 24, 'A、是', 15, '2021-11-20 04:12:15', '2021-11-20 04:12:15');
INSERT INTO `answer` VALUES (205, 25, 'A、不动产', 15, '2021-11-20 04:12:15', '2021-11-20 04:12:15');
INSERT INTO `answer` VALUES (206, 26, 'A、是', 15, '2021-11-20 04:12:15', '2021-11-20 04:12:15');
INSERT INTO `answer` VALUES (207, 27, 'A、是', 15, '2021-11-20 04:12:15', '2021-11-20 04:12:15');
INSERT INTO `answer` VALUES (208, 18, '51-100年', 15, '2021-11-24 07:01:43', '2021-11-24 07:01:43');
INSERT INTO `answer` VALUES (209, 19, '否', 15, '2021-11-24 07:01:43', '2021-11-24 07:01:43');
INSERT INTO `answer` VALUES (210, 20, '否', 15, '2021-11-24 07:01:43', '2021-11-24 07:01:43');
INSERT INTO `answer` VALUES (211, 21, '定制化解决方案', 15, '2021-11-24 07:01:43', '2021-11-24 07:01:43');
INSERT INTO `answer` VALUES (212, 22, 'A、资产配置', 15, '2021-11-24 07:01:43', '2021-11-24 07:01:43');
INSERT INTO `answer` VALUES (213, 23, 'A、财富传承分配', 15, '2021-11-24 07:01:43', '2021-11-24 07:01:43');
INSERT INTO `answer` VALUES (214, 24, 'B、否', 15, '2021-11-24 07:01:43', '2021-11-24 07:01:43');
INSERT INTO `answer` VALUES (215, 25, 'B、上市股权', 15, '2021-11-24 07:01:43', '2021-11-24 07:01:43');
INSERT INTO `answer` VALUES (216, 26, 'A、是', 15, '2021-11-24 07:01:43', '2021-11-24 07:01:43');
INSERT INTO `answer` VALUES (217, 27, 'B、否', 15, '2021-11-24 07:01:43', '2021-11-24 07:01:43');
INSERT INTO `answer` VALUES (218, 18, '51-100年', 15, '2021-11-26 08:13:03', '2021-11-26 08:13:03');
INSERT INTO `answer` VALUES (219, 19, '否', 15, '2021-11-26 08:13:03', '2021-11-26 08:13:03');
INSERT INTO `answer` VALUES (220, 20, '否', 15, '2021-11-26 08:13:03', '2021-11-26 08:13:03');
INSERT INTO `answer` VALUES (221, 21, '集合信托计划', 15, '2021-11-26 08:13:03', '2021-11-26 08:13:03');
INSERT INTO `answer` VALUES (222, 22, 'C、风险隔离', 15, '2021-11-26 08:13:03', '2021-11-26 08:13:03');
INSERT INTO `answer` VALUES (223, 23, 'D、财富保值增值', 15, '2021-11-26 08:13:03', '2021-11-26 08:13:03');
INSERT INTO `answer` VALUES (224, 24, 'A、是', 15, '2021-11-26 08:13:03', '2021-11-26 08:13:03');
INSERT INTO `answer` VALUES (225, 25, 'B、上市股权', 15, '2021-11-26 08:13:03', '2021-11-26 08:13:03');
INSERT INTO `answer` VALUES (226, 26, 'A、是', 15, '2021-11-26 08:13:03', '2021-11-26 08:13:03');
INSERT INTO `answer` VALUES (227, 27, 'A、是', 15, '2021-11-26 08:13:03', '2021-11-26 08:13:03');
INSERT INTO `answer` VALUES (228, 18, '51-100年', 15, '2021-11-26 09:12:31', '2021-11-26 09:12:31');
INSERT INTO `answer` VALUES (229, 19, '否', 15, '2021-11-26 09:12:31', '2021-11-26 09:12:31');
INSERT INTO `answer` VALUES (230, 20, '是', 15, '2021-11-26 09:12:31', '2021-11-26 09:12:31');
INSERT INTO `answer` VALUES (231, 21, '集合信托计划', 15, '2021-11-26 09:12:31', '2021-11-26 09:12:31');
INSERT INTO `answer` VALUES (232, 22, 'D、公益（慈善）', 15, '2021-11-26 09:12:31', '2021-11-26 09:12:31');
INSERT INTO `answer` VALUES (233, 23, 'D、财富保值增值', 15, '2021-11-26 09:12:31', '2021-11-26 09:12:31');
INSERT INTO `answer` VALUES (234, 24, 'A、是', 15, '2021-11-26 09:12:31', '2021-11-26 09:12:31');
INSERT INTO `answer` VALUES (235, 25, 'E、以上都感兴趣', 15, '2021-11-26 09:12:31', '2021-11-26 09:12:31');
INSERT INTO `answer` VALUES (236, 26, 'B、否', 15, '2021-11-26 09:12:31', '2021-11-26 09:12:31');
INSERT INTO `answer` VALUES (237, 27, 'A、是', 15, '2021-11-26 09:12:31', '2021-11-26 09:12:31');
INSERT INTO `answer` VALUES (238, 9, 'B、否', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (239, 10, 'D、税务筹划', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (240, 7, 'D、提升生活品质', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (241, 11, 'B、否', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (242, 16, 'A、自己', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (243, 17, 'A、会', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (244, 9, 'B、否', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (245, 10, 'D、税务筹划', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (246, 7, 'D、提升生活品质', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (247, 11, 'B、否', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (248, 16, 'A、自己', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (249, 17, 'A、会', 14, '2021-11-28 06:56:16', '2021-11-28 06:56:16');
INSERT INTO `answer` VALUES (250, 38, 'A、是', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (251, 39, 'A、家族企业的传递交接', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (252, 40, 'A、需要', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (253, 41, 'A、遗嘱', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (254, 38, 'A、是', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (255, 39, 'A、家族企业的传递交接', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (256, 40, 'A、需要', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (257, 41, 'A、遗嘱', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (258, 38, 'A、是', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (259, 39, 'A、家族企业的传递交接', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (260, 40, 'A、需要', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (261, 41, 'A、遗嘱', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (262, 38, 'A、是', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (263, 39, 'A、家族企业的传递交接', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (264, 40, 'A、需要', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (265, 41, 'A、遗嘱', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (266, 38, 'A、是', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (267, 39, 'A、家族企业的传递交接', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (268, 40, 'A、需要', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (269, 41, 'A、遗嘱', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (270, 38, 'A、是', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (271, 39, 'A、家族企业的传递交接', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (272, 40, 'A、需要', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');
INSERT INTO `answer` VALUES (273, 41, 'A、遗嘱', 18, '2021-11-29 10:45:28', '2021-11-29 10:45:28');

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
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '倒序 数据校验最大值100 最小0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of channel
-- ----------------------------
INSERT INTO `channel` VALUES (14, '保险保障', 'http://ccb-admin.cczuit.cn/upload/img/20211109163046347.png', '保险金信托、大额保单……全面解读高净值人士的保险保障。', '', '2021-10-22 20:43:04', '2021-11-12 19:28:21', 1, 1, 'http://ccb-admin.cczuit.cn/upload/video/20211109105023192.mp4', 80);
INSERT INTO `channel` VALUES (15, '家族传承', 'http://ccb-admin.cczuit.cn/upload/img/20211109163025817.png', '家族信托教你守富“道与术”：家族财富保护、传承、管理一体化。', '', '2021-10-24 20:20:41', '2021-11-11 11:21:23', 1, 1, '', 90);
INSERT INTO `channel` VALUES (16, '频道344', 'http://ccb-admin.cczuit.cn/upload/img/20211024202108719.jpg', '频道3', 'http://ccb-admin.cczuit.cn/upload/img/20211024202111741.jpg', '2021-10-24 20:21:14', '2021-10-24 20:21:30', 0, 1, '', 0);
INSERT INTO `channel` VALUES (17, '资产配置', 'http://ccb-admin.cczuit.cn/upload/img/20211109163011289.png', '资产配置到底是指什么？如何做好资产配置？\r\n在这里，看懂高净值人群资产配置的那些事。', '', '2021-11-01 21:23:22', '2021-11-12 19:27:27', 1, 1, 'http://ccb-admin.cczuit.cn/upload/video/20211105191409578.mp4', 100);
INSERT INTO `channel` VALUES (18, '养老规划', 'http://ccb-admin.cczuit.cn/upload/img/20211109163112532.png', '养老还涉财富传承、管理问题？来看看我们需要做哪些准备。', '', '2021-11-09 16:31:19', '2021-11-11 11:22:16', 1, 1, '', 70);
INSERT INTO `channel` VALUES (19, '公益慈善', 'http://ccb-admin.cczuit.cn/upload/img/20211109164509595.png', '高净值人士为何热衷慈善？慈善能做哪些事？慈善工具怎么用？答案全在这。', '', '2021-11-09 16:33:32', '2021-11-11 11:22:36', 1, 1, '', 60);
INSERT INTO `channel` VALUES (20, '法律法规', 'http://ccb-admin.cczuit.cn/upload/img/20211109164521276.png', '看法律小剧场，避守富大风险。股权代持、遗产传承、家庭婚变、公私不分……预知如何规避风险，看这！', '', '2021-11-09 16:43:54', '2021-11-11 11:22:59', 1, 1, '', 50);

-- ----------------------------
-- Table structure for home_page
-- ----------------------------
DROP TABLE IF EXISTS `home_page`;
CREATE TABLE `home_page`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '首页视频',
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '活动介绍',
  `picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '封面图片URL',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_page
-- ----------------------------
INSERT INTO `home_page` VALUES (2, 'http://ccb-admin.cczuit.cn/upload/video/20211024201922919.mp4', '2022年“财富守攻传”私人银行观点分享全新上线，多位总行级财富顾问再度集结，紧跟高净值人群的财富管理需求，围绕资产配置、家族信托及传承、保险保障、养老规划、公益慈善和法律六大方向，展开系列话题分享，共论财富守攻传承之道。', '0');

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
) ENGINE = InnoDB AUTO_INCREMENT = 332 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `log_channel` VALUES (107, 1, '法律法规', '2021-11-15');
INSERT INTO `log_channel` VALUES (108, 1, '法律法规', '2021-11-15');
INSERT INTO `log_channel` VALUES (109, 1, '法律法规', '2021-11-15');
INSERT INTO `log_channel` VALUES (110, 1, '法律法规', '2021-11-16');
INSERT INTO `log_channel` VALUES (111, 1, '公益慈善', '2021-11-16');
INSERT INTO `log_channel` VALUES (112, 1, '法律法规', '2021-11-16');
INSERT INTO `log_channel` VALUES (113, 1, '法律法规', '2021-11-16');
INSERT INTO `log_channel` VALUES (114, 1, '法律法规', '2021-11-16');
INSERT INTO `log_channel` VALUES (115, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (116, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (117, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (118, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (119, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (120, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (121, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (122, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (123, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (124, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (125, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (126, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (127, 1, '保险保障', '2021-11-17');
INSERT INTO `log_channel` VALUES (128, 1, '养老规划', '2021-11-17');
INSERT INTO `log_channel` VALUES (129, 1, '资产配置', '2021-11-17');
INSERT INTO `log_channel` VALUES (130, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (131, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (132, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (133, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (134, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (135, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (136, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (137, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (138, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (139, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (140, 1, '法律法规', '2021-11-17');
INSERT INTO `log_channel` VALUES (141, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (142, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (143, 2, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (144, 1, '公益慈善', '2021-11-19');
INSERT INTO `log_channel` VALUES (145, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (146, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (147, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (148, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (149, 1, '养老规划', '2021-11-19');
INSERT INTO `log_channel` VALUES (150, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (151, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (152, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (153, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (154, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (155, 1, '养老规划', '2021-11-19');
INSERT INTO `log_channel` VALUES (156, 1, '养老规划', '2021-11-19');
INSERT INTO `log_channel` VALUES (157, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (158, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (159, 1, '公益慈善', '2021-11-19');
INSERT INTO `log_channel` VALUES (160, 1, '养老规划', '2021-11-19');
INSERT INTO `log_channel` VALUES (161, 1, '资产配置', '2021-11-19');
INSERT INTO `log_channel` VALUES (162, 1, '家族传承', '2021-11-19');
INSERT INTO `log_channel` VALUES (163, 1, '保险保障', '2021-11-19');
INSERT INTO `log_channel` VALUES (164, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (165, 1, '养老规划', '2021-11-19');
INSERT INTO `log_channel` VALUES (166, 1, '家族传承', '2021-11-19');
INSERT INTO `log_channel` VALUES (167, 1, '保险保障', '2021-11-19');
INSERT INTO `log_channel` VALUES (168, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (169, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (170, 1, '资产配置', '2021-11-19');
INSERT INTO `log_channel` VALUES (171, 1, '法律法规', '2021-11-19');
INSERT INTO `log_channel` VALUES (172, 1, '保险保障', '2021-11-19');
INSERT INTO `log_channel` VALUES (173, 1, '资产配置', '2021-11-20');
INSERT INTO `log_channel` VALUES (174, 1, '家族传承', '2021-11-22');
INSERT INTO `log_channel` VALUES (175, 1, '家族传承', '2021-11-22');
INSERT INTO `log_channel` VALUES (176, 1, '养老规划', '2021-11-22');
INSERT INTO `log_channel` VALUES (177, 1, '养老规划', '2021-11-22');
INSERT INTO `log_channel` VALUES (178, 1, '法律法规', '2021-11-22');
INSERT INTO `log_channel` VALUES (179, 1, '公益慈善', '2021-11-22');
INSERT INTO `log_channel` VALUES (180, 1, '保险保障', '2021-11-22');
INSERT INTO `log_channel` VALUES (181, 1, '法律法规', '2021-11-22');
INSERT INTO `log_channel` VALUES (182, 1, '资产配置', '2021-11-22');
INSERT INTO `log_channel` VALUES (183, 1, '公益慈善', '2021-11-22');
INSERT INTO `log_channel` VALUES (184, 1, '家族传承', '2021-11-22');
INSERT INTO `log_channel` VALUES (185, 1, '养老规划', '2021-11-22');
INSERT INTO `log_channel` VALUES (186, 1, '公益慈善', '2021-11-22');
INSERT INTO `log_channel` VALUES (187, 1, '家族传承', '2021-11-22');
INSERT INTO `log_channel` VALUES (188, 1, '法律法规', '2021-11-22');
INSERT INTO `log_channel` VALUES (189, 1, '法律法规', '2021-11-22');
INSERT INTO `log_channel` VALUES (190, 1, '养老规划', '2021-11-22');
INSERT INTO `log_channel` VALUES (191, 1, '保险保障', '2021-11-22');
INSERT INTO `log_channel` VALUES (192, 1, '法律法规', '2021-11-22');
INSERT INTO `log_channel` VALUES (193, 3, '法律法规', '2021-11-22');
INSERT INTO `log_channel` VALUES (194, 1, '法律法规', '2021-11-23');
INSERT INTO `log_channel` VALUES (195, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (196, 1, '公益慈善', '2021-11-24');
INSERT INTO `log_channel` VALUES (197, 1, '公益慈善', '2021-11-24');
INSERT INTO `log_channel` VALUES (198, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (199, 1, '公益慈善', '2021-11-24');
INSERT INTO `log_channel` VALUES (200, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (201, 1, '保险保障', '2021-11-24');
INSERT INTO `log_channel` VALUES (202, 1, '公益慈善', '2021-11-24');
INSERT INTO `log_channel` VALUES (203, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (204, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (205, 1, '公益慈善', '2021-11-24');
INSERT INTO `log_channel` VALUES (206, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (207, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (208, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (209, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (210, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (211, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (212, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (213, 1, '家族传承', '2021-11-24');
INSERT INTO `log_channel` VALUES (214, 1, '公益慈善', '2021-11-24');
INSERT INTO `log_channel` VALUES (215, 1, '保险保障', '2021-11-24');
INSERT INTO `log_channel` VALUES (216, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (217, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (218, 1, '法律法规', '2021-11-24');
INSERT INTO `log_channel` VALUES (219, 1, '公益慈善', '2021-11-24');
INSERT INTO `log_channel` VALUES (220, 1, '家族传承', '2021-11-24');
INSERT INTO `log_channel` VALUES (221, 1, '法律法规', '2021-11-26');
INSERT INTO `log_channel` VALUES (222, 1, '法律法规', '2021-11-26');
INSERT INTO `log_channel` VALUES (223, 1, '法律法规', '2021-11-26');
INSERT INTO `log_channel` VALUES (224, 1, '家族传承', '2021-11-26');
INSERT INTO `log_channel` VALUES (225, 1, '法律法规', '2021-11-26');
INSERT INTO `log_channel` VALUES (226, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (227, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (228, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (229, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (230, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (231, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (232, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (233, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (234, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (235, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (236, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (237, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (238, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (239, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (240, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (241, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (242, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (243, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (244, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (245, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (246, 1, '法律法规', '2021-11-27');
INSERT INTO `log_channel` VALUES (247, 1, '法律法规', '2021-11-27');
INSERT INTO `log_channel` VALUES (248, 1, '保险保障', '2021-11-27');
INSERT INTO `log_channel` VALUES (249, 1, '法律法规', '2021-11-27');
INSERT INTO `log_channel` VALUES (250, 1, '法律法规', '2021-11-28');
INSERT INTO `log_channel` VALUES (251, 1, '法律法规', '2021-11-28');
INSERT INTO `log_channel` VALUES (252, 1, '法律法规', '2021-11-28');
INSERT INTO `log_channel` VALUES (253, 1, '法律法规', '2021-11-28');
INSERT INTO `log_channel` VALUES (254, 1, '法律法规', '2021-11-29');
INSERT INTO `log_channel` VALUES (255, 1, '资产配置', '2021-11-29');
INSERT INTO `log_channel` VALUES (256, 1, '法律法规', '2021-11-29');
INSERT INTO `log_channel` VALUES (257, 1, '法律法规', '2021-11-29');
INSERT INTO `log_channel` VALUES (258, 1, '保险保障', '2021-11-29');
INSERT INTO `log_channel` VALUES (259, 1, '资产配置', '2021-11-29');
INSERT INTO `log_channel` VALUES (260, 1, '法律法规', '2021-11-29');
INSERT INTO `log_channel` VALUES (261, 1, '保险保障', '2021-11-29');
INSERT INTO `log_channel` VALUES (262, 1, '法律法规', '2021-11-29');
INSERT INTO `log_channel` VALUES (263, 1, '资产配置', '2021-11-29');
INSERT INTO `log_channel` VALUES (264, 1, '法律法规', '2021-11-29');
INSERT INTO `log_channel` VALUES (265, 1, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (266, 1, '资产配置', '2021-11-30');
INSERT INTO `log_channel` VALUES (267, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (268, 1, '资产配置', '2021-11-30');
INSERT INTO `log_channel` VALUES (269, 1, '保险保障', '2021-11-30');
INSERT INTO `log_channel` VALUES (270, 1, '养老规划', '2021-11-30');
INSERT INTO `log_channel` VALUES (271, 1, '资产配置', '2021-11-30');
INSERT INTO `log_channel` VALUES (272, 1, '资产配置', '2021-11-30');
INSERT INTO `log_channel` VALUES (273, 1, '保险保障', '2021-11-30');
INSERT INTO `log_channel` VALUES (274, 1, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (275, 1, '养老规划', '2021-11-30');
INSERT INTO `log_channel` VALUES (276, 1, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (277, 1, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (278, 1, '资产配置', '2021-11-30');
INSERT INTO `log_channel` VALUES (279, 2, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (280, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (281, 1, '公益慈善', '2021-11-30');
INSERT INTO `log_channel` VALUES (282, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (283, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (284, 1, '保险保障', '2021-11-30');
INSERT INTO `log_channel` VALUES (285, 1, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (286, 1, '资产配置', '2021-11-30');
INSERT INTO `log_channel` VALUES (287, 1, '养老规划', '2021-11-30');
INSERT INTO `log_channel` VALUES (288, 1, '公益慈善', '2021-11-30');
INSERT INTO `log_channel` VALUES (289, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (290, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (291, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (292, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (293, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (294, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (295, 1, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (296, 1, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (297, 2, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (298, 1, '保险保障', '2021-11-30');
INSERT INTO `log_channel` VALUES (299, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (300, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (301, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (302, 1, '保险保障', '2021-11-30');
INSERT INTO `log_channel` VALUES (303, 1, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (304, 1, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (305, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (306, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (307, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (308, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (309, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (310, 1, '养老规划', '2021-11-30');
INSERT INTO `log_channel` VALUES (311, 1, '保险保障', '2021-11-30');
INSERT INTO `log_channel` VALUES (312, 1, '养老规划', '2021-11-30');
INSERT INTO `log_channel` VALUES (313, 2, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (314, 1, '资产配置', '2021-11-30');
INSERT INTO `log_channel` VALUES (315, 1, '家族传承', '2021-11-30');
INSERT INTO `log_channel` VALUES (316, 1, '资产配置', '2021-11-30');
INSERT INTO `log_channel` VALUES (317, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (318, 1, '保险保障', '2021-11-30');
INSERT INTO `log_channel` VALUES (319, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (320, 1, '公益慈善', '2021-11-30');
INSERT INTO `log_channel` VALUES (321, 1, '养老规划', '2021-11-30');
INSERT INTO `log_channel` VALUES (322, 1, '法律法规', '2021-11-30');
INSERT INTO `log_channel` VALUES (323, 1, '养老规划', '2021-11-30');
INSERT INTO `log_channel` VALUES (324, 1, '资产配置', '2021-12-01');
INSERT INTO `log_channel` VALUES (325, 1, '保险保障', '2021-12-01');
INSERT INTO `log_channel` VALUES (326, 1, '养老规划', '2021-12-01');
INSERT INTO `log_channel` VALUES (327, 1, '养老规划', '2021-12-01');
INSERT INTO `log_channel` VALUES (328, 1, '保险保障', '2021-12-01');
INSERT INTO `log_channel` VALUES (329, 1, '养老规划', '2021-12-01');
INSERT INTO `log_channel` VALUES (330, 2, '资产配置', '2021-12-01');
INSERT INTO `log_channel` VALUES (331, 1, '养老规划', '2021-12-01');

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
) ENGINE = InnoDB AUTO_INCREMENT = 277 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `log_teacher` VALUES (107, 1, '梁凌', '2021-11-16');
INSERT INTO `log_teacher` VALUES (108, 1, '黄光涛', '2021-11-17');
INSERT INTO `log_teacher` VALUES (109, 1, '黄光涛', '2021-11-17');
INSERT INTO `log_teacher` VALUES (110, 1, '黄光涛', '2021-11-17');
INSERT INTO `log_teacher` VALUES (111, 1, '黄光涛', '2021-11-17');
INSERT INTO `log_teacher` VALUES (112, 1, '黄光涛', '2021-11-17');
INSERT INTO `log_teacher` VALUES (113, 1, '黄光涛', '2021-11-17');
INSERT INTO `log_teacher` VALUES (114, 1, '黄光涛', '2021-11-17');
INSERT INTO `log_teacher` VALUES (115, 1, '黄光涛', '2021-11-17');
INSERT INTO `log_teacher` VALUES (116, 1, '黄光涛', '2021-11-17');
INSERT INTO `log_teacher` VALUES (117, 1, '黄光涛', '2021-11-17');
INSERT INTO `log_teacher` VALUES (118, 1, '讲师3', '2021-11-17');
INSERT INTO `log_teacher` VALUES (119, 1, '万辉斌', '2021-11-17');
INSERT INTO `log_teacher` VALUES (120, 1, '万辉斌', '2021-11-17');
INSERT INTO `log_teacher` VALUES (121, 1, '万辉斌', '2021-11-17');
INSERT INTO `log_teacher` VALUES (122, 1, '万辉斌', '2021-11-17');
INSERT INTO `log_teacher` VALUES (123, 1, '陈静', '2021-11-17');
INSERT INTO `log_teacher` VALUES (124, 1, '陈静', '2021-11-18');
INSERT INTO `log_teacher` VALUES (125, 1, '陈静', '2021-11-18');
INSERT INTO `log_teacher` VALUES (126, 1, '陈静', '2021-11-18');
INSERT INTO `log_teacher` VALUES (127, 1, '陈静', '2021-11-19');
INSERT INTO `log_teacher` VALUES (128, 1, '黄光涛', '2021-11-19');
INSERT INTO `log_teacher` VALUES (129, 1, '万辉斌', '2021-11-19');
INSERT INTO `log_teacher` VALUES (130, 1, '毕文婷', '2021-11-19');
INSERT INTO `log_teacher` VALUES (131, 1, '陈静', '2021-11-19');
INSERT INTO `log_teacher` VALUES (132, 1, '黄光涛', '2021-11-19');
INSERT INTO `log_teacher` VALUES (133, 1, '王虹', '2021-11-19');
INSERT INTO `log_teacher` VALUES (134, 1, '讲师3', '2021-11-19');
INSERT INTO `log_teacher` VALUES (135, 1, '黄光涛', '2021-11-19');
INSERT INTO `log_teacher` VALUES (136, 1, '陈静', '2021-11-20');
INSERT INTO `log_teacher` VALUES (137, 1, '讲师3', '2021-11-20');
INSERT INTO `log_teacher` VALUES (138, 1, '黄光涛', '2021-11-20');
INSERT INTO `log_teacher` VALUES (139, 1, '陈静', '2021-11-20');
INSERT INTO `log_teacher` VALUES (140, 1, '陈静', '2021-11-22');
INSERT INTO `log_teacher` VALUES (141, 1, '陈静', '2021-11-22');
INSERT INTO `log_teacher` VALUES (142, 1, '陈静', '2021-11-22');
INSERT INTO `log_teacher` VALUES (143, 1, '陈静', '2021-11-22');
INSERT INTO `log_teacher` VALUES (144, 1, '陈静', '2021-11-22');
INSERT INTO `log_teacher` VALUES (145, 1, '陈静', '2021-11-22');
INSERT INTO `log_teacher` VALUES (146, 1, '黄光涛', '2021-11-22');
INSERT INTO `log_teacher` VALUES (147, 1, '黄光涛', '2021-11-22');
INSERT INTO `log_teacher` VALUES (148, 1, '黄光涛', '2021-11-22');
INSERT INTO `log_teacher` VALUES (149, 1, '讲师3', '2021-11-22');
INSERT INTO `log_teacher` VALUES (150, 1, '黄光涛', '2021-11-22');
INSERT INTO `log_teacher` VALUES (151, 1, '黄光涛', '2021-11-22');
INSERT INTO `log_teacher` VALUES (152, 1, '黄光涛', '2021-11-22');
INSERT INTO `log_teacher` VALUES (153, 1, '黄光涛', '2021-11-22');
INSERT INTO `log_teacher` VALUES (154, 1, '黄光涛', '2021-11-22');
INSERT INTO `log_teacher` VALUES (155, 1, '黄光涛', '2021-11-22');
INSERT INTO `log_teacher` VALUES (156, 1, '讲师3', '2021-11-22');
INSERT INTO `log_teacher` VALUES (157, 1, '讲师3', '2021-11-23');
INSERT INTO `log_teacher` VALUES (158, 1, '黄光涛', '2021-11-23');
INSERT INTO `log_teacher` VALUES (159, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (160, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (161, 1, '黄光涛', '2021-11-23');
INSERT INTO `log_teacher` VALUES (162, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (163, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (164, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (165, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (166, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (167, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (168, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (169, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (170, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (171, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (172, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (173, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (174, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (175, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (176, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (177, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (178, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (179, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (180, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (181, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (182, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (183, 1, '陈静', '2021-11-23');
INSERT INTO `log_teacher` VALUES (184, 1, '黄光涛', '2021-11-24');
INSERT INTO `log_teacher` VALUES (185, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (186, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (187, 2, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (188, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (189, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (190, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (191, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (192, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (193, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (194, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (195, 1, '万辉斌', '2021-11-24');
INSERT INTO `log_teacher` VALUES (196, 1, '万辉斌', '2021-11-24');
INSERT INTO `log_teacher` VALUES (197, 1, '讲师3', '2021-11-24');
INSERT INTO `log_teacher` VALUES (198, 1, '万辉斌', '2021-11-24');
INSERT INTO `log_teacher` VALUES (199, 1, '黄光涛', '2021-11-24');
INSERT INTO `log_teacher` VALUES (200, 1, '讲师3', '2021-11-24');
INSERT INTO `log_teacher` VALUES (201, 1, '万辉斌', '2021-11-24');
INSERT INTO `log_teacher` VALUES (202, 1, '郭娜', '2021-11-24');
INSERT INTO `log_teacher` VALUES (203, 1, '万辉斌', '2021-11-24');
INSERT INTO `log_teacher` VALUES (204, 1, '讲师3', '2021-11-24');
INSERT INTO `log_teacher` VALUES (205, 1, '万辉斌', '2021-11-24');
INSERT INTO `log_teacher` VALUES (206, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (207, 1, '陈静', '2021-11-24');
INSERT INTO `log_teacher` VALUES (208, 1, '陈静', '2021-11-26');
INSERT INTO `log_teacher` VALUES (209, 1, '陈静', '2021-11-26');
INSERT INTO `log_teacher` VALUES (210, 1, '讲师3', '2021-11-27');
INSERT INTO `log_teacher` VALUES (211, 1, '陈静', '2021-11-27');
INSERT INTO `log_teacher` VALUES (212, 1, '陈静', '2021-11-27');
INSERT INTO `log_teacher` VALUES (213, 1, '陈静', '2021-11-27');
INSERT INTO `log_teacher` VALUES (214, 1, '陈静', '2021-11-27');
INSERT INTO `log_teacher` VALUES (215, 1, '陈静', '2021-11-27');
INSERT INTO `log_teacher` VALUES (216, 1, '陈静', '2021-11-27');
INSERT INTO `log_teacher` VALUES (217, 1, '陈静', '2021-11-27');
INSERT INTO `log_teacher` VALUES (218, 1, '陈静', '2021-11-27');
INSERT INTO `log_teacher` VALUES (219, 1, '陈静', '2021-11-27');
INSERT INTO `log_teacher` VALUES (220, 1, '陈静', '2021-11-27');
INSERT INTO `log_teacher` VALUES (221, 1, '毕文婷', '2021-11-27');
INSERT INTO `log_teacher` VALUES (222, 1, '讲师3', '2021-11-29');
INSERT INTO `log_teacher` VALUES (223, 1, '黄光涛', '2021-11-29');
INSERT INTO `log_teacher` VALUES (224, 1, '王虹', '2021-11-29');
INSERT INTO `log_teacher` VALUES (225, 1, '陈静', '2021-11-29');
INSERT INTO `log_teacher` VALUES (226, 1, '毛宇', '2021-11-29');
INSERT INTO `log_teacher` VALUES (227, 1, '毕文婷', '2021-11-29');
INSERT INTO `log_teacher` VALUES (228, 1, '陈静', '2021-11-29');
INSERT INTO `log_teacher` VALUES (229, 1, '陈静', '2021-11-29');
INSERT INTO `log_teacher` VALUES (230, 1, '陈静', '2021-11-29');
INSERT INTO `log_teacher` VALUES (231, 1, '讲师3', '2021-11-29');
INSERT INTO `log_teacher` VALUES (232, 1, '黄光涛', '2021-11-29');
INSERT INTO `log_teacher` VALUES (233, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (234, 2, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (235, 1, '黄光涛', '2021-11-30');
INSERT INTO `log_teacher` VALUES (236, 1, '郭娜', '2021-11-30');
INSERT INTO `log_teacher` VALUES (237, 1, '郭娜', '2021-11-30');
INSERT INTO `log_teacher` VALUES (238, 1, '郭娜', '2021-11-30');
INSERT INTO `log_teacher` VALUES (239, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (240, 1, '讲师3', '2021-11-30');
INSERT INTO `log_teacher` VALUES (241, 1, '郭娜', '2021-11-30');
INSERT INTO `log_teacher` VALUES (242, 1, '黄光涛', '2021-11-30');
INSERT INTO `log_teacher` VALUES (243, 1, '黄光涛', '2021-11-30');
INSERT INTO `log_teacher` VALUES (244, 1, '黄光涛', '2021-11-30');
INSERT INTO `log_teacher` VALUES (245, 1, '刘非', '2021-11-30');
INSERT INTO `log_teacher` VALUES (246, 1, '黄光涛', '2021-11-30');
INSERT INTO `log_teacher` VALUES (247, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (248, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (249, 1, '黄光涛', '2021-11-30');
INSERT INTO `log_teacher` VALUES (250, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (251, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (252, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (253, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (254, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (255, 1, '黄光涛', '2021-11-30');
INSERT INTO `log_teacher` VALUES (256, 1, '毛宇', '2021-11-30');
INSERT INTO `log_teacher` VALUES (257, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (258, 1, '刘非', '2021-11-30');
INSERT INTO `log_teacher` VALUES (259, 1, '万辉斌', '2021-11-30');
INSERT INTO `log_teacher` VALUES (260, 1, '万辉斌', '2021-11-30');
INSERT INTO `log_teacher` VALUES (261, 1, '讲师3', '2021-11-30');
INSERT INTO `log_teacher` VALUES (262, 1, '讲师3', '2021-11-30');
INSERT INTO `log_teacher` VALUES (263, 1, '方一男', '2021-11-30');
INSERT INTO `log_teacher` VALUES (264, 1, '方一男', '2021-11-30');
INSERT INTO `log_teacher` VALUES (265, 1, '王虹', '2021-11-30');
INSERT INTO `log_teacher` VALUES (266, 2, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (267, 1, '王虹', '2021-11-30');
INSERT INTO `log_teacher` VALUES (268, 1, '王虹', '2021-11-30');
INSERT INTO `log_teacher` VALUES (269, 1, '方芃芃', '2021-11-30');
INSERT INTO `log_teacher` VALUES (270, 1, '刘非', '2021-11-30');
INSERT INTO `log_teacher` VALUES (271, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (272, 1, '万辉斌', '2021-11-30');
INSERT INTO `log_teacher` VALUES (273, 1, '毕文婷', '2021-11-30');
INSERT INTO `log_teacher` VALUES (274, 1, '陈静', '2021-11-30');
INSERT INTO `log_teacher` VALUES (275, 1, '王虹', '2021-11-30');
INSERT INTO `log_teacher` VALUES (276, 1, '刘非', '2021-12-01');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1095 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `log_video` VALUES (178, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (179, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (180, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (181, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (182, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (183, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (184, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (185, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (186, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (187, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (188, 2, 0, '法律剧场', '2021-11-15');
INSERT INTO `log_video` VALUES (189, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-15');
INSERT INTO `log_video` VALUES (190, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-15');
INSERT INTO `log_video` VALUES (191, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-15');
INSERT INTO `log_video` VALUES (192, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (193, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-15');
INSERT INTO `log_video` VALUES (194, 2, 0, '法律剧场', '2021-11-16');
INSERT INTO `log_video` VALUES (195, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-16');
INSERT INTO `log_video` VALUES (196, 2, 0, '法律剧场', '2021-11-16');
INSERT INTO `log_video` VALUES (197, 2, 0, '法律剧场', '2021-11-16');
INSERT INTO `log_video` VALUES (198, 2, 0, '法律剧场', '2021-11-16');
INSERT INTO `log_video` VALUES (199, 2, 0, '法律剧场', '2021-11-16');
INSERT INTO `log_video` VALUES (200, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-16');
INSERT INTO `log_video` VALUES (201, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-16');
INSERT INTO `log_video` VALUES (202, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-16');
INSERT INTO `log_video` VALUES (203, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-16');
INSERT INTO `log_video` VALUES (204, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-16');
INSERT INTO `log_video` VALUES (205, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-16');
INSERT INTO `log_video` VALUES (206, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (207, 2, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (208, 2, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (209, 2, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (210, 2, 0, '法律剧场', '2021-11-17');
INSERT INTO `log_video` VALUES (211, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (212, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (213, 2, 0, '我们该为养老做哪些准备', '2021-11-17');
INSERT INTO `log_video` VALUES (214, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (215, 2, 0, '法律剧场', '2021-11-17');
INSERT INTO `log_video` VALUES (216, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (217, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (218, 2, 0, '我们该为养老做哪些准备', '2021-11-17');
INSERT INTO `log_video` VALUES (219, 2, 0, '我们该为养老做哪些准备', '2021-11-17');
INSERT INTO `log_video` VALUES (220, 2, 0, '我们该为养老做哪些准备', '2021-11-17');
INSERT INTO `log_video` VALUES (221, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (222, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (223, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (224, 1, 0, '法律剧场', '2021-11-17');
INSERT INTO `log_video` VALUES (225, 2, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (226, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (227, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (228, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (229, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (230, 2, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (231, 2, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (232, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (233, 4, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (234, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (235, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (236, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (237, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (238, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (239, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (240, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (241, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (242, 3, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (243, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (244, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (245, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (246, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (247, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (248, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (249, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (250, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (251, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (252, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (253, 3, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (254, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (255, 4, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (256, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (257, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (258, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (259, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (260, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (261, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (262, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (263, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (264, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (265, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (266, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (267, 2, 0, '我们该为养老做哪些准备', '2021-11-17');
INSERT INTO `log_video` VALUES (268, 1, 0, '视频二', '2021-11-17');
INSERT INTO `log_video` VALUES (269, 3, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (270, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (271, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (272, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (273, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (274, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (275, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (276, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (277, 1, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (278, 1, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (279, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (280, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (281, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (282, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (283, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (284, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (285, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-17');
INSERT INTO `log_video` VALUES (286, 2, 0, '法律剧场', '2021-11-17');
INSERT INTO `log_video` VALUES (287, 2, 0, '法律剧场', '2021-11-17');
INSERT INTO `log_video` VALUES (288, 4, 0, '法律剧场', '2021-11-17');
INSERT INTO `log_video` VALUES (289, 2, 0, '法律剧场', '2021-11-17');
INSERT INTO `log_video` VALUES (290, 2, 0, '法律剧场', '2021-11-17');
INSERT INTO `log_video` VALUES (291, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (292, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (293, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-17');
INSERT INTO `log_video` VALUES (294, 2, 0, '法律剧场', '2021-11-17');
INSERT INTO `log_video` VALUES (295, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (296, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (297, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (298, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (299, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (300, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (301, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (302, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (303, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (304, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (305, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (306, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (307, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (308, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (309, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (310, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (311, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (312, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (313, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (314, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (315, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (316, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (317, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (318, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (319, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (320, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (321, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (322, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (323, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (324, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (325, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (326, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (327, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (328, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (329, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (330, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (331, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (332, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (333, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (334, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (335, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (336, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (337, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (338, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (339, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (340, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (341, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (342, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (343, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (344, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (345, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (346, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (347, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (348, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (349, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (350, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (351, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (352, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (353, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (354, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (355, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (356, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (357, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (358, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (359, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (360, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (361, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (362, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (363, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (364, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (365, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (366, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (367, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (368, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (369, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (370, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (371, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (372, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (373, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (374, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (375, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (376, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (377, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (378, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (379, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (380, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (381, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (382, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (383, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (384, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (385, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (386, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (387, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (388, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (389, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (390, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (391, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (392, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (393, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (394, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (395, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (396, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (397, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (398, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (399, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (400, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (401, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (402, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (403, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (404, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (405, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (406, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (407, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (408, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (409, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (410, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (411, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (412, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (413, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (414, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (415, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (416, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (417, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (418, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (419, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (420, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (421, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (422, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (423, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (424, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (425, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (426, 4, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (427, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (428, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (429, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (430, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (431, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (432, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (433, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (434, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (435, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (436, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (437, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (438, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (439, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (440, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (441, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (442, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (443, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (444, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (445, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (446, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (447, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (448, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (449, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (450, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (451, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (452, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (453, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (454, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (455, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (456, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (457, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (458, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (459, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (460, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (461, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (462, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (463, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (464, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (465, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (466, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (467, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (468, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (469, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (470, 4, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (471, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (472, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (473, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (474, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (475, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (476, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (477, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (478, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (479, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (480, 2, 0, '我们该为养老做哪些准备', '2021-11-18');
INSERT INTO `log_video` VALUES (481, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (482, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (483, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (484, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (485, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (486, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (487, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (488, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (489, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (490, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (491, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (492, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (493, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (494, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (495, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (496, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (497, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (498, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (499, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (500, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (501, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (502, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (503, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (504, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (505, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (506, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (507, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (508, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (509, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (510, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (511, 4, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (512, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (513, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (514, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (515, 4, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (516, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (517, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (518, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (519, 4, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (520, 4, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (521, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (522, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (523, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (524, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (525, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (526, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (527, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (528, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (529, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (530, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (531, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (532, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (533, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (534, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (535, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (536, 4, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (537, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (538, 4, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (539, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (540, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (541, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (542, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (543, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (544, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (545, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (546, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (547, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (548, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (549, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (550, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (551, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (552, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (553, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (554, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (555, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (556, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (557, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (558, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (559, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (560, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (561, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (562, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (563, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (564, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (565, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (566, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (567, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (568, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (569, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (570, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (571, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (572, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (573, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (574, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (575, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (576, 4, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (577, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (578, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (579, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (580, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (581, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (582, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (583, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (584, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (585, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (586, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (587, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (588, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (589, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (590, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (591, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (592, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (593, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (594, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (595, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (596, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (597, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (598, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (599, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (600, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (601, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (602, 4, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (603, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (604, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (605, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (606, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (607, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (608, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (609, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (610, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (611, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (612, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (613, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (614, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (615, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (616, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (617, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (618, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (619, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (620, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (621, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (622, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (623, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (624, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (625, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (626, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (627, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (628, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (629, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (630, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (631, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (632, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (633, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (634, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (635, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (636, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (637, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (638, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (639, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (640, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (641, 3, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (642, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (643, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (644, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (645, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (646, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (647, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (648, 4, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (649, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (650, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (651, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (652, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (653, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-18');
INSERT INTO `log_video` VALUES (654, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (655, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (656, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (657, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (658, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (659, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (660, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (661, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (662, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (663, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (664, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (665, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (666, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (667, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (668, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (669, 4, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (670, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (671, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-18');
INSERT INTO `log_video` VALUES (672, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (673, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (674, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (675, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (676, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (677, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (678, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (679, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (680, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (681, 1, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (682, 3, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (683, 4, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (684, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (685, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (686, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (687, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-18');
INSERT INTO `log_video` VALUES (688, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-18');
INSERT INTO `log_video` VALUES (689, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (690, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (691, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (692, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (693, 5, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (694, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (695, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-19');
INSERT INTO `log_video` VALUES (696, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (697, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (698, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (699, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (700, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (701, 2, 0, '视频二', '2021-11-19');
INSERT INTO `log_video` VALUES (702, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (703, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (704, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (705, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (706, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (707, 2, 0, '我们该为养老做哪些准备', '2021-11-19');
INSERT INTO `log_video` VALUES (708, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (709, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (710, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (711, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (712, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (713, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (714, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (715, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (716, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (717, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (718, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (719, 2, 0, '我们该为养老做哪些准备', '2021-11-19');
INSERT INTO `log_video` VALUES (720, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (721, 2, 0, '我们该为养老做哪些准备', '2021-11-19');
INSERT INTO `log_video` VALUES (722, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (723, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (724, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (725, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (726, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (727, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (728, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (729, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (730, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (731, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (732, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (733, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (734, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (735, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (736, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (737, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (738, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (739, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (740, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (741, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (742, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (743, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (744, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (745, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-19');
INSERT INTO `log_video` VALUES (746, 2, 0, '法律剧场', '2021-11-19');
INSERT INTO `log_video` VALUES (747, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (748, 1, 0, '视频二', '2021-11-19');
INSERT INTO `log_video` VALUES (749, 1, 0, '视频二', '2021-11-19');
INSERT INTO `log_video` VALUES (750, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (751, 1, 0, '视频二', '2021-11-19');
INSERT INTO `log_video` VALUES (752, 2, 0, '视频二', '2021-11-19');
INSERT INTO `log_video` VALUES (753, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (754, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-19');
INSERT INTO `log_video` VALUES (755, 1, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-19');
INSERT INTO `log_video` VALUES (756, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (757, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (758, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (759, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (760, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (761, 2, 0, '视频二', '2021-11-19');
INSERT INTO `log_video` VALUES (762, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (763, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (764, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (765, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-19');
INSERT INTO `log_video` VALUES (766, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-20');
INSERT INTO `log_video` VALUES (767, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-20');
INSERT INTO `log_video` VALUES (768, 3, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-20');
INSERT INTO `log_video` VALUES (769, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-20');
INSERT INTO `log_video` VALUES (770, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-20');
INSERT INTO `log_video` VALUES (771, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-22');
INSERT INTO `log_video` VALUES (772, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (773, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (774, 2, 0, '法律剧场', '2021-11-22');
INSERT INTO `log_video` VALUES (775, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-22');
INSERT INTO `log_video` VALUES (776, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-22');
INSERT INTO `log_video` VALUES (777, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (778, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (779, 1, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (780, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-22');
INSERT INTO `log_video` VALUES (781, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-22');
INSERT INTO `log_video` VALUES (782, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-22');
INSERT INTO `log_video` VALUES (783, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-22');
INSERT INTO `log_video` VALUES (784, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-22');
INSERT INTO `log_video` VALUES (785, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-22');
INSERT INTO `log_video` VALUES (786, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-22');
INSERT INTO `log_video` VALUES (787, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-22');
INSERT INTO `log_video` VALUES (788, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-22');
INSERT INTO `log_video` VALUES (789, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-22');
INSERT INTO `log_video` VALUES (790, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (791, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-22');
INSERT INTO `log_video` VALUES (792, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (793, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (794, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (795, 2, 0, '视频二', '2021-11-22');
INSERT INTO `log_video` VALUES (796, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (797, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (798, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-22');
INSERT INTO `log_video` VALUES (799, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (800, 2, 0, '我们该为养老做哪些准备', '2021-11-22');
INSERT INTO `log_video` VALUES (801, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-22');
INSERT INTO `log_video` VALUES (802, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-23');
INSERT INTO `log_video` VALUES (803, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-23');
INSERT INTO `log_video` VALUES (804, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-23');
INSERT INTO `log_video` VALUES (805, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-23');
INSERT INTO `log_video` VALUES (806, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-23');
INSERT INTO `log_video` VALUES (807, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-23');
INSERT INTO `log_video` VALUES (808, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-23');
INSERT INTO `log_video` VALUES (809, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-23');
INSERT INTO `log_video` VALUES (810, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-23');
INSERT INTO `log_video` VALUES (811, 2, 0, '视频二', '2021-11-24');
INSERT INTO `log_video` VALUES (812, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (813, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (814, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-24');
INSERT INTO `log_video` VALUES (815, 2, 0, '法律剧场', '2021-11-24');
INSERT INTO `log_video` VALUES (816, 2, 0, '法律剧场', '2021-11-24');
INSERT INTO `log_video` VALUES (817, 3, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (818, 1, 0, '视频二', '2021-11-24');
INSERT INTO `log_video` VALUES (819, 2, 0, '视频二', '2021-11-24');
INSERT INTO `log_video` VALUES (820, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (821, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (822, 3, 0, '视频二', '2021-11-24');
INSERT INTO `log_video` VALUES (823, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (824, 1, 0, '视频二', '2021-11-24');
INSERT INTO `log_video` VALUES (825, 1, 0, '视频二', '2021-11-24');
INSERT INTO `log_video` VALUES (826, 1, 0, '视频二', '2021-11-24');
INSERT INTO `log_video` VALUES (827, 2, 0, '我们该为养老做哪些准备', '2021-11-24');
INSERT INTO `log_video` VALUES (828, 3, 0, '视频二', '2021-11-24');
INSERT INTO `log_video` VALUES (829, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (830, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (831, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (832, 2, 0, '法律剧场', '2021-11-24');
INSERT INTO `log_video` VALUES (833, 2, 0, '法律剧场', '2021-11-24');
INSERT INTO `log_video` VALUES (834, 2, 0, '法律剧场', '2021-11-24');
INSERT INTO `log_video` VALUES (835, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (836, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (837, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (838, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-24');
INSERT INTO `log_video` VALUES (839, 1, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-24');
INSERT INTO `log_video` VALUES (840, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (841, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-24');
INSERT INTO `log_video` VALUES (842, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-24');
INSERT INTO `log_video` VALUES (843, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (844, 1, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-26');
INSERT INTO `log_video` VALUES (845, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-26');
INSERT INTO `log_video` VALUES (846, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (847, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (848, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (849, 3, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-26');
INSERT INTO `log_video` VALUES (850, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (851, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (852, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (853, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (854, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (855, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (856, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (857, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-26');
INSERT INTO `log_video` VALUES (858, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-27');
INSERT INTO `log_video` VALUES (859, 1, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-27');
INSERT INTO `log_video` VALUES (860, 1, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-27');
INSERT INTO `log_video` VALUES (861, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (862, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (863, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (864, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (865, 3, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (866, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (867, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (868, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (869, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (870, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (871, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (872, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (873, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (874, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (875, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (876, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (877, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (878, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (879, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (880, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (881, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (882, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (883, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (884, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (885, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (886, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (887, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (888, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (889, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (890, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (891, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (892, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (893, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (894, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (895, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (896, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (897, 3, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-27');
INSERT INTO `log_video` VALUES (898, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-27');
INSERT INTO `log_video` VALUES (899, 2, 0, '我们该为养老做哪些准备', '2021-11-27');
INSERT INTO `log_video` VALUES (900, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-27');
INSERT INTO `log_video` VALUES (901, 1, 0, '视频二', '2021-11-28');
INSERT INTO `log_video` VALUES (902, 2, 0, '视频二', '2021-11-28');
INSERT INTO `log_video` VALUES (903, 2, 0, '我们该为养老做哪些准备', '2021-11-28');
INSERT INTO `log_video` VALUES (904, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-28');
INSERT INTO `log_video` VALUES (905, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-28');
INSERT INTO `log_video` VALUES (906, 2, 0, '我们该为养老做哪些准备', '2021-11-28');
INSERT INTO `log_video` VALUES (907, 2, 0, '我们该为养老做哪些准备', '2021-11-28');
INSERT INTO `log_video` VALUES (908, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-28');
INSERT INTO `log_video` VALUES (909, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-28');
INSERT INTO `log_video` VALUES (910, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-28');
INSERT INTO `log_video` VALUES (911, 2, 0, '法律剧场', '2021-11-29');
INSERT INTO `log_video` VALUES (912, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-29');
INSERT INTO `log_video` VALUES (913, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-29');
INSERT INTO `log_video` VALUES (914, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-29');
INSERT INTO `log_video` VALUES (915, 1, 0, '视频二', '2021-11-29');
INSERT INTO `log_video` VALUES (916, 3, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-29');
INSERT INTO `log_video` VALUES (917, 2, 0, '法律剧场', '2021-11-29');
INSERT INTO `log_video` VALUES (918, 2, 0, '法律剧场', '2021-11-29');
INSERT INTO `log_video` VALUES (919, 2, 0, '法律剧场', '2021-11-29');
INSERT INTO `log_video` VALUES (920, 2, 0, '法律剧场', '2021-11-29');
INSERT INTO `log_video` VALUES (921, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-29');
INSERT INTO `log_video` VALUES (922, 2, 0, '法律剧场', '2021-11-29');
INSERT INTO `log_video` VALUES (923, 2, 0, '视频二', '2021-11-29');
INSERT INTO `log_video` VALUES (924, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-29');
INSERT INTO `log_video` VALUES (925, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-29');
INSERT INTO `log_video` VALUES (926, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-29');
INSERT INTO `log_video` VALUES (927, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-29');
INSERT INTO `log_video` VALUES (928, 1, 0, '视频二', '2021-11-29');
INSERT INTO `log_video` VALUES (929, 3, 0, '视频二', '2021-11-29');
INSERT INTO `log_video` VALUES (930, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-29');
INSERT INTO `log_video` VALUES (931, 2, 0, '我们该为养老做哪些准备', '2021-11-29');
INSERT INTO `log_video` VALUES (932, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-29');
INSERT INTO `log_video` VALUES (933, 2, 0, '我们该为养老做哪些准备', '2021-11-29');
INSERT INTO `log_video` VALUES (934, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-29');
INSERT INTO `log_video` VALUES (935, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (936, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (937, 1, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (938, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (939, 2, 0, '法律剧场', '2021-11-30');
INSERT INTO `log_video` VALUES (940, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (941, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (942, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (943, 3, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (944, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (945, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (946, 2, 0, '视频二', '2021-11-30');
INSERT INTO `log_video` VALUES (947, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (948, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (949, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (950, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (951, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (952, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (953, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (954, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (955, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (956, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (957, 3, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (958, 3, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-30');
INSERT INTO `log_video` VALUES (959, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (960, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (961, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (962, 1, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (963, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (964, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (965, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-30');
INSERT INTO `log_video` VALUES (966, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (967, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (968, 2, 0, '法律剧场', '2021-11-30');
INSERT INTO `log_video` VALUES (969, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (970, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (971, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (972, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (973, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (974, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (975, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (976, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (977, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (978, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (979, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (980, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (981, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (982, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (983, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (984, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (985, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (986, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (987, 1, 0, '视频二', '2021-11-30');
INSERT INTO `log_video` VALUES (988, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (989, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (990, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (991, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-30');
INSERT INTO `log_video` VALUES (992, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (993, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-30');
INSERT INTO `log_video` VALUES (994, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (995, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (996, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (997, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (998, 4, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (999, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1000, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1001, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1002, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1003, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (1004, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-30');
INSERT INTO `log_video` VALUES (1005, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1006, 4, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1007, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1008, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1009, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1010, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1011, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1012, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-30');
INSERT INTO `log_video` VALUES (1013, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1014, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1015, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1016, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1017, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1018, 1, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1019, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-11-30');
INSERT INTO `log_video` VALUES (1020, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1021, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1022, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (1023, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-30');
INSERT INTO `log_video` VALUES (1024, 3, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1025, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1026, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1027, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1028, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (1029, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1030, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1031, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1032, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1033, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-30');
INSERT INTO `log_video` VALUES (1034, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1035, 1, 0, '视频二', '2021-11-30');
INSERT INTO `log_video` VALUES (1036, 2, 0, '视频二', '2021-11-30');
INSERT INTO `log_video` VALUES (1037, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1038, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (1039, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1040, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1041, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1042, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1043, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1044, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1045, 4, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1046, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1047, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1048, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1049, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1050, 2, 0, '“第三次分配”火了，国内越来越多富人热衷公益', '2021-11-30');
INSERT INTO `log_video` VALUES (1051, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1052, 2, 0, '从资管新规出发，聊聊资产配置的那些事', '2021-11-30');
INSERT INTO `log_video` VALUES (1053, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1054, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1055, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1056, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1057, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1058, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1059, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1060, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1061, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1062, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1063, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1064, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1065, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-11-30');
INSERT INTO `log_video` VALUES (1066, 2, 0, '我们该为养老做哪些准备', '2021-11-30');
INSERT INTO `log_video` VALUES (1067, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-12-01');
INSERT INTO `log_video` VALUES (1068, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-12-01');
INSERT INTO `log_video` VALUES (1069, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1070, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1071, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1072, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1073, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1074, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1075, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1076, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1077, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1078, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1079, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1080, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1081, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1082, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1083, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1084, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-12-01');
INSERT INTO `log_video` VALUES (1085, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1086, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1087, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1088, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1089, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1090, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1091, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-12-01');
INSERT INTO `log_video` VALUES (1092, 2, 0, '我们该为养老做哪些准备', '2021-12-01');
INSERT INTO `log_video` VALUES (1093, 2, 0, '亿元保单频现背后，高净值人群配置保险用意何在？', '2021-12-01');
INSERT INTO `log_video` VALUES (1094, 2, 0, '家族信托知多少：专家教你保护、传承和管理家庭财富', '2021-12-01');

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
INSERT INTO `persistent_logins` VALUES ('W0jQ0LXIZjsrjiVkc3r2JQ==', 'admin', '6DSHqIuu2uIVLETltWc9uw==', '2021-12-01 08:20:02');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '问卷中问题编号',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '问题的题目',
  `option` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '问题的选项（用&符号隔开）数组返回，索引从1开始',
  `channel_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0' COMMENT '所属频道(逗号分隔)',
  `category` tinyint(4) NOT NULL DEFAULT 0 COMMENT '问题类型1-单选 2-多选 3-判断 4-填空',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  `weight` int(11) NOT NULL DEFAULT 0 COMMENT '倒序 数据校验最大值100 最小0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (7, '3、您配置大额保单最主要的目的', 'A、财富增值&B、资产保全&C、税务筹划&D、提升生活品质', '14', 1, '2021-10-22 21:03:34', '2021-11-19 14:51:28', 98);
INSERT INTO `question` VALUES (9, '1、您认为家庭是否有必要配置大额保单', 'A、是&B、否', '14', 1, '2021-10-24 20:23:26', '2021-11-19 14:51:05', 100);
INSERT INTO `question` VALUES (10, '2、您认为大额保单最吸引的是哪项功能          ', 'A、保障功能&B、满足特定需求&C、杠杆功能&D、税务筹划', '14', 1, '2021-11-09 17:31:55', '2021-11-19 14:51:17', 99);
INSERT INTO `question` VALUES (11, '4、您是否计划配置大额保单？', 'A、是&B、否', '14', 1, '2021-11-12 19:22:07', '2021-11-19 14:51:36', 97);
INSERT INTO `question` VALUES (12, '1、您是否有意愿参与公益慈善？', 'A、是&B、否', '19', 1, '2021-11-12 19:23:03', '2021-11-19 14:52:07', 96);
INSERT INTO `question` VALUES (13, '2、如果参与公益慈善，什么是您最看重的因素？', 'A、对社会现象各弱势群体的关注&B、受国家政策鼓励和引导&C、家族企业的社会责任&D、家族精神的传承', '19', 1, '2021-11-12 19:24:02', '2021-11-19 14:52:18', 95);
INSERT INTO `question` VALUES (14, '3、以下哪种公益慈善内容您最想尝试？', 'A、贫困地区捐款捐物&B、就业支持&C、教育改善&D、医疗卫生建设', '19', 1, '2021-11-12 19:25:10', '2021-11-19 14:53:03', 94);
INSERT INTO `question` VALUES (15, '4、您会倾向于使用什么工具来进行公益慈善活动？', 'A、直接捐赠&B、非公募基金会&C、慈善信托&D、专项基金&E、影响力投资&F、金融产品收益捐赠', '19', 1, '2021-11-12 19:26:42', '2021-11-19 14:53:19', 93);
INSERT INTO `question` VALUES (16, '5、作为家庭的主要经济支柱，如果决定购买一份大额终身寿险保单，应该优先选择谁做“被保险人”？', 'A、自己&B、爱人&C、孩子', '14', 1, '2021-11-19 14:38:21', '2021-11-19 14:51:46', 10);
INSERT INTO `question` VALUES (17, '6、您会考虑设立保险金信托吗？', 'A、会&B、不会', '14', 1, '2021-11-19 14:39:03', '2021-11-19 14:51:53', 1);
INSERT INTO `question` VALUES (18, '1、如果您设立家族信托，您会设多少年的期限', '10-20年&21-50年&51-100年&101年以上', '15', 1, '2021-11-19 14:44:03', '2021-11-19 14:44:03', 100);
INSERT INTO `question` VALUES (19, '2、如果您设立家族信托，您会在条款中加入慈善方面的条款吗？', '是&否', '15', 1, '2021-11-19 14:44:30', '2021-11-19 14:44:30', 90);
INSERT INTO `question` VALUES (20, '3、如果您设立家族信托，您会在条款中加入家族文化传承的条款吗？', '是&否', '15', 1, '2021-11-19 14:45:01', '2021-11-19 14:45:01', 80);
INSERT INTO `question` VALUES (21, '4、您理解的家族信托是什么', '理财产品&定制化解决方案&集合信托计划&和保险差不多', '15', 1, '2021-11-19 14:45:51', '2021-11-19 14:46:56', 70);
INSERT INTO `question` VALUES (22, '5、您家族财富管理中最需要解决的是哪项：', 'A、资产配置&B、财产配置&C、风险隔离&D、公益（慈善）', '15', 1, '2021-11-19 14:48:05', '2021-11-19 14:48:12', 60);
INSERT INTO `question` VALUES (23, '6、您设立家族信托最主要的目的', 'A、财富传承分配&B、家企分离&C、婚前财产保护&D、财富保值增值', '15', 1, '2021-11-19 14:48:47', '2021-11-19 14:48:47', 50);
INSERT INTO `question` VALUES (24, '7、您准备设立家族信托吗？', 'A、是&B、否', '15', 1, '2021-11-19 14:49:11', '2021-11-19 14:49:11', 40);
INSERT INTO `question` VALUES (25, '8、除了现金资产，您最希望把哪类资产放入家族信托？', 'A、不动产&B、上市股权&C、非上市股权 &D、其他贵重物品&E、以上都感兴趣 &F、以上都不感兴趣', '15', 1, '2021-11-19 14:50:00', '2021-11-19 14:50:00', 40);
INSERT INTO `question` VALUES (26, '9、您是否认同，家族信托是解决代持风险的有效手段之一？', 'A、是&B、否', '15', 1, '2021-11-19 14:50:28', '2021-11-19 14:50:28', 30);
INSERT INTO `question` VALUES (27, '10、您是否认同，家族要世代兴旺需要有治理机制？', 'A、是&B、否', '15', 1, '2021-11-19 14:50:50', '2021-11-19 14:50:50', 20);
INSERT INTO `question` VALUES (28, '以下关于资产配置的几个观点，哪项您更认可', 'A、鸡蛋不能放在一个篮子里&B、分散投资&C、产品组合&D、根据投资者风险水平下的大类资产配置', '17', 1, '2021-11-19 18:13:32', '2021-11-19 18:13:32', 100);
INSERT INTO `question` VALUES (29, '资管新规对于资管产品的规定，您认为哪项对您而言最重要？', 'A、打破刚兑，风险与收益对等&B、资管产品的净值化管理&C、分为固定收益类、权益类、商品金融衍生品类、混合类&D、投资者分为不特定社会公众和合格投资者两大类', '17', 1, '2021-11-19 18:14:45', '2021-11-19 18:14:45', 90);
INSERT INTO `question` VALUES (30, '以下产品中，您认为哪项产品的风险最高？', 'A、货币基金&B、股票&C、偏股公募基金&D、私募股权基金', '17', 1, '2021-11-19 18:15:43', '2021-11-19 18:15:43', 80);
INSERT INTO `question` VALUES (31, '您以往投资占比中最高的产品是：', 'A、存款、国债&B、银行理财产品&C、公募基金、私募基金、股票等&D、股权投资&E、保险保障类产品', '17', 1, '2021-11-19 18:16:43', '2021-11-19 18:16:43', 70);
INSERT INTO `question` VALUES (32, '大类资产配置的目的', 'A、未来不确定，分散风险，实现资产的保值增值&B、通过参与风险投资，获取财富的快速增长&C、通过多元布局，获取最大化收益&D、通过广泛播种，抓取千载难逢的机会', '17', 1, '2021-11-19 18:17:48', '2021-11-19 18:17:48', 60);
INSERT INTO `question` VALUES (33, '最优化投资比例如何确定', 'A、按照自我想法确定&B、利用资产配置模型科学测算&C、根据宏观基本面确定&D、	预测资产未来走势确定', '17', 1, '2021-11-19 18:18:56', '2021-11-19 18:19:06', 50);
INSERT INTO `question` VALUES (34, '财富顾问专业能力是否是您选择金融机构的首要条件？', 'A、是&B、不是&C、不确定', '17', 1, '2021-11-19 18:20:04', '2021-11-19 18:20:04', 40);
INSERT INTO `question` VALUES (35, '您更看重财富顾问的哪方面服务？', 'A、市场预测&B、产品推荐&C、日常资产配置跟踪服务', '17', 1, '2021-11-19 18:20:48', '2021-11-19 18:20:48', 30);
INSERT INTO `question` VALUES (36, '您觉得资产检视的周期多久比较适合？', 'A、每月&B、每季&C、每半年', '17', 1, '2021-11-19 18:21:25', '2021-11-19 18:21:25', 20);
INSERT INTO `question` VALUES (37, '专业财富顾问出具的资产配置建议是否愿意严格执行？', 'A、能够执行&B、仅作为参考', '17', 1, '2021-11-19 18:22:09', '2021-11-19 18:22:09', 10);
INSERT INTO `question` VALUES (38, '您认为养老规划是不是自己目前需要考虑的问题？', 'A、是&B、不是', '18', 1, '2021-11-20 14:47:50', '2021-11-20 14:47:50', 100);
INSERT INTO `question` VALUES (39, '在养老规划中，当前您更重视以下哪一个方面？', 'A、家族企业的传递交接&B、家庭资产的保值增值&C、家庭财富的传承安排&D、养老生活的具体计划', '18', 1, '2021-11-20 14:48:47', '2021-11-20 14:48:47', 90);
INSERT INTO `question` VALUES (40, '您需要通过专业机构和专业人士为您提供养老规划帮助吗？', 'A、需要&B、不需要', '18', 1, '2021-11-20 14:49:39', '2021-11-20 14:49:39', 80);
INSERT INTO `question` VALUES (41, '您认为在养老规划中需要使用到哪些管理工具？', 'A、遗嘱&B、赠与协议&C、家族信托&D、年金养老保险&E、保险金信托&F、意定监护协议', '18', 2, '2021-11-20 14:50:53', '2021-11-20 14:50:53', 70);

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
INSERT INTO `sys_setting` VALUES ('1', '建行守攻传管理系统', 'https://github.com/ChangzhouHeroAssociation/CCB_H5-admin/blob/main/logo.jpg?raw=true', '建行守攻传管理系统', '<h1 style=\"white-space: normal; text-align: center;\"><span style=\"color: rgb(255, 0, 0);\">通知</span></h1><p style=\"white-space: normal;\"><span style=\"color: rgb(255, 0, 0);\">1、不得在公共场合吸烟；</span></p><p style=\"white-space: normal;\"><span style=\"color: rgb(255, 0, 0);\">2、xxxxxxx；</span></p><p><br/></p>', '2019-09-17 10:15:38', '2021-11-17 12:00:38', '123456', 'rgba(54, 123, 183,  0.73)', 'Y', 'N');

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
INSERT INTO `sys_user` VALUES ('1', 'sa', '超级管理员', 'E10ADC3949BA59ABBE56E057F20F883E', 'Y', '', NULL, '2019-09-17 12:00:36', '2021-11-30 19:23:34', 'Y', '2019-07-19 16:36:03', '2021-10-24 10:14:49');
INSERT INTO `sys_user` VALUES ('2', 'admin', '管理员', 'E10ADC3949BA59ABBE56E057F20F883E', 'Y', '', NULL, '2019-09-17 12:00:36', '2021-12-01 08:20:02', 'Y', '2019-07-19 16:36:03', '2021-10-24 10:14:54');
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
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '倒序 数据校验最大值100 最小0',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES (5, '陈静', '26年金融从业经验，拥有CFP、CPB等专业资质。团队管理资产108亿元。曾多次获得总行私人银行业务多项荣誉和称号，2019年度“中国银行业协会优秀财富顾问”。', 'http://ccb-admin.cczuit.cn/upload/img/20211130110112442.png', 1, '建行家族办公室北京团队主管', 0, '2021-10-22 21:03:02', '2021-11-30 11:01:14');
INSERT INTO `teacher` VALUES (6, '黄光涛', '35年金融从业经验，拥有AFP、CFP、CPB、CRFA、CTP等专业资质。团队管理资产120亿元。曾荣获全国精英理财师40强,全国十佳明星理财师第一名,中国银行业“优秀私人财富顾问”等行内外荣誉和称号。', 'http://ccb-admin.cczuit.cn/upload/img/20211130110102063.png', 1, '重庆分行私行首席高级财富顾问', 0, '2021-10-22 22:08:20', '2021-11-30 11:01:04');
INSERT INTO `teacher` VALUES (7, '讲师3', '讲师', 'http://ccb-admin.cczuit.cn/upload/img/20211023092541910.jpg', 0, '软件工程师', 0, '2021-10-23 09:25:44', '2021-10-23 09:25:44');
INSERT INTO `teacher` VALUES (8, '万辉斌', '28年银行从业经验，拥有RFP、GIA等专业资质。管理资产规模超100亿元，曾获中国百佳金融理财师称号。 ', 'http://ccb-admin.cczuit.cn/upload/img/20211130110051383.png', 1, '广东省分行首席财富顾问', 0, '2021-10-24 20:24:21', '2021-11-30 11:00:53');
INSERT INTO `teacher` VALUES (9, '讲师3', '讲师3', 'http://ccb-admin.cczuit.cn/upload/img/20211130104030480.jpg', 0, '软件工程师', 0, '2021-10-24 20:25:00', '2021-11-30 10:40:38');
INSERT INTO `teacher` VALUES (10, '王虹', '23年银行从业经验，直接管理客户家族资产50亿元，直接服务5个家族办公室家族客户，曾获2019年度“中国银行业协会优秀私人财富顾问”等荣誉。', 'http://ccb-admin.cczuit.cn/upload/img/20211130110041274.png', 1, '山东省分行私人银行部副总经理、家族办公室（山东中心）负责人', 0, '2021-11-12 18:44:55', '2021-11-30 11:00:43');
INSERT INTO `teacher` VALUES (11, '方一男', '31年银行从业经验，管理资产规模超百亿。协助客户签署家族信托或跨境投资超100单。', 'http://ccb-admin.cczuit.cn/upload/img/20211130110033234.png', 1, '国际公认“反洗钱师（CAMS）”', 0, '2021-11-12 18:45:57', '2021-11-30 11:00:35');
INSERT INTO `teacher` VALUES (12, '毕文婷', '16年财富管理及私人银行从业经验，CFP持证。团队管理资产460亿元，曾获多项全国赛事奖项，受邀担任2019年中国私人银行精英赛专家评审。', 'http://ccb-admin.cczuit.cn/upload/img/20211130110024277.png', 1, '上海分行私行财富顾问团队主管', 0, '2021-11-12 18:46:31', '2021-11-30 11:00:26');
INSERT INTO `teacher` VALUES (13, '刘非', '17年银行从业经验，12年私人银行从业经验，客户资产规模超百亿。新加坡管理大学财富管理硕士，清华大学工商管理硕士。曾获建行总行优秀百度顾问，北京银行业协会优秀理财师等荣誉。', 'http://ccb-admin.cczuit.cn/upload/img/20211130110015956.png', 1, '这里是空的', 100, '2021-11-12 18:47:36', '2021-11-30 11:00:17');
INSERT INTO `teacher` VALUES (14, '毛宇', '从业二十多年，精研家族服务、慈善、股权投资、风险管理、税收筹划，服务多家上市公司，率先完成国内首单股票家族信托、深圳首单家族产业基金的方案设置及实践。国际金融理财师CFP，私人银行家CPB，新加坡私人银行家证书。', 'http://ccb-admin.cczuit.cn/upload/img/20211130110005229.png', 1, '建行南山私人银行总经理、总行级财富顾问、培训师，', 0, '2021-11-12 18:48:46', '2021-11-30 11:00:07');
INSERT INTO `teacher` VALUES (15, '陈晓颖', '陈晓颖资料待完善', 'http://ccb-admin.cczuit.cn/upload/img/20211130110526415.png', 1, '资料待完善', 0, '2021-11-12 18:49:16', '2021-11-30 11:05:28');
INSERT INTO `teacher` VALUES (16, '方芃芃', '15年银行从业经验，双硕士学位，CPB持证。建行家族办公室广东团队牵头人，团队管理资产规模140亿元，曾获首届中国优秀金融理财师称号。 受邀担任2021年第三届中国私人银行精英赛专家评审。', 'http://ccb-admin.cczuit.cn/upload/img/20211130105952717.png', 1, '广东省分行私人银行首席财富顾问', 0, '2021-11-12 18:49:49', '2021-11-30 10:59:55');
INSERT INTO `teacher` VALUES (17, '谢池', '11年银行从业经验，直接管理家族客户超100户，管理家族客户资产近30亿元，曾获建行总行年度优秀财富顾问等荣誉。', 'http://ccb-admin.cczuit.cn/upload/img/20211130110122204.png', 1, '福建分行私人银行财富顾问', 0, '2021-11-12 18:50:18', '2021-11-30 11:01:24');
INSERT INTO `teacher` VALUES (18, '王刚', '11年私人银行财富顾问工作经验，拥有CFP、CPB等专业资质。团队管理资产100亿元，曾获建行总行年度优秀财富顾问等荣誉。', 'http://ccb-admin.cczuit.cn/upload/img/20211112185049138.png', 0, '大连星海湾私行中心主任', 0, '2021-11-12 18:50:50', '2021-11-12 18:50:50');

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
INSERT INTO `video` VALUES (1, '亿元保单频现背后，高净值人群配置保险用意何在？', '2', 1165, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 165, 129, '2020-10-23 00:00:00', '2021-11-30 13:50:53', 14, 'http://ccb-admin.cczuit.cn/upload/img/20211130135051416.jpeg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211130115047510.PNG');
INSERT INTO `video` VALUES (2, '视频二', '视频描述二', 865, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 0, 145, 176, '2020-10-23 00:00:00', '2021-10-24 20:25:30', 14, 'http://ccb-admin.cczuit.cn/upload/img/20211022210300431.jpg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211112193810432.jpg');
INSERT INTO `video` VALUES (3, '法律剧场', '大风浪下，如何“守”住家庭财富？', 717, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 124, 116, '2020-10-23 00:00:00', '2021-11-30 13:50:25', 20, 'http://ccb-admin.cczuit.cn/upload/img/20211130135023581.jpeg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211130115540152.PNG');
INSERT INTO `video` VALUES (8, '“第三次分配”火了，国内越来越多富人热衷公益', '视频', 168, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 12, 0, '2021-10-24 20:32:44', '2021-11-30 13:50:01', 19, 'http://ccb-admin.cczuit.cn/upload/img/20211130134959355.jpeg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211130114737277.PNG');
INSERT INTO `video` VALUES (9, '从资管新规出发，聊聊资产配置的那些事', '视频5', 201, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 12, 0, '2021-10-26 18:16:44', '2021-11-30 13:51:06', 17, 'http://ccb-admin.cczuit.cn/upload/img/20211130135104234.jpeg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211130115707948.PNG');
INSERT INTO `video` VALUES (10, '我们该为养老做哪些准备', '1', 365, 'http://ccb-admin.cczuit.cn/upload/video/20211024203238143.mp4', 1, 36, 0, '2021-11-09 10:51:55', '2021-11-30 13:51:18', 18, 'http://ccb-admin.cczuit.cn/upload/img/20211130135116548.jpeg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211130115322875.PNG');
INSERT INTO `video` VALUES (11, '家族信托知多少：专家教你保护、传承和管理家庭财富', '1', 712, 'http://ccb-admin.cczuit.cn/upload/video/20211110151033648.mp4', 1, 24, 0, '2021-11-10 15:10:40', '2021-11-30 13:50:40', 15, 'http://ccb-admin.cczuit.cn/upload/img/20211130135038365.jpeg', 1, 'http://ccb-admin.cczuit.cn/upload/img/20211130115351188.PNG');

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
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '视频和讲师一对多关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video_teacher_relation
-- ----------------------------
INSERT INTO `video_teacher_relation` VALUES (13, 2, 6);
INSERT INTO `video_teacher_relation` VALUES (14, 2, 8);
INSERT INTO `video_teacher_relation` VALUES (50, 8, 12);
INSERT INTO `video_teacher_relation` VALUES (51, 11, 5);
INSERT INTO `video_teacher_relation` VALUES (52, 1, 8);
INSERT INTO `video_teacher_relation` VALUES (53, 9, 5);
INSERT INTO `video_teacher_relation` VALUES (54, 10, 6);

SET FOREIGN_KEY_CHECKS = 1;
