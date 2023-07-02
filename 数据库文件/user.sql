/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80029
Source Host           : localhost:3306
Source Database       : softengineering

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2023-06-01 09:50:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `iden` int NOT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=201720740 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;
