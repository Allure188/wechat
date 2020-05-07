/*
 Navicat MySQL Data Transfer

 Source Server         : user
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : text

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 07/05/2020 08:54:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for litte
-- ----------------------------
DROP TABLE IF EXISTS `litte`;
CREATE TABLE `litte`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of litte
-- ----------------------------
INSERT INTO `litte` VALUES (1, '热门', '/image/01.png');
INSERT INTO `litte` VALUES (2, '推荐', '/image/02.png');
INSERT INTO `litte` VALUES (3, '最新', '/image/03.png');
INSERT INTO `litte` VALUES (4, '听歌识曲', '/image/04.png');

-- ----------------------------
-- Table structure for lunbo
-- ----------------------------
DROP TABLE IF EXISTS `lunbo`;
CREATE TABLE `lunbo`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lunbo
-- ----------------------------
INSERT INTO `lunbo` VALUES (1, '/image/1.jpg');
INSERT INTO `lunbo` VALUES (2, '/image/2.jpg');
INSERT INTO `lunbo` VALUES (3, '/image/3.jpg');
INSERT INTO `lunbo` VALUES (4, '/image/4.jpg');

-- ----------------------------
-- Table structure for music
-- ----------------------------
DROP TABLE IF EXISTS `music`;
CREATE TABLE `music`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `singer` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coverImgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of music
-- ----------------------------
INSERT INTO `music` VALUES (1, '天后', '薛之谦', 'http://img4.imgtn.bdimg.com/it/u=4191968015,369030', 'http://mp.111ttt.cn/mp3music/33528305.mp3');
INSERT INTO `music` VALUES (2, '只因你太美', '蔡徐坤', 'http://img4.imgtn.bdimg.com/it/u=4191968015,3690303687&fm=26&gp=0.jpg', 'http://www.170mv.com/kw/antiserver.kuwo.cn/anti.s?rid=MUSIC_67307403&response=res&format=mp3|aac&type=convert_url&br=128kmp3&agent=iPhone&callback=getlink&jpcallback=getlink.mp3');

-- ----------------------------
-- Table structure for song
-- ----------------------------
DROP TABLE IF EXISTS `song`;
CREATE TABLE `song`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `singer` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `coverImgUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `src` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of song
-- ----------------------------
INSERT INTO `song` VALUES (1, '你还要我怎样', '薛之谦', 'http://img4.imgtn.bdimg.com/it/u=4191968015,369030', 'http://mp.111ttt.cn/mp3music/33528305.mp3');
INSERT INTO `song` VALUES (2, '不将就', '李荣浩', '', '');
INSERT INTO `song` VALUES (3, '只因你太美', '蔡徐坤', 'http://img4.imgtn.bdimg.com/it/u=4191968015,3690303687&fm=26&gp=0.jpg', 'aac&type=convert_url&br=128kmp3&agent=iPhone&callback=getlink&jpcallback=getlink.mp3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'opyqb5Y1Qgixwp9p7hhX7Ksq85Vg', 'VE9hU7Uumciw03xUDYxgryCjMBua5OBf');

-- ----------------------------
-- Table structure for wechat
-- ----------------------------
DROP TABLE IF EXISTS `wechat`;
CREATE TABLE `wechat`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desc` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `watch` int(10) NOT NULL,
  `star` int(25) NOT NULL,
  `image` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `picture` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `music_id` int(25) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wechat
-- ----------------------------
INSERT INTO `wechat` VALUES (1, '111', '222', '333', 111, 232, '/image/1.jpg', '/image/1.jpg', 1);
INSERT INTO `wechat` VALUES (2, '安全', '变形金刚', 'qdfvfgadsvfdgres', 211, 132, '/image/2.jpg', '/image/2.jpg', 2);

-- ----------------------------
-- Table structure for xm
-- ----------------------------
DROP TABLE IF EXISTS `xm`;
CREATE TABLE `xm`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sing` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `geshou` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tui` int(1) NOT NULL,
  `music_id` int(10) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xm
-- ----------------------------
INSERT INTO `xm` VALUES (1, '/pages/image/1.jpg', '你还要我怎样', '薛之谦', 0, 1);
INSERT INTO `xm` VALUES (2, '/pages/image/2.jpg', '不将就', '李荣浩', 0, 2);
INSERT INTO `xm` VALUES (3, '/pages/image/3.jpg', '只因你太美', '蔡徐坤', 1, 3);
INSERT INTO `xm` VALUES (4, '/pages/image/4.jpg', '向天再借500年', '韩磊', 1, 4);
INSERT INTO `xm` VALUES (5, '/pages/image/2.jpg', '年少有为', '李荣浩', 1, 5);
INSERT INTO `xm` VALUES (6, '/pages/image/1.jpg', '演员', '薛之谦', 0, 6);

SET FOREIGN_KEY_CHECKS = 1;
