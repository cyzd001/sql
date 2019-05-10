/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : micro_game

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 18/01/2019 12:22:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_game_room
-- ----------------------------
DROP TABLE IF EXISTS `tb_game_room`;
CREATE TABLE `tb_game_room`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL COMMENT '厅主id',
  `game_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏ID,关联tb_game的game_id',
  `game_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏名称',
  `game_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏类型 1下注 2捕鱼 3对战',
  `room_status` int(1) NULL DEFAULT 1 COMMENT '房间状态   1：正常  2：关闭',
  `create_by` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_date` datetime(0) NULL DEFAULT NULL,
  `room_field` decimal(15, 5) NULL DEFAULT 1.00000 COMMENT '游戏底分',
  `room_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间名称',
  `room_type` int(1) NULL DEFAULT 1 COMMENT '房间类型 1：体验类型 2：财富类型',
  `whether_password` int(1) NULL DEFAULT 2 COMMENT '是否密码房间 1：是  2：不是',
  `room_password` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间密码',
  `table_num` int(10) NULL DEFAULT 0 COMMENT '桌子数目',
  `room_persons` int(10) NULL DEFAULT 0 COMMENT '房间人数',
  `table_persons` int(10) NULL DEFAULT 0 COMMENT '桌子人数',
  `tax_ratio` decimal(10, 5) NULL DEFAULT NULL COMMENT '税收比例',
  `min_money` decimal(19, 5) NULL DEFAULT 0.00000 COMMENT '房间最低金额',
  `charge_type` int(1) NULL DEFAULT 1 COMMENT '收费设置 1,收取服务费 2,税收比例收费',
  `charge_value` decimal(9, 5) NULL DEFAULT 0.00000 COMMENT '收费值',
  `room_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间号\r\n',
  `money_type` int(1) NULL DEFAULT NULL COMMENT '货币类型：1积分 2金币',
  `shangzhuang_switch` int(1) NULL DEFAULT NULL COMMENT '上庄控制：1上庄开启 2关闭',
  `room_limit` decimal(9, 2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '游戏房间表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_game_room
-- ----------------------------
INSERT INTO `tb_game_room` VALUES (1, 19995, '11', '炸金花', '3', 1, 'admin', '2018-12-25 20:12:10', 'admin', '2018-12-25 20:12:10', 2.00000, '自动房', 2, 2, '', 0, 1000, 0, 5.00000, 20.00000, 2, 0.00000, '154493033515131', 2, 2, 600.00);

SET FOREIGN_KEY_CHECKS = 1;
