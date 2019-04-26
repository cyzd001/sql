/*
 Navicat Premium Data Transfer

 Source Server         : 149数据库
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 172.20.100.149:3306
 Source Schema         : micro_account

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 23/04/2019 09:29:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_site_game
-- ----------------------------
DROP TABLE IF EXISTS `tb_site_game`;
CREATE TABLE `tb_site_game`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `site_id` bigint(30) NOT NULL COMMENT '站点id',
  `game_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '游戏id',
  `maintain_status` int(1) NULL DEFAULT 0 COMMENT '维护状态：0 未维护 2维护中',
  `maintain_start_date` datetime(0) NULL DEFAULT NULL COMMENT '维护开始时间',
  `maintain_end_date` datetime(0) NULL DEFAULT NULL COMMENT '维护结束时间',
  `room_max_num` int(9) NULL DEFAULT NULL COMMENT '房间玩家最多人数',
  `room_robot_num` int(9) NULL DEFAULT NULL COMMENT '房间最大机器人数',
  `status` int(1) NULL DEFAULT 1 COMMENT '游戏状态：1开启 2关闭',
  `group_id` bigint(30) NULL DEFAULT NULL COMMENT '分组id',
  `group_sort` int(4) NULL DEFAULT NULL COMMENT '分组排序',
  `game_img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏图片URL',
  `game_small_img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏列表小图',
  `game_top` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '游戏是否置顶，0不置顶，1置顶',
  `game_hot` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '游戏是否热门，0不是，1是',
  `update_date` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `game_site_id`(`site_id`, `game_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1012 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站点游戏映射表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
