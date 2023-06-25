/*
Navicat MySQL Data Transfer

Source Server         : centos-ns
Source Server Version : 50722
Source Host           : 139.224.55.130:3307
Source Database       : fun_bill

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2023-06-25 20:14:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bill_`
-- ----------------------------
DROP TABLE IF EXISTS `bill_`;
CREATE TABLE `bill_` (
  `id_` bigint(20) NOT NULL AUTO_INCREMENT,
  `title_` varchar(100) DEFAULT NULL,
  `bill_time_` date DEFAULT NULL,
  `type_id_` bigint(20) DEFAULT NULL,
  `price_` double(10,2) DEFAULT NULL,
  `explain_` varchar(100) DEFAULT NULL,
  `file_path_` varchar(500) DEFAULT NULL,
  `file_name_` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  KEY `fk_type_bill` (`type_id_`),
  CONSTRAINT `fk_type_bill` FOREIGN KEY (`type_id_`) REFERENCES `bill_type_` (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill_
-- ----------------------------
INSERT INTO `bill_` VALUES ('1', '交通费', '2020-06-16', '1', '1.23', 'a', null, null);
INSERT INTO `bill_` VALUES ('2', '饭补', '2020-01-27', '1', '2.23', 'b', null, null);
INSERT INTO `bill_` VALUES ('3', '出差费', '2020-01-05', '2', '33.00', 'c', null, null);
INSERT INTO `bill_` VALUES ('4', '奖金', '2020-01-11', '2', '44.00', 'd', null, null);
INSERT INTO `bill_` VALUES ('20', '1', '2020-01-18', '2', '1.00', null, null, null);
INSERT INTO `bill_` VALUES ('21', '采购办公用品', '2020-03-01', '2', '1234.00', '1234', 'C:\\Users\\Administrator\\AppData\\Local\\Temp\\tomcat-docbase.6814089322458474891.8080\\account-20190506121712451-3.png', 'account.png');
INSERT INTO `bill_` VALUES ('23', '生活费', '2023-04-04', '2', '10.00', '牙刷', null, null);
INSERT INTO `bill_` VALUES ('24', '日用品', '2023-02-04', '2', '30.00', '购买零食', null, null);
INSERT INTO `bill_` VALUES ('25', 'ES6', '2023-04-05', '2', '40.00', '书籍', null, null);
INSERT INTO `bill_` VALUES ('26', '收益1', '2023-03-01', '1', '0.50', '', null, null);
INSERT INTO `bill_` VALUES ('27', '张三', '2023-04-12', '4', '100.00', '', null, null);

-- ----------------------------
-- Table structure for `bill_type_`
-- ----------------------------
DROP TABLE IF EXISTS `bill_type_`;
CREATE TABLE `bill_type_` (
  `id_` bigint(20) NOT NULL AUTO_INCREMENT,
  `name_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bill_type_
-- ----------------------------
INSERT INTO `bill_type_` VALUES ('1', '收入');
INSERT INTO `bill_type_` VALUES ('2', '支出');
INSERT INTO `bill_type_` VALUES ('3', '借入');
INSERT INTO `bill_type_` VALUES ('4', '借出');
