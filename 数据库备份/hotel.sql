/*
 Navicat Premium Data Transfer

 Source Server         : aaa
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : hotel

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 10/07/2019 20:06:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `housename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `number` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES (1, '单人间', 'images/rooms/single-room.jpg', 9, 89);
INSERT INTO `house` VALUES (2, '双人间', 'images/rooms/double-room.jpg', 7, 129);
INSERT INTO `house` VALUES (3, '豪华间', 'images/rooms/deluxe-room.jpg', 9, 189);
INSERT INTO `house` VALUES (4, '特大号床间', 'images/rooms/king.jpg', 9, 219);
INSERT INTO `house` VALUES (5, '蜜月房', 'images/rooms/honeymoon.jpg', 9, 289);
INSERT INTO `house` VALUES (6, '家庭间', 'images/rooms/family.jpg', 9, 149);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderid` int(10) NOT NULL AUTO_INCREMENT,
  `names` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userid` int(10) NULL DEFAULT NULL,
  `id` int(10) NOT NULL,
  `many` int(10) NOT NULL,
  `createtime` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `days` int(10) NOT NULL,
  `phone` varchar(49) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`orderid`) USING BTREE,
  INDEX `userid`(`userid`) USING BTREE,
  INDEX `idhouse`(`id`) USING BTREE,
  CONSTRAINT `idhouse` FOREIGN KEY (`id`) REFERENCES `house` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookTime` datetime(0) NULL DEFAULT NULL,
  `leaveTime` datetime(0) NULL DEFAULT NULL,
  `reachTime` datetime(0) NULL DEFAULT NULL,
  `roomNumber` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `room_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_7spxgv73vpux225dqa7nqovwt`(`user_id`) USING BTREE,
  INDEX `FK_37934xq4d4lw188xmsd6vtj1s`(`room_id`) USING BTREE,
  CONSTRAINT `FK_37934xq4d4lw188xmsd6vtj1s` FOREIGN KEY (`room_id`) REFERENCES `t_room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_7spxgv73vpux225dqa7nqovwt` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES (2, '2019-07-04 21:04:32', '2019-07-05 21:04:32', '2019-07-05 21:04:32', 1, 2, 3, 9);
INSERT INTO `t_book` VALUES (3, '2019-07-04 21:04:32', '2019-07-05 21:04:32', '2019-07-05 21:04:32', 1, 2, 1, 1);
INSERT INTO `t_book` VALUES (4, '2019-07-04 21:04:32', '2019-07-05 21:04:32', '2019-07-05 21:04:32', 1, 2, 4, 3);
INSERT INTO `t_book` VALUES (5, '2019-07-04 21:04:32', '2019-07-05 21:04:32', '2019-07-05 21:04:32', 1, 2, 5, 11);
INSERT INTO `t_book` VALUES (6, '2019-07-04 21:04:32', '2019-07-05 21:04:32', '2019-07-05 21:04:32', 1, 1, 6, 12);
INSERT INTO `t_book` VALUES (7, '2019-07-04 21:04:32', '2019-07-05 21:04:32', '2019-07-05 21:04:32', 1, 2, 7, 14);
INSERT INTO `t_book` VALUES (8, '2019-07-04 21:04:32', '2019-07-05 21:04:32', '2019-07-05 21:04:32', 1, 0, 9, 25);
INSERT INTO `t_book` VALUES (15, '2019-07-04 21:04:32', '2019-07-05 21:04:32', '2019-07-05 21:04:32', 1, 1, 2, 1);
INSERT INTO `t_book` VALUES (16, '2019-07-04 21:04:32', '2019-07-05 21:04:32', '2019-07-05 21:04:32', 1, 0, 10, 13);
INSERT INTO `t_book` VALUES (17, '2019-07-04 21:04:32', '2019-07-05 21:04:32', '2019-07-05 21:04:32', 1, 0, 11, 33);

-- ----------------------------
-- Table structure for t_buy
-- ----------------------------
DROP TABLE IF EXISTS `t_buy`;
CREATE TABLE `t_buy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_buy
-- ----------------------------
INSERT INTO `t_buy` VALUES (1, '床单', 100, '', 11);
INSERT INTO `t_buy` VALUES (2, '被褥', 200, '', 10);
INSERT INTO `t_buy` VALUES (3, '空调遥控', 20, '', 10);
INSERT INTO `t_buy` VALUES (4, '热水器', 3000, '', 10);
INSERT INTO `t_buy` VALUES (5, '拖鞋', 20, '', 10);
INSERT INTO `t_buy` VALUES (6, '水杯', 10, '', 10);

-- ----------------------------
-- Table structure for t_error
-- ----------------------------
DROP TABLE IF EXISTS `t_error`;
CREATE TABLE `t_error`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desc1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `isFix` int(11) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_item
-- ----------------------------
DROP TABLE IF EXISTS `t_item`;
CREATE TABLE `t_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `itemName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_8v8wb6o7w0g7jvtgpbghypqcd`(`cid`) USING BTREE,
  INDEX `FK_jirt7y31irafkx63ns3b1ar27`(`user_id`) USING BTREE,
  CONSTRAINT `FK_8v8wb6o7w0g7jvtgpbghypqcd` FOREIGN KEY (`cid`) REFERENCES `t_item_cat` (`cid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_jirt7y31irafkx63ns3b1ar27` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_item
-- ----------------------------
INSERT INTO `t_item` VALUES (1, '\\upload\\0f9bc8b09e2f11e9f7414ef3f2bada5aChOxM1wc2cmAX8bhAAG8Uy8ZHqg313.png', '测试', '122225', 1, NULL);
INSERT INTO `t_item` VALUES (2, '\\upload\\586b0380936f11e6f7f0ee638b1e7b2a1406942136254.jpeg', '测试2', '122321', 4, NULL);
INSERT INTO `t_item` VALUES (3, '\\upload\\1376c8e0937411e6da7d1e603a918b791406942136254.jpeg', '期の21123', '1231', 1, NULL);
INSERT INTO `t_item` VALUES (4, '\\upload\\1376c8e0937411e6da7d1e603a918b791406942136254.jpeg', 'test', '12321', 3, NULL);
INSERT INTO `t_item` VALUES (5, '\\upload\\327d79909e3511e96229d92f6ddd498eChOxM1wc2f6AM4vvAAR1HHF8CL8143.png', '饼干', '问道不错哦', 2, NULL);
INSERT INTO `t_item` VALUES (6, '\\upload\\e50b33d09e3611e9a92ded69c35ca47cChOxM1wcuAaAUnwsAAI4rTpFw2M969.png', '好吃的零食', '问道不错哦', 2, NULL);

-- ----------------------------
-- Table structure for t_item_cat
-- ----------------------------
DROP TABLE IF EXISTS `t_item_cat`;
CREATE TABLE `t_item_cat`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(11) NOT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_item_cat
-- ----------------------------
INSERT INTO `t_item_cat` VALUES (1, '鞋子', '\\upload\\02ffdea0936211e60c1314b31564070914.jpg', 10, 130);
INSERT INTO `t_item_cat` VALUES (2, '零食', '\\upload\\02ffdea0936211e60c1314b31564070914.jpg', 10, 20);
INSERT INTO `t_item_cat` VALUES (3, '牙刷', '\\upload\\02ffdea0936211e60c1314b31564070914.jpg', 9, 10);
INSERT INTO `t_item_cat` VALUES (4, '衣服', '\\upload\\02ffdea0936211e60c1314b31564070914.jpg', 12, 123);
INSERT INTO `t_item_cat` VALUES (5, '杯子', '\\upload\\02ffdea0936211e60c1314b31564070914.jpg', 10, 15);
INSERT INTO `t_item_cat` VALUES (6, '香烟12', '\\upload\\02ffdea0936211e60c1314b31564070914.jpg', 11, 200);
INSERT INTO `t_item_cat` VALUES (7, '香烟', '\\upload\\41efc710936211e60c1314b3156407092957040_183344446048_2.jpg', 2, 300);

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `manage_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_3mfe856ak8t6quyqx6arjm6if`(`user_id`) USING BTREE,
  INDEX `FK_g8qn8o4rp2vfmsdtfsrxkwlcv`(`manage_id`) USING BTREE,
  CONSTRAINT `FK_3mfe856ak8t6quyqx6arjm6if` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_g8qn8o4rp2vfmsdtfsrxkwlcv` FOREIGN KEY (`manage_id`) REFERENCES `t_manage` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO `t_log` VALUES (3, '新增管理员', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (4, '删除用户', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (9, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (10, '删除客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (11, '修改客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (12, '修改客房类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (13, '新增客房类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (16, '删除日志', '2019-07-04 21:04:32', NULL, 4);
INSERT INTO `t_log` VALUES (17, '删除日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (19, '新增日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (23, '删除日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (24, '修改日志', '2019-07-04 21:04:32', NULL, 6);
INSERT INTO `t_log` VALUES (25, '修改日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (26, '修改日志', '2019-07-04 21:04:32', NULL, 13);
INSERT INTO `t_log` VALUES (27, '修改日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (28, '修改日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (30, '修改日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (31, '新增管理员', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (33, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (36, '新增日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (38, '新增日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (39, '修改客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (40, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (41, '王企鹅', '2019-07-04 21:04:32', NULL, 8);
INSERT INTO `t_log` VALUES (42, '新增日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (43, '修改日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (44, '删除日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (45, '删除日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (46, '测试', '2019-07-04 21:04:32', NULL, 4);
INSERT INTO `t_log` VALUES (47, '新增日志', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (48, '取消预定', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (49, '办理入住', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (50, '新增商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (51, '修改客房类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (52, '新增商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (53, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (54, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (55, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (56, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (57, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (58, '删除商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (59, '删除商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (60, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (61, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (62, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (63, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (64, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (65, '删除客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (66, '删除客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (67, '修改客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (68, '修改客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (69, '修改客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (70, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (71, '修改商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (72, '新增客房类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (73, '新增客房类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (74, '修改客房类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (75, '修改客房类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (76, '新增物品采购', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (77, '新增物品采购', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (78, '新增物品采购', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (79, '新增物品采购', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (80, '新增物品采购', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (81, '新增物品采购', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (82, '新增需求', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (83, '新增需求', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (84, '新增需求', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (85, '新增异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (86, '新增异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (87, '新增异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (88, '新增异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (89, '新增异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (90, '新增异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (91, '删除异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (92, '修改异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (93, '修改异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (94, '删除需求', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (95, '新增需求', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (96, '修改物品采购', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (97, '修改物品采购', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (98, '修改需求', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (99, '修改需求', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (100, '异常维修', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (101, '新增异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (102, '更换房间', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (103, '更换房间', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (104, '更换房间', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (105, '更换房间', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (106, '更换房间', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (107, '更换房间', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (108, '更换房间', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (109, '更换房间', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (110, '更换房间', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (111, '新增商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (112, '新增商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (113, '修改物品采购', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (114, '办理入住', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (115, '修改物品采购', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (116, '删除商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (117, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (118, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (119, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (120, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (121, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (122, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (123, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (124, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (125, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (126, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (127, '删除用户', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (128, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (129, '删除用户', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (130, '删除用户', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (131, '删除用户', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (132, '办理入住', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (133, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (134, '办理入住', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (135, '办理入住', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (136, '办理入住', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (137, '办理入住', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (138, '新增管理员', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (139, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (140, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (141, '新增管理员', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (142, '新增客房', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (143, '新增商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (144, '办理入住', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (145, '新增异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (146, '新增需求', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (147, '修改管理员', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (148, '修改管理员', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (149, '修改商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (150, '修改商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (151, '异常维修', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (152, '新增异常', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (153, '修改商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (154, '修改商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (155, '修改商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (156, '修改商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (157, '修改商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (158, '修改商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (159, '修改商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (160, '修改商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (161, '修改商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (162, '修改商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (163, '修改商品', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (164, '修改商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (165, '修改商品类型', '2019-07-04 21:04:32', NULL, 1);
INSERT INTO `t_log` VALUES (166, '修改商品', '2019-07-04 21:04:32', NULL, 1);

-- ----------------------------
-- Table structure for t_manage
-- ----------------------------
DROP TABLE IF EXISTS `t_manage`;
CREATE TABLE `t_manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idCard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_manage
-- ----------------------------
INSERT INTO `t_manage` VALUES (1, '2019-07-05 21:04:32', '122@qq.com', '32012345674252', 2, 'admin', 'admin', '15812345697', 1, 1);
INSERT INTO `t_manage` VALUES (2, '2019-07-05 21:04:32', '122@qq.com', '32012345674252', 2, 'admin1', 'admin', '15812345697', 1, 0);
INSERT INTO `t_manage` VALUES (3, '2019-07-05 21:04:32', '122@qq.com', '32012345674252', 2, 'admin2', 'admin', '15812345697', 2, 0);
INSERT INTO `t_manage` VALUES (4, '2019-07-05 21:04:32', '122@qq.com', '32012345674252', 2, 'admin3', 'admin', '15812345697', 1, 0);
INSERT INTO `t_manage` VALUES (5, '2019-07-05 21:04:32', '122@qq.com', '32012345674252', 2, 'admin4', 'admin', '15812345697', 1, 0);
INSERT INTO `t_manage` VALUES (6, '2019-07-05 21:04:32', '122@qq.com', '32012345674252', 2, 'admin5', 'admin', '15812345612', 2, 0);
INSERT INTO `t_manage` VALUES (7, '2019-07-05 21:04:32', '122@qq.com', '32012345674252', 2, 'admin6', 'admin', '15812345697', 1, 0);
INSERT INTO `t_manage` VALUES (8, '2019-07-05 21:04:32', '122@qq.com', '32012345674252', 2, 'admin7', 'admin', '15812345697', 1, 0);
INSERT INTO `t_manage` VALUES (9, '2019-07-05 21:04:32', '12312@qq.com', '32234242423423432', 2, 'admin10', '123', '13212321123', 1, 0);
INSERT INTO `t_manage` VALUES (10, '2019-07-05 21:04:32', '1232123@11.com', '12322432432423432', 2, 'admin10', '123', '123123123', 1, 0);
INSERT INTO `t_manage` VALUES (11, '2019-07-05 21:04:32', '122906@qq.com', '12322432432423432', 2, 'admin10', '123', '13212321123', 1, 0);
INSERT INTO `t_manage` VALUES (12, '2019-07-05 21:04:32', '122906@qq.com', '32234242423423432', 2, 'admin12123', 'admin213', '13212312312', 2, 0);
INSERT INTO `t_manage` VALUES (13, '2019-07-05 21:04:32', '1232123@11.com', '320321312123212312', 2, 'admin12123', '112121', '13212321123', 1, 0);
INSERT INTO `t_manage` VALUES (14, '2019-07-05 21:04:32', '1232123@11.com', '320321312123212312', 2, 'admin10', '112121', '123123123', 2, 0);
INSERT INTO `t_manage` VALUES (15, '2019-07-05 21:04:32', '122906@qq.com', '12322432432423432', 2, 'admin12123', '112121', '13212312312', 2, 0);
INSERT INTO `t_manage` VALUES (16, '2019-07-05 21:04:32', '1232123@11.com', '320321312123212312', 2, 'admin112', '112121', '13212321123', 2, 0);
INSERT INTO `t_manage` VALUES (17, '2019-07-05 21:04:32', '122906@qq.com', '320789456125576354', 2, '12312', '123', '13888888888', 2, 0);
INSERT INTO `t_manage` VALUES (18, '2019-07-05 21:04:32', '1232123@11.com', '12322432432423432', 2, '测试7', '123', '13212312312', 2, 1);
INSERT INTO `t_manage` VALUES (19, '2019-07-05 21:04:32', '12312@qq.com', '320321312123212312', 2, 'admin8', '123', '13212321123', 1, 1);

-- ----------------------------
-- Table structure for t_mistake
-- ----------------------------
DROP TABLE IF EXISTS `t_mistake`;
CREATE TABLE `t_mistake`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isRepair` int(11) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_mistake
-- ----------------------------
INSERT INTO `t_mistake` VALUES (2, '暂无', 0, '', '热水器故障');
INSERT INTO `t_mistake` VALUES (3, '暂无', 0, '', '床故障');
INSERT INTO `t_mistake` VALUES (4, '暂无', 0, '', '空调故障');
INSERT INTO `t_mistake` VALUES (7, '暂无', 0, '', '遥控器丢失');
INSERT INTO `t_mistake` VALUES (8, '就是坏了呗', 0, '', '东西坏了');
INSERT INTO `t_mistake` VALUES (9, '1', 0, '2', '1');

-- ----------------------------
-- Table structure for t_need
-- ----------------------------
DROP TABLE IF EXISTS `t_need`;
CREATE TABLE `t_need`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_need
-- ----------------------------
INSERT INTO `t_need` VALUES (1, '暂无', '', '加床');
INSERT INTO `t_need` VALUES (2, '暂无', '', '更换被褥被套');
INSERT INTO `t_need` VALUES (4, '暂无', '', '其他');
INSERT INTO `t_need` VALUES (5, '暂无', '', '添加拖鞋');

-- ----------------------------
-- Table structure for t_room
-- ----------------------------
DROP TABLE IF EXISTS `t_room`;
CREATE TABLE `t_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isLive` int(11) NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roomName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `room_cat_id` int(11) NULL DEFAULT NULL,
  `floor` int(11) NOT NULL,
  `isClean` int(11) NOT NULL DEFAULT 0,
  `isPay` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_b5fuerjpm3v5514otxl6a7uxf`(`room_cat_id`) USING BTREE,
  CONSTRAINT `FK_b5fuerjpm3v5514otxl6a7uxf` FOREIGN KEY (`room_cat_id`) REFERENCES `t_room_cat` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_room
-- ----------------------------
INSERT INTO `t_room` VALUES (1, '\\upload\\e087a330928511e68f8edcd78f82e46814.jpg', 2, '', '1001', 1, 1, 0, 1);
INSERT INTO `t_room` VALUES (2, '\\upload\\e087a330928511e68f8edcd78f82e46814.jpg', 1, '', '1002', 1, 1, 0, 0);
INSERT INTO `t_room` VALUES (3, '\\upload\\e087a330928511e68f8edcd78f82e46814.jpg', 2, '', '1005', 2, 1, 0, 0);
INSERT INTO `t_room` VALUES (9, '\\upload\\9e1d94e0929511e67b7770ed89dbb1682957040_183344446048_2.jpg', 3, '', '1006', 1, 1, 0, 0);
INSERT INTO `t_room` VALUES (11, '\\upload\\611ea1d092a711e6999f10a80e7cb0901406942136254.jpeg', 3, '', '1007', 1, 2, 0, 0);
INSERT INTO `t_room` VALUES (12, '\\upload\\0d394c1092ba11e69b394af2d26d1b6a1406942136254.jpeg', 2, '', '1008', 4, 2, 0, 0);
INSERT INTO `t_room` VALUES (13, '\\upload\\bafa7f9092ba11e6f069f65049a2bdcd1406942136254.jpeg', 1, '', '1009', 2, 1, 0, 1);
INSERT INTO `t_room` VALUES (14, '\\upload\\8143744092bb11e66e146d4862a3dd4b2957040_183344446048_2.jpg', 3, '', '1010', 3, 4, 0, 0);
INSERT INTO `t_room` VALUES (19, '\\upload\\e7c02470954511e64393eaccb8f12e8514.jpg', 1, '', '1011', 3, 1, 0, 0);
INSERT INTO `t_room` VALUES (20, '\\upload\\e7c02470954511e64393eaccb8f12e8514.jpg', 1, '', '1012', 5, 1, 0, 0);
INSERT INTO `t_room` VALUES (21, '\\upload\\80894d30954611e64393eaccb8f12e8514.jpg', 1, '', '1013', 7, 3, 0, 0);
INSERT INTO `t_room` VALUES (22, '\\upload\\9b380d10954611e64393eaccb8f12e851406942136254.jpeg', 1, '', '1014', 7, 3, 0, 0);
INSERT INTO `t_room` VALUES (23, '\\upload\\a95de090954611e64393eaccb8f12e8514.jpg', 1, '', '1015', 8, 5, 0, 0);
INSERT INTO `t_room` VALUES (24, '\\upload\\b7aa00c0954611e64393eaccb8f12e8514.jpg', 1, '', '1016', 3, 4, 0, 0);
INSERT INTO `t_room` VALUES (25, '\\upload\\cc827590954611e64393eaccb8f12e8514.jpg', 1, '', '1017', 6, 4, 0, 1);
INSERT INTO `t_room` VALUES (26, '\\upload\\dbad5d00954611e64393eaccb8f12e851406942136254.jpeg', 1, '', '1018', 4, 3, 0, 0);
INSERT INTO `t_room` VALUES (27, '\\upload\\f2785300954611e64393eaccb8f12e851406942136254.jpeg', 1, '', '1019', 1, 3, 0, 0);
INSERT INTO `t_room` VALUES (28, '\\upload\\0e5b2610954711e64393eaccb8f12e851406942136254.jpeg', 1, '', '1020', 1, 3, 0, 0);
INSERT INTO `t_room` VALUES (29, '\\upload\\2eca5f10954711e64393eaccb8f12e8514.jpg', 1, '', '1021', 1, 4, 0, 0);
INSERT INTO `t_room` VALUES (30, '\\upload\\e884d800978a11e62b63157fe049810b1406942136254.jpeg', 1, '12312', '1018', 3, 1, 0, 0);
INSERT INTO `t_room` VALUES (31, '\\upload\\b5b5d4d0985a11e6e798841532141bf51406942136254.jpeg', 1, '', '1023', 3, 2, 0, 0);
INSERT INTO `t_room` VALUES (32, '\\upload\\01ccbaa0a41d11e6eeb456a478e10f391.jpeg', 1, '', '1024', 5, 4, 0, 0);
INSERT INTO `t_room` VALUES (33, '\\upload\\106e3be0a41f11e6da42e71470df4e1e2.jpg', 1, '', '1028', 6, 4, 0, 1);

-- ----------------------------
-- Table structure for t_room_cat
-- ----------------------------
DROP TABLE IF EXISTS `t_room_cat`;
CREATE TABLE `t_room_cat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(11) NOT NULL,
  `price` double NOT NULL,
  `type` int(11) NOT NULL,
  `roomCatName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_room_cat
-- ----------------------------
INSERT INTO `t_room_cat` VALUES (1, '\\uploadimages/rooms/single-room.jpg', 10, 120, 1, '单人间');
INSERT INTO `t_room_cat` VALUES (2, '\\upload\\e087a330928511e68f8edcd78f82e46814.jpg', 10, 150, 2, '双人间');
INSERT INTO `t_room_cat` VALUES (3, '\\upload\\e087a330928511e68f8edcd78f82e46814.jpg', 14, 180, 3, '三人间');
INSERT INTO `t_room_cat` VALUES (4, '\\upload\\e087a330928511e68f8edcd78f82e46814.jpg', 12, 160, 4, '标准间');
INSERT INTO `t_room_cat` VALUES (5, '\\upload\\1c275c10937f11e6105d0e7f75f82b6614.jpg', 12, 200, 5, '豪华套间');
INSERT INTO `t_room_cat` VALUES (6, '\\upload\\f26f4680937e11e6105d0e7f75f82b6614.jpg', 10, 300, 6, '总统套间');
INSERT INTO `t_room_cat` VALUES (7, '\\upload\\6ca3cb4092d211e6cd541d5064fb438714.jpg', 12, 60, 7, '钟点房');
INSERT INTO `t_room_cat` VALUES (8, '\\upload\\6ca3cb4092d211e6cd541d5064fb438714.jpg', 11, 150, 8, '情侣套间');

-- ----------------------------
-- Table structure for t_suggest
-- ----------------------------
DROP TABLE IF EXISTS `t_suggest`;
CREATE TABLE `t_suggest`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_43c8329v3b20ecp7no9do4gbu`(`user_id`) USING BTREE,
  CONSTRAINT `FK_43c8329v3b20ecp7no9do4gbu` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_suggest
-- ----------------------------
INSERT INTO `t_suggest` VALUES (1, '测试1', '2019-07-04 21:04:32', 2);
INSERT INTO `t_suggest` VALUES (2, '测试2', '2019-07-04 21:04:32', 2);
INSERT INTO `t_suggest` VALUES (3, '测试3', '2019-07-04 21:04:32', 2);
INSERT INTO `t_suggest` VALUES (4, '测试4', '2019-07-04 21:04:32', 2);
INSERT INTO `t_suggest` VALUES (5, 'test123', '2019-07-04 21:04:32', 2);
INSERT INTO `t_suggest` VALUES (6, '你们这个酒店需要改革啊', '2019-07-04 21:04:32', 11);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` datetime(0) NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idCard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(11) NULL DEFAULT NULL,
  `isVip` int(11) NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` int(11) NULL DEFAULT NULL,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardType` int(11) NULL DEFAULT NULL,
  `jifen` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '2019-07-05 21:04:32', '1232123@11.com', '320321312123212312', 2, 0, '123', '13512456789', 1, 'zhangsan', 0, 10);
INSERT INTO `t_user` VALUES (2, '2019-07-05 21:04:32', '1229012@qq.com', '3241312354355234354', 2, 1, '123', '13212321123', 1, 'zs', 0, 200);
INSERT INTO `t_user` VALUES (3, '2019-07-05 21:04:32', '11@11.com', '32121312312', 2, 0, '123', '13212312312', 2, 'qwer', 0, 10);
INSERT INTO `t_user` VALUES (4, '2019-07-05 21:04:32', '1232123@11.com', '320321312123212312', 2, 0, '123', '13512456789', 1, 'zhangsan12', 0, 10);
INSERT INTO `t_user` VALUES (5, '2019-07-05 21:04:32', '1229012@qq.com', '3241312354355234354', 2, 1, '123', '13212321123', 1, 'zs12', 0, 200);
INSERT INTO `t_user` VALUES (6, '2019-07-05 21:04:32', '11@11.com', '32121312312', 2, 0, '123', '13212312312', 2, 'qwer12', 0, 10);
INSERT INTO `t_user` VALUES (7, '2019-07-05 21:04:32', '1232123@11.com', '3241312354355234354', 2, 0, '123', '1354678954', 1, 'haha', 0, 10);
INSERT INTO `t_user` VALUES (8, '2019-07-05 21:04:32', '122906@qq.com', '320321312123212312', 2, 0, '123', '13612345656', 2, 'huangjinhui', 1, 0);
INSERT INTO `t_user` VALUES (9, '2019-07-05 21:04:32', '123321312@qq.com', '3241312354355234354', 2, 0, '123', '13912668376', 2, 'linxiaoqian', 0, 0);
INSERT INTO `t_user` VALUES (10, '2019-07-05 21:04:32', '12222@qq.com', '320321312123212312', 2, 0, '123', '13912668376', 2, 'xiaoqian', 0, 0);
INSERT INTO `t_user` VALUES (11, '2019-07-05 21:04:32', '123321312@qq.com', '320321312123212312', 2, 0, '123', '13912668376', 1, 'test8', 1, 0);

-- ----------------------------
-- Table structure for t_user_item
-- ----------------------------
DROP TABLE IF EXISTS `t_user_item`;
CREATE TABLE `t_user_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_1mqc67vvnrl61nf6t41eh20ur`(`item_id`) USING BTREE,
  INDEX `FK_9gb852iwi3l41a3u9tsmm6fp3`(`user_id`) USING BTREE,
  CONSTRAINT `FK_1mqc67vvnrl61nf6t41eh20ur` FOREIGN KEY (`item_id`) REFERENCES `t_item` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_9gb852iwi3l41a3u9tsmm6fp3` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_item
-- ----------------------------
INSERT INTO `t_user_item` VALUES (1, 1, 1);
INSERT INTO `t_user_item` VALUES (2, 2, 2);
INSERT INTO `t_user_item` VALUES (5, 3, 5);
INSERT INTO `t_user_item` VALUES (6, 2, 4);
INSERT INTO `t_user_item` VALUES (7, 4, 10);
INSERT INTO `t_user_item` VALUES (8, 6, 11);
INSERT INTO `t_user_item` VALUES (9, 5, 2);

-- ----------------------------
-- Table structure for t_user_room
-- ----------------------------
DROP TABLE IF EXISTS `t_user_room`;
CREATE TABLE `t_user_room`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_mcpajqwffxh1sgw5sutfsdip5`(`room_id`) USING BTREE,
  INDEX `FK_1d67bfqe5llnofppcdf1epcwi`(`user_id`) USING BTREE,
  CONSTRAINT `FK_1d67bfqe5llnofppcdf1epcwi` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_mcpajqwffxh1sgw5sutfsdip5` FOREIGN KEY (`room_id`) REFERENCES `t_room` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_room
-- ----------------------------
INSERT INTO `t_user_room` VALUES (1, 1, 1);
INSERT INTO `t_user_room` VALUES (4, 3, 4);
INSERT INTO `t_user_room` VALUES (5, 9, 3);
INSERT INTO `t_user_room` VALUES (6, 11, 5);
INSERT INTO `t_user_room` VALUES (7, 12, 6);
INSERT INTO `t_user_room` VALUES (8, 14, 7);
INSERT INTO `t_user_room` VALUES (9, 25, 9);
INSERT INTO `t_user_room` VALUES (16, 1, 2);
INSERT INTO `t_user_room` VALUES (17, 13, 10);
INSERT INTO `t_user_room` VALUES (18, 33, 11);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `userid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(10) NOT NULL,
  `sex` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`userid`, `username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (12, 'root', 'root', '17853312640', 12, '1');
INSERT INTO `user` VALUES (13, 'admin1', 'admin1', '17853312646', 23, '2');

-- ----------------------------
-- Triggers structure for table user
-- ----------------------------
DROP TRIGGER IF EXISTS `cc`;
delimiter ;;
CREATE TRIGGER `cc` AFTER INSERT ON `user` FOR EACH ROW BEGIN
insert into 
t_user(id,userName,passWord,phone,sex)
VALUES(new.userid,new.username,new.password,new.phone,new.sex);
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
