/*
Navicat MySQL Data Transfer

Source Server         : localhost3306
Source Server Version : 50710
Source Host           : localhost:3306
Source Database       : xuanke

Target Server Type    : MYSQL
Target Server Version : 50710
File Encoding         : 65001

Date: 2019-01-07 21:15:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_num` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('123', '123');
INSERT INTO `admin` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `Course_num` varchar(11) NOT NULL,
  `Course_name` varchar(255) DEFAULT NULL,
  `credit_hour` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `time_week` varchar(255) DEFAULT NULL,
  `time_jie` varchar(255) DEFAULT NULL,
  `academy` varchar(255) DEFAULT NULL,
  `maxcount` int(255) DEFAULT '0',
  `teacher_num` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Course_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '人机交互', '24', '必修', '基教', '周一', '3-4节', '信息科学与技术学院', '10', '1235');
INSERT INTO `course` VALUES ('2', 'PHP', '4', '限选', '基教', '周二', '3-4节', '信息科学与技术学院', '4', '1239');
INSERT INTO `course` VALUES ('3', 'JAVA', '2', '限选', '基教', '周一', '5-6节', '信息科学与技术学院', '3', '1238');
INSERT INTO `course` VALUES ('4', '大学语文', '2', '任选', '基教', '周三', '5-6节', '文法学院', '12', '1240');
INSERT INTO `course` VALUES ('5', '软件设计', '4', '必修', '基教', '周三', '5-6节', '信息科学与技术学院', '3', '1236');
INSERT INTO `course` VALUES ('6', '铁路信息概论', '2', '限选', '基教', '周三', '1-2节', '电气与电子学院', '4', '12356');
INSERT INTO `course` VALUES ('7', 'linux', '2', '必修', '三教', '周二', '5-6节', '信息科学与技术学院', '3', '12310');
INSERT INTO `course` VALUES ('8', '土木土木', '2', '限选', '三教', '周二', '5-6节', '土木工程学院', '3', '12356');

-- ----------------------------
-- Table structure for result
-- ----------------------------
DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `result_num` int(11) NOT NULL AUTO_INCREMENT,
  `student_num` varchar(11) DEFAULT NULL,
  `course_num` varchar(11) DEFAULT NULL,
  `score` double(255,0) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`result_num`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result
-- ----------------------------
INSERT INTO `result` VALUES ('42', '20163587', '1', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('43', '20163587', '5', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('44', '20163596', '1', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('45', '20163596', '5', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('46', '20163588', '1', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('47', '20163588', '5', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('48', '20163589', '1', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('49', '20163589', '5', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('50', '20163588', '2', null, null, '2019', '春', '待审核');
INSERT INTO `result` VALUES ('51', '20163588', '3', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('52', '20163588', '4', null, null, '2019', '春', '待审核');
INSERT INTO `result` VALUES ('53', '20163589', '2', null, null, '2019', '春', '待审核');
INSERT INTO `result` VALUES ('54', '20163589', '3', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('55', '20163589', '4', null, null, '2019', '春', '待审核');
INSERT INTO `result` VALUES ('56', '20163596', '2', null, null, '2019', '春', '待审核');
INSERT INTO `result` VALUES ('57', '20163596', '3', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('58', '20163596', '4', null, null, '2019', '春', '待审核');
INSERT INTO `result` VALUES ('59', '20163587', '1', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('60', '20163587', '5', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('61', '20163587', '7', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('62', '20163596', '1', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('63', '20163596', '5', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('64', '20163596', '7', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('65', '20163588', '1', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('66', '20163588', '5', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('67', '20163588', '7', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('68', '20163589', '1', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('69', '20163589', '5', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('70', '20163589', '7', null, null, '2019', '春', '审核已通过');
INSERT INTO `result` VALUES ('71', '20163587', '3', null, null, '2019', '春', '待审核');
INSERT INTO `result` VALUES ('72', '20163597', '8', null, null, '2019', '春', '待审核');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_num` varchar(8) NOT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `student_academy` varchar(255) DEFAULT NULL,
  `student_grade` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `classs` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `sushe` varchar(255) DEFAULT NULL,
  `zhuzhi` varchar(255) DEFAULT NULL,
  `shengao` varchar(255) DEFAULT NULL,
  `tizhong` varchar(255) DEFAULT NULL,
  `aihao` varchar(255) DEFAULT NULL,
  `techang` varchar(255) DEFAULT NULL,
  `m_telephone` varchar(255) DEFAULT NULL,
  `f_telephone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`student_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('20163587', '姚雅丽', '信息科学与技术学院', '大三', 'lovema121016', '女', '软件工程', '41142419961210454X', '信1605-1', '15613155379', '4#212', '河南省', '160', '50', '乒乓球', '玩', '18238083748', null);
INSERT INTO `student` VALUES ('20163588', '王金萱', '信息科学与技术学院', '大三', '10454X', '女', '软件工程', '41142419961210454X', '信1605-2', null, null, null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('20163589', '刘美华', '信息科学与技术学院', '大三', '10454X', '女', '软件工程', '41142419961210454X', '信1601-1', null, null, null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('20163596', '张三', '信息科学与技术学院', '大四', '104541', '男', '信息科学与技术学院', '411424199612104541', '信1605-1', null, null, null, null, null, null, null, null, null);
INSERT INTO `student` VALUES ('20163597', '李想', '土木工程学院', '大三', '456789', '男', '土木', '123456789123456789', '土1605-1', null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacher_num` varchar(255) NOT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `teacher_academy` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `zhuzhi` varchar(255) DEFAULT NULL,
  `aihao` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `office` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`teacher_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('12310', '刘力嘉', '信息科学与技术学院', '456789', '男', '软件工程', '123456789123456789', null, null, null, null);
INSERT INTO `teacher` VALUES ('1234', '李三', '系主任', '123', '女', '教授', '41142419961210454X', '石家庄市', '玩', '15613155379', '教务处');
INSERT INTO `teacher` VALUES ('1235', '杨子光', '信息科学与技术学院', '104545', '男', '软件工程', '411424197012104545', null, null, null, null);
INSERT INTO `teacher` VALUES ('12356', '霍磊', '电气与电子学院', '456789', '男', '电子工程', '123456789123456789', null, null, null, null);
INSERT INTO `teacher` VALUES ('1236', '王辉', '信息科学与技术学院', '454544', '男', '软件工程', '411424199678454544', null, null, null, null);
INSERT INTO `teacher` VALUES ('1237', '王建民', '信息科学与技术学院', '123456', '男', '大数据', '156456789456123456', null, null, null, null);
INSERT INTO `teacher` VALUES ('1238', '刘丹', '信息科学与技术学院', '456789', '男', '软件工程', '123456789123456789', null, null, null, null);
INSERT INTO `teacher` VALUES ('1239', '李静', '信息科学与技术学院', '456789', '女', '网络工程', '123456789123456789', null, null, null, null);
INSERT INTO `teacher` VALUES ('1240', '李军', '文法学院', '456789', '男', '人文', '123456789123456789', null, null, null, null);
