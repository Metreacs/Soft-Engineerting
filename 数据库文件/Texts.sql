/*
 Navicat Premium Data Transfer

 Source Server         : softeng
 Source Server Type    : MySQL
 Source Server Version : 50734 (5.7.34)
 Source Host           : localhost:8889
 Source Schema         : softengineering

 Target Server Type    : MySQL
 Target Server Version : 50734 (5.7.34)
 File Encoding         : 65001

 Date: 02/06/2023 23:49:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Texts
-- ----------------------------
DROP TABLE IF EXISTS `Texts`;
CREATE TABLE `Texts` (
  `Question` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Answer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ChooseA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ChooseB` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ChooseC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ChooseD` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Questionid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Questionid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of Texts
-- ----------------------------
BEGIN;
INSERT INTO `Texts` (`Question`, `Answer`, `ChooseA`, `ChooseB`, `ChooseC`, `ChooseD`, `Type`, `Questionid`) VALUES ('1', '1', '1', '1', '1', '1', '0', 1);
INSERT INTO `Texts` (`Question`, `Answer`, `ChooseA`, `ChooseB`, `ChooseC`, `ChooseD`, `Type`, `Questionid`) VALUES ('123', 'a', 'a', 'b', 'c', 'd', '0', 2);
INSERT INTO `Texts` (`Question`, `Answer`, `ChooseA`, `ChooseB`, `ChooseC`, `ChooseD`, `Type`, `Questionid`) VALUES ('456', 'sadhusahdi', NULL, NULL, NULL, NULL, '1', 3);
INSERT INTO `Texts` (`Question`, `Answer`, `ChooseA`, `ChooseB`, `ChooseC`, `ChooseD`, `Type`, `Questionid`) VALUES ('1', '123', 'a', 'b', 'c', 'd', '0', 4);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
