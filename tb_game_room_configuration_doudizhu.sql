/*
 Navicat Premium Data Transfer

 Source Server         : 预发布
 Source Server Type    : MySQL
 Source Server Version : 100310
 Source Host           : 172.20.100.245:3360
 Source Schema         : micro_game

 Target Server Type    : MySQL
 Target Server Version : 100310
 File Encoding         : 65001

 Date: 11/01/2019 09:15:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_game_room_configuration_doudizhu
-- ----------------------------
DROP TABLE IF EXISTS `tb_game_room_configuration_doudizhu`;
CREATE TABLE `tb_game_room_configuration_doudizhu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `game_room_id` bigint(20) NOT NULL COMMENT '房间id,与tb_game_room的id相对应',
  `site_id` bigint(20) NULL DEFAULT NULL COMMENT '厅主id',
  `start_time` bigint(20) NULL DEFAULT NULL COMMENT '开始时间',
  `call_time` bigint(20) NULL DEFAULT NULL COMMENT '叫分时间',
  `max_multiple` bigint(9) NULL DEFAULT NULL COMMENT '最大倍数',
  `shot_time` bigint(9) NULL DEFAULT NULL COMMENT '出牌时间',
  `stock_start` decimal(9, 2) NULL DEFAULT NULL COMMENT '库存起始值',
  `current_stock` decimal(11, 2) NULL DEFAULT NULL COMMENT '当前库存',
  `stock_atten` decimal(9, 2) NULL DEFAULT NULL COMMENT '库存上限',
  `stock_weak` decimal(9, 2) NULL DEFAULT NULL COMMENT '库存衰减',
  `max_chip` decimal(9, 2) NULL DEFAULT NULL COMMENT '最大筹码',
  `first_view` int(2) NULL DEFAULT 2 COMMENT '首家首轮看牌(1:允许  2:不允许)',
  `open_money` int(2) NULL DEFAULT 2 COMMENT '开启喜钱(1:开启  2:不开启)',
  `leopard_three` decimal(9, 2) NULL DEFAULT NULL COMMENT '豹子3条A',
  `leopard` decimal(9, 2) NULL DEFAULT NULL COMMENT '豹子',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `game_room_id_UNIQUE`(`game_room_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 404 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '斗地主游戏房间配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_game_room_configuration_doudizhu
-- ----------------------------
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (35, 70, 36613, 15, NULL, 3, 15, 1.00, 1.00, 1.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (38, 67, 36613, 15, NULL, 3, 15, 1.00, 1.00, 1.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (41, 64, 36613, 15, NULL, 3, 15, 1.00, 1.00, 1.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (44, 58, 36613, 15, NULL, 3, 15, 1.00, 1.00, 1.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (51, 79, 36613, 15, 15, 0, 15, 0.00, 10.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (54, 82, 36613, 15, 15, 0, 15, 0.00, 348.79, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (57, 85, 36613, 15, 15, 0, 15, 0.00, 190.02, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (59, 88, 36613, 15, 15, 0, 15, 0.00, 1046.13, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (62, 91, 36613, 15, 15, 0, 15, 0.00, 451.64, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (71, 145, 36979, 15, 15, 10, 15, 0.00, 1.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (74, 142, 36979, 10, 10, 8, 15, 10000.00, 1.00, 20000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (77, 136, 36979, 15, 15, 5, 15, 100.00, 5327.92, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (80, 133, 36979, 15, 15, 3, 15, 100.00, 772.79, 500.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (83, 130, 36979, 15, 15, 3, 15, 1.00, 2000.00, 100.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (89, 163, 36979, 15, 15, 3, 15, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (92, 169, 36979, 15, 15, 0, 15, 0.00, 956.90, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (95, 172, 36979, 15, 15, 3, 15, 0.00, 2000.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (98, 178, 36979, 15, 15, 5, 15, 0.00, 1000.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (101, 187, 36979, 15, 15, 3, 15, 0.00, 3000.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (107, 215, 36610, 15, 15, 0, 15, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (112, 217, 36610, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (113, 218, 36610, 15, 15, 0, 15, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (116, 221, 36610, 15, 15, 0, 15, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (121, 226, 36610, 15, 15, 0, 15, 0.00, 2.99, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (122, 227, 36610, 15, 15, 0, 15, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (128, 239, 36610, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (131, 242, 36610, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (133, 244, 36610, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (137, 248, 36610, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (148, 343, 121420, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (153, 348, 121420, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (159, 411, 36613, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (162, 417, 37640, 15, 15, 3, 15, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (165, 420, 37640, 15, 10, 3, 15, 0.00, 0.00, 20000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (168, 423, 37640, 15, 15, 3, 15, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (171, 426, 37640, 15, 10, 0, 15, 0.00, 14.16, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (176, 431, 37640, 15, 10, 3, 15, 0.00, 7.69, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (181, 517, 128303, 15, 15, 0, 15, 0.00, 20000.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (184, 520, 128303, 15, 15, 0, 15, 0.00, 5.92, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (187, 523, 128303, 15, 15, 5, 15, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (190, 526, 128303, 15, 15, 0, 15, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (193, 529, 128303, 15, 15, 0, 15, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (196, 532, 128303, 10, 10, 2, 15, 20000.00, 0.00, 50000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (199, 535, 128303, 10, 10, 3, 15, 20000.00, 0.00, 40000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (202, 538, 128303, 10, 10, 6, 15, 20000.00, 0.00, 30000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (205, 541, 128303, 10, 10, 8, 15, 10000.00, 0.00, 20000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (208, 544, 128303, 10, 10, 10, 15, 0.00, 0.00, 20000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (209, 617, 37640, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (212, 620, 37640, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (213, 624, 37640, 3, 15, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (215, 626, 37640, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (216, 627, 37640, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (217, 775, 36979, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (218, 777, 36979, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (219, 779, 36979, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (220, 781, 36979, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (221, 783, 36979, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (222, 809, 128660, 5, 5, 4, 5, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (223, 810, 128660, 60, 60, 60, 60, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (224, 811, 128660, 10, 10, 10, 10, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (225, 812, 128660, 1, 1, 60, 1, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (226, 840, 36979, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (227, 858, 36979, 15, 15, 3, 15, 0.00, 0.00, 20000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (228, 859, 36979, 15, 15, 3, 15, 0.00, 0.00, 20000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (229, 860, 36979, 15, 15, 3, 15, 0.00, 0.00, 20000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (235, 891, 128656, 15, 15, 15, 10, 0.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (236, 892, 128656, 15, 15, 10, 15, 0.00, 5.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (237, 909, 128660, 30, 15, 10, 15, 0.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (238, 913, 128660, 30, 15, 10, 15, 2.00, 0.00, 500.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (243, 943, 37640, 10, 10, 10, 10, 0.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (244, 944, 37640, 10, 10, 10, 10, 1.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (245, 954, 37640, 10, 10, 10, 10, 1.00, 1.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (246, 955, 37640, 10, 10, 10, 10, 1.00, 2.41, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (247, 986, 128655, 30, 15, 10000, 15, 1000.00, 0.00, 10000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (248, 987, 128655, 30, 15, 100, 15, 2000.00, 0.00, 10000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (249, 994, 128303, 6, 6, 10, 6, 0.00, 0.00, 100000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (250, 1000, 128303, 6, 6, 10, 6, 0.00, 0.00, 100000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (251, 1009, 128658, 6, 6, 5, 6, 0.00, 0.00, 10000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (252, 1011, 128658, 6, 6, 5, 6, 0.00, 0.00, 10001.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (253, 1038, 128657, 6, 6, 10, 10, 0.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (254, 1042, 128657, 6, 10, 10, 10, 0.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (256, 1068, 128656, 5, 10, 10, 15, 1.00, 0.00, 10000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (257, 1070, 128665, 15, NULL, 3, 15, 1.00, 0.00, 1.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (258, 1125, 128656, 5, 10, 5, 10, 0.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (259, 1134, 128656, 6, 6, 10, 6, 0.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (260, 1135, 128656, 10, 10, 10, 10, 0.00, 56.03, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (261, 1144, 128634, 10, 10, 5, 10, 10.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (262, 1145, 128634, 10, 10, 5, 10, 10.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (263, 1146, 128634, 10, 10, 5, 10, 10.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (269, 1153, 36979, 10, 10, 5, 10, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (270, 1154, 36979, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (271, 1163, 36979, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (272, 1164, 36979, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (273, 1165, 36979, 15, NULL, 3, 15, NULL, 0.00, NULL, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (279, 1310, 128810, 10, 10, 15, 10, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (280, 1311, 128810, 10, 10, 10, 10, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (281, 1312, 128810, 10, 6, 10, 10, 0.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (282, 1313, 128810, 10, 6, 10, 10, 0.00, 12.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (283, 1314, 128810, 10, 10, 10, 10, 0.00, 0.00, 1500.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (284, 1315, 128810, 10, 10, 10, 10, 0.00, 109.78, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (285, 1321, 128303, 15, 15, 0, 15, 0.00, 189.00, 20000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (286, 1326, 128657, 10, 6, 10, 10, 0.00, 0.00, 3000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (287, 1330, 128657, 15, 15, 3, 15, 0.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (288, 1331, 128657, 15, 15, 3, 15, 0.00, 0.14, 3000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (289, 1336, 128830, 10, 10, 3, 10, 0.00, 0.00, 2000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (290, 1341, 128830, 15, NULL, 3, 15, 0.00, 0.00, 2000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (291, 1342, 128830, 15, NULL, 3, 15, 0.00, 0.00, 2000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (294, 1360, 128820, 10, 10, 3, 10, 0.00, 14.78, 2000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (295, 1361, 128820, 10, 10, 3, 10, 0.00, 0.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (299, 1377, 128303, 10, 10, 3, 15, 0.00, 0.00, 50000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (300, 1382, 128660, 10, 5, 1000, 15, 1000.00, 1000.00, 10000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (301, 1383, 128655, 5, 15, 1000, 10, 1000.00, 1000.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (302, 1396, 128660, 15, 10, 1000, 10, 1000.00, 999.57, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (303, 1402, 128830, 10, 10, 100, 10, 1000.00, 1000.00, 100000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (304, 1403, 128830, 10, 10, 123, 10, 0.00, 1.54, 1500.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (305, 1404, 128830, 10, 6, 10, 10, 0.00, 2.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (306, 1409, 128658, 6, 6, 4, 6, 0.00, 214.35, 10000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (308, 1419, 36979, 15, 10, NULL, 15, 0.00, 400.43, 500.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (309, 1420, 36979, 10, 10, NULL, 15, 0.00, 1082.57, 2000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (310, 1421, 36979, 30, 10, NULL, 15, 0.00, -2000.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (313, 1442, 36979, 30, 10, NULL, 15, 0.00, 24.61, 500.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (314, 1443, 36979, 30, 10, NULL, 15, 0.00, 200.29, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (315, 1444, 36979, 30, 10, NULL, 15, 0.00, 1995.25, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (316, 1445, 36979, 30, 10, NULL, 15, 0.00, 2674.12, 50000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (318, 1474, 36979, 5, 10, NULL, 15, 0.00, 165.00, 1000.00, 3.00, 100.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (319, 1475, 36979, 5, 10, NULL, 15, 0.00, 1853.00, 2000.00, 3.00, 2000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (320, 1476, 36979, 5, 10, NULL, 15, 0.00, -200.00, 5000.00, 3.00, 5000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (321, 1477, 36979, 5, 10, NULL, 15, 0.00, -500.00, 10000.00, 3.00, 10000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (322, 1478, 36979, 30, 10, NULL, 15, 0.00, 5084.00, 50000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (323, 1479, 36979, 30, 10, NULL, 15, 0.00, 1170.00, 1000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (324, 1480, 36979, 30, 10, NULL, 15, 0.00, 4871.11, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (325, 1481, 36979, 30, 10, NULL, 15, 0.00, 15250467.30, 10000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (329, 1485, 36979, 15, 5, NULL, 5, 0.00, 0.00, 10000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (330, 1486, 36979, 15, 5, NULL, 5, 0.00, 0.00, 100000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (331, 1487, 36979, 15, 5, NULL, 5, 0.00, 0.00, 100000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (332, 1489, 36979, 15, 5, NULL, 5, 0.00, 0.00, 1000000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (333, 1490, 36979, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (337, 1494, 36979, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (339, 1496, 36979, 15, 10, NULL, 15, 0.00, -146296.23, 10000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (340, 1497, 36979, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (341, 1498, 36979, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (342, 1499, 36979, NULL, NULL, NULL, NULL, 0.00, 0.00, 10000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (343, 1500, 128655, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (344, 1501, 128655, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (345, 1502, 37640, 5, 15, 5, 15, 1.00, 0.00, 5000.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (346, 1503, 37640, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (347, 1504, 37640, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (348, 1505, 128660, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (349, 1506, 128660, 30, 10, NULL, 15, 0.00, 0.00, 500.00, 3.00, 100.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (350, 1507, 128660, 30, 10, NULL, 15, 0.00, 0.00, 1000.00, 3.00, 100.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (351, 1508, 128660, 30, 10, NULL, 15, 0.00, 1174.00, 5000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (352, 1509, 128810, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (353, 1510, 128810, 30, 10, 100, 15, 0.00, 0.00, 500.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (354, 1511, 128810, 30, 10, NULL, 15, 0.00, 0.00, 1000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (355, 1512, 128810, 30, 10, NULL, 15, 0.00, 0.00, 5000.00, 3.00, 10000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (356, 1514, 128657, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (357, 1515, 128657, 30, 10, NULL, 15, 0.00, 0.00, 500.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (358, 1516, 128657, 30, 10, NULL, 15, 0.00, -10.00, 1000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (359, 1517, 128657, 30, 10, NULL, 15, 0.00, 0.00, 5000.00, 3.00, 10000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (360, 1518, 128656, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (361, 1519, 128656, 30, 10, NULL, 15, 0.00, -1.00, 500.00, 3.00, 100.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (362, 1520, 128656, 30, 10, NULL, 15, 0.00, 0.00, 1000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (363, 1521, 128656, 30, 10, NULL, 15, 0.00, 0.00, 5000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (364, 1522, 128658, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (365, 1523, 128658, 30, 10, NULL, 15, 0.00, 0.00, 500.00, 3.00, 100.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (366, 1524, 128658, 30, 10, NULL, 15, 0.00, 0.00, 1000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (367, 1525, 128658, 30, 10, NULL, 15, 0.00, 0.00, 5000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (368, 1526, 128820, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (369, 1527, 128820, 30, 10, NULL, 15, 0.00, 0.00, 500.00, 3.00, 100.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (370, 1528, 128820, 30, 10, NULL, 15, 0.00, 0.00, 1000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (371, 1529, 128820, 30, 10, NULL, 15, 0.00, 0.00, 5000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (372, 1530, 128830, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 3.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (373, 1531, 128830, 30, 10, NULL, 15, 0.00, 0.00, 500.00, 3.00, 100.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (374, 1532, 128830, 30, 10, NULL, 15, 0.00, 0.00, 1000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (375, 1533, 128830, 30, 10, NULL, 15, 0.00, 0.00, 5000.00, 3.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (376, 1540, 36979, 10, 15, NULL, NULL, 0.00, 832.00, 5000.00, 0.00, NULL, 2, 1, 10.00, 20.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (377, 1541, 36979, 15, 5, NULL, 5, 100.00, 0.00, 100000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (378, 1542, 36979, 15, 5, NULL, 5, 100.00, 168.00, 20000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (379, 1543, 36979, 15, 5, NULL, 5, 1000.00, 4540.00, 50000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (380, 1544, 36979, 15, 5, NULL, 5, 0.00, 11100.00, 100000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (381, 1545, 36979, 15, 5, NULL, 5, 0.00, 34000.00, 200000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (382, 1546, 36979, 15, 15, 10, 15, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (383, 1547, 36979, 10, 15, NULL, NULL, 0.00, 34.00, 100.00, 0.00, NULL, 2, 1, 3.00, 2.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (384, 1548, 36979, 10, 60, NULL, NULL, 0.00, 155.00, 3000.00, 0.00, NULL, 2, 1, 15.00, 10.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (385, 1549, 36979, 10, 60, NULL, NULL, 0.00, 9913.07, 9000.00, 0.00, NULL, 1, 1, 0.00, 40.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (386, 1550, 36979, 10, 15, NULL, NULL, 0.00, 9452.22, 15000.00, 0.00, NULL, 2, 1, 150.00, 100.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (387, 1555, 36979, 30, 10, NULL, 10, 0.00, 0.00, 10000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (388, 1556, 36979, 30, 10, NULL, 10, 0.00, 0.00, 100.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (389, 1557, 36979, 30, 10, NULL, 10, 0.00, 1295.00, 500.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (390, 1558, 36979, 30, 10, NULL, 10, 0.00, 0.00, 2000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (391, 1559, 36979, 30, 10, NULL, 10, 0.00, 31400.00, 20000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (392, 1564, 36979, 30, 5, NULL, 10, 0.00, 0.00, 10000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (393, 1565, 36979, 30, 5, NULL, 10, 0.00, 249.00, 300.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (394, 1566, 36979, 30, 5, NULL, 10, 0.00, 370.50, 1000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (395, 1567, 36979, 30, 5, NULL, 10, 0.00, 480.00, 3000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (396, 1568, 36979, 30, 5, NULL, 10, 500.00, 8300.00, 10000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (397, 1572, 36979, 30, 5, NULL, NULL, 0.00, 0.00, 10000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (398, 1573, 36979, 30, 5, NULL, NULL, 0.00, 448.00, 400.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (399, 1574, 36979, 30, 5, NULL, NULL, 0.00, 280.00, 1000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (400, 1575, 36979, 30, 5, NULL, NULL, 0.00, 180.00, 3000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (401, 1576, 36979, 30, 5, NULL, NULL, 0.00, 0.00, 3000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (402, 1577, 36979, 30, 5, NULL, NULL, 0.00, 7898.00, 10000.00, NULL, NULL, 1, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (403, 1578, 36979, 30, 5, NULL, NULL, 0.00, 5699.00, 10000.00, NULL, NULL, 1, 2, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
