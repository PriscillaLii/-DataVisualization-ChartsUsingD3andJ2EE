/*
Navicat MySQL Data Transfer

Source Server         : jdbc1
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : jdbc1

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2017-12-18 22:35:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dbar
-- ----------------------------
DROP TABLE IF EXISTS `dbar`;
CREATE TABLE `dbar` (
  `month` int(11) NOT NULL,
  `apples` int(11) NOT NULL,
  `bananas` int(11) NOT NULL,
  `cherries` int(11) NOT NULL,
  PRIMARY KEY (`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dbar
-- ----------------------------
INSERT INTO `dbar` VALUES ('1', '100', '100', '400');
INSERT INTO `dbar` VALUES ('2', '300', '200', '100');
INSERT INTO `dbar` VALUES ('3', '100', '200', '200');
INSERT INTO `dbar` VALUES ('4', '400', '300', '100');
INSERT INTO `dbar` VALUES ('5', '200', '400', '100');
INSERT INTO `dbar` VALUES ('6', '200', '100', '400');

-- ----------------------------
-- Table structure for dline
-- ----------------------------
DROP TABLE IF EXISTS `dline`;
CREATE TABLE `dline` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dline
-- ----------------------------
INSERT INTO `dline` VALUES ('1', 'Jan 2000', '1394');
INSERT INTO `dline` VALUES ('2', 'Feb 2000', '1366');
INSERT INTO `dline` VALUES ('3', 'Mar 2000', '1200');
INSERT INTO `dline` VALUES ('4', 'Apr 2000', '1445');
INSERT INTO `dline` VALUES ('5', 'May 2000', '1212');
INSERT INTO `dline` VALUES ('6', 'Jun 2000', '1000');
INSERT INTO `dline` VALUES ('7', 'Jul 2000', '2000');
INSERT INTO `dline` VALUES ('8', 'Aug 2000', '1600');
INSERT INTO `dline` VALUES ('9', 'Sep 2000', '1700');
INSERT INTO `dline` VALUES ('10', 'Oct 2000', '1900');
INSERT INTO `dline` VALUES ('11', 'Nov 2000', '2500');
INSERT INTO `dline` VALUES ('12', 'Dec 2000', '3100');
INSERT INTO `dline` VALUES ('13', 'Jan 2001', '2000');
INSERT INTO `dline` VALUES ('14', 'Feb 2001', '1400');

-- ----------------------------
-- Table structure for dpie
-- ----------------------------
DROP TABLE IF EXISTS `dpie`;
CREATE TABLE `dpie` (
  `id` int(11) NOT NULL,
  `data1` int(11) NOT NULL,
  `data2` int(11) NOT NULL,
  `data3` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dpie
-- ----------------------------
INSERT INTO `dpie` VALUES ('1', '100', '200', '300');
INSERT INTO `dpie` VALUES ('2', '25', '150', '200');
INSERT INTO `dpie` VALUES ('3', '200', '20', '140');

-- ----------------------------
-- Table structure for hbar
-- ----------------------------
DROP TABLE IF EXISTS `hbar`;
CREATE TABLE `hbar` (
  `id` int(11) NOT NULL,
  `Categories` varchar(255) NOT NULL,
  `Apples` int(11) NOT NULL,
  `Pears` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hbar
-- ----------------------------
INSERT INTO `hbar` VALUES ('1', 'a', '8', '4');
INSERT INTO `hbar` VALUES ('2', 'b', '3', '4');
INSERT INTO `hbar` VALUES ('3', 'c', '10', '20');
INSERT INTO `hbar` VALUES ('4', 'd', '2', '9');
INSERT INTO `hbar` VALUES ('5', 'e', '14', '2');

-- ----------------------------
-- Table structure for hline
-- ----------------------------
DROP TABLE IF EXISTS `hline`;
CREATE TABLE `hline` (
  `id` int(11) NOT NULL,
  `banana` int(11) NOT NULL,
  `apple` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hline
-- ----------------------------
INSERT INTO `hline` VALUES ('1', '50', '70');
INSERT INTO `hline` VALUES ('2', '26', '19');
INSERT INTO `hline` VALUES ('3', '44', '32');
INSERT INTO `hline` VALUES ('4', '24', '79');
INSERT INTO `hline` VALUES ('5', '80', '12');
INSERT INTO `hline` VALUES ('6', '23', '23');
INSERT INTO `hline` VALUES ('7', '55', '80');
INSERT INTO `hline` VALUES ('8', '12', '1');
INSERT INTO `hline` VALUES ('9', '10', '60');

-- ----------------------------
-- Table structure for hline2
-- ----------------------------
DROP TABLE IF EXISTS `hline2`;
CREATE TABLE `hline2` (
  `id` int(11) NOT NULL,
  `value1` int(11) NOT NULL,
  `value2` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hline2
-- ----------------------------
INSERT INTO `hline2` VALUES ('1', '48', '12');
INSERT INTO `hline2` VALUES ('2', '123', '67');
INSERT INTO `hline2` VALUES ('3', '55', '34');
INSERT INTO `hline2` VALUES ('4', '12', '15');
INSERT INTO `hline2` VALUES ('5', '60', '22');
INSERT INTO `hline2` VALUES ('6', '1', '3');
INSERT INTO `hline2` VALUES ('7', '6', '20');
INSERT INTO `hline2` VALUES ('8', '17', '35');
INSERT INTO `hline2` VALUES ('9', '23', '25');
INSERT INTO `hline2` VALUES ('10', '26', '29');
INSERT INTO `hline2` VALUES ('11', '44', '38');
INSERT INTO `hline2` VALUES ('12', '50', '46');
