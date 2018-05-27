/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 80011
Source Host           : localhost:3306
Source Database       : business

Target Server Type    : MYSQL
Target Server Version : 80011
File Encoding         : 65001

Date: 2018-05-27 20:58:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(10) NOT NULL COMMENT '客户代码',
  `name` varchar(50) NOT NULL COMMENT '客户名称',
  `address` varchar(100) NOT NULL COMMENT '地址',
  `telephone` varchar(20) DEFAULT NULL COMMENT '电话',
  `fax` varchar(20) DEFAULT NULL COMMENT '传真',
  `contacts` varchar(20) NOT NULL COMMENT '联系人',
  `contacts_phone` varchar(20) NOT NULL COMMENT '联系人电话',
  `email` varchar(20) NOT NULL COMMENT '邮箱',
  `register_code` varchar(50) NOT NULL COMMENT '注册代码',
  `bank_name` varchar(50) DEFAULT NULL COMMENT '银行名称',
  `account` varchar(50) DEFAULT NULL COMMENT '银行账户',
  `director` varchar(20) DEFAULT NULL COMMENT '董事',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', '100205', '青岛人人乐有限公司', '青岛海尔路35号', '0532-32341234', null, '王五', '15845675289', 'wangwu@126.com', '2123354', '光大银行青岛分行', '1233445', '宋学');
