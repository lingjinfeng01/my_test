/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : work

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2023-03-19 23:35:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('19', 'Jane Doe', '25', '女', '555-5678', '456 Elm St');
INSERT INTO `users` VALUES ('20', 'Bob Johnson', '45', '男', '555-9876', '789 Oak St');
INSERT INTO `users` VALUES ('27', 'Kim Kim', '38', '女', '555-5555', '555 Oak St');
INSERT INTO `users` VALUES ('28', 'George Black', '31', '男', '555-6666', '666 Maple St');
INSERT INTO `users` VALUES ('29', 'Linda White', '29', '女', '555-7777', '777 Elm St');
INSERT INTO `users` VALUES ('30', 'Fred Davis', '50', '男', '555-8888', '888 Pine St');
INSERT INTO `users` VALUES ('31', 'Jenny Smith', '27', '女', '555-9999', '999 Maple St');
INSERT INTO `users` VALUES ('32', 'Bill Johnson', '44', '男', '555-0000', '000 Elm St');
INSERT INTO `users` VALUES ('33', 'Lucy Brown', '26', '女', '555-1111', '111 Pine St');
INSERT INTO `users` VALUES ('34', 'Steve Green', '39', '男', '555-2222', '222 Oak St');
INSERT INTO `users` VALUES ('35', 'Karen Lee', '33', '女', '555-3333', '333 Maple St');
INSERT INTO `users` VALUES ('36', 'Frank Adams', '52', '男', '555-4444', '444 Pine St');
INSERT INTO `users` VALUES ('37', 'Grace Jones', '47', '女', '555-5555', '555 Elm St');
INSERT INTO `users` VALUES ('38', 'Joe Kim', '37', '男', '555-6666', '666 Oak St');
INSERT INTO `users` VALUES ('39', 'Alice Black', '28', '女', '555-7777', '777 Maple St');
INSERT INTO `users` VALUES ('40', 'David White', '51', '男', '555-8888', '888 Elm St');
INSERT INTO `users` VALUES ('41', 'Amy Davis', '24', '女', '555-9999', '999 Pine St');
INSERT INTO `users` VALUES ('42', 'Mark Smith', '29', '男', '555-0000', '000 Maple St');
INSERT INTO `users` VALUES ('43', 'Cathy Doe', '41', '女', '555-1111', '111 Elm St');
INSERT INTO `users` VALUES ('44', 'Gary Johnson', '46', '男', '555-2222', '222 Pine St');
INSERT INTO `users` VALUES ('45', 'Betty Brown', '30', '女', '555-3333', '333 Oak St');
INSERT INTO `users` VALUES ('46', 'Sam Green', '36', '男', '555-4444', '444 Maple St');
INSERT INTO `users` VALUES ('47', 'Debby Lee', '43', '女', '555-5555', '555 Pine St');
INSERT INTO `users` VALUES ('48', 'Harry Adams', '53', '男', '555-6666', '666 Elm St');
INSERT INTO `users` VALUES ('49', 'Tina Jones', '32', '女', '555-7777', '777 Maple St');
INSERT INTO `users` VALUES ('50', 'Ron Kim', '40', '男', '555-8888', '888 Oak St');
INSERT INTO `users` VALUES ('51', 'Gina Black', '34', '女', '555-9999', '999 Pine St');
INSERT INTO `users` VALUES ('52', 'Tony White', '49', '男', '555-0000', '000 Maple St');
INSERT INTO `users` VALUES ('53', 'Nancy Davis', '26', '女', '555-1111', '111 Elm St');
INSERT INTO `users` VALUES ('54', 'Peter Smith', '43', '男', '555-2222', '222 Pine St');
INSERT INTO `users` VALUES ('55', 'Helen Doe', '36', '女', '555-3333', '333 Oak St');
INSERT INTO `users` VALUES ('56', 'Jack Johnson', '55', '男', '555-4444', '444 Maple St');
INSERT INTO `users` VALUES ('57', 'Judy Brown', '28', '女', '555-5555', '555 Pine St');
INSERT INTO `users` VALUES ('58', 'Larry Green', '47', '男', '555-6666', '666 Elm St');
INSERT INTO `users` VALUES ('59', 'Patty Lee', '31', '女', '555-7777', '777 Maple St');
INSERT INTO `users` VALUES ('60', 'Carl Adams', '58', '男', '555-8888', '888 Oak St');
INSERT INTO `users` VALUES ('61', 'Olivia Jones', '39', '女', '555-9999', '999 Pine St');
INSERT INTO `users` VALUES ('62', 'Don Kim', '42', '男', '555-0000', '000 Maple St');
INSERT INTO `users` VALUES ('63', 'Emily Black', '30', '女', '555-1111', '111 Elm St');
INSERT INTO `users` VALUES ('64', 'Alex White', '52', '男', '555-2222', '222 Pine St');
INSERT INTO `users` VALUES ('65', 'Tiffany Davis', '35', '女', '555-3333', '333 Oak St');
INSERT INTO `users` VALUES ('66', 'Richard Smith', '48', '男', '555-4444', '444 Maple St');
INSERT INTO `users` VALUES ('67', 'Maggie Doe', '27', '女', '555-5555', '555 Pine St');
INSERT INTO `users` VALUES ('68', 'Tom Johnson', '54', '男', '555-6666', '666 Elm St');
INSERT INTO `users` VALUES ('69', 'Becky Brown', '29', '女', '555-7777', '777 Maple St');
INSERT INTO `users` VALUES ('70', 'Daniel Green', '50', '男', '555-8888', '888 Oak St');
INSERT INTO `users` VALUES ('71', 'Julie Lee', '33', '女', '555-9999', '999 Pine St');
INSERT INTO `users` VALUES ('72', 'Eric Adams', '57', '男', '555-0000', '000 Maple St');
INSERT INTO `users` VALUES ('73', 'Sophia Jones', '38', '女', '555-1111', '111 Elm St');
INSERT INTO `users` VALUES ('74', 'Sean Kim', '45', '男', '555-2222', '222 Pine St');
INSERT INTO `users` VALUES ('75', 'Melissa Black', '31', '女', '555-3333', '333 Oak St');
INSERT INTO `users` VALUES ('76', 'Frank White', '54', '男', '555-4444', '444 Maple St');
INSERT INTO `users` VALUES ('77', 'Tina Davis', '26', '女', '555-5555', '555 Pine St');
INSERT INTO `users` VALUES ('78', 'Jerry Smith', '51', '男', '555-6666', '666 Elm St');
INSERT INTO `users` VALUES ('79', 'Amy Doe', '32', '女', '555-7777', '777 Maple St');
INSERT INTO `users` VALUES ('80', 'Chris Johnson', '56', '男', '555-8888', '888 Oak St');
INSERT INTO `users` VALUES ('81', 'Laura Brown', '27', '女', '555-9999', '999 Pine St');
INSERT INTO `users` VALUES ('82', 'Tommy Green', '41', '男', '555-0000', '000 Maple St');
INSERT INTO `users` VALUES ('83', 'Sandy Lee', '35', '女', '555-1111', '111 Elm St');
INSERT INTO `users` VALUES ('84', 'Adam Adams', '59', '男', '555-2222', '222 Pine St');
INSERT INTO `users` VALUES ('85', 'Chloe Jones', '37', '女', '555-3333', '333 Oak St');
INSERT INTO `users` VALUES ('86', 'Matthew Kim', '43', '男', '555-4444', '444 Maple St');
INSERT INTO `users` VALUES ('87', 'Sara Black', '29', '女', '555-5555', '555 Pine St');
INSERT INTO `users` VALUES ('88', 'David White', '48', '男', '555-6666', '666 Elm St');
INSERT INTO `users` VALUES ('89', 'Emma Davis', '30', '女', '555-7777', '777 Maple St');
INSERT INTO `users` VALUES ('90', 'John Smith', '57', '男', '555-8888', '888 Oak St');
INSERT INTO `users` VALUES ('91', 'Mary Doe', '34', '女', '555-9999', '999 Pine St');
INSERT INTO `users` VALUES ('92', 'Robert Johnson', '53', '男', '555-0000', '000 Maple St');
INSERT INTO `users` VALUES ('93', 'Rachel Brown', '28', '女', '555-1111', '111 Elm St');
INSERT INTO `users` VALUES ('94', 'Kevin Green', '46', '男', '555-2222', '222 Pine St');
INSERT INTO `users` VALUES ('95', 'Linda Lee', '32', '女', '555-3333', '333 Oak St');
INSERT INTO `users` VALUES ('96', 'Mike Adams', '55', '男', '555-4444', '444 Maple St');
INSERT INTO `users` VALUES ('97', 'Grace Jones', '36', '女', '555-5555', '555 Pine St');
INSERT INTO `users` VALUES ('98', 'Steven Kim', '47', '男', '555-6666', '666 Elm St');
INSERT INTO `users` VALUES ('99', 'Anna Black', '33', '女', '555-7777', '777 Maple St');
INSERT INTO `users` VALUES ('100', 'George White', '56', '男', '555-8888', '888 Oak St');
INSERT INTO `users` VALUES ('101', 'Sophie Davis', '31', '女', '555-9999', '999 Pine St');
INSERT INTO `users` VALUES ('102', 'Andrew Smith', '50', '男', '555-0000', '000 Maple St');
INSERT INTO `users` VALUES ('103', 'Natalie Doe', '27', '女', '555-1111', '111 Elm St');
INSERT INTO `users` VALUES ('104', 'Tim Johnson', '52', '男', '555-2222', '222 Pine St');
INSERT INTO `users` VALUES ('105', 'Kristin Brown', '29', '女', '555-3333', '333 Oak St');
INSERT INTO `users` VALUES ('106', 'Patrick Green', '51', '男', '555-4444', '444 Maple St');
INSERT INTO `users` VALUES ('107', 'Kelly Lee', '35', '女', '555-5555', '555 Pine St');
INSERT INTO `users` VALUES ('108', 'Mark Adams', '58', '男', '555-6666', '666 Elm St');
INSERT INTO `users` VALUES ('109', 'Jessica Jones', '38', '女', '555-7777', '777 Maple St');
INSERT INTO `users` VALUES ('110', 'Jacob Kim', '44', '男', '555-8888', '888 Oak St');
INSERT INTO `users` VALUES ('111', 'Megan Black', '30', '女', '555-9999', '999 Pine St');
INSERT INTO `users` VALUES ('112', 'William White', '49', '男', '555-0000', '000 Maple St');
INSERT INTO `users` VALUES ('113', 'Hannah Davis', '26', '女', '555-1111', '111 Elm St');
INSERT INTO `users` VALUES ('114', 'Erica Smith', '47', '男', '555-2222', '222 Pine St');
INSERT INTO `users` VALUES ('115', 'Brian Doe', '33', '女', '555-3333', '333 Oak St');
INSERT INTO `users` VALUES ('116', 'Christopher Johnson', '54', '男', '555-4444', '444 Maple St');
INSERT INTO `users` VALUES ('117', 'Ashley Brown', '28', '女', '555-5555', '555 Pine St');
INSERT INTO `users` VALUES ('118', 'Marcus Green', '49', '男', '555-6666', '666 Elm St');
INSERT INTO `users` VALUES ('119', 'Julia Lee', '34', '女', '555-7777', '777 Maple St');
INSERT INTO `users` VALUES ('120', 'Benjamin Adams', '59', '男', '555-8888', '888 Oak St');
