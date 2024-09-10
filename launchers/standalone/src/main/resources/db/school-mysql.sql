/*
 Navicat Premium Data Transfer

 Source Server         : docker-db
 Source Server Type    : MySQL
 Source Server Version : 80402 (8.4.2)
 Source Host           : localhost:3306
 Source Schema         : school

 Target Server Type    : MySQL
 Target Server Version : 80402 (8.4.2)
 File Encoding         : 65001

 Date: 10/09/2024 12:24:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Course
-- ----------------------------
DROP TABLE IF EXISTS `Course`;
CREATE TABLE `Course`  (
  `Cid` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '课程编号',
  `Cname` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '课程名称',
  `Tid` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '教师编号'
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Course
-- ----------------------------
INSERT INTO `Course` VALUES ('001', '高等数学', '1');
INSERT INTO `Course` VALUES ('002', '计算及网络', '2');
INSERT INTO `Course` VALUES ('003', '计算机原理', '3');
INSERT INTO `Course` VALUES ('004', 'WEB开发', '4');
INSERT INTO `Course` VALUES ('005', '大数据与云计算', '5');
INSERT INTO `Course` VALUES ('006', '设计模式', '6');
INSERT INTO `Course` VALUES ('007', '需求分析', '7');
INSERT INTO `Course` VALUES ('008', 'OpenCV', '8');

-- ----------------------------
-- Table structure for SC
-- ----------------------------
DROP TABLE IF EXISTS `SC`;
CREATE TABLE `SC`  (
  `Sid` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学生编号',
  `Cid` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '课程编号',
  `Score` double(255, 0) NULL DEFAULT NULL COMMENT '学生成绩'
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of SC
-- ----------------------------
INSERT INTO `SC` VALUES ('01', '001', 90);
INSERT INTO `SC` VALUES ('02', '001', 100);
INSERT INTO `SC` VALUES ('03', '002', 78);
INSERT INTO `SC` VALUES ('04', '003', 58);
INSERT INTO `SC` VALUES ('05', '004', 95);
INSERT INTO `SC` VALUES ('06', '003', 70);
INSERT INTO `SC` VALUES ('07', '005', 80);
INSERT INTO `SC` VALUES ('08', '006', 90);
INSERT INTO `SC` VALUES ('08', '008', 75);
INSERT INTO `SC` VALUES ('01', '007', 93);
INSERT INTO `SC` VALUES ('03', '006', 56);
INSERT INTO `SC` VALUES ('04', '007', 45);
INSERT INTO `SC` VALUES ('01', '002', 85);
INSERT INTO `SC` VALUES ('02', '002', 78);
INSERT INTO `SC` VALUES ('03', '007', 78);
INSERT INTO `SC` VALUES ('04', '001', 55);
INSERT INTO `SC` VALUES ('01', '003', 70);
INSERT INTO `SC` VALUES ('01', '004', 80);
INSERT INTO `SC` VALUES ('01', '005', 78);
INSERT INTO `SC` VALUES ('01', '006', 67);
INSERT INTO `SC` VALUES ('01', '008', 89);

-- ----------------------------
-- Table structure for Student
-- ----------------------------
DROP TABLE IF EXISTS `Student`;
CREATE TABLE `Student`  (
  `Sid` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学生编号',
  `Sname` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '学生姓名',
  `Sage` date NULL DEFAULT NULL COMMENT '出生日期',
  `Ssex` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '学生性别'
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Student
-- ----------------------------
INSERT INTO `Student` VALUES ('01', 'Cecilia', '1995-10-09', '女');
INSERT INTO `Student` VALUES ('02', '芷若初荨', '1996-11-11', '女');
INSERT INTO `Student` VALUES ('03', '刘诗诗', '1987-03-10', '女');
INSERT INTO `Student` VALUES ('04', '胡歌', '1982-09-20', '男');
INSERT INTO `Student` VALUES ('05', '白小明', '1994-03-23', '男');
INSERT INTO `Student` VALUES ('06', '杨梦妮', '1995-07-07', '女');
INSERT INTO `Student` VALUES ('07', '安文龙', '1993-10-09', '男');
INSERT INTO `Student` VALUES ('08', '周逸飞', '1997-08-01', '男');

-- ----------------------------
-- Table structure for Teacher
-- ----------------------------
DROP TABLE IF EXISTS `Teacher`;
CREATE TABLE `Teacher`  (
  `Tid` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '教室编号',
  `Tname` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '教师姓名'
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Teacher
-- ----------------------------
INSERT INTO `Teacher` VALUES ('1', '金华萍');
INSERT INTO `Teacher` VALUES ('2', 'Chan Ka Man');
INSERT INTO `Teacher` VALUES ('3', 'Wong Sum Wing');
INSERT INTO `Teacher` VALUES ('4', 'Juanita Fernandez');
INSERT INTO `Teacher` VALUES ('5', 'Tong Tak Wah');
INSERT INTO `Teacher` VALUES ('6', 'Rachel Boyd');
INSERT INTO `Teacher` VALUES ('7', 'Denise Martinez');

SET FOREIGN_KEY_CHECKS = 1;
