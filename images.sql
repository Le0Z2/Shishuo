/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : shishuo

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 15/07/2021 19:16:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` int(80) NOT NULL AUTO_INCREMENT,
  `Iname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Iimage` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Iname`(`Iname`) USING BTREE,
  CONSTRAINT `imagess_ibfk_1` FOREIGN KEY (`Iname`) REFERENCES `intro` (`Iname`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (7, '宋应星', 'upload/20210712033536songyingxing.jpg');
INSERT INTO `images` VALUES (8, '钱学森', 'upload/20210712050314qianxuesen.jpg');
INSERT INTO `images` VALUES (9, '程开甲', 'upload/20210712050615chengkaijia.jpg');
INSERT INTO `images` VALUES (10, '于敏', 'upload/20210712050749yumin.jpg');
INSERT INTO `images` VALUES (11, '林鸣', 'upload/20210712050827linming.jpg');
INSERT INTO `images` VALUES (12, '贾思勰', 'upload/20210712051135jiasixie.jpg');
INSERT INTO `images` VALUES (13, '王祯', 'upload/20210712051342wangzhen.jpg');
INSERT INTO `images` VALUES (14, '徐光启', 'upload/20210712051429xuguangqi.jpg');
INSERT INTO `images` VALUES (15, '袁隆平', 'upload/20210712051523yuanlongping.jpg');

SET FOREIGN_KEY_CHECKS = 1;
