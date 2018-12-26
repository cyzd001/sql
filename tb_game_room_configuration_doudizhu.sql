/*
 Navicat Premium Data Transfer

 Source Server         : 测试库
 Source Server Type    : MySQL
 Source Server Version : 100210
 Source Host           : 172.20.100.205:3306
 Source Schema         : micro_game

 Target Server Type    : MySQL
 Target Server Version : 100210
 File Encoding         : 65001

 Date: 26/12/2018 20:00:11
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
  `current_stock` decimal(9, 2) NULL DEFAULT NULL COMMENT '当前库存',
  `stock_atten` decimal(9, 2) NULL DEFAULT NULL COMMENT '库存上限',
  `stock_weak` decimal(9, 2) NULL DEFAULT NULL COMMENT '库存衰减',
  `max_chip` decimal(9, 2) NULL DEFAULT NULL COMMENT '最大筹码',
  `first_view` int(2) NULL DEFAULT 2 COMMENT '首家首轮看牌(1:允许  2:不允许)',
  `open_money` int(2) NULL DEFAULT 2 COMMENT '开启喜钱(1:开启  2:不开启)',
  `leopard_three` decimal(9, 2) NULL DEFAULT NULL COMMENT '豹子3条A',
  `leopard` decimal(9, 2) NULL DEFAULT NULL COMMENT '豹子',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `game_room_id_UNIQUE`(`game_room_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 189 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '斗地主游戏房间配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_game_room_configuration_doudizhu
-- ----------------------------
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (45, 353, 20188, 15, 15, NULL, 15, 50.00, 0.00, 80.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (46, 354, 20188, 15, 15, NULL, 15, 50.00, 0.00, 80.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (47, 355, 20188, 15, 15, NULL, 15, 80.00, 0.00, 120.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (48, 356, 20188, 15, 15, NULL, 15, 90.00, 0.00, 180.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (49, 357, 20188, 15, 15, NULL, 15, 0.00, 0.00, 0.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (50, 367, 20188, 15, 15, NULL, 15, 50.00, 50.00, 100.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (51, 368, 20188, 15, 15, NULL, 15, 50.00, 0.00, 100.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (52, 369, 20188, 15, 15, NULL, 15, 100.00, 0.00, 300.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (53, 370, 20188, 15, 15, NULL, 15, 200.00, 0.00, 400.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (54, 371, 20188, 15, 15, NULL, 15, 300.00, 0.00, 600.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (83, 429, 22393, 16, 10, 6, 10, 10.00, 0.00, 1000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (84, 430, 22393, 14, 15, 16, 17, 18.00, NULL, 19.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (85, 431, 22393, 23, 24, 25, 26, 27.00, 0.00, 28.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (117, 476, 19994, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (118, 478, 22241, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (120, 480, 19995, 10, 20, 3, 20, 10.00, 4757.48, 20000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (122, 482, 19995, 10, 10, NULL, 15, 0.00, 1772.85, 2000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (123, 483, 19995, 10, 10, NULL, 15, 0.00, 3200.00, 5000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (124, 484, 19995, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (125, 485, 19995, 30, 10, NULL, 15, 0.00, 0.00, 0.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (128, 488, 19995, 30, 10, NULL, 15, 0.00, 62.40, 500.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (130, 490, 19995, 30, 10, NULL, 15, 0.00, 121.01, 1000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (131, 491, 19995, 10, 10, NULL, 15, 0.00, 2400.00, 10000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (132, 492, 19995, 30, 10, NULL, 15, 0.00, 180.00, 1000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (133, 493, 19995, 30, 10, NULL, 15, 0.00, 2362.22, 5000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (134, 494, 19995, 30, 10, NULL, 15, 0.00, -1866.70, 10000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (135, 495, 19995, 30, 10, NULL, 15, 0.00, 2276.52, 5000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (136, 496, 19995, 30, 10, NULL, 15, 0.00, 6758.65, 50000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (137, 497, 19995, 10, 10, NULL, 10, 0.00, 0.00, 0.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (140, 500, 19995, 5, 10, NULL, 15, 0.00, 3267.34, 5000.00, 1.00, 5000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (141, 501, 19995, 5, 10, NULL, 15, 0.00, -500.00, 10000.00, 1.00, 10000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (142, 502, 19995, 20, 10, NULL, 15, 0.00, 10.00, 1000.00, 1.00, 100.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (143, 503, 19995, 5, 10, NULL, 15, 0.00, 2089.00, 5000.00, 1.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (146, 507, 22393, 60, 60, 5, 60, 4.00, NULL, 1234.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (150, 526, 19995, 30, 10, NULL, 15, 0.00, 11.00, 500.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (151, 532, 19995, 15, 50, 10, 15, 100.00, 100.00, 1000.00, 100.00, 100.00, 1, 1, 0.00, 0.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (153, 539, 22478, 6, 6, 3, 6, NULL, NULL, NULL, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (154, 546, 22478, 6, 6, 6, 6, 0.00, NULL, 3000.00, 1.00, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (155, 547, 22478, 30, 10, NULL, 15, 0.00, 0.00, 0.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (156, 548, 19995, 15, 10, NULL, 15, 0.00, 0.00, 0.00, 1000.00, 1000.00, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (160, 553, 19995, 30, 15, 15, 15, 0.00, 0.00, 5000.00, 0.00, 2000.00, 2, 1, 150.00, 100.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (161, 554, 19995, 10, 10, 10, 15, 0.00, 0.00, 100000.00, 0.00, 1000.00, 1, 1, 88.00, 66.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (162, 555, 19995, 30, 15, 10, 10, 0.00, -10.00, 2000.00, 50.00, 1000.00, 1, 1, 15.00, 10.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (163, 556, 19995, 30, 15, 20, 15, 0.00, 40.00, 2000.00, 0.00, 1000.00, 1, 2, 60.00, 40.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (164, 572, 19995, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (165, 573, 19995, 30, 10, NULL, 15, 0.00, 0.00, 0.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (166, 574, 19995, 15, 10, NULL, 5, 100.00, 4701.00, 100000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (167, 575, 19995, 15, 10, NULL, 5, 100.00, 12449.00, 100000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (168, 576, 19995, 15, 10, NULL, 5, 100.00, 72773.69, 100000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (169, 577, 19995, NULL, NULL, NULL, NULL, 100.00, 46352.00, 40000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (170, 578, 19995, 30, 10, NULL, 15, 0.00, 0.00, 20000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (171, 581, 19995, 10, 10, NULL, 10, 0.00, -700.00, 10000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (172, 582, 19995, 10, 10, NULL, 10, 0.00, 2300.00, 2000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (173, 583, 19995, 10, 10, NULL, 10, 0.00, 150.00, 5000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (174, 584, 19995, 10, 10, NULL, 10, 0.00, 28800.00, 10000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (175, 585, 19995, 30, 5, NULL, 10, 0.00, 0.00, 10000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (176, 586, 19995, 30, 5, NULL, 10, 0.00, 157.65, 300.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (177, 587, 19995, 30, 5, NULL, 10, 0.00, 940.00, 1000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (178, 588, 19995, 30, 5, NULL, 10, 0.00, 180.00, 3000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (179, 589, 19995, 30, 5, NULL, 10, 0.00, 7920.17, 10000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (180, 590, 19995, 15, 15, NULL, NULL, 0.00, 0.00, 2000.00, 100.00, NULL, 1, 1, 100.00, 50.00);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (181, 591, 19995, 30, 5, NULL, NULL, 0.00, 0.00, 10000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (182, 592, 19995, 30, 5, NULL, NULL, 0.00, 640.00, 400.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (183, 593, 19995, 30, 5, NULL, NULL, 0.00, 70.00, 1000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (184, 594, 19995, 30, 5, NULL, NULL, 0.00, 2700.00, 10000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (185, 595, 19995, 30, 5, NULL, NULL, 0.00, 0.00, 3000.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (186, 599, 22553, 10, 10, NULL, 15, 0.00, NULL, 100.00, NULL, NULL, 2, 2, NULL, NULL);
INSERT INTO `tb_game_room_configuration_doudizhu` VALUES (187, 603, 22553, 10, 10, NULL, 10, 1.00, 0.00, 1000.00, NULL, NULL, 2, 2, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
