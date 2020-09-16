/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : ebook

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 08/06/2020 16:21:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_info
-- ----------------------------
DROP TABLE IF EXISTS `admin_info`;
CREATE TABLE `admin_info`  (
  `admin_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_info
-- ----------------------------

-- ----------------------------
-- Table structure for book_info
-- ----------------------------
DROP TABLE IF EXISTS `book_info`;
CREATE TABLE `book_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `press` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `public_date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `book_count` int(0) NULL DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book_info
-- ----------------------------
INSERT INTO `book_info` VALUES (1, 'Head First Servlets and JSP(第2版)', '技术', 89.00, '中国电力出版社', '巴萨姆(Bryan Basham)、 西拉(Kathy Sierra)', '2010年8月', 85, 'images/bookImg/1-1.jpg', '《重视大脑的学习指南(中文版)(第2版)》内容简介：是不是要学最新版本j2ee 1.5参加sun认证web组件开发人员（scwcd）考试?《head first servlets&jsp（第二版）》并没有给你一大堆需要死记硬背的条条框框；它能将知识直接送入你的大脑。你会通过不寻常的方式同servlet和jsp打交道，可以学得更深入、更快捷。读完全书后，你会看到一个全新的模拟测验，这是模拟实际考试而专门设计的。\r\n这本书为何与众不同?');
INSERT INTO `book_info` VALUES (2, 'Java编程思想（第4版） Java学习必读经典,殿堂级著作！赢得了全球程序员的广泛赞誉。', '技术', 100.00, '机械工业出版社', 'Bruce Eckel', '2007年6月', 74, 'images/bookImg/1-2.png', '《计算机科学丛书：Java编程思想（第4版）》赢得了全球程序员的广泛赞誉，即使是晦涩的概念，在BruceEckel的文字亲和力和小而直接的编程 示例面前也会化解于无形。从Java的基础语法到高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌 握。\r\n　　从《计算机科学丛书：Java编程思想（第4版）》获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者 拥有多年教学经验，对C、C 以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。本书共22章，包括操作 符、控制执行流程、访问权限控制、复用类、多态、接口、通过异常处理错误、字符串、泛型、数组、容器深入研究、JavaI/O系统、枚举类型、并发以及图 形化用户界面等内容。这些丰富的内容，包含了Java语言基础语法以及高级特性，适合各个层次的Java程序员阅读，同时也是高等院校讲授面向对象程序设 计语言以及Java语言的好教材和参考书。\r\n　　《计算机科学丛书：Java编程思想（第4版）》特点：\r\n　　适合初学者与专业人员的经典的面向对象叙述方式，为更新的JavaSE5/6增加了新的示例和章节。\r\n　　测验框架显示程序输出。');
INSERT INTO `book_info` VALUES (3, 'CSS精粹(第2版)(英)安德鲁,陈苏宁,徐锋人民邮电出版', '技术', 87.00, '人民邮电出版社', '安德鲁,陈苏宁,徐锋', '2009年9月', 75, 'images/bookImg/2.jpg', '《计算机科学丛书：Java编程思想（第4版）》赢得了全球程序员的广泛赞誉，即使是晦涩的概念，在BruceEckel的文字亲和力和小而直接的编程 示例面前也会化解于无形。从Java的基础语法到高级特性（深入的面向对象概念、多线程、自动项目构建、单元测试和调试等），本书都能逐步指导你轻松掌 握。\n　　从《计算机科学丛书：Java编程思想（第4版）》获得的各项大奖以及来自世界各地的读者评论中，不难看出这是一本经典之作。本书的作者 拥有多年教学经验，对C、C 以及Java语言都有独到、深入的见解，以通俗易懂及小而直接的示例解释了一个个晦涩抽象的概念。本书共22章，包括操作 符、控制执行流程、访问权限控制、复用类、多态、接口、通过异常处理错误、字符串、泛型、数组、容器深入研究、JavaI/O系统、枚举类型、并发以及图 形化用户界面等内容。这些丰富的内容，包含了Java语言基础语法以及高级特性，适合各个层次的Java程序员阅读，同时也是高等院校讲授面向对象程序设 计语言以及Java语言的好教材和参考书。\n　　《计算机科学丛书：Java编程思想（第4版）》特点：\n　　适合初学者与专业人员的经典的面向对象叙述方式，为更新的JavaSE5/6增加了新的示例和章节。\n　　测验框架显示程序输出。');
INSERT INTO `book_info` VALUES (17, 'honeycomb', '文学', 33.33, 'test', 'test', '2020年4月', 209, 'images/bookImg/2.jpg', '111');
INSERT INTO `book_info` VALUES (20, 'admin', '文学', 111.00, 'test', 'test', '2020年4月', 79, 'images/bookImg/2.jpg', '12312');

-- ----------------------------
-- Table structure for cart_info
-- ----------------------------
DROP TABLE IF EXISTS `cart_info`;
CREATE TABLE `cart_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `b_id` int(0) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  `price` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cart_info
-- ----------------------------

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `o_id` int(0) NOT NULL COMMENT '订单编号',
  `b_id` int(0) NOT NULL COMMENT '商品编号？存疑',
  `num` int(0) NULL DEFAULT NULL COMMENT '商品数量',
  PRIMARY KEY (`o_id`, `b_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (1, 2, 1);
INSERT INTO `order_detail` VALUES (1, 17, 1);
INSERT INTO `order_detail` VALUES (2, 2, 1);
INSERT INTO `order_detail` VALUES (2, 17, 1);
INSERT INTO `order_detail` VALUES (3, 1, 15);
INSERT INTO `order_detail` VALUES (3, 2, 25);
INSERT INTO `order_detail` VALUES (3, 3, 25);
INSERT INTO `order_detail` VALUES (4, 1, 5);
INSERT INTO `order_detail` VALUES (4, 3, 5);
INSERT INTO `order_detail` VALUES (5, 1, 1);
INSERT INTO `order_detail` VALUES (5, 3, 203);
INSERT INTO `order_detail` VALUES (6, 2, 3);
INSERT INTO `order_detail` VALUES (7, 1, 1);
INSERT INTO `order_detail` VALUES (7, 2, 6);
INSERT INTO `order_detail` VALUES (8, 2, 16);
INSERT INTO `order_detail` VALUES (9, 1, 10);
INSERT INTO `order_detail` VALUES (9, 2, 1);
INSERT INTO `order_detail` VALUES (10, 2, 1);
INSERT INTO `order_detail` VALUES (11, 3, 1);
INSERT INTO `order_detail` VALUES (12, 2, 1);
INSERT INTO `order_detail` VALUES (13, 3, 1);
INSERT INTO `order_detail` VALUES (14, 2, 1);
INSERT INTO `order_detail` VALUES (15, 2, 1);
INSERT INTO `order_detail` VALUES (16, 2, 1);
INSERT INTO `order_detail` VALUES (17, 3, 1);
INSERT INTO `order_detail` VALUES (18, 1, 2);
INSERT INTO `order_detail` VALUES (19, 1, 1);
INSERT INTO `order_detail` VALUES (19, 2, 1);
INSERT INTO `order_detail` VALUES (20, 2, 1);
INSERT INTO `order_detail` VALUES (20, 3, 1);
INSERT INTO `order_detail` VALUES (21, 1, 15);

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '订单编号',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态',
  `order_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '下单时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES (1, 3, '已发货', '2020-05-04T13:42:13');
INSERT INTO `order_info` VALUES (2, 3, '已确认', '2020-05-04T13:42:13');
INSERT INTO `order_info` VALUES (3, 1, '交易成功', '2020-05-22T10:58:24');
INSERT INTO `order_info` VALUES (4, 1, '交易成功', '2020-05-25T13:49:20');
INSERT INTO `order_info` VALUES (5, 1, '交易成功', '2020-05-25T14:39:56');
INSERT INTO `order_info` VALUES (6, 1, '已确认', '2020-06-02T20:35:54');
INSERT INTO `order_info` VALUES (7, 1, '已确认', '2020-06-05T13:49:41');
INSERT INTO `order_info` VALUES (8, 1, '交易成功', '2020-06-07T23:53:59');
INSERT INTO `order_info` VALUES (9, 1, '已确认', '2020-06-08T09:42:34');
INSERT INTO `order_info` VALUES (10, 1, '交易成功', '2020-06-08T09:45:27');
INSERT INTO `order_info` VALUES (11, 1, '已确认', '2020-06-08T09:47:17');
INSERT INTO `order_info` VALUES (12, 1, '已确认', '2020-06-08T09:48:09');
INSERT INTO `order_info` VALUES (13, 1, '已确认', '2020-06-08T09:49:39');
INSERT INTO `order_info` VALUES (14, 1, '已确认', '2020-06-08T09:52:07');
INSERT INTO `order_info` VALUES (15, 1, '已确认', '2020-06-08T09:52:52');
INSERT INTO `order_info` VALUES (16, 1, '已确认', '2020-06-08T09:54:38');
INSERT INTO `order_info` VALUES (17, 1, '已确认', '2020-06-08T09:55:19');
INSERT INTO `order_info` VALUES (18, 1, '已确认', '2020-06-08T13:52:53');
INSERT INTO `order_info` VALUES (19, 1, '已确认', '2020-06-08T14:04:41');
INSERT INTO `order_info` VALUES (20, 2, '交易成功', '2020-06-08T14:37:49');
INSERT INTO `order_info` VALUES (21, 2, '已确认', '2020-06-08T14:39:57');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `question` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `answer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_date` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `favorite` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES (1, 'hjq', '男', '123321', '广东省湛江市', 'hjq@qq.com', '您的出生地是？', '广东湛江', '2020-03-19', '');
INSERT INTO `user_info` VALUES (2, 'test', '男', 'test', '测试', 'test@qq.com', '您的出生地是？', '测试', '2020-03-19', '');
INSERT INTO `user_info` VALUES (3, 'admin', '男', 'admin', '123', '123@qq.com', '您的出生地是？', '12312', '2020-03-19', '');
INSERT INTO `user_info` VALUES (4, 'test2', '男', 'test', '测试', 'test@qq.com', '您的出生地是？', '测试', '2020-03-19', '');
INSERT INTO `user_info` VALUES (5, 'test3', '男', 'test3', '测试', 'test@qq.com', '您的出生地是？', '测试', '2020-03-19', '');
INSERT INTO `user_info` VALUES (6, 'springboot', '男', 'admin', 'gdzj', '111@qq.com', '111', '111', '2020-04-30T16:53:43', '');
INSERT INTO `user_info` VALUES (7, 'springbootl', '男', 'admin', 'gdzj', '111@qq.com', '111', '111', '2020-05-03T10:40:06', '');
INSERT INTO `user_info` VALUES (8, 't1t1', '女', 'tttt', '1', '1@qq.com', '您的出生地是？', '1', '2020-06-02T19:27:14', NULL);

SET FOREIGN_KEY_CHECKS = 1;
