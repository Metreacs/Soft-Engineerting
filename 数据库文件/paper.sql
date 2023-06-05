/*
Navicat MySQL Data Transfer

Source Server         : a
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : softengineering

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2023-06-05 09:11:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `paperid` int(11) NOT NULL AUTO_INCREMENT,
  `studentid` int(11) NOT NULL,
  `objective` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subjective` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ob_grade` int(11) DEFAULT NULL,
  `times` int(11) NOT NULL,
  `sub_grade` int(11) DEFAULT NULL,
  PRIMARY KEY (`paperid`),
  KEY `studentid` (`studentid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
