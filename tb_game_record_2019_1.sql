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

 Date: 21/01/2019 19:29:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_game_record_2019_1
-- ----------------------------
DROP TABLE IF EXISTS `tb_game_record_2019_1`;
CREATE TABLE `tb_game_record_2019_1`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_id` bigint(32) NULL DEFAULT NULL COMMENT '厅主id',
  `game_id` int(4) NOT NULL COMMENT '游戏id,1:奔驰宝马,2:飞禽走兽,3:捕鱼,4:斗地主,5:牛牛',
  `game_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '局号,具体某一局游戏的唯一编号',
  `account` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '玩家账号',
  `change_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '变化金额,-表示输,+表示赢',
  `money` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '账户余额',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `identity` int(11) NULL DEFAULT 1 COMMENT '1:正式玩家,2:临时玩家',
  `is_robot` int(4) NOT NULL COMMENT '是否机器人,1:不是,2:是',
  `charge_value` decimal(10, 2) NULL DEFAULT NULL COMMENT '每局游戏的服务费',
  `lottery_result` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '开奖结果（默认是输赢，奔驰宝马记录开的结果）',
  `table_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '桌号',
  `behavior` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '行为:下注，上庄，捕鱼，地主，农民',
  `room_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间名称',
  `type` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '1:房间税收 服务费，2:游戏输赢',
  `data_details` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '游戏详情的JSON格式数据,表字段没有但是统计报表时又需要的数据就以JSON格式存在这里',
  `bet_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '游戏下注金额：斗地主，捕鱼为0',
  `award_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '游戏中奖金额：斗地主，捕鱼为0',
  `play_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_bet` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '自己当局的下注总额',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `site_id_game_id_create_date`(`site_id`, `game_id`, `create_date`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 294190495280660481 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '游戏记录表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;


SELECT
	account,
	money,
	create_date 
FROM
	tb_acc_account 
WHERE
	account IN ( 'ley000', 'ley999' );
SELECT
	* 
FROM
	tb_game_room 
WHERE
	site_id = '129830';
SELECT
	count( 1 ) 
FROM
	tb_game_room 
WHERE
	site_id = '129830';
SELECT count( * ) FROM tb_game_room;
DROP PROCEDURE IF EXISTS test_proc; 
CREATE PROCEDURE test_proc() 
BEGIN
declare i int; 
set i = 1; 
while i<10 do 
INSERT INTO `tb_game_room` VALUES (i, 19995, '11', '炸金花', '3', 1, 'admin', '2018-12-25 20:12:10', 'admin', '2018-12-25 20:12:10', 2.00000, '自动房', 2, 2, '', 0, 1000, 0, 5.00000, 20.00000, 2, 0.00000, '154493033515131', 2, 2, 600.00);
set i = i+1; 
if i%2000 = 0 then
commit; 
end if; 
end while; 
END; 

call test_proc();
SELECT * FROM tb_game_room;
delete from tb_game_room;
 show procedure status;
 show function status;  
 
 select * from tb_game_record_2019_1;
 

 select * from tb_site_amount_config;
 
 
 
 create table testauto (id int primary key auto_increment,name varchar(10));
 
 select * from testauto;
insert into testauto(name) values('nihao');
 select uuid(),uuid(),length(uuid()),char_length(uuid())
 drop table test001;
 DROP TABLE IF EXISTS test001;
 create table test001(id bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,name varchar(10),PRIMARY KEY (id) USING BTREE)ENGINE = InnoDB AUTO_INCREMENT = 10000000000000000000 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '测试表001' ROW_FORMAT = Dynamic;
 select * from test001;
 insert into test001(name) values('haha');
 
 SHOW CREATE DATABASE micro_game;  