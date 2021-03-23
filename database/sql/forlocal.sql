/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : adms

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 23/03/2021 15:36:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, 'HRD');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NULL DEFAULT NULL,
  `permission_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `group_id`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissions_group_id`(`group_id`) USING BTREE,
  INDEX `auth_group_permissions_permission_id`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------
INSERT INTO `auth_group_permissions` VALUES (1, 1, 96);
INSERT INTO `auth_group_permissions` VALUES (2, 1, 64);
INSERT INTO `auth_group_permissions` VALUES (3, 1, 66);
INSERT INTO `auth_group_permissions` VALUES (4, 1, 101);
INSERT INTO `auth_group_permissions` VALUES (5, 1, 102);
INSERT INTO `auth_group_permissions` VALUES (6, 1, 65);
INSERT INTO `auth_group_permissions` VALUES (7, 1, 49);
INSERT INTO `auth_group_permissions` VALUES (8, 1, 50);
INSERT INTO `auth_group_permissions` VALUES (9, 1, 51);
INSERT INTO `auth_group_permissions` VALUES (10, 1, 52);
INSERT INTO `auth_group_permissions` VALUES (11, 1, 53);
INSERT INTO `auth_group_permissions` VALUES (12, 1, 54);
INSERT INTO `auth_group_permissions` VALUES (13, 1, 55);
INSERT INTO `auth_group_permissions` VALUES (14, 1, 56);
INSERT INTO `auth_group_permissions` VALUES (15, 1, 57);
INSERT INTO `auth_group_permissions` VALUES (16, 1, 58);
INSERT INTO `auth_group_permissions` VALUES (17, 1, 59);
INSERT INTO `auth_group_permissions` VALUES (18, 1, 63);

-- ----------------------------
-- Table structure for auth_message
-- ----------------------------
DROP TABLE IF EXISTS `auth_message`;
CREATE TABLE `auth_message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `auth_message_user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_message
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `content_type_id`(`content_type_id`, `codename`) USING BTREE,
  INDEX `auth_permission_content_type_id`(`content_type_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add session', 1, 'add_session');
INSERT INTO `auth_permission` VALUES (2, 'Can change session', 1, 'change_session');
INSERT INTO `auth_permission` VALUES (3, 'Can delete session', 1, 'delete_session');
INSERT INTO `auth_permission` VALUES (4, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (5, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (8, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (9, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add message', 5, 'add_message');
INSERT INTO `auth_permission` VALUES (14, 'Can change message', 5, 'change_message');
INSERT INTO `auth_permission` VALUES (15, 'Can delete message', 5, 'delete_message');
INSERT INTO `auth_permission` VALUES (16, 'Can add content type', 6, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can change content type', 6, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can delete content type', 6, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can add log entry', 7, 'add_logentry');
INSERT INTO `auth_permission` VALUES (20, 'Can change log entry', 7, 'change_logentry');
INSERT INTO `auth_permission` VALUES (21, 'Can delete log entry', 7, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (22, 'Can add department', 8, 'add_department');
INSERT INTO `auth_permission` VALUES (23, 'Can change department', 8, 'change_department');
INSERT INTO `auth_permission` VALUES (24, 'Can delete department', 8, 'delete_department');
INSERT INTO `auth_permission` VALUES (25, 'Can add device', 9, 'add_iclock');
INSERT INTO `auth_permission` VALUES (26, 'Can change device', 9, 'change_iclock');
INSERT INTO `auth_permission` VALUES (27, 'Can delete device', 9, 'delete_iclock');
INSERT INTO `auth_permission` VALUES (28, 'Pause device', 9, 'pause_iclock');
INSERT INTO `auth_permission` VALUES (29, 'Resume a resumed device', 9, 'resume_iclock');
INSERT INTO `auth_permission` VALUES (30, 'Upgrade firmware', 9, 'upgradefw_iclock');
INSERT INTO `auth_permission` VALUES (31, 'Copy data between device', 9, 'copyudata_iclock');
INSERT INTO `auth_permission` VALUES (32, 'Upload data again', 9, 'reloaddata_iclock');
INSERT INTO `auth_permission` VALUES (33, 'Upload transactions again', 9, 'reloadlogdata_iclock');
INSERT INTO `auth_permission` VALUES (34, 'Refresh device information', 9, 'info_iclock');
INSERT INTO `auth_permission` VALUES (35, 'Reboot device', 9, 'reboot_iclock');
INSERT INTO `auth_permission` VALUES (36, 'Upload new data', 9, 'loaddata_iclock');
INSERT INTO `auth_permission` VALUES (37, 'Clear data in device', 9, 'cleardata_iclock');
INSERT INTO `auth_permission` VALUES (38, 'Clear transactions in device', 9, 'clearlog_iclock');
INSERT INTO `auth_permission` VALUES (39, 'Set options of device', 9, 'devoption_iclock');
INSERT INTO `auth_permission` VALUES (40, 'Reset Password in device', 9, 'resetPwd_iclock');
INSERT INTO `auth_permission` VALUES (41, 'Restore employee to device', 9, 'restoreData_iclock');
INSERT INTO `auth_permission` VALUES (42, 'Output unlock signal', 9, 'unlock_iclock');
INSERT INTO `auth_permission` VALUES (43, 'Terminate alarm signal', 9, 'unalarm_iclock');
INSERT INTO `auth_permission` VALUES (44, 'Clear all employee', 9, 'clear_all_employee');
INSERT INTO `auth_permission` VALUES (45, 'Upgrade by u-pack', 9, 'upgrade_by_u-pack');
INSERT INTO `auth_permission` VALUES (46, 'Can add admin granted department', 10, 'add_deptadmin');
INSERT INTO `auth_permission` VALUES (47, 'Can change admin granted department', 10, 'change_deptadmin');
INSERT INTO `auth_permission` VALUES (48, 'Can delete admin granted department', 10, 'delete_deptadmin');
INSERT INTO `auth_permission` VALUES (49, 'Can add employee', 11, 'add_employee');
INSERT INTO `auth_permission` VALUES (50, 'Can change employee', 11, 'change_employee');
INSERT INTO `auth_permission` VALUES (51, 'Can delete employee', 11, 'delete_employee');
INSERT INTO `auth_permission` VALUES (52, 'Transfer employee to the device', 11, 'toDev_employee');
INSERT INTO `auth_permission` VALUES (53, 'Transfer to the device templately', 11, 'toDevWithin_employee');
INSERT INTO `auth_permission` VALUES (54, 'Delete employee from the device', 11, 'delDev_employee');
INSERT INTO `auth_permission` VALUES (55, 'Employee leave', 11, 'empLeave_employee');
INSERT INTO `auth_permission` VALUES (56, 'Move employee to a new device', 11, 'mvToDev_employee');
INSERT INTO `auth_permission` VALUES (57, 'Change employee\'s department', 11, 'toDepart_employee');
INSERT INTO `auth_permission` VALUES (58, 'Enroll employee\'s fingerprint', 11, 'enroll_employee');
INSERT INTO `auth_permission` VALUES (59, 'DataBase', 11, 'optionsDatabase_employee');
INSERT INTO `auth_permission` VALUES (60, 'Can add fingerprint', 12, 'add_fptemp');
INSERT INTO `auth_permission` VALUES (61, 'Can change fingerprint', 12, 'change_fptemp');
INSERT INTO `auth_permission` VALUES (62, 'Can delete fingerprint', 12, 'delete_fptemp');
INSERT INTO `auth_permission` VALUES (63, 'Can add transaction', 13, 'add_transaction');
INSERT INTO `auth_permission` VALUES (64, 'Can change transaction', 13, 'change_transaction');
INSERT INTO `auth_permission` VALUES (65, 'Can delete transaction', 13, 'delete_transaction');
INSERT INTO `auth_permission` VALUES (66, 'Clear Obsolete Data', 13, 'clearObsoleteData_transaction');
INSERT INTO `auth_permission` VALUES (67, 'Can add device operation log', 14, 'add_oplog');
INSERT INTO `auth_permission` VALUES (68, 'Can change device operation log', 14, 'change_oplog');
INSERT INTO `auth_permission` VALUES (69, 'Can delete device operation log', 14, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (70, 'Transaction Monitor', 14, 'monitor_oplog');
INSERT INTO `auth_permission` VALUES (71, 'Can add data from device', 15, 'add_devlog');
INSERT INTO `auth_permission` VALUES (72, 'Can change data from device', 15, 'change_devlog');
INSERT INTO `auth_permission` VALUES (73, 'Can delete data from device', 15, 'delete_devlog');
INSERT INTO `auth_permission` VALUES (74, 'Can add command to device', 16, 'add_devcmds');
INSERT INTO `auth_permission` VALUES (75, 'Can change command to device', 16, 'change_devcmds');
INSERT INTO `auth_permission` VALUES (76, 'Can delete command to device', 16, 'delete_devcmds');
INSERT INTO `auth_permission` VALUES (77, 'Can add public information', 17, 'add_messages');
INSERT INTO `auth_permission` VALUES (78, 'Can change public information', 17, 'change_messages');
INSERT INTO `auth_permission` VALUES (79, 'Can delete public information', 17, 'delete_messages');
INSERT INTO `auth_permission` VALUES (80, 'Can add information subscription', 18, 'add_iclockmsg');
INSERT INTO `auth_permission` VALUES (81, 'Can change information subscription', 18, 'change_iclockmsg');
INSERT INTO `auth_permission` VALUES (82, 'Can delete information subscription', 18, 'delete_iclockmsg');
INSERT INTO `auth_permission` VALUES (83, 'Can add administration log', 19, 'add_adminlog');
INSERT INTO `auth_permission` VALUES (84, 'Can change administration log', 19, 'change_adminlog');
INSERT INTO `auth_permission` VALUES (85, 'Can delete administration log', 19, 'delete_adminlog');
INSERT INTO `auth_permission` VALUES (86, 'Can browse ContentType', 6, 'browse_contenttype');
INSERT INTO `auth_permission` VALUES (87, 'Can browse DeptAdmin', 10, 'browse_deptadmin');
INSERT INTO `auth_permission` VALUES (88, 'Can browse Group', 3, 'browse_group');
INSERT INTO `auth_permission` VALUES (89, 'Can browse IclockMsg', 18, 'browse_iclockmsg');
INSERT INTO `auth_permission` VALUES (90, 'Can browse Permission', 2, 'browse_permission');
INSERT INTO `auth_permission` VALUES (91, 'Can browse User', 4, 'browse_user');
INSERT INTO `auth_permission` VALUES (92, 'Can browse adminLog', 19, 'browse_adminlog');
INSERT INTO `auth_permission` VALUES (93, 'Can browse department', 8, 'browse_department');
INSERT INTO `auth_permission` VALUES (94, 'Can browse devcmds', 16, 'browse_devcmds');
INSERT INTO `auth_permission` VALUES (95, 'Can browse devlog', 15, 'browse_devlog');
INSERT INTO `auth_permission` VALUES (96, 'Can browse employee', 11, 'browse_employee');
INSERT INTO `auth_permission` VALUES (97, 'Can browse fptemp', 12, 'browse_fptemp');
INSERT INTO `auth_permission` VALUES (98, 'Can browse iclock', 9, 'browse_iclock');
INSERT INTO `auth_permission` VALUES (99, 'Can browse messages', 17, 'browse_messages');
INSERT INTO `auth_permission` VALUES (100, 'Can browse oplog', 14, 'browse_oplog');
INSERT INTO `auth_permission` VALUES (101, 'Can browse transaction', 13, 'browse_transaction');
INSERT INTO `auth_permission` VALUES (102, 'Init database', 13, 'init_database');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `last_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(75) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_staff` tinyint(1) NULL DEFAULT NULL,
  `is_active` tinyint(1) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NULL DEFAULT NULL,
  `last_login` datetime(0) NULL DEFAULT NULL,
  `date_joined` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'admin', '', '', 'masyogie@gmail.com', 'sha1$509c5$593662c5ed4930f9dc19c81b9249c69664bba975', 1, 1, 1, '2021-03-17 18:15:46', '2014-01-29 09:22:32');
INSERT INTO `auth_user` VALUES (2, 'regina', '', '', 'regina@anomali.co.id', 'sha1$70401$b740ea7a8286be3c22c58abc613cf03a2dd3a833', 1, 1, 0, '2021-03-12 20:30:08', '2021-03-12 20:26:55');
INSERT INTO `auth_user` VALUES (3, 'rama', '', '', '', 'sha1$df625$efa540df63a289188d964b7c91a6fb9851df1dc5', 1, 1, 0, '2021-03-15 14:55:01', '2021-03-15 12:43:12');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `group_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_user_id`(`user_id`) USING BTREE,
  INDEX `auth_user_groups_group_id`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO `auth_user_groups` VALUES (1, 3, 1);

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `permission_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permissions_user_id`(`user_id`) USING BTREE,
  INDEX `auth_user_user_permissions_permission_id`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for checkinout
-- ----------------------------
DROP TABLE IF EXISTS `checkinout`;
CREATE TABLE `checkinout`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `checktime` datetime(0) NULL DEFAULT NULL,
  `checktype` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `verifycode` int(11) NULL DEFAULT NULL,
  `SN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sensorid` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WorkCode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Reserved` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `userid`(`userid`, `checktime`) USING BTREE,
  INDEX `checkinout_userid`(`userid`) USING BTREE,
  INDEX `checkinout_SN`(`SN`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 254 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of checkinout
-- ----------------------------
INSERT INTO `checkinout` VALUES (20, 42, '2021-03-13 09:53:59', '1', 1, 'BWXP205260321', '3', '', '0');
INSERT INTO `checkinout` VALUES (21, 46, '2021-03-13 09:55:57', '1', 1, 'BWXP205260321', '3', '', '0');
INSERT INTO `checkinout` VALUES (19, 5, '2021-03-12 16:40:08', '1', 1, 'BWXP205260321', '3', '', '0');
INSERT INTO `checkinout` VALUES (18, 3, '2021-03-12 16:39:58', '1', 1, 'BWXP205260321', '3', '', '0');
INSERT INTO `checkinout` VALUES (16, 42, '2021-03-12 16:39:47', '1', 1, 'BWXP205260321', '3', '', '0');
INSERT INTO `checkinout` VALUES (17, 4, '2021-03-12 16:39:52', '1', 1, 'BWXP205260321', '3', '', '0');
INSERT INTO `checkinout` VALUES (22, 42, '2021-03-13 10:04:39', '1', 1, 'BWXP205260321', '3', '', '0');
INSERT INTO `checkinout` VALUES (23, 45, '2021-03-13 10:05:27', '1', 1, 'BWXP205260321', '3', '', '0');
INSERT INTO `checkinout` VALUES (24, 42, '2021-03-13 10:07:52', '1', 1, 'BWXP205260321', '3', '', '0');
INSERT INTO `checkinout` VALUES (25, 43, '2021-03-13 10:08:27', '1', 1, 'BWXP205260321', '3', '', '0');
INSERT INTO `checkinout` VALUES (26, 66, '2021-03-13 11:40:39', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (27, 65, '2021-03-13 11:44:40', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (28, 2, '2021-03-13 11:46:33', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (29, 65, '2021-03-13 12:10:04', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (30, 3, '2021-03-13 13:40:54', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (31, 1, '2021-03-13 13:47:29', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (32, 3, '2021-03-13 13:48:07', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (33, 53, '2021-03-13 13:50:22', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (34, 55, '2021-03-13 13:52:25', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (35, 57, '2021-03-13 13:53:22', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (36, 62, '2021-03-13 13:54:55', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (37, 54, '2021-03-13 13:58:20', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (38, 60, '2021-03-13 13:58:26', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (39, 61, '2021-03-13 13:59:41', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (40, 64, '2021-03-13 14:01:27', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (41, 4, '2021-03-13 14:02:19', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (42, 5, '2021-03-13 14:02:27', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (43, 63, '2021-03-13 14:03:10', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (44, 5, '2021-03-13 14:21:43', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (45, 4, '2021-03-13 14:21:50', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (46, 42, '2021-03-13 14:24:22', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (47, 50, '2021-03-13 14:26:39', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (48, 44, '2021-03-13 14:28:45', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (49, 59, '2021-03-13 14:30:13', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (50, 49, '2021-03-13 14:30:34', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (51, 48, '2021-03-13 14:31:39', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (52, 56, '2021-03-13 14:32:09', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (53, 53, '2021-03-13 14:43:06', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (54, 58, '2021-03-13 14:43:58', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (55, 61, '2021-03-13 15:11:12', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (56, 60, '2021-03-13 15:11:31', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (57, 55, '2021-03-13 15:11:59', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (58, 62, '2021-03-13 15:12:05', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (59, 54, '2021-03-13 15:12:12', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (60, 45, '2021-03-13 16:01:22', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (61, 46, '2021-03-13 16:01:32', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (62, 43, '2021-03-13 16:17:26', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (63, 42, '2021-03-13 16:44:01', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (64, 64, '2021-03-13 17:03:13', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (65, 56, '2021-03-13 20:29:55', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (66, 57, '2021-03-13 20:30:11', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (67, 59, '2021-03-13 20:31:16', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (68, 58, '2021-03-13 20:31:36', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (69, 63, '2021-03-13 20:32:45', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (70, 49, '2021-03-13 20:51:42', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (71, 50, '2021-03-13 20:51:45', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (72, 44, '2021-03-13 20:51:49', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (73, 48, '2021-03-13 20:52:06', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (74, 60, '2021-03-14 07:45:01', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (75, 62, '2021-03-14 08:33:52', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (76, 55, '2021-03-14 08:35:12', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (77, 61, '2021-03-14 08:37:46', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (78, 54, '2021-03-14 08:37:56', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (79, 43, '2021-03-14 09:36:05', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (80, 46, '2021-03-14 09:41:44', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (81, 45, '2021-03-14 09:41:49', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (82, 42, '2021-03-14 09:55:32', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (83, 47, '2021-03-14 09:56:18', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (84, 59, '2021-03-14 10:16:48', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (85, 58, '2021-03-14 13:21:44', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (86, 57, '2021-03-14 13:22:54', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (87, 49, '2021-03-14 13:31:17', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (88, 56, '2021-03-14 13:33:09', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (89, 63, '2021-03-14 13:33:25', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (90, 50, '2021-03-14 13:35:10', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (91, 44, '2021-03-14 13:35:16', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (92, 64, '2021-03-14 13:43:29', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (93, 48, '2021-03-14 13:43:30', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (94, 7, '2021-03-13 14:34:08', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (95, 51, '2021-03-13 14:36:18', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (96, 7, '2021-03-13 14:38:17', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (97, 7, '2021-03-13 14:40:11', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (98, 51, '2021-03-13 14:43:11', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (99, 51, '2021-03-13 14:44:12', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (100, 51, '2021-03-13 21:21:25', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (101, 51, '2021-03-13 21:26:00', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (102, 51, '2021-03-13 21:38:37', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (103, 51, '2021-03-13 21:40:35', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (104, 51, '2021-03-13 21:52:38', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (105, 51, '2021-03-13 21:53:58', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (106, 61, '2021-03-14 15:11:50', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (107, 60, '2021-03-14 15:12:13', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (108, 55, '2021-03-14 15:12:37', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (109, 62, '2021-03-14 15:13:40', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (110, 54, '2021-03-14 15:13:48', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (111, 45, '2021-03-14 16:07:30', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (112, 46, '2021-03-14 16:07:36', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (113, 43, '2021-03-14 16:11:06', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (114, 47, '2021-03-14 16:11:13', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (115, 59, '2021-03-14 17:38:46', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (116, 63, '2021-03-14 20:23:25', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (117, 56, '2021-03-14 20:24:46', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (118, 57, '2021-03-14 20:24:54', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (119, 58, '2021-03-14 20:26:05', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (120, 64, '2021-03-14 20:26:18', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (121, 42, '2021-03-14 20:53:17', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (122, 49, '2021-03-14 20:53:28', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (123, 50, '2021-03-14 20:53:35', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (124, 44, '2021-03-14 20:53:40', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (125, 48, '2021-03-14 20:53:48', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (126, 63, '2021-03-15 07:58:16', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (127, 59, '2021-03-15 08:13:46', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (128, 56, '2021-03-15 08:29:23', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (129, 57, '2021-03-15 08:33:13', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (130, 49, '2021-03-15 09:43:21', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (131, 50, '2021-03-15 09:43:27', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (132, 44, '2021-03-15 09:43:32', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (133, 48, '2021-03-15 09:44:15', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (134, 42, '2021-03-15 09:44:27', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (135, 64, '2021-03-15 11:58:24', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (136, 54, '2021-03-15 12:57:51', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (137, 60, '2021-03-15 12:58:43', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (138, 43, '2021-03-15 13:05:14', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (139, 51, '2021-03-15 13:06:15', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (140, 47, '2021-03-15 13:28:31', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (141, 55, '2021-03-15 13:28:32', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (142, 45, '2021-03-15 13:43:47', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (143, 46, '2021-03-15 13:43:53', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (144, 62, '2021-03-15 13:45:50', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (145, 56, '2021-03-15 15:11:28', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (146, 57, '2021-03-15 15:11:42', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (147, 53, '2021-03-15 15:21:48', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (148, 59, '2021-03-15 15:40:56', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (149, 63, '2021-03-15 15:42:41', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (150, 49, '2021-03-15 16:00:05', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (151, 44, '2021-03-15 16:00:11', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (152, 50, '2021-03-15 16:00:19', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (153, 48, '2021-03-15 16:01:00', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (154, 42, '2021-03-15 16:01:15', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (155, 54, '2021-03-15 20:16:51', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (156, 62, '2021-03-15 20:16:59', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (157, 55, '2021-03-15 20:17:09', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (158, 64, '2021-03-15 20:17:19', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (159, 60, '2021-03-15 20:17:33', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (160, 46, '2021-03-15 20:55:29', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (161, 45, '2021-03-15 20:55:44', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (162, 43, '2021-03-15 20:55:56', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (163, 47, '2021-03-15 20:56:02', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (164, 58, '2021-03-16 07:48:47', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (165, 63, '2021-03-16 08:08:00', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (166, 56, '2021-03-16 08:08:09', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (167, 59, '2021-03-16 08:29:08', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (168, 48, '2021-03-16 09:38:50', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (169, 50, '2021-03-16 09:40:08', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (170, 44, '2021-03-16 09:43:13', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (171, 42, '2021-03-16 12:52:04', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (172, 55, '2021-03-16 13:08:52', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (173, 54, '2021-03-16 13:16:09', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (174, 47, '2021-03-16 13:33:57', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (175, 45, '2021-03-16 13:37:18', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (176, 46, '2021-03-16 13:42:27', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (177, 62, '2021-03-16 13:45:14', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (178, 64, '2021-03-16 13:45:30', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (179, 56, '2021-03-16 15:06:59', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (180, 59, '2021-03-16 15:07:46', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (181, 63, '2021-03-16 15:07:58', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (182, 58, '2021-03-16 15:11:10', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (183, 44, '2021-03-16 16:01:20', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (184, 50, '2021-03-16 16:01:27', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (185, 48, '2021-03-16 16:07:03', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (186, 7, '2021-03-16 16:36:17', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (187, 7, '2021-03-16 16:37:33', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (188, 51, '2021-03-15 18:51:16', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (189, 66, '2021-03-16 16:39:28', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (190, 66, '2021-03-16 16:42:00', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (191, 66, '2021-03-16 16:44:30', '0', 1, 'BWXP203960242', '1', '', '0');
INSERT INTO `checkinout` VALUES (192, 65, '2021-03-16 17:22:22', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (193, 65, '2021-03-16 17:22:28', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (194, 65, '2021-03-16 17:22:41', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (195, 6, '2021-03-16 17:22:48', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (196, 6, '2021-03-16 17:22:52', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (197, 65, '2021-03-16 18:28:21', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (198, 65, '2021-03-16 18:28:37', '1', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (199, 65, '2021-03-16 18:41:33', '2', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (200, 6, '2021-03-16 18:55:17', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (201, 66, '2021-03-16 19:11:35', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (202, 66, '2021-03-16 19:12:49', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (203, 66, '2021-03-16 19:16:33', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (204, 66, '2021-03-16 19:49:57', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (205, 66, '2021-03-16 19:50:01', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (206, 66, '2021-03-16 19:50:05', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (207, 66, '2021-03-16 19:50:06', '0', 1, 'BJ36195260254', '1', '', '0');
INSERT INTO `checkinout` VALUES (208, 62, '2021-03-16 20:25:27', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (209, 54, '2021-03-16 20:25:34', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (210, 64, '2021-03-16 20:25:41', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (211, 55, '2021-03-16 20:25:50', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (212, 42, '2021-03-16 20:47:41', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (213, 45, '2021-03-16 20:47:50', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (214, 46, '2021-03-16 20:47:59', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (215, 47, '2021-03-16 20:48:14', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (216, 58, '2021-03-17 07:47:30', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (217, 63, '2021-03-17 08:10:30', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (218, 56, '2021-03-17 08:10:44', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (219, 57, '2021-03-17 08:21:55', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (220, 42, '2021-03-17 09:26:25', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (221, 48, '2021-03-17 09:29:17', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (222, 49, '2021-03-17 09:32:22', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (223, 44, '2021-03-17 09:32:35', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (224, 60, '2021-03-17 13:06:51', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (225, 55, '2021-03-17 13:29:02', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (226, 64, '2021-03-17 13:36:20', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (227, 62, '2021-03-17 13:41:04', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (228, 46, '2021-03-17 13:43:54', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (229, 47, '2021-03-17 13:46:05', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (230, 43, '2021-03-17 13:51:11', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (231, 58, '2021-03-17 15:05:58', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (232, 56, '2021-03-17 15:06:09', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (233, 57, '2021-03-17 15:06:20', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (234, 63, '2021-03-17 15:07:26', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (235, 49, '2021-03-17 16:01:30', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (236, 44, '2021-03-17 16:01:44', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (237, 48, '2021-03-17 16:08:42', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (238, 42, '2021-03-17 18:30:52', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (239, 55, '2021-03-17 20:17:33', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (240, 64, '2021-03-17 20:17:47', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (241, 62, '2021-03-17 20:18:01', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (242, 43, '2021-03-17 20:26:54', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (243, 46, '2021-03-17 20:27:16', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (244, 47, '2021-03-17 20:27:34', '1', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (245, 60, '2021-03-17 20:30:14', '1', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (246, 58, '2021-03-18 07:56:43', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (247, 57, '2021-03-18 08:23:13', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (248, 56, '2021-03-18 08:26:24', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (249, 59, '2021-03-18 08:32:37', '0', 1, 'BWXP205260364', '9', '', '0');
INSERT INTO `checkinout` VALUES (250, 42, '2021-03-18 09:13:33', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (251, 48, '2021-03-18 09:15:48', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (252, 49, '2021-03-18 09:28:33', '0', 1, 'BWXP205260321', '10', '', '0');
INSERT INTO `checkinout` VALUES (253, 50, '2021-03-18 09:36:01', '0', 1, 'BWXP205260321', '10', '', '0');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments`  (
  `DeptID` int(11) NOT NULL,
  `DeptName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `supdeptid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`DeptID`) USING BTREE,
  INDEX `DEPTNAME`(`DeptName`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES (1, 'ALC - JAKARTA', 0);
INSERT INTO `departments` VALUES (2, 'ALT - JAKARTA', 0);
INSERT INTO `departments` VALUES (3, 'ATT - JAKARTA', 0);
INSERT INTO `departments` VALUES (4, 'ALA - JAKARTA', 0);
INSERT INTO `departments` VALUES (5, 'AKS - JAKARTA', 0);
INSERT INTO `departments` VALUES (6, 'TMC - JAKARTA', 0);
INSERT INTO `departments` VALUES (7, 'ADL - JAKARTA', 0);
INSERT INTO `departments` VALUES (8, 'AML - JAKARTA', 0);
INSERT INTO `departments` VALUES (9, 'AKS - SUKABUMI', 5);
INSERT INTO `departments` VALUES (10, 'AKS - KUTABUMI', 5);

-- ----------------------------
-- Table structure for devcmds
-- ----------------------------
DROP TABLE IF EXISTS `devcmds`;
CREATE TABLE `devcmds`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SN_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CmdContent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CmdCommitTime` datetime(0) NULL DEFAULT NULL,
  `CmdTransTime` datetime(0) NULL DEFAULT NULL,
  `CmdOverTime` datetime(0) NULL DEFAULT NULL,
  `CmdReturn` int(11) NULL DEFAULT NULL,
  `User_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `devcmds_SN_id`(`SN_id`) USING BTREE,
  INDEX `devcmds_User_id`(`User_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 327 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of devcmds
-- ----------------------------
INSERT INTO `devcmds` VALUES (1, 'BWXP203960242', 'DATA USER PIN=1	Name=Ika Aersianti Dewi	Pri=0				Grp=1', '2021-03-12 11:04:44', '2021-03-12 11:04:49', '2021-03-12 11:04:49', 0, NULL);
INSERT INTO `devcmds` VALUES (2, 'BWXP203960242', 'DATA USER PIN=1	Name=Ika Arsianti Dewi	Pri=0				Grp=1', '2021-03-12 11:04:58', '2021-03-12 11:04:58', '2021-03-12 11:04:59', 0, NULL);
INSERT INTO `devcmds` VALUES (3, 'BWXP203960242', 'REBOOT', '2021-03-12 11:39:01', '2021-03-12 11:39:06', '2021-03-12 11:39:06', 0, NULL);
INSERT INTO `devcmds` VALUES (4, 'BWXP203960242', 'INFO', '2021-03-12 11:40:00', '2021-03-12 11:41:43', '2021-03-12 11:41:44', 0, NULL);
INSERT INTO `devcmds` VALUES (5, 'BWXP203960242', 'CHECK', '2021-03-12 11:52:54', '2021-03-12 11:53:01', '2021-03-12 11:53:01', 0, NULL);
INSERT INTO `devcmds` VALUES (6, 'BWXP203960242', 'CHECK', '2021-03-12 11:54:27', '2021-03-12 11:54:31', '2021-03-12 11:54:31', 0, NULL);
INSERT INTO `devcmds` VALUES (7, 'BWXP203960242', 'DATA DEL_USER PIN=6', '2021-03-12 12:00:54', '2021-03-12 12:01:00', '2021-03-12 12:01:01', 0, NULL);
INSERT INTO `devcmds` VALUES (8, 'BWXP203960242', 'DATA USER PIN=2	Name=Fatimatus Sa\'diyah	Pri=0	Passwd=654321		TZ=0000000100000000	Grp=1', '2021-03-12 12:00:54', '2021-03-12 12:01:00', '2021-03-12 12:01:01', 0, NULL);
INSERT INTO `devcmds` VALUES (9, 'BWXP203960242', 'DATA USER PIN=4	Name=Teddy Munawar	Pri=0				Grp=1', '2021-03-12 12:05:30', '2021-03-12 12:05:30', '2021-03-12 12:05:31', 0, NULL);
INSERT INTO `devcmds` VALUES (10, 'BWXP203960242', 'DATA USER PIN=5	Name=Ubayt Kurniawan	Pri=0				Grp=1', '2021-03-12 12:06:37', '2021-03-12 12:06:41', '2021-03-12 12:06:42', 0, NULL);
INSERT INTO `devcmds` VALUES (11, 'BWXP203960242', 'DATA USER PIN=6	Name=Febri Suhandi	Pri=0				Grp=1', '2021-03-12 12:07:38', '2021-03-12 12:07:40', '2021-03-12 12:07:41', 0, NULL);
INSERT INTO `devcmds` VALUES (12, 'BWXP203960242', 'DATA USER PIN=7	Name=Yogyantoro	Pri=0				Grp=1', '2021-03-12 12:08:04', '2021-03-12 12:08:04', '2021-03-12 12:08:05', 0, NULL);
INSERT INTO `devcmds` VALUES (13, 'BWXP203960242', 'DATA USER PIN=3	Name=Fitri Andriani	Pri=0				Grp=1', '2021-03-12 12:08:16', '2021-03-12 12:08:20', '2021-03-12 12:08:21', 0, NULL);
INSERT INTO `devcmds` VALUES (14, 'BWXP203960242', 'DATA USER PIN=1	Name=Ika Arsianti Dewi	Pri=0		Card=[8180CB0600]		Grp=1', '2021-03-12 12:13:48', '2021-03-12 12:13:48', '2021-03-12 12:13:49', 0, NULL);
INSERT INTO `devcmds` VALUES (15, 'BWXP203960242', 'DATA USER PIN=8	Name=Zuleka Endah Pujiastuti	Pri=0		Card=[4647F90600]		Grp=1', '2021-03-12 12:39:22', '2021-03-12 12:39:48', '2021-03-12 12:39:49', 0, NULL);
INSERT INTO `devcmds` VALUES (16, 'BWXP203960242', 'DATA USER PIN=9	Name=Rakhmat Januardy	Pri=0		Card=[576EF90600]		Grp=1', '2021-03-12 12:40:19', '2021-03-12 12:40:21', '2021-03-12 12:40:22', 0, NULL);
INSERT INTO `devcmds` VALUES (17, 'BWXP203960242', 'DATA USER PIN=10	Name=Rahmad Nurhadi	Pri=0		Card=[586EF90600]		Grp=1', '2021-03-12 12:41:04', '2021-03-12 12:41:08', '2021-03-12 12:41:09', 0, NULL);
INSERT INTO `devcmds` VALUES (18, 'BWXP203960242', 'DATA USER PIN=11	Name=Ananda Karina	Pri=0		Card=[B958FA0600]		Grp=1', '2021-03-12 12:41:48', '2021-03-12 12:41:52', '2021-03-12 12:41:53', 0, NULL);
INSERT INTO `devcmds` VALUES (19, 'BWXP203960242', 'DATA USER PIN=12	Name=Mochammad Rila Alafi	Pri=0		Card=[DAA6FA0600]		Grp=1', '2021-03-12 12:42:43', '2021-03-12 12:42:48', '2021-03-12 12:42:48', 0, NULL);
INSERT INTO `devcmds` VALUES (20, 'BWXP203960242', 'DATA USER PIN=13	Name=Jefri	Pri=0				Grp=1', '2021-03-12 14:12:50', '2021-03-12 14:12:50', '2021-03-12 14:12:50', 0, NULL);
INSERT INTO `devcmds` VALUES (21, 'BWXP203960242', 'DATA USER PIN=14	Name=Erwin Nugraha	Pri=0		Card=[BCFE080700]		Grp=1', '2021-03-12 14:14:48', '2021-03-12 14:14:55', '2021-03-12 14:14:56', 0, NULL);
INSERT INTO `devcmds` VALUES (22, 'BWXP203960242', 'DATA USER PIN=15	Name=Daraswati Zakirah	Pri=0		Card=[ED19180700]		Grp=1', '2021-03-12 14:15:28', '2021-03-12 14:15:31', '2021-03-12 14:15:31', 0, NULL);
INSERT INTO `devcmds` VALUES (23, 'BWXP203960242', 'DATA USER PIN=16	Name=Budi Susilo	Pri=0		Card=[DEF2170700]		Grp=1', '2021-03-12 14:16:22', '2021-03-12 14:16:27', '2021-03-12 14:16:27', 0, NULL);
INSERT INTO `devcmds` VALUES (24, 'BWXP203960242', 'DATA USER PIN=17	Name=Suharsono	Pri=0				Grp=1', '2021-03-12 14:18:12', '2021-03-12 14:18:29', '2021-03-12 14:18:29', 0, NULL);
INSERT INTO `devcmds` VALUES (25, 'BWXP203960242', 'DATA USER PIN=18	Name=Ahmad Fauzan	Pri=0		Card=[F019180700]		Grp=1', '2021-03-12 14:18:46', '2021-03-12 14:18:53', '2021-03-12 14:18:53', 0, NULL);
INSERT INTO `devcmds` VALUES (26, 'BWXP203960242', 'DATA USER PIN=17	Name=Suharsono	Pri=0		Card=[DFF2170700]		Grp=1', '2021-03-12 14:21:41', '2021-03-12 14:22:01', '2021-03-12 14:22:02', 0, NULL);
INSERT INTO `devcmds` VALUES (27, 'BWXP203960242', 'DATA USER PIN=19	Name=Syarifah Nuraini	Pri=0		Card=[218F180700]		Grp=1', '2021-03-12 14:22:37', '2021-03-12 14:22:45', '2021-03-12 14:22:46', 0, NULL);
INSERT INTO `devcmds` VALUES (28, 'BWXP203960242', 'DATA USER PIN=20	Name=Nadhea Clarasari Azharia	Pri=0		Card=[D2CB170700]		Grp=1', '2021-03-12 14:23:19', '2021-03-12 14:23:21', '2021-03-12 14:23:22', 0, NULL);
INSERT INTO `devcmds` VALUES (29, 'BWXP203960242', 'DATA USER PIN=21	Name=Asteria Bunga Indah	Pri=0		Card=[43DD180700]		Grp=1', '2021-03-12 14:23:53', '2021-03-12 14:23:54', '2021-03-12 14:23:54', 0, NULL);
INSERT INTO `devcmds` VALUES (30, 'BWXP203960242', 'DATA USER PIN=22	Name=Nicolaas Ehrlich Riwoe	Pri=0		Card=[7452190700]		Grp=1', '2021-03-12 14:24:40', '2021-03-12 14:24:50', '2021-03-12 14:24:50', 0, NULL);
INSERT INTO `devcmds` VALUES (31, 'BWXP203960242', 'DATA USER PIN=23	Name=Ratna Purnamasari	Pri=0		Card=[355C270700]		Grp=1', '2021-03-12 14:25:23', '2021-03-12 14:25:27', '2021-03-12 14:25:27', 0, NULL);
INSERT INTO `devcmds` VALUES (32, 'BWXP203960242', 'DATA USER PIN=24	Name=Bayuadhi Indrayana	Pri=0		Card=[56AA270700]		Grp=1', '2021-03-12 14:26:15', '2021-03-12 14:26:23', '2021-03-12 14:26:24', 0, NULL);
INSERT INTO `devcmds` VALUES (33, 'BWXP203960242', 'DATA USER PIN=25	Name=Chandra Regina	Pri=0		Card=[77F8270700]		Grp=1', '2021-03-12 14:27:29', '2021-03-12 14:27:35', '2021-03-12 14:27:36', 0, NULL);
INSERT INTO `devcmds` VALUES (34, 'BWXP203960242', 'DATA USER PIN=26	Name=Hendri Walesa	Pri=0		Card=[78F8270700]		Grp=1', '2021-03-12 14:28:04', '2021-03-12 14:28:08', '2021-03-12 14:28:08', 0, NULL);
INSERT INTO `devcmds` VALUES (35, 'BWXP203960242', 'DATA USER PIN=27	Name=Alifia Syahda	Pri=0		Card=[891F280700]		Grp=1', '2021-03-12 14:47:10', '2021-03-12 14:47:26', '2021-03-12 14:47:27', 0, NULL);
INSERT INTO `devcmds` VALUES (36, 'BWXP203960242', 'DATA USER PIN=28	Name=Dewi Puspita	Pri=0		Card=[8A1F280700]		Grp=1', '2021-03-12 14:47:47', '2021-03-12 14:47:50', '2021-03-12 14:47:50', 0, NULL);
INSERT INTO `devcmds` VALUES (37, 'BWXP203960242', 'DATA USER PIN=29	Name=Indah Susanti	Pri=0		Card=[1B0E270700]		Grp=1', '2021-03-12 14:48:30', '2021-03-12 14:48:34', '2021-03-12 14:48:34', 0, NULL);
INSERT INTO `devcmds` VALUES (38, 'BWXP203960242', 'DATA USER PIN=30	Name=Fani Sintya Pratiwi	Pri=0		Card=[9C46280700]		Grp=1', '2021-03-12 14:49:26', '2021-03-12 14:49:33', '2021-03-12 14:49:33', 0, NULL);
INSERT INTO `devcmds` VALUES (39, 'BWXP203960242', 'DATA USER PIN=31	Name=Dira Arisman	Pri=0		Card=[9D46280700]		Grp=1', '2021-03-12 14:52:06', '2021-03-12 14:52:17', '2021-03-12 14:52:18', 0, NULL);
INSERT INTO `devcmds` VALUES (40, 'BWXP203960242', 'DATA USER PIN=32	Name=Maulana Fadlan	Pri=0		Card=[1E0E270700]		Grp=1', '2021-03-12 14:52:47', '2021-03-12 14:52:50', '2021-03-12 14:52:50', 0, NULL);
INSERT INTO `devcmds` VALUES (41, 'BWXP203960242', 'DATA USER PIN=33	Name=Muchlis Ramadhan	Pri=0		Card=[AF6D280700]		Grp=1', '2021-03-12 14:53:38', '2021-03-12 14:53:49', '2021-03-12 14:53:49', 0, NULL);
INSERT INTO `devcmds` VALUES (42, 'BWXP203960242', 'DATA USER PIN=34	Name=Mariatul Kiftiah	Pri=0		Card=[00E1F50500]		Grp=1', '2021-03-12 14:55:00', '2021-03-12 14:55:17', '2021-03-12 14:55:17', 0, NULL);
INSERT INTO `devcmds` VALUES (43, 'BWXP203960242', 'DATA USER PIN=35	Name=Yugo Goutomo	Pri=0		Card=[00E1F50500]		Grp=1', '2021-03-12 14:55:39', '2021-03-12 14:55:41', '2021-03-12 14:55:41', 0, NULL);
INSERT INTO `devcmds` VALUES (44, 'BWXP205260321', 'INFO', '2021-03-12 15:03:08', '2021-03-12 15:03:09', '2021-03-12 15:03:20', 0, NULL);
INSERT INTO `devcmds` VALUES (45, 'BWXP205260321', 'CHECK', '2021-03-12 15:03:08', '2021-03-12 15:03:09', '2021-03-12 15:03:23', 0, NULL);
INSERT INTO `devcmds` VALUES (46, 'BWXP205260321', 'CHECK', '2021-03-12 15:04:40', '2021-03-12 15:04:42', '2021-03-12 15:04:42', 0, NULL);
INSERT INTO `devcmds` VALUES (47, 'BWXP205260321', 'CHECK', '2021-03-12 15:54:32', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (48, 'BWXP205260321', 'CHECK', '2021-03-12 15:55:12', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (49, 'BWXP203960242', 'CHECK', '2021-03-12 15:56:35', '2021-03-12 15:56:39', '2021-03-12 15:56:40', 0, NULL);
INSERT INTO `devcmds` VALUES (50, 'BWXP203960242', 'DATA USER PIN=36	Name=Roristua Pandiangan	Pri=0		Card=[E0E2280700]		Grp=1', '2021-03-12 16:00:31', '2021-03-12 16:00:43', '2021-03-12 16:00:43', 0, NULL);
INSERT INTO `devcmds` VALUES (51, 'BWXP203960242', 'DATA USER PIN=37	Name=Tri Puspita Sari	Pri=0		Card=[E1E2280700]		Grp=1', '2021-03-12 16:02:02', '2021-03-12 16:02:11', '2021-03-12 16:02:11', 0, NULL);
INSERT INTO `devcmds` VALUES (52, 'BWXP203960242', 'DATA USER PIN=38	Name=Ahmad Ghozali	Pri=0		Card=[E2E2280700]		Grp=1', '2021-03-12 16:02:43', '2021-03-12 16:02:44', '2021-03-12 16:02:44', 0, NULL);
INSERT INTO `devcmds` VALUES (53, 'BWXP203960242', 'DATA USER PIN=39	Name=Fertho Pasaribu	Pri=0		Card=[7377360700]		Grp=1', '2021-03-12 16:03:17', '2021-03-12 16:03:31', '2021-03-12 16:03:31', 0, NULL);
INSERT INTO `devcmds` VALUES (54, 'BWXP203960242', 'DATA USER PIN=40	Name=Nuruddin Lazuardi	Pri=0		Card=[00E1F50500]		Grp=1', '2021-03-12 16:04:11', '2021-03-12 16:04:15', '2021-03-12 16:04:15', 0, NULL);
INSERT INTO `devcmds` VALUES (55, 'BWXP203960242', 'DATA USER PIN=41	Name=Ebid Dilli Wanto	Pri=0		Card=[849E360700]		Grp=1', '2021-03-12 16:04:51', '2021-03-12 16:04:59', '2021-03-12 16:04:59', 0, NULL);
INSERT INTO `devcmds` VALUES (56, 'BWXP203960242', 'DATA USER PIN=1	Name=Ika Arsianti Dewi	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-12 16:28:00', '2021-03-12 16:28:26', '2021-03-12 16:28:26', 0, NULL);
INSERT INTO `devcmds` VALUES (57, 'BWXP205260321', 'DATA USER PIN=42	Name=Peri Priatna	Pri=0				Grp=1', '2021-03-12 16:36:47', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (58, 'BWXP205260321', 'DATA USER PIN=43	Name=Okki Rubiyantoro	Pri=0				Grp=1', '2021-03-12 16:37:17', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (59, 'BWXP205260321', 'DATA USER PIN=44	Name=Rini Aprianti	Pri=0				Grp=1', '2021-03-12 16:37:53', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (60, 'BWXP205260321', 'DATA USER PIN=45	Name=Geovani	Pri=0				Grp=1', '2021-03-12 16:38:25', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (61, 'BWXP205260321', 'DATA USER PIN=46	Name=Intan Nurrahmah	Pri=0				Grp=1', '2021-03-12 16:39:02', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (62, 'BWXP205260321', 'DATA USER PIN=47	Name=Ahmad Agung	Pri=0				Grp=1', '2021-03-12 16:39:29', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (63, 'BWXP205260321', 'DATA USER PIN=48	Name=Wawan Hendrawan	Pri=0				Grp=1', '2021-03-12 16:40:07', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (64, 'BWXP205260321', 'DATA USER PIN=49	Name=Reni Andani	Pri=0				Grp=1', '2021-03-12 16:40:32', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (65, 'BWXP205260321', 'DATA USER PIN=50	Name=Alda Eka Putri	Pri=0				Grp=1', '2021-03-12 16:40:57', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (66, 'BWXP205260321', 'DATA USER PIN=46	Name=Intan Nurrahmah	Pri=0				Grp=1', '2021-03-12 16:43:02', '2021-03-12 19:03:28', '2021-03-12 19:03:32', 0, NULL);
INSERT INTO `devcmds` VALUES (67, 'BWXP205260321', 'DATA USER PIN=1	Name=Ika Arsianti Dewi	Pri=14			TZ=0000000100000000	Grp=1', '2021-03-12 19:19:31', '2021-03-12 19:19:33', '2021-03-12 19:19:33', 0, NULL);
INSERT INTO `devcmds` VALUES (68, 'BWXP203960242', 'DATA USER PIN=1	Name=Ika Arsianti Dewi	Pri=14			TZ=0000000100000000	Grp=1', '2021-03-12 19:19:48', '2021-03-12 19:20:14', '2021-03-12 19:20:14', 0, NULL);
INSERT INTO `devcmds` VALUES (69, 'BWXP203960242', 'DATA USER PIN=2	Name=Fatimatus Sa\'Diah	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-12 19:20:31', '2021-03-12 19:20:38', '2021-03-12 19:20:38', 0, NULL);
INSERT INTO `devcmds` VALUES (70, 'BWXP203960242', 'DATA USER PIN=3	Name=Fitri Andiani	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-12 19:21:04', '2021-03-12 19:21:10', '2021-03-12 19:21:11', 0, NULL);
INSERT INTO `devcmds` VALUES (71, 'BWXP205260321', 'DATA USER PIN=4	Name=Teddy Munawar	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-12 19:21:22', '2021-03-12 19:21:37', '2021-03-12 19:21:37', 0, NULL);
INSERT INTO `devcmds` VALUES (72, 'BWXP203960242', 'DATA USER PIN=4	Name=Teddy Munawar	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-12 19:21:33', '2021-03-12 19:21:38', '2021-03-12 19:21:38', 0, NULL);
INSERT INTO `devcmds` VALUES (73, 'BWXP205260321', 'DATA USER PIN=5	Name=Febri Suhandi	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-12 19:22:06', '2021-03-12 19:22:10', '2021-03-12 19:22:10', 0, NULL);
INSERT INTO `devcmds` VALUES (74, 'BWXP205260321', 'DATA USER PIN=6	Name=Ubayt Kurniawan	Pri=14			TZ=0000000100000000	Grp=1', '2021-03-12 19:22:32', '2021-03-12 19:22:34', '2021-03-12 19:22:34', 0, NULL);
INSERT INTO `devcmds` VALUES (75, 'BWXP203960242', 'DATA USER PIN=5	Name=Febri Suhandi	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-12 19:22:54', '2021-03-12 19:23:03', '2021-03-12 19:23:03', 0, NULL);
INSERT INTO `devcmds` VALUES (76, 'BWXP203960242', 'DATA USER PIN=6	Name=Ubayt Kurniawan	Pri=14			TZ=0000000100000000	Grp=1', '2021-03-12 19:23:13', '2021-03-12 19:23:19', '2021-03-12 19:23:19', 0, NULL);
INSERT INTO `devcmds` VALUES (77, 'BWXP203960242', 'DATA USER PIN=6	Name=Ubayt Kurniawan	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-12 20:11:08', '2021-03-12 20:11:27', '2021-03-12 20:11:28', 0, NULL);
INSERT INTO `devcmds` VALUES (78, 'BWXP205260321', 'DATA USER PIN=1	Name=Ika Arsianti Dewi	Pri=14			TZ=0000000100000000	Grp=1', '2021-03-12 20:14:40', '2021-03-12 20:15:10', '2021-03-12 20:15:11', 0, NULL);
INSERT INTO `devcmds` VALUES (79, 'BWXP203960242', 'DATA USER PIN=1	Name=Ika Arsianti Dewi	Pri=14			TZ=0000000100000000	Grp=1', '2021-03-12 20:18:20', '2021-03-12 20:18:29', '2021-03-12 20:18:29', 0, NULL);
INSERT INTO `devcmds` VALUES (80, 'BWXP205260321', 'CHECK', '2021-03-12 21:16:34', '2021-03-12 21:16:38', '2021-03-12 21:16:39', 0, NULL);
INSERT INTO `devcmds` VALUES (81, 'BWXP203960242', 'DATA USER PIN=51	Name=AGUS SUSIANTO	Pri=0				Grp=1', '2021-03-12 21:43:18', '2021-03-12 21:43:47', '2021-03-12 21:43:47', 0, NULL);
INSERT INTO `devcmds` VALUES (82, 'BWXP205260321', 'DATA USER PIN=50	Name=Alda Eka Putri	Pri=0				Grp=1', '2021-03-13 08:11:03', '2021-03-13 08:11:17', '2021-03-13 08:11:17', 0, NULL);
INSERT INTO `devcmds` VALUES (83, 'BWXP203960242', 'DATA USER PIN=51	Name=AGUS SUSIANTO	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-13 08:11:27', '2021-03-13 08:11:46', '2021-03-13 08:11:46', 0, NULL);
INSERT INTO `devcmds` VALUES (84, 'BWXP205260321', 'DATA USER PIN=49	Name=Reni Andani	Pri=0				Grp=1', '2021-03-13 08:11:50', '2021-03-13 08:11:50', '2021-03-13 08:11:50', 0, NULL);
INSERT INTO `devcmds` VALUES (85, 'BWXP205260321', 'DATA USER PIN=42	Name=Peri Priatna	Pri=14			TZ=0000000100000000	Grp=1', '2021-03-13 08:12:18', '2021-03-13 08:12:26', '2021-03-13 08:12:27', 0, NULL);
INSERT INTO `devcmds` VALUES (86, 'BWXP205260321', 'DATA USER PIN=43	Name=Okki Rubiyantoro	Pri=0				Grp=1', '2021-03-13 08:12:37', '2021-03-13 08:12:43', '2021-03-13 08:12:43', 0, NULL);
INSERT INTO `devcmds` VALUES (87, 'BWXP205260321', 'DATA USER PIN=44	Name=Rini Aprianti	Pri=0				Grp=1', '2021-03-13 08:12:59', '2021-03-13 08:13:07', '2021-03-13 08:13:07', 0, NULL);
INSERT INTO `devcmds` VALUES (88, 'BWXP205260321', 'DATA USER PIN=45	Name=Geovani	Pri=0				Grp=1', '2021-03-13 08:13:24', '2021-03-13 08:13:31', '2021-03-13 08:13:32', 0, NULL);
INSERT INTO `devcmds` VALUES (89, 'BWXP205260321', 'DATA USER PIN=48	Name=Wawan Hendrawan	Pri=0				Grp=1', '2021-03-13 08:13:41', '2021-03-13 08:13:41', '2021-03-13 08:13:42', 0, NULL);
INSERT INTO `devcmds` VALUES (90, 'BWXP205260321', 'DATA USER PIN=47	Name=Ahmad Agung	Pri=0				Grp=1', '2021-03-13 08:13:57', '2021-03-13 08:13:57', '2021-03-13 08:13:58', 0, NULL);
INSERT INTO `devcmds` VALUES (91, 'BWXP205260321', 'DATA USER PIN=46	Name=Intan Nurrahmah	Pri=0				Grp=1', '2021-03-13 08:14:16', '2021-03-13 08:14:24', '2021-03-13 08:14:25', 0, NULL);
INSERT INTO `devcmds` VALUES (92, 'BWXP205260364', 'INFO', '2021-03-13 10:18:20', '2021-03-13 10:18:22', '2021-03-13 10:18:33', 0, NULL);
INSERT INTO `devcmds` VALUES (93, 'BWXP205260364', 'CHECK', '2021-03-13 10:18:20', '2021-03-13 10:18:22', '2021-03-13 10:18:34', 0, NULL);
INSERT INTO `devcmds` VALUES (94, 'BWXP205260364', 'CHECK', '2021-03-13 10:21:14', '2021-03-13 10:21:30', '2021-03-13 10:21:30', 0, NULL);
INSERT INTO `devcmds` VALUES (95, 'BWXP205260321', 'CHECK', '2021-03-13 10:22:32', '2021-03-13 10:22:47', '2021-03-13 10:22:47', 0, NULL);
INSERT INTO `devcmds` VALUES (96, 'BWXP205260364', 'CHECK', '2021-03-13 11:06:14', '2021-03-13 11:06:15', '2021-03-13 11:06:15', 0, NULL);
INSERT INTO `devcmds` VALUES (97, 'BWXP205260364', 'DATA USER PIN=52	Name=Dede Erwan Taufik. N	Pri=0				Grp=1', '2021-03-13 11:08:56', '2021-03-13 11:08:57', '2021-03-13 11:08:58', 0, NULL);
INSERT INTO `devcmds` VALUES (98, 'BWXP205260364', 'DATA USER PIN=53	Name=Ijad Mujadid	Pri=0				Grp=1', '2021-03-13 11:10:09', '2021-03-13 11:10:25', '2021-03-13 11:10:25', 0, NULL);
INSERT INTO `devcmds` VALUES (99, 'BWXP205260364', 'DATA USER PIN=54	Name=Nurul Rahmawati	Pri=0				Grp=1', '2021-03-13 11:11:42', '2021-03-13 11:11:49', '2021-03-13 11:11:50', 0, NULL);
INSERT INTO `devcmds` VALUES (100, 'BWXP205260364', 'DATA USER PIN=55		Pri=0				Grp=1', '2021-03-13 11:12:49', '2021-03-13 11:13:01', '2021-03-13 11:13:02', 0, NULL);
INSERT INTO `devcmds` VALUES (101, 'BWXP205260364', 'DATA USER PIN=55	Name=Suherman	Pri=0				Grp=1', '2021-03-13 11:13:07', '2021-03-13 11:13:11', '2021-03-13 11:13:12', 0, NULL);
INSERT INTO `devcmds` VALUES (102, 'BWXP205260364', 'DATA USER PIN=56	Name=Tia Aulia Derbian Rustini	Pri=0				Grp=1', '2021-03-13 11:14:12', '2021-03-13 11:14:23', '2021-03-13 11:14:24', 0, NULL);
INSERT INTO `devcmds` VALUES (103, 'BWXP205260364', 'DATA USER PIN=58	Name=Mulyana Agustiawan	Pri=0				Grp=1', '2021-03-13 11:15:30', '2021-03-13 11:15:33', '2021-03-13 11:15:34', 0, NULL);
INSERT INTO `devcmds` VALUES (104, 'BWXP205260364', 'DATA USER PIN=59	Name=Iskandar	Pri=0				Grp=1', '2021-03-13 11:16:46', '2021-03-13 11:17:00', '2021-03-13 11:17:01', 0, NULL);
INSERT INTO `devcmds` VALUES (105, 'BWXP205260364', 'DATA USER PIN=60	Name=Sandi Susandi	Pri=0				Grp=1', '2021-03-13 11:17:16', '2021-03-13 11:17:16', '2021-03-13 11:17:17', 0, NULL);
INSERT INTO `devcmds` VALUES (106, 'BWXP205260364', 'DATA USER PIN=60	Name=Sandi Susandi	Pri=0				Grp=1', '2021-03-13 11:17:27', '2021-03-13 11:17:32', '2021-03-13 11:17:33', 0, NULL);
INSERT INTO `devcmds` VALUES (107, 'BWXP205260364', 'DATA USER PIN=56	Name=Tia Aulia Derbian Rustini	Pri=0				Grp=1', '2021-03-13 11:17:39', '2021-03-13 11:17:43', '2021-03-13 11:17:43', 0, NULL);
INSERT INTO `devcmds` VALUES (108, 'BWXP205260364', 'DATA USER PIN=61		Pri=0				Grp=1', '2021-03-13 11:18:16', '2021-03-13 11:18:21', '2021-03-13 11:18:21', 0, NULL);
INSERT INTO `devcmds` VALUES (109, 'BWXP205260364', 'DATA USER PIN=61	Name=Dzaky Ridho Russhofwan	Pri=0				Grp=1', '2021-03-13 11:18:33', '2021-03-13 11:18:36', '2021-03-13 11:18:37', 0, NULL);
INSERT INTO `devcmds` VALUES (110, 'BWXP205260364', 'DATA USER PIN=62		Pri=0				Grp=1', '2021-03-13 11:19:58', '2021-03-13 11:20:01', '2021-03-13 11:20:02', 0, NULL);
INSERT INTO `devcmds` VALUES (111, 'BWXP205260364', 'DATA USER PIN=62	Name=Salma Rosmalah Kurnia	Pri=0				Grp=1', '2021-03-13 11:20:13', '2021-03-13 11:20:18', '2021-03-13 11:20:19', 0, NULL);
INSERT INTO `devcmds` VALUES (112, 'BWXP205260364', 'DATA USER PIN=63	Name=Syiffa Hermawati	Pri=0				Grp=1', '2021-03-13 11:21:04', '2021-03-13 11:21:15', '2021-03-13 11:21:16', 0, NULL);
INSERT INTO `devcmds` VALUES (113, 'BWXP205260364', 'DATA USER PIN=64	Name=Bayu Mustika Hendra	Pri=0				Grp=1', '2021-03-13 11:22:19', '2021-03-13 11:22:28', '2021-03-13 11:22:29', 0, NULL);
INSERT INTO `devcmds` VALUES (114, 'BWXP205260364', 'DATA USER PIN=63	Name=Syiffa Hermawati	Pri=0				Grp=1', '2021-03-13 11:22:31', '2021-03-13 11:22:34', '2021-03-13 11:22:34', 0, NULL);
INSERT INTO `devcmds` VALUES (115, 'BWXP205260364', 'DATA USER PIN=62	Name=Salma Rosmalah Kurnia	Pri=0				Grp=1', '2021-03-13 11:22:42', '2021-03-13 11:22:43', '2021-03-13 11:22:44', 0, NULL);
INSERT INTO `devcmds` VALUES (116, 'BWXP205260364', 'DATA USER PIN=61	Name=Dzaky Ridho Russhofwan	Pri=0				Grp=1', '2021-03-13 11:23:05', '2021-03-13 11:23:07', '2021-03-13 11:23:08', 0, NULL);
INSERT INTO `devcmds` VALUES (117, 'BWXP205260364', 'DATA USER PIN=60	Name=Sandi Susandi	Pri=0				Grp=1', '2021-03-13 11:23:16', '2021-03-13 11:23:17', '2021-03-13 11:23:18', 0, NULL);
INSERT INTO `devcmds` VALUES (118, 'BWXP205260364', 'DATA USER PIN=59	Name=Iskandar	Pri=0				Grp=1', '2021-03-13 11:23:48', '2021-03-13 11:23:50', '2021-03-13 11:23:51', 0, NULL);
INSERT INTO `devcmds` VALUES (119, 'BWXP205260364', 'DATA USER PIN=58	Name=Mulyana Agustiawan	Pri=0				Grp=1', '2021-03-13 11:23:54', '2021-03-13 11:23:55', '2021-03-13 11:23:56', 0, NULL);
INSERT INTO `devcmds` VALUES (120, 'BWXP205260364', 'DATA USER PIN=56	Name=Tia Aulia Derbian Rustini	Pri=0				Grp=1', '2021-03-13 11:24:10', '2021-03-13 11:24:11', '2021-03-13 11:24:12', 0, NULL);
INSERT INTO `devcmds` VALUES (121, 'BWXP205260364', 'DATA USER PIN=55	Name=Suherman	Pri=0				Grp=1', '2021-03-13 11:24:17', '2021-03-13 11:24:18', '2021-03-13 11:24:19', 0, NULL);
INSERT INTO `devcmds` VALUES (122, 'BWXP205260364', 'DATA USER PIN=54	Name=Nurul Rahmawati	Pri=6				Grp=1', '2021-03-13 11:24:43', '2021-03-13 11:24:51', '2021-03-13 11:24:52', 0, NULL);
INSERT INTO `devcmds` VALUES (123, 'BWXP205260364', 'DATA USER PIN=53	Name=Ijad Mujadid	Pri=6				Grp=1', '2021-03-13 11:24:56', '2021-03-13 11:24:57', '2021-03-13 11:24:58', 0, NULL);
INSERT INTO `devcmds` VALUES (124, 'BWXP205260364', 'DATA USER PIN=52	Name=Dede Erwan Taufik. N	Pri=6				Grp=1', '2021-03-13 11:25:20', '2021-03-13 11:25:22', '2021-03-13 11:25:22', 0, NULL);
INSERT INTO `devcmds` VALUES (125, 'BWXP203960242', 'DATA USER PIN=65	Name=Irvan Auldrien	Pri=14				Grp=1', '2021-03-13 11:29:31', '2021-03-13 11:29:46', '2021-03-13 11:29:46', 0, NULL);
INSERT INTO `devcmds` VALUES (126, 'BWXP203960242', 'DATA USER PIN=66		Pri=14				Grp=1', '2021-03-13 11:30:36', '2021-03-13 11:30:44', '2021-03-13 11:30:44', 0, NULL);
INSERT INTO `devcmds` VALUES (127, 'BWXP203960242', 'DATA USER PIN=66	Name=Satrio Rama	Pri=14				Grp=1', '2021-03-13 11:30:43', '2021-03-13 11:30:44', '2021-03-13 11:30:44', 0, NULL);
INSERT INTO `devcmds` VALUES (128, 'BWXP205260364', 'DATA USER PIN=66	Name=Satrio Rama	Pri=14				Grp=1', '2021-03-13 11:30:50', '2021-03-13 11:31:17', '2021-03-13 11:31:18', 0, NULL);
INSERT INTO `devcmds` VALUES (129, 'BWXP205260364', 'DATA USER PIN=65	Name=Irvan Auldrien	Pri=14				Grp=1', '2021-03-13 11:30:56', '2021-03-13 11:31:17', '2021-03-13 11:31:18', 0, NULL);
INSERT INTO `devcmds` VALUES (130, 'BWXP205260364', 'DATA USER PIN=52	Name=Dede Erwan Taufik. N	Pri=0				Grp=1', '2021-03-13 11:32:09', '2021-03-13 11:32:13', '2021-03-13 11:32:15', 0, NULL);
INSERT INTO `devcmds` VALUES (131, 'BWXP205260364', 'DATA USER PIN=53	Name=Ijad Mujadid	Pri=0				Grp=1', '2021-03-13 11:32:16', '2021-03-13 11:32:18', '2021-03-13 11:32:19', 0, NULL);
INSERT INTO `devcmds` VALUES (132, 'BWXP205260364', 'DATA USER PIN=54	Name=Nurul Rahmawati	Pri=0				Grp=1', '2021-03-13 11:32:29', '2021-03-13 11:32:35', '2021-03-13 11:32:36', 0, NULL);
INSERT INTO `devcmds` VALUES (133, 'BWXP205260364', 'DATA USER PIN=66	Name=Satrio Rama	Pri=14	Passwd=654321			Grp=1', '2021-03-13 11:32:46', '2021-03-13 11:32:51', '2021-03-13 11:32:52', 0, NULL);
INSERT INTO `devcmds` VALUES (134, 'BWXP205260364', 'DATA USER PIN=65	Name=Irvan Auldrien	Pri=14	Passwd=654321			Grp=1', '2021-03-13 11:32:57', '2021-03-13 11:33:01', '2021-03-13 11:33:02', 0, NULL);
INSERT INTO `devcmds` VALUES (135, 'BWXP205260364', 'DATA USER PIN=57	Name=Asep Rahman	Pri=0				Grp=1', '2021-03-13 11:34:29', '2021-03-13 11:34:29', '2021-03-13 11:34:30', 0, NULL);
INSERT INTO `devcmds` VALUES (136, 'BWXP205260364', 'DATA USER PIN=66	Name=Satrio Rama	Pri=14	Passwd=654321			Grp=1', '2021-03-13 11:35:36', '2021-03-13 11:35:41', '2021-03-13 11:35:42', 0, NULL);
INSERT INTO `devcmds` VALUES (137, 'BWXP205260364', 'DATA USER PIN=65	Name=Irvan Auldrien	Pri=14	Passwd=654321			Grp=1', '2021-03-13 11:35:45', '2021-03-13 11:35:46', '2021-03-13 11:35:47', 0, NULL);
INSERT INTO `devcmds` VALUES (138, 'BWXP205260364', 'DATA USER PIN=1	Name=Ika Arsianti Dewi	Pri=14			TZ=0000000100000000	Grp=1', '2021-03-13 11:42:41', '2021-03-13 11:42:46', '2021-03-13 11:42:47', 0, NULL);
INSERT INTO `devcmds` VALUES (139, 'BWXP205260364', 'INFO', '2021-03-13 13:11:35', '2021-03-13 13:43:33', '2021-03-13 13:43:34', 0, NULL);
INSERT INTO `devcmds` VALUES (140, 'BWXP205260364', 'INFO', '2021-03-13 13:14:29', '2021-03-13 13:43:33', '2021-03-13 13:43:44', 0, NULL);
INSERT INTO `devcmds` VALUES (141, 'BWXP205260364', 'DATA USER PIN=65	Name=Irvanda Auldrien	Pri=2	Passwd=654321		TZ=0000000100000000	Grp=1', '2021-03-13 14:01:47', '2021-03-13 14:01:55', '2021-03-13 14:01:56', 0, NULL);
INSERT INTO `devcmds` VALUES (142, 'BWXP205260364', 'INFO', '2021-03-13 14:02:11', '2021-03-13 14:02:11', '2021-03-13 14:02:22', 0, NULL);
INSERT INTO `devcmds` VALUES (143, 'BWXP205260321', 'INFO', '2021-03-13 14:02:11', '2021-03-13 14:02:29', '2021-03-13 14:02:40', 0, NULL);
INSERT INTO `devcmds` VALUES (144, 'BWXP203960242', 'DATA USER PIN=7	Name=Yogyantoro	Pri=14	Passwd=123456		TZ=0000000100000000	Grp=1', '2021-03-15 14:17:37', '2021-03-15 14:18:01', '2021-03-15 14:18:01', 0, NULL);
INSERT INTO `devcmds` VALUES (145, 'BJ36195260254', 'INFO', '2021-03-16 14:05:19', '2021-03-16 14:05:20', '2021-03-16 14:05:31', 0, NULL);
INSERT INTO `devcmds` VALUES (146, 'BJ36195260254', 'CHECK', '2021-03-16 14:05:19', '2021-03-16 14:05:20', '2021-03-16 14:05:32', 0, NULL);
INSERT INTO `devcmds` VALUES (147, 'BJ36195260254', 'CHECK', '2021-03-16 14:11:38', '2021-03-16 14:11:46', '2021-03-16 14:11:46', 0, NULL);
INSERT INTO `devcmds` VALUES (148, 'BWXP203960242', 'CHECK', '2021-03-16 14:11:55', '2021-03-16 16:37:34', '2021-03-16 16:37:35', 0, NULL);
INSERT INTO `devcmds` VALUES (149, 'BJ36195260254', 'DATA USER PIN=7	Name=Yogyantoro	Pri=14	Passwd=123456		TZ=0000000100000000	Grp=1', '2021-03-16 15:50:40', '2021-03-16 15:50:55', '2021-03-16 15:50:55', 0, NULL);
INSERT INTO `devcmds` VALUES (150, 'BWXP203960242', 'DATA USER PIN=7	Name=Yogyantoro	Pri=14	Passwd=123456		TZ=0000000100000000	Grp=1', '2021-03-16 15:58:23', '2021-03-16 16:37:34', '2021-03-16 16:37:35', 0, NULL);
INSERT INTO `devcmds` VALUES (151, 'BWXP203960242', 'DATA USER PIN=7	Name=Yogyantoro	Pri=14	Passwd=123456		TZ=0000000100000000	Grp=1', '2021-03-16 15:59:05', '2021-03-16 16:37:34', '2021-03-16 16:37:35', 0, NULL);
INSERT INTO `devcmds` VALUES (152, 'BJ36195260254', 'REBOOT', '2021-03-16 15:59:33', '2021-03-16 15:59:59', '2021-03-16 15:59:59', 0, NULL);
INSERT INTO `devcmds` VALUES (153, 'BJ36195260254', 'CHECK', '2021-03-16 16:33:56', '2021-03-16 16:34:06', '2021-03-16 16:34:07', 0, NULL);
INSERT INTO `devcmds` VALUES (154, 'BWXP203960242', 'DATA DEL_USER PIN=7', '2021-03-16 16:35:49', '2021-03-16 16:37:34', '2021-03-16 16:37:35', 0, NULL);
INSERT INTO `devcmds` VALUES (155, 'BJ36195260254', 'DATA USER PIN=7	Name=Yogyantoro	Pri=14	Passwd=123456		TZ=0000000100000000	Grp=1', '2021-03-16 16:35:49', '2021-03-16 16:35:50', '2021-03-16 16:35:51', 0, NULL);
INSERT INTO `devcmds` VALUES (156, 'BJ36195260254', 'DATA FP PIN=7	FID=3	Size=1560	Valid=1	TMP=TdFTUzIxAAAEkpUECAUHCc7QAAAck2kBAAAAhL8rfpIuAHUPXwCCAPKdlQBPAHwPeABrkogOzAB2ANMN3JJ8AJQNdQBGAHKdfQCMAHMPSgCLkgUPPQCTACoPtJKSAIcP3ABSABicYgClAPUPYAChkhMPiQCxALMPypLSACwPrwAfAJCdpADgAH4PXADrki4PkAD+APIPeZIBAUMPzwDFATKdvwABAUAPlgABk0wOPwAMARYObpIQAUYP6wDUATadWgASAUwOlQAck8sOqgAZAX8PjpIbAUQPpADmAcGd3QAnAUUPaQAxk9UOygA+AaIPpJJAAdwOhgCDAcidaABNAdMPhABUk9QPUwBRARMPlZJQAd8OywCWAd2c7wBeAUINq4E2aE4DboGTfnqDrpgi9Y+KCXTL9EKUgIT9jJr9RIAh6YMMMAcdd5uCsG0UcW6BBZHIk5pmp/+He49/lHWGFssCHYsSCS+XahdjgpqCRY0bnBaC+2TSdb4GC5jOIZf7WBtOZCNo6H1cUV5JqfjosTYOIAjF9ZH3/A2lbGwDyfhiBLvyOZ6fiNYSXQC8haHvyAmhibWLfPwZlMz7qe/m/Br0pBUwCN0AoIO4fVVrHfcF66Z8jIMBnegDkA/t8YyDEYWY4/ISDfiYEW2NWJH1J6aUQAgBbBwT1eyt8+v4IWynCC4CrQFvBnOdLAGlBqMNhBSFlIMOZXW2mY8Hyvve3PP/P3927+ORIUYBAmodyQQEKCoMQwYApekMQVIKAH4uBsI+wvvI//0DAHcytcAJkmJD8P8x/zrAxNIFAFtJbW/IAGfY9j02/v7C8goEAkyAb4N0CMWYS5vB//3CNQfFkVfvgHgNAE9qMcBDbfzA//5TDsW5aALDdW16wcPIAL3giGnBe4DBxgDYEhf/BABxg7+SCpJyiP1eNT6OCgTjiHfCwHV0yQB9HnV4wcF4hsgARB3sPf3CwP2EwAiSipB9woD/TmoOkrWUE8D+/448FZItlufAQD4F/vuqUgQA4JYW9gUEq5Znw18EABubGtgNAGWh8f/uwPmhwQwAqaMMOzBR0wQAoaSJwkEMBM2mYmZpXMPOAKw7EjzAPkoQxYWq75bD/3xYwDrAFpKMsgz///87/vpSwcD+ZFcIxYWw6MKSwP8DADXULVILAK/Wnp8BxHSXAdDWKf9SzwCvSJahxsDCYcIApk6RxsPGdwzFs9q2MMD8/f39RAUEM+ODxcbDB8Wp57b8J/4EAJY0PXuWAZ3xNMDA1ADKabDBjMKPw0bCOZgRkQI6wf85//pvSwMQ0wIwOwUUXAI3/y4GELwEQsT8BxB/BD2F//ibEU8GU8NAgwUULAc6/h4IEPsQVFLBPcAFEGbRRkWREe8UMMAG1W0R0Tr+BBDpFfJoAYJWFkxMBRCbFk1tSwkQiRbABfz+Z/sqBxCHHoY0MZYRjh49/f/bEPmNsV1vd3zBUsPE+8DBWm4EEGYnTbsFENorQyDBEOS5OxoHEMY+of18UgQQykJX+5QFFHRGT/lFAxBLVGRtBRDHVm1El0IEmUIBAAALRZcA', '2021-03-16 16:35:49', '2021-03-16 16:35:50', '2021-03-16 16:35:51', 0, NULL);
INSERT INTO `devcmds` VALUES (157, 'BJ36195260254', 'DATA FP PIN=7	FID=6	Size=1228	Valid=1	TMP=SttTUzIxAAADmJ8ECAUHCc7QAAAbmWkBAAAAg0Ude5hKAAcOiQCUAI+WOQBVAGcPCwBdmBIP7ABlAFQPt5huAIkPaABZAHKXqwCoAIcP+wCymO4PIAC4ACMPpZi4AIUP1QB5ACeXTQDPAGEPGgDMmKMPkgDdALMPv5jgAB0PYAAgAFqWMADqAN8PAgDpmJ0P3wDzAGcPb5gDAVINTwDRAUCWMQAVAUYP/wAkmcsPnwBEAe8PaphIAbkPtwCLASuX5QBcASINEABcmasOiX33o1aDgh0OBf97F2Pe30Bje4TWjPeLv4Bokjpv4niT/Tb6fBxmExvvRQTKZMCbCwjCkIOAV/isHc4JxQBSEu5oih23C+OgQggLdIEejIEiAT4JJ/INw4YdgYBSfr9+yWBbCKd8goInm5wQgID1/8L9qAuhmXOG4viaEdbdouO//CrxZX3/BP3zYIWZi9MTrAfU6mqDx5Jj87J76ptvgWcI2Xgq/Oxj0IhuhWuDuPxchyE5AQIaGlkGAwoiDFH/BACyMINawQsAjzID92j9rgIAQ0b0wM4Ab6X8QFVPBwC5RwXUTgUAdEqAsgUDSWMaZQ0AsK6PhBzAwHYDACqr8MCWAUxc+sEv+ztzlQGwcYNNXwTAwvgHALhyED4FBwP2knrCccANxXSWYv7+NzJBB8VkmOzBwsJGCQCpnAPG/MI2BABmZXFyjQETo+D+TDr/Rcz+MsDD/A7FpaQRfcT+cMLBRBQDjqze/v5X/47AQ2dUwBQAG7Qb/v3PLlT9VFMPxaK3Hn2DfHHCC8WquYj+QD1mBwBnu4BYisMGANm82UP+mwFHz2fDE8XbzAZ5icCQb8I7wsCbAUzTYsEExeLQuksEAI7afQbDDpiX3gb+/E8FTIyQAbjekITDB8IAmI/gd8MGAJnlY1rBkAsAYemZfsBmksIGAC/tm8LDMAgAy+4i/4HAwWMbAODup8IFw4X0icDBbsHBOsHAWcMLAJXwCTj9/GXBdP8RANs3on8Rw5FyiAYAJPYkZ8BDCQBl+ZnDx2eNwA8Ab/4f/CdmKf9a/woQTAL+Yvr//2rBB9WRBIb9UsAFEIvMMFadEWITScKLwBBkizz/wv8HEOkZU1v+kwcQMxn4/oZcBhBPHEmJSwQTO0QkPwQQnoItwlgVENZbsHM6wMIGycTDw8LBBcLCnxGPYK3//4YIEx8UOsDBhMOXQgOTQgEAAAtFlwA=', '2021-03-16 16:35:49', '2021-03-16 16:35:50', '2021-03-16 16:35:51', 0, NULL);
INSERT INTO `devcmds` VALUES (158, 'BWXP205260364', 'DATA DEL_USER PIN=66', '2021-03-16 16:38:59', '2021-03-16 16:39:31', '2021-03-16 16:39:31', 0, NULL);
INSERT INTO `devcmds` VALUES (159, 'BJ36195260254', 'DATA USER PIN=66	Name=Satrio Rama	Pri=14	Passwd=654321		TZ=0000000100000000	Grp=1', '2021-03-16 16:38:59', '2021-03-16 16:39:01', '2021-03-16 16:39:02', 0, NULL);
INSERT INTO `devcmds` VALUES (160, 'BJ36195260254', 'DATA FP PIN=66	FID=5	Size=1112	Valid=1	TMP=SgFTUzIxAAADQkUECAUHCc7QAAAbQ2kBAAAAg+8Sf0IoAJAPXAD8ABFNtABFAKAPoAByQosPRgB0AMkPXEKYAI0PNAB8AIJMlQDAAB8P7ADUQoEO6wDpAOYPtULwAKIPIwDDAXpMuAAHASYPbwAWQ6APnQAjAeEP00IkAaUPIAD6ASlNNABVASoOm4EEsT4LXoWrinoLdFFmk08bdoD7/rA4c4Seg0f/fwadwVoOTgDn9g53iD3+l4/70gCCCNy12oLL/7OD3H4tQNqCz/hLUhb7vscUhoKCPX0Efa1APIU+Al+BR4JtRF6BegAbst6v+UIOs0cLVwbFIDdDA0khDwgArwYQgjlHAwCaBtL8CUKKCBxg/W8HCQMbCA8+VcAExVUSUUYFAEYWEwVdEEI3Hwz/c/4FVU8gXAUAJiAXB1kVQh4mHMP/VjpdV73BwVJaCwBFLBmCWsD/wG8PxV80Tv/B/sDAwPt0w1cBJzsQwMA6ZP0fwf//XMBg1QBdfxfBRMH+SqFkFUIXQwzAR2U6wv4ZwWXBVAcAfUkhg8D+fxYAFooMWL3A/sBbTGSg/wRCFFcTwv9twQAQJQhZFwAUcsloWxP/W0pUcxLFSnFE/v7ARMBCkcFYUgFKeBDASjrBNYP+/8H/FwDSfgW9RkrAwP//BVTDF24GABaGCZbBFEIZjxDDRME4VFQAUMFlDwAXWQNXBf5AWw4AF2ADSb3B/v9EUhfFFay/Pzg+Slj/OsJmVwE4uQnA//r//ILBL8LBRcAEDAPUwxz/SlhqwAAnhvz/UBcAFg4AwwDB/P7C/cE6/vyAwcH/wFsNxRbRvzdPPkUWANDcAID/Sy/AVVU6wMKCwRMAKOQA/f78BsFT/8BkD8VI7ET8QcDAQ2QEBAOu7CddEgAXNgDDAjT/RMDAwQXCC0K49CLARXDVABS++/7/wP04Ov/DEMAPEBcD/To1/Xz+VcEDELrPJMNMERUQ9Cr/7v9FgQ0QFxb6wOf8UAEKEBce9/7i/sN8BhCfJiRbrgoTVyb0/f3+/TpFClIUMPD8+/84RQRSHjMD+yvAwxAcexEiwgMQFPtAwkERGz43wQTVIkJrQVJCAAtDxAADSURS', '2021-03-16 16:38:59', '2021-03-16 16:39:01', '2021-03-16 16:39:02', 0, NULL);
INSERT INTO `devcmds` VALUES (161, 'BJ36195260254', 'DATA DEL_USER PIN=66', '2021-03-16 16:41:35', '2021-03-16 16:41:47', '2021-03-16 16:41:48', 0, NULL);
INSERT INTO `devcmds` VALUES (162, 'BWXP203960242', 'DATA USER PIN=66	Name=Satrio Rama	Pri=14	Passwd=654321		TZ=0000000100000000	Grp=1', '2021-03-16 16:41:35', '2021-03-16 16:41:49', '2021-03-16 16:41:50', 0, NULL);
INSERT INTO `devcmds` VALUES (163, 'BWXP203960242', 'DATA FP PIN=66	FID=5	Size=1112	Valid=1	TMP=SgFTUzIxAAADQkUECAUHCc7QAAAbQ2kBAAAAg+8Sf0IoAJAPXAD8ABFNtABFAKAPoAByQosPRgB0AMkPXEKYAI0PNAB8AIJMlQDAAB8P7ADUQoEO6wDpAOYPtULwAKIPIwDDAXpMuAAHASYPbwAWQ6APnQAjAeEP00IkAaUPIAD6ASlNNABVASoOm4EEsT4LXoWrinoLdFFmk08bdoD7/rA4c4Seg0f/fwadwVoOTgDn9g53iD3+l4/70gCCCNy12oLL/7OD3H4tQNqCz/hLUhb7vscUhoKCPX0Efa1APIU+Al+BR4JtRF6BegAbst6v+UIOs0cLVwbFIDdDA0khDwgArwYQgjlHAwCaBtL8CUKKCBxg/W8HCQMbCA8+VcAExVUSUUYFAEYWEwVdEEI3Hwz/c/4FVU8gXAUAJiAXB1kVQh4mHMP/VjpdV73BwVJaCwBFLBmCWsD/wG8PxV80Tv/B/sDAwPt0w1cBJzsQwMA6ZP0fwf//XMBg1QBdfxfBRMH+SqFkFUIXQwzAR2U6wv4ZwWXBVAcAfUkhg8D+fxYAFooMWL3A/sBbTGSg/wRCFFcTwv9twQAQJQhZFwAUcsloWxP/W0pUcxLFSnFE/v7ARMBCkcFYUgFKeBDASjrBNYP+/8H/FwDSfgW9RkrAwP//BVTDF24GABaGCZbBFEIZjxDDRME4VFQAUMFlDwAXWQNXBf5AWw4AF2ADSb3B/v9EUhfFFay/Pzg+Slj/OsJmVwE4uQnA//r//ILBL8LBRcAEDAPUwxz/SlhqwAAnhvz/UBcAFg4AwwDB/P7C/cE6/vyAwcH/wFsNxRbRvzdPPkUWANDcAID/Sy/AVVU6wMKCwRMAKOQA/f78BsFT/8BkD8VI7ET8QcDAQ2QEBAOu7CddEgAXNgDDAjT/RMDAwQXCC0K49CLARXDVABS++/7/wP04Ov/DEMAPEBcD/To1/Xz+VcEDELrPJMNMERUQ9Cr/7v9FgQ0QFxb6wOf8UAEKEBce9/7i/sN8BhCfJiRbrgoTVyb0/f3+/TpFClIUMPD8+/84RQRSHjMD+yvAwxAcexEiwgMQFPtAwkERGz43wQTVIkJrQVJCAAtDxAADSURS', '2021-03-16 16:41:35', '2021-03-16 16:41:49', '2021-03-16 16:41:50', 0, NULL);
INSERT INTO `devcmds` VALUES (164, 'BJ36195260254', 'DATA USER PIN=66	Name=Satrio Rama	Pri=14	Passwd=654321		TZ=0000000100000000	Grp=1', '2021-03-16 16:48:21', '2021-03-16 16:48:22', '2021-03-16 16:48:23', 0, NULL);
INSERT INTO `devcmds` VALUES (165, 'BWXP205260364', 'DATA DEL_USER PIN=65', '2021-03-16 16:48:44', '2021-03-16 16:49:11', '2021-03-16 16:49:11', 0, NULL);
INSERT INTO `devcmds` VALUES (166, 'BJ36195260254', 'DATA USER PIN=65	Name=Irvanda Auldrien	Pri=2	Passwd=654321		TZ=0000000100000000	Grp=1', '2021-03-16 16:48:44', '2021-03-16 16:48:46', '2021-03-16 16:48:47', 0, NULL);
INSERT INTO `devcmds` VALUES (167, 'BJ36195260254', 'DATA FP PIN=65	FID=6	Size=1584	Valid=1	TMP=TeFTUzIxAAAEoqEECAUHCc7QAAAco2kBAAAAhE8vrqI/ACIPmwCEAJWtiwBZAH4PaQBmoi0PXABoAC8PjKJxAGsPRgC2AFStzAB6ACcPYQCPoqUPfQCPAP4PSqKaAEAPxABhACutMgCvAEMPdQC2okAPwQC1APIPbqK2ADQPuwAHAEetggDDALYOYwDAolAOywDQAIQO3KLUACsOkQATAMasQADeADQPmgDkoisPnQDlABQNoaLtAGwNtwAoAM6s1wDvANINDgD0osUNgQD1AM4Of6L2AKkOngAyANmvpAABAX0OQAAHo54OhgAJATgP36INAXEOswDLAe6swgAVAfIOUAAYo54PYwAiAVsO06IjAXQOgADrAY+taQA2AYgOlQAzo3gNXwBAAacNiKJXAX4OsgCeAQ6s2JCe+cKnLHBNtR9lRRbd78tV5hMTDQKdBZ5bg4/O2O5mMAZC2GpusEYX9v6i+w+Hephbavp2FtCHmp6pq/1iDvryXPi9UJ/sJgVzEIISTa5oAZXxnfTUCNVaYIPu9poP1Azhp7j18fZdhwtlAbMsEZWTURgYAfWt5OyZW6poIPFhrKBzUgwD8OoC3lp3gW4izGco9VGzsZ9skxml/GG5qxRPLBNxqyxjvFVE/ZKY6GZsbKmzzaL9DAGtCWN40WANrKMhlQARGASUlIX4PGL89Sn3WP6Bg8mjbPgxzzsMIQilgkSDgQREF4oAGRmEJy6e1AalhqKOrAbdTYfsWCux7bwSGboE8uXf/N9w6OJmC3a696P4O44TIU6bnZDSVBcfJJkAAkobUgnFeiAiwsN0jAUAfCQjyQQAxCcgTMwAe46HpITBCABCLxdc/kvBBwC16iJc9gYArTUc/zrAUKsBrj4gwP8FVcWvAZdAl8LEXsDGYsDB/wkAq4cixODBYAQAh1VDqgCihVqAqQ0AS1seXP///8E/M9wArPyhkMXDksCrbcXPlsEEALBl7EYIoqpmLcE3wjpax7ABWmxWwmsB/8VjdMCdwwcAQHBzZ8XDiwUARbJWh6YB0XwnZATFzHqLaAcAiYYnOMD6X/0RAKKHqQfBw2bEw8HDwcEFwMQ/BgDJjinABVgDosSQLWRkBMV9kZ9/DQBOn0AFwmYqxcDBBADGbS1AvwEhsr0oPgT++l38/P08wP4F/sdiwVHACgAwd0l6YsLCwcALAPCyOffDwcPAw8POALUWPP/8//v7PP36XQcAwrg0MT4IBMq7OsKIw8rAAJYfvMHBwQUARpUz6w4Af7+x/gX8+VT5/DAiAwBjx1RdAgDc1ivE2ABEe7zAwDBg/zj+/4EpwP5c/8DqGQT/2rdF/zH9O/v5Wfz//sD/wDr++owSAIXcrVU7/vlf+/j8LkD8wwA7QzzCkhEARSQ0xGf/lpPEN8I6CwT/4jCNwcKpOgQEweItlQUAszRk/2L4BADb83CyBQRS+4DCxP8ExbP4xf78CBDuA0XDcpIGENMgd2iPCRR2J3D/T14L1ekiz8H//sE+wTgDFPkmD8EKEOb3aS1gP8AJEOJCtf5OYmADEL1VfToDFD1dBv5SQgDOQwWiAQtFUg==', '2021-03-16 16:48:44', '2021-03-16 16:48:46', '2021-03-16 16:48:47', 0, NULL);
INSERT INTO `devcmds` VALUES (168, 'BJ36195260254', 'DATA USER PIN=41	Name=Ebid Dilli Wanto	Pri=0		Card=[849E360700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (169, 'BJ36195260254', 'DATA USER PIN=40	Name=Nuruddin Lazuardi	Pri=0		Card=[00E1F50500]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (170, 'BJ36195260254', 'DATA USER PIN=39	Name=Fertho Pasaribu	Pri=0		Card=[7377360700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (171, 'BJ36195260254', 'DATA USER PIN=38	Name=Ahmad Ghozali	Pri=0		Card=[E2E2280700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (172, 'BJ36195260254', 'DATA USER PIN=37	Name=Tri Puspita Sari	Pri=0		Card=[E1E2280700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (173, 'BJ36195260254', 'DATA USER PIN=36	Name=Roristua Pandiangan	Pri=0		Card=[E0E2280700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (174, 'BJ36195260254', 'DATA USER PIN=35	Name=Yugo Goutomo	Pri=0		Card=[00E1F50500]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (175, 'BJ36195260254', 'DATA USER PIN=34	Name=Mariatul Kiftiah	Pri=0		Card=[00E1F50500]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (176, 'BJ36195260254', 'DATA USER PIN=33	Name=Muchlis Ramadhan	Pri=0		Card=[AF6D280700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (177, 'BJ36195260254', 'DATA USER PIN=32	Name=Maulana Fadlan	Pri=0		Card=[1E0E270700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (178, 'BJ36195260254', 'DATA USER PIN=31	Name=Dira Arisman	Pri=0		Card=[9D46280700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (179, 'BJ36195260254', 'DATA USER PIN=30	Name=Fani Sintya Pratiwi	Pri=0		Card=[9C46280700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (180, 'BJ36195260254', 'DATA USER PIN=29	Name=Indah Susanti	Pri=0		Card=[1B0E270700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (181, 'BJ36195260254', 'DATA USER PIN=28	Name=Dewi Puspita	Pri=0		Card=[8A1F280700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (182, 'BJ36195260254', 'DATA USER PIN=27	Name=Alifia Syahda	Pri=0		Card=[891F280700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (183, 'BJ36195260254', 'DATA USER PIN=26	Name=Hendri Walesa	Pri=0		Card=[78F8270700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (184, 'BJ36195260254', 'DATA USER PIN=25	Name=Chandra Regina	Pri=0		Card=[77F8270700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (185, 'BJ36195260254', 'DATA USER PIN=24	Name=Bayuadhi Indrayana	Pri=0		Card=[56AA270700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (186, 'BJ36195260254', 'DATA USER PIN=23	Name=Ratna Purnamasari	Pri=0		Card=[355C270700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (187, 'BJ36195260254', 'DATA USER PIN=22	Name=Nicolaas Ehrlich Riwoe	Pri=0		Card=[7452190700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (188, 'BJ36195260254', 'DATA USER PIN=21	Name=Asteria Bunga Indah	Pri=0		Card=[43DD180700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (189, 'BJ36195260254', 'DATA USER PIN=20	Name=Nadhea Clarasari Azharia	Pri=0		Card=[D2CB170700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (190, 'BJ36195260254', 'DATA USER PIN=19	Name=Syarifah Nuraini	Pri=0		Card=[218F180700]	TZ=0000000100000000	Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (191, 'BJ36195260254', 'DATA FP PIN=19	FID=6	Size=1360	Valid=1	TMP=Sr9TUzIxAAAD/AMECAUHCc7QAAAb/WkBAAAAgyEgX/wgAH4PUwD9APzzggA6AIQPswBK/A8PMgCKAJAPV/ySAFIPkQBWAJ/zhwCaAI0OqACq/B0NHQCtAAwPW/ywADYOfgB7AKbwuADDAEAPYgDZ/FYPOgDiAOMPH/zlADQPNQAoACXzVADxABMP7wDw/CoPcwD6AFAPkvwNAXwPuQDIAWHzMQARAasPZwAo/ecPRAAtAc0OV/wuAYwOTAD9AZDyrgA6Ae0PeABB/fIPoABMAb8PVPxVAYQPLgCSAYbzUIIb/C9wlIKVDoZ8WXmXCLqEUnEHEh+QNgVHjkzeaxxOOLr9iRNNfzb43PNdc/vp1haIe1GTjnY+lrhrPB4G5FqSRIul5WtynevHnyKnBufCtV/2rAN8/tkIbAldE0oQ6QPHA+j3Aux6gDPsQ/v4+TUGeoTHGbQPn+kymQYev36hFmp0joD+pVuFvgXfbEZtoXS4fCGhUft5hDIJCQuWcB8Qqfw5CTR2JvQDeCoN5Y4/iMlor/C6+XoCPwLdC9J8FxElZuU0Av5bH9cHAHzFCTa1AgA/An3DyQBZ/gEy/z7AOMYAoP4fwQQASAxFhw38TAz9NcD+gf9E+gFZHYDAxJwNA5wgBj0+/8AFWgX8WSR9wcNR1gAQ2+b+/jxU/4P/w7sFAFY0/TDDAEzFdXTBBABX/wNf8AGHPQ///gVG/LAhAHlJDP87wD3O/v9TOPz+Ov/9Pf3/wP/A/wUVA+9L4v1K/jvzPkW3GwAUYuL+OkFSAfxH/zg9STglA+tr6cD+wf85PMMCP//+wP9Ejv38Av7+//zARjodA+R351TAIv39/zY8P//A/f/+Oi8b/BiE4v9M/uI7OJQ5KSAANYch//wA/vwu/zMqO/75Bv///v79/jr8+eYIABWKQGWh/wD8LItewwgA9o9ZP3R8DwCQj2XCwFyWkIM4ABtR1/6w//0q//7/60QtAPz+/f/9/QX//QH/wP3+/f4+/v8D/P/9/v39O/j5Av79CgBQmJOdmG8EAG6lCfk//wf8aq1AqQ8AcsdAPCvA/P0uLtcAvjs8///B+/47wP4B/v///f/+OwgDWt9T//z9/jn9C/w86CfBwcS8BAPg6zSDAwDtNUP88QE08S2RwQFslPMBKfY0ksO5hcY+wAYAGfwrB3kE/BL9N6J7BtURDNfDwoUEELXKXiruERIfKaD/RmJYOWAEEN0haZwLE+Q5EMB4wMKjBhPvPhPC/4MF1ddAiDsPENNLdIfAw8JXSgUQFkvM/4H6EZ1QesBMwhDGpXvAwv4+BdUkZgb8aQ4AbJqhx8dnxsjGw8Kwl0ID90IBAAALRZcA', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (192, 'BJ36195260254', 'DATA FP PIN=19	FID=7	Size=1132	Valid=1	TMP=ShNTUzIxAAADUFUECAUHCc7QAAAbUWkBAAAAg/0aV1AvAPAPaACaAPxfWQBpAG0OjQBsUO4OewB2ANUPuVCDACQPiABAACFfbACKAHMOmwCMUPUOcACcAOcNTVCrAO4PmABpADNfNwC1ANsPngC0UFUOvQDLAP8PSFDUAFMOQAAuANBecwDsAE8PcgDwUL4PpQAjAZ0PIVA2AfAPYgD9AeBfmgBDAdwPuQBOUecPPgBdATwPw1BhAe0Pw/EKh9hT7JWm8PIRQID+ISNdhYSC8X/+lqHInhYQ2wV+9uRHABXZs8IARIBKAehmgYCl1icIGuH4MkIAtZ3EF2msAxPiE2/4UO+p2c+KzWmCAc81jS7mDAcbgYLHAdUqgIKvhWf6D/+wLeL/ioYTaYJzdS36mYt3u/hWD2BPu/z/7acL3/hx1cLwjgw2BL6TLFhqGX8XMxCClyBbK2K6AiApxAH1S6wEAGUbcAXCBVBjInDCSQbFlCbZw8LCwA0AZjKMksPBe8T/wL4EA+BPHEcQAMeKmn3AgnBdDwCzkpqOIX97xAwAbJn3/q4xR0IHAHGlAC0QEADPYKCMv4HCk/7B/8IGAIFzZyjBHAB+dQ/2RjRi/kHA/fxHkP8QUNZ+pMHAxJ/Ew9eRwHcGAL5HIPyvTwgAuoYi/UYJUIuHHv9AQDoUA4uOqcJpwYBVi8EyDgBzmhcnOv49rj3+DQByoNv9/HrA/sD//f/QAJr/KjPA/j4wOMD+kv/CUBUAN3TaO6/6/vn/wMA7/sKtwf///sAXxRiwh/7AwP82/AX8/K7/wP7A//86VgdQb7cxKwoAk7hZklD+/oMNAKK5Oa8v//5EPQrFW7gAw8D7wETAzgBi7EI4/v3AVOAAGpPWwFRBK/s7QD0QVcD/Nfz/+/0XUL3GtHeAw2XDw5DDwv5vCgB5zj6QQf9PFQDBCzc9r/9P/fzBwDvBT67FDgDa4DqKwPyu/v4xwAkAq+5Tr/79wP9MCsV08xkyMcD/IgDW+dOuYzf/+8D8P/1DZTkw/jJRHdUSC4b/wcDBwTM4+vqt///+wP//9v79r/7B/wQQoeNaPlURpydTLgbVXjkgSsEDENdGlfoGQHlPdMBGUocACBMAAAALRVI=', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (193, 'BJ36195260254', 'DATA USER PIN=18	Name=Ahmad Fauzan	Pri=14		Card=[F019180700]	TZ=0000000100000000	Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (194, 'BJ36195260254', 'DATA FP PIN=18	FID=6	Size=1380	Valid=1	TMP=TUlTUzIxAAAECgoECAUHCc7QAAAcC2kBAAAAgzchrgoiAIoPTgDhAPoFxgA2AAsPJwBwChcPOgCBAK0PxQqHAB8PUwBYAGQF5wCdACMPCQCnCioPxQC5APMOaQrAADgPfQAEAC8EjwDIABkNIgDOCi4PmgDQAFwMTArcADYPJAAsAEEFpwDsAN4OggD2Ci8PwwD/ALUOPwoHASYOqgDOAX0EVAANAasO6wALCzsO1AARAR8O5goeAeMPIgDkAVEEXwAjAZIP+AAvC4YOTwA1Ab4ONQo2Ae8N2gCFAekF2ABPAXQPy4FzhR53g3fPmwajCoum97vv1vpv9rvnPwo/Mzs/U/RKAHv/xvpKK/o20fEbDsLvofaICw4GGA5eCi4XjAxWK/Pb1fRlFa+UhYr48fLh5vrXD/8OgIAavH5wSAm6+JsTRhliIfcSVk7fZLpxFflsCoaOMJp9+6qVBOw18GR/9QvCnMujARBgh4J8LRRk5nK+yPlJbi5j+Anu8z93BR5Va/zTSRCg6mYNWZjIDY09mPXh6oaMtGg9lZN01XheDZYU1YLWkMufzB7EpgUqPwECWxvhwAA5AvbA/P8HALgIB/TBQgMAWwqywAgKOxr3wMH9Bf8xbgsApSGJcgTCbwABUiT6N/87wfv1EAAVROfA7D5XNEoHABJU3u/B+gEBaDQDVEueCwQYYN7+/Vv+8gcErkYQRTcJAL1khHTAwYwSABOu4Po0/kA+/lfC0wAVZ/vEwDvB/YNH+07BwP8FALOwF8RICABheHeQBcGYCQHkeBzACMVhhX6KwYwLABJH3PlB/kHACAC4qxZAylcEADeDaawKBGKIdMHBg8JIBASmliD//gcAAIkayj7AIwCujNk1PPX++//+/cA7/sT0w/7B/v76OPzFyv7+///+/8IAE5rlMFYLALhDIMRBwMH/MRAAZ50aOfz//vYn/TgqAwpOm2mSeBzFb597k8Rx/8TDAIZrmsXAxcGFBMXqmSo8BADmoSQFwAsKdqR3p8XAAcHHy8DEw8EKAAumI0rB/v38/wvFmagQ/vn//Pj6OSAJCnCtZ6XDiAHChwkBirGDxwPFl7IW/QMAjLoXOQMEH7xDwAUAtHg3+/T2BADEvTcF/A8KaMRGxsDEBJ6cDgF/xCvCxNcA7cYs//78+8A4wfnKwf7/wf7ABAwEQ+M3w8DCxQSIlgkBFeRDwATFJukwKgQA/f9aO8AAGwIDUycEEP4LL6ACEBgPScHXEQcZX/5MwP7+mf51agQRBB1a/YkPFNQjaf//QML6hcUOEAQrYDIE1Uw8fX0DEP1AcAUNFNxDd1b//1sGPgEbAElrwEIK1dVJfcFbUcEFEBJTaTVTQgALQwHFAA9PUwA=', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (195, 'BJ36195260254', 'DATA FP PIN=18	FID=7	Size=1236	Valid=1	TMP=St1TUzIxAAADnpwECAUHCc7QAAAbn2kBAAAAg0MfWZ4rAO8PdwDoAGeRcQA4AOcPdQBJnvYPmgBZALUPTp5kAOkPjgCqAPaRuwB2AAYPWQC2nvwPdADPADUPy57eABsPrAAhABGR6gDtACQPsAD1nvEP4wABAegPup4DATMPeQDGAfeRNQAWAd8PfgAZn68PjAAiAf0PhZ4yAVYP6QDxAT+RdQA5AVwPYAA8n04OvABHAY4NyZ5JAUwNIgCPAWSQYABTAdwPfQBVn8gNsABXAYoMn55ZAc4OqQtQj9iVdX+hd0P2tYcyZbZ58YvC8y4FZuD4ezJvdwam/5xpYIaS82sB35sBjTMT7wy37WLn0Zx69M/93Quz+rV0aPue4CMVaPrtlM7yxfxSAnq5JpTX//oXiYY7IB2EQAS2vcOhNnqYcZLzkX4qY9dnlnur3PJF+SFY/TmWr/G38AMR3Al9HgckQQZhA0SDOp6AhJH9uQBchqFi6oojjxMPu4CIFqoTNH6BgFh+LxQMBbGBsYFEg7KZ3lEqKCAzxAILhQUFAFcSbQRaCp5rEmnAwMAFbwCeeRh0wgMAuR9zXgIAlyBw/8wAcLJxe3DBCACTLWr1wcHDAwCW6HfAjgG3NH10eAR4QVwLAGw6a2sHRcGXAbo9esDBonMMnq1LesDBwqB+w1/BwQwAlleywsNfwcHAwMJDwQDMyYJpDgCYXahWwl7BXcGMBAB+YIMZBADKaoBwyACJ73HCwGL/cATBE563dn11wHAFwMNfaBMA2ouMBcHH7H/Aaf94FMXelBJtwsDCbmW+wViKAd6gicCLRsFxYcNS/8MHAGWx+d9BFADrspdMw8MawMBzc3MOxZi16o1Fcf/BwM0AoykBwP/+//wHDAPmzPDAK//9/cALnsrgFv4+OM0As3oO/ixdEAAi6p8IwYmAwGQExevyvEAPAHr07ev9/mH/KzYUAQMxnMPuw4uHwnjBOsMXnuH9pIzFbLBS/cLBBhB9Au07/BmZEecDKUHDPggTfAQwWMAmCNW7BbP8SzYEEDDfYMNfBhCQHyf64sAKjokia8P+woLABY6PJkD+/TvAEIS0XWgEEOY4+EQHjuw4NCsFEEA6VKAYEBZK6cI7e/xfwTD9/vwqO/9IYxQQsVPMhAPAx1uWwVjB/8GZAxPAVmf+FBAip+JK0lYd+isiEtUxYXzBYkz9/vU+/v9ewftSQgALhgEDngpFUgA=', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (196, 'BJ36195260254', 'DATA USER PIN=17	Name=Suharsono	Pri=0		Card=[DFF2170700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (197, 'BJ36195260254', 'DATA USER PIN=16	Name=Budi Susilo	Pri=0		Card=[DEF2170700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:31', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (198, 'BJ36195260254', 'DATA USER PIN=15	Name=Daraswati Zakirah	Pri=0		Card=[ED19180700]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (199, 'BJ36195260254', 'DATA USER PIN=14	Name=Erwin Nugraha	Pri=0		Card=[BCFE080700]	TZ=0000000100000000	Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (200, 'BJ36195260254', 'DATA FP PIN=14	FID=6	Size=1060	Valid=1	TMP=SllTUzIxAAADGh0ECAUHCc7QAAAbG2kBAAAAg8cWcRpEAAEPVgCVAP4VPABkAPYPtgBzGnYPIQCRACgPNhqjAGQPegBtAHYVnwCrABYPeQCzGpIP0wC0AOQPYBq/AGAPlgA1ADUVwwAIAUEPtQAMGywPSQAQAf0PsRoUAU0O0gDjAUQVYwApASUPGgA6G0UPkABAAWUPexpHAREPigCfAZUV8wTCj+sPs/zpEqeLcvjjCVKCyWGvf5OCsYuu+ayVuHs3BuNzqxQRe8oCcoTuobb29mx3fHcj6ZIiDsD1A+y7/hdPtuiwEmL1pfVu/RINqRLX9jv4ahWPDmwxGA1KCdsYpAblE8/9Mvj+7UcV5uTqBtv7WZLsD3RnZHKRfxbtcPuOnZJz6cYrIOgBAusYiwMAczM//gYamjyGhAQAnUF3awUAdkL9PsMAbV97dsEHAHaCA/zbRQkAWVD6OjhYEgF4YX1s/VIMA1pi9P////4EQEQUAcFnkMFcvcDBkQkAb256eAWLCxp2cANL/0HCAGhve3fA/w8A2YXk5T44//9AwNUA0oCWwMCI/8K6wV4XATmg6f1XOv/85sMrBAAxoaiSBhoypmTBhRPFdqRnw8KAwXfCO2/BkhMAF6rg/TrC/k/8wTFLwQzFoakK/ik9/XYSxXivbY2MwMJkgFISA6Ovl5CDhMKqwZMXAaCvFzzAO/9FXwIA07gnwdAAZKHx//79Kjg6QPxd/P0PAF+9rMPDk8DBbsODEMViwUTAwJDC/8EBwY/YGQAS4skoOv782vzAwDH/KZBQBxqQ70aXAwBS9DfaCxDCC0DA7/z+OhUQSQzD/zhB/Dsm/zU7EhB3Ebnbw8PFxcfCAMPB28PCy8fAEtVGF1mcwoLE/sEBwqPYCRBNFDd3BoEHCnAULYAFEHAZReQcGxBgJbDs/f3k//39/f0qBTv95MD7/h8GEBEpQCH9HRBmKyRHw8bZwsPCwMHEBcLA3sKsopLCBdVgLjHDegQQ5jqGwvgeEeA/QykNxZDkeMfEwsLCzwPDx9vEUkIAC0PEAAMRRFI=', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (201, 'BJ36195260254', 'DATA FP PIN=14	FID=7	Size=1504	Valid=1	TMP=TStTUzIxAAAEaGoECAUHCc7QAAAcaWkBAAAAhJUqhWhEAHIPQwCVAO9nawBdAPMPrQB9aG8PzwB/ANYOTGiAAPEPXwBIAOlnyQCeAIYPewCoaBUPnQCyAMMPMGiyAFcPbAAIAO5n6gDVACoP7QDcaNIPzgDnAOoPaGjqAOMPtgAoACpmqQDwACUOLAD2aDUPtAD8AGcOiWj+AE8PbgDNAd9n6gAKAbQPWwAPaUoOjAANAZ4PLWgQAUEPUwDXASpnqgAdAUsPggAkaS0PvQAiAYIPdGgpAeAOyQDuAUBlawAzAaEO2AAxaTUP7AA2Af0Ne2g2AXAOcQCEAX9mnwBEAV4P8ABOaR0PZgBKAS8P7GhUAUQObwCkAYlnb4BjB4uLY/rXlLp+0YdugNsKYerUf4p8uox6AMtnpAeGhE8IoIItl178VXTGdK6AQfjnET8AdvWugON2d4b7ag9uHwiHjtYTmfvC/V55fhbulqvryQKk/7Lk3Ate+LaWDAid5EgCVfh9hGzfjeoQD90HpXREfEEzdPRNBR4s3K9hk6+AiYIOf7eHtZnQ/V0C6QzkEaroVxWODkIXdAVBP29RQQXdAo8INWnr7WqOVQQA/dKW9UPBceFmHPzKkEsNtMMNKCwxbnAb9jsIjvQT9Q7vePSxkZnRrJCxtOwMtvHyFmPnBoA28Gc0fXCYSs02AwznAeP/YKayfMMfhxoYo+kAJFUAAkwccAbFdy0fisEIAJcrv8DGqf6HCQB9Q7LCbwEEAIVE/TbPALstjnjDgcELxX1NGXFlw18HAAdUjRyXAwBuXvQ6BgT8VgBA/wkAo190FsHBwMMTABFtlAeFwHfBasAHwgho1nSJ/3fBRHMOaGR6aU3/wQSRF2jef5CFwmxDUceUxcEKAGOKLP1LXvwSAOKXkwWAbePAwYvAEgAAmo0Qwv+TfGqD5gDAyIH/hsDDeECTcfXCwsaTi8YEyQFozaAQNRgAKquYqcJfwcL/k0FzhzsGAMGuDzX9BwTJrgD/+8E2wACd23uSBQAxtZLAe2UBoLYDKf0FPzpJAffKpMJ5B8HE6IqHw8B5wwTDwKzEh8MNAHAL6ftC/vxBLgwArdFe7MDBxMLExgEDBIfXJ/8FAOocK8QODwBu6NwjOP74QsBBBgDQ6/XAxCIEALnvMcD9BAR+8ENZBwDqMDH7qVQIALb4qQHFwMgCELUAMP7AEJJqQSMDEIkDpcIReGYZvf39Ljj9/0b+S/7C/f3GEIx4W/8eEI4Rlf34kfv8/P3A/zj++pb///v///46/sWXwf/AwMAI1SUQIcPE/8OPCdUsECjDwcKZwgPVUxJcwhEQbhrMOCz9kvzA/v3A/zspAHgUIUBlAxBuI0iXBBBHJTDDaAYU0iRG//81BtXAISv+NQUQxi+GNQF4zS9A/y4E1eo9VWgEEO85NOAFFHU9N5cEENr5PShtEZpFXsD9OgMUi0dA/gQQoI1XLWwRN04eiFKHAA8rAAAAC0VS', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (202, 'BJ36195260254', 'DATA USER PIN=13	Name=Jefri	Pri=0				Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (203, 'BJ36195260254', 'DATA USER PIN=12	Name=Mochammad Rila Alafi	Pri=0		Card=[DAA6FA0600]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (204, 'BJ36195260254', 'DATA USER PIN=11	Name=Ananda Karina	Pri=0		Card=[B958FA0600]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (205, 'BJ36195260254', 'DATA USER PIN=10	Name=Rahmad Nurhadi	Pri=0		Card=[586EF90600]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (206, 'BJ36195260254', 'DATA USER PIN=9	Name=Rakhmat Januardy	Pri=0		Card=[576EF90600]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (207, 'BJ36195260254', 'DATA USER PIN=8	Name=Zuleka Endah Pujiastuti	Pri=0		Card=[4647F90600]		Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (208, 'BJ36195260254', 'DATA USER PIN=7	Name=Yogyantoro	Pri=14	Passwd=123456		TZ=0000000100000000	Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (209, 'BJ36195260254', 'DATA FP PIN=7	FID=3	Size=1560	Valid=1	TMP=TdFTUzIxAAAEkpUECAUHCc7QAAAck2kBAAAAhL8rfpIuAHUPXwCCAPKdlQBPAHwPeABrkogOzAB2ANMN3JJ8AJQNdQBGAHKdfQCMAHMPSgCLkgUPPQCTACoPtJKSAIcP3ABSABicYgClAPUPYAChkhMPiQCxALMPypLSACwPrwAfAJCdpADgAH4PXADrki4PkAD+APIPeZIBAUMPzwDFATKdvwABAUAPlgABk0wOPwAMARYObpIQAUYP6wDUATadWgASAUwOlQAck8sOqgAZAX8PjpIbAUQPpADmAcGd3QAnAUUPaQAxk9UOygA+AaIPpJJAAdwOhgCDAcidaABNAdMPhABUk9QPUwBRARMPlZJQAd8OywCWAd2c7wBeAUINq4E2aE4DboGTfnqDrpgi9Y+KCXTL9EKUgIT9jJr9RIAh6YMMMAcdd5uCsG0UcW6BBZHIk5pmp/+He49/lHWGFssCHYsSCS+XahdjgpqCRY0bnBaC+2TSdb4GC5jOIZf7WBtOZCNo6H1cUV5JqfjosTYOIAjF9ZH3/A2lbGwDyfhiBLvyOZ6fiNYSXQC8haHvyAmhibWLfPwZlMz7qe/m/Br0pBUwCN0AoIO4fVVrHfcF66Z8jIMBnegDkA/t8YyDEYWY4/ISDfiYEW2NWJH1J6aUQAgBbBwT1eyt8+v4IWynCC4CrQFvBnOdLAGlBqMNhBSFlIMOZXW2mY8Hyvve3PP/P3927+ORIUYBAmodyQQEKCoMQwYApekMQVIKAH4uBsI+wvvI//0DAHcytcAJkmJD8P8x/zrAxNIFAFtJbW/IAGfY9j02/v7C8goEAkyAb4N0CMWYS5vB//3CNQfFkVfvgHgNAE9qMcBDbfzA//5TDsW5aALDdW16wcPIAL3giGnBe4DBxgDYEhf/BABxg7+SCpJyiP1eNT6OCgTjiHfCwHV0yQB9HnV4wcF4hsgARB3sPf3CwP2EwAiSipB9woD/TmoOkrWUE8D+/448FZItlufAQD4F/vuqUgQA4JYW9gUEq5Znw18EABubGtgNAGWh8f/uwPmhwQwAqaMMOzBR0wQAoaSJwkEMBM2mYmZpXMPOAKw7EjzAPkoQxYWq75bD/3xYwDrAFpKMsgz///87/vpSwcD+ZFcIxYWw6MKSwP8DADXULVILAK/Wnp8BxHSXAdDWKf9SzwCvSJahxsDCYcIApk6RxsPGdwzFs9q2MMD8/f39RAUEM+ODxcbDB8Wp57b8J/4EAJY0PXuWAZ3xNMDA1ADKabDBjMKPw0bCOZgRkQI6wf85//pvSwMQ0wIwOwUUXAI3/y4GELwEQsT8BxB/BD2F//ibEU8GU8NAgwUULAc6/h4IEPsQVFLBPcAFEGbRRkWREe8UMMAG1W0R0Tr+BBDpFfJoAYJWFkxMBRCbFk1tSwkQiRbABfz+Z/sqBxCHHoY0MZYRjh49/f/bEPmNsV1vd3zBUsPE+8DBWm4EEGYnTbsFENorQyDBEOS5OxoHEMY+of18UgQQykJX+5QFFHRGT/lFAxBLVGRtBRDHVm1El0IEmUIBAAALRZcA', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (210, 'BJ36195260254', 'DATA FP PIN=7	FID=6	Size=1228	Valid=1	TMP=SttTUzIxAAADmJ8ECAUHCc7QAAAbmWkBAAAAg0Ude5hKAAcOiQCUAI+WOQBVAGcPCwBdmBIP7ABlAFQPt5huAIkPaABZAHKXqwCoAIcP+wCymO4PIAC4ACMPpZi4AIUP1QB5ACeXTQDPAGEPGgDMmKMPkgDdALMPv5jgAB0PYAAgAFqWMADqAN8PAgDpmJ0P3wDzAGcPb5gDAVINTwDRAUCWMQAVAUYP/wAkmcsPnwBEAe8PaphIAbkPtwCLASuX5QBcASINEABcmasOiX33o1aDgh0OBf97F2Pe30Bje4TWjPeLv4Bokjpv4niT/Tb6fBxmExvvRQTKZMCbCwjCkIOAV/isHc4JxQBSEu5oih23C+OgQggLdIEejIEiAT4JJ/INw4YdgYBSfr9+yWBbCKd8goInm5wQgID1/8L9qAuhmXOG4viaEdbdouO//CrxZX3/BP3zYIWZi9MTrAfU6mqDx5Jj87J76ptvgWcI2Xgq/Oxj0IhuhWuDuPxchyE5AQIaGlkGAwoiDFH/BACyMINawQsAjzID92j9rgIAQ0b0wM4Ab6X8QFVPBwC5RwXUTgUAdEqAsgUDSWMaZQ0AsK6PhBzAwHYDACqr8MCWAUxc+sEv+ztzlQGwcYNNXwTAwvgHALhyED4FBwP2knrCccANxXSWYv7+NzJBB8VkmOzBwsJGCQCpnAPG/MI2BABmZXFyjQETo+D+TDr/Rcz+MsDD/A7FpaQRfcT+cMLBRBQDjqze/v5X/47AQ2dUwBQAG7Qb/v3PLlT9VFMPxaK3Hn2DfHHCC8WquYj+QD1mBwBnu4BYisMGANm82UP+mwFHz2fDE8XbzAZ5icCQb8I7wsCbAUzTYsEExeLQuksEAI7afQbDDpiX3gb+/E8FTIyQAbjekITDB8IAmI/gd8MGAJnlY1rBkAsAYemZfsBmksIGAC/tm8LDMAgAy+4i/4HAwWMbAODup8IFw4X0icDBbsHBOsHAWcMLAJXwCTj9/GXBdP8RANs3on8Rw5FyiAYAJPYkZ8BDCQBl+ZnDx2eNwA8Ab/4f/CdmKf9a/woQTAL+Yvr//2rBB9WRBIb9UsAFEIvMMFadEWITScKLwBBkizz/wv8HEOkZU1v+kwcQMxn4/oZcBhBPHEmJSwQTO0QkPwQQnoItwlgVENZbsHM6wMIGycTDw8LBBcLCnxGPYK3//4YIEx8UOsDBhMOXQgOTQgEAAAtFlwA=', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (211, 'BJ36195260254', 'DATA USER PIN=6	Name=Ubayt Kurniawan	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (212, 'BJ36195260254', 'DATA FP PIN=6	FID=5	Size=1400	Valid=1	TMP=TVtTUzIxAAAEGBoECAUHCc7QAAAcGWkBAAAAhMUbkhgpAJcPgQCNAIwXZQBRAAkP7QBwGHYPhAB0AEwPZRiWAHwPuABeABgXlQCsAIkPjwC1GAEPYwC5AEUPQxjEAHIP3QAAAKQXrwDJAI4PWgDJGBcPPQDXAKgP5hjeACEPYwAgAGsXKwDpAGMPHADvGKEP+AD0AGUPyxj4ACIPNQDXAVIXfAA0AScPJwA+GSMPTQBQAfcPvBhTASIP3QCTAaAXQxJPkzcTq4DW6jcDboCbgJp3J+f2czd7tgNegF8UQ/1ifef0E5ariLoKLnUa/iNuzYmMg16FjYO3ELod1HVlBf703IMiGl4UaXiWBnp0ZZAfjT/+6f2wD+Z2uIAZg4KAZway59PzAftWDz7wuZg4gO4AgoCrAFqaOIQ6AFqGJ/f38w7rx/ZvByrToZvKABcDOw7G31cLZ4FLAPP/YIdmnZqH764CAuVCBRqzJJ0GAFLXBvvmWgUAPhkDOv/7FgFxJgn+V5LAxNjBwAkApx3TU/vYXwYAth0QOFYAGDwiBkoOALUuFHBVwFRvCQBnIx7aOcDB/wsAXCsU507AwcBaFcUWNu8/QFPAREQFXA0YFzr6OMH+oAQEDUL3LAUASIYGUhsBOEeAwgzFhU0U/8E+/8HAkA8EcE4D/0DB/QT/YCMFAENOfXrKAGxNDVdKRErB0AASRPtUPkRgwIZCEhgXZfrA//+DwEbnRUREBAAVq/dGHQFMagNGFMUscBjBVMDBK8D+XWIVARaE98A+gkHFCQEVj/RGVP3/QlIHAF2UfWsHFgQOlvfA/8E1gTXETUv/DABll8ZBRy/+BgBdmn0H/20RAbyaFjZRBQQEo54cSwoAkWKMhHZYCgCQrYmzwsbmdwwAmK8QO1T758F7DQBOsThDP+bBwP/ABQCUt4eMBwBnuQPAOkMDGF68fXKNBMVDwGKIBwBLxP2KwPsdAUTJdHgFxeHNOMFBCwCjy9X+Rk05CwCi0RaJU04bATLdbcAFxeHnPMP/wBcAFSDpRdr9wf/9wP46RvvYwWTBFQAuI+3GP8EpQcD/ZKEIBEPmccJ+bAbF0vk6wcBgGRASy9z72EH+/cH9//f/R9j+wsH9wQfVMhJCkIwZEBMaH0T62CIw//7A/zpoxNp8CRBjHAA9/8VJ/gYQYiEwB1ADCGohKU5hBtVeIiLCwHMXEBno1zrYMfwuPkTABXMACBQzQEoFELo4I3ICEOQ9IsDUELBWpsHAwGzDA8TA2cXDbRcQ2pGkxE3D/3mNksOimRUIamCp/8D+Pv3+4fr//2RfFtVLYqn8w/z+//07/Pjl/P///8DABMB1DxE9W7TA/Tj/++X+/f39/f46wPvnwMDAwcJShwAPWwAAAAtFUg==', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (213, 'BJ36195260254', 'DATA USER PIN=5	Name=Febri Suhandi	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (214, 'BJ36195260254', 'DATA FP PIN=5	FID=5	Size=1548	Valid=1	TMP=TctTUzIxAAAEiIwECAUHCc7QAAAciWkBAAAAhLUpg4hfABMP1ACgAJCHOwBoAHoPXQBziBIPiAB7AFUPz4h/AJQP7wBAAByHUgCHAAQPSwCDiI4PVACSAL4PN4iWAPkPzQBhAJaHMgCmAHcOXACoiI0PNwC1AD0PuIi+ABUPUgAGAHGHqQDHAI4PoQDXiHUPUwDfAD8Ph4jeAIEPuQAoAImHrgDyABIP8AD3iGcPZgD1AK8PoYj2AIgPUAA5AGeHSAARAVkPcgARiY8PyQAWAdoPlYgbAVMPSwDkAUiH5AA1AaAPTgA+iSUPbwBAAeIPpYhCARoPYwCOASOG1ABOAZUPUABTiaQOWgBZAesOs4heAZsPrYdTAK4PPAMSf2OD63pLCDIA5YTFhdMAGIvofLF/vQMzfSqO84UOh8uIfYvuhSOOoAPJfeMGxPODhHIGyYQHAIYIR3yuAtN8DIBFCPf+IgCq/s96OQhHAJ6E3YqDhAYCKAJJf6J8IHqajCMDdX2pAtv0aQFEh6mTkgyjGR5zYX9hBjYCmYfYB6eFKQcGbYMNjYK4c9b55Hsg/iJ1bA4R+q3/oAzxctP19XGeCW994RmHgxKXdjDvxgJG8PT66VMk/wyCC3oWbQ7V/1eAuYhQB7b4vXYw+ooJPACx+EoHA/RedXZ9sY6OgCMNLYAzCAvn0gm3+Y4JiufXMvQB5UkFinkcsQQAYYwMa48BuEoQQ1XGALPYFsADADBTMv0AiK9XEP/CBcVIXnUqBgCLXQw4XAOIrF0Wa2AJxaJbnsFWwEMGAPZhB0hGCwCJYheuwcR3/nEEANho1loIiINwHv/EwftWxYsBJ3L6wgTFUGiLOQkAnHYTBcFC4wsAmXsXbY9XDYgifvA1QP/NAC8M9sD/QP8DxVeAiP4EAE+HgEwMBPKIDMDA/cKlwGSHAVaKBkf/BP1y3MAFAJKKDDpNC4hZkgNBU1w7wMV3CwAhpfda9EQOiJSujGqLxDoDBBWuE8ASADt19zy2/kT/wv/ABf8NiD62+j1L/8IAxDYR///CKwTFTsXyfw4AVsL9hf9T0EoHAL7DF6FGD4gjx+01/0aLBATGxneDCACsDBNR3wcAYNF9lAQOBODSAEDAwP2u//t3BwBh1nrEnwQE992DjAQAhxoJXY4Bf+GAeMLRACZr5v8+/MH+OsDESPzBwf7AOcgAr3mRwoHBwYgFwQOIsvEM/sBAzwCCfIGgwsH/lc4ApXyNwYuDfwfFY/Hjfo8JALL21v/FvTwKAKn5E5A7fIQBl/yGm8MEw8VJjgUATf5kBIENmIcBeqeJxMAQkon8/DoLELXVk8ZKwsHFwZ4E1UcQ1pcGEM0VHDr/xEoIELMWk6ABxMZNCRC7Fx7AOsP7SMEDEMoaIAUGFAYdXsXFnQrVkSR1+j7AcgYQjiVXS8GZBhCNKPjH+wYHEJ4oFlgFBxQbLCSLhAYQWS0a8MAFEIw+J00FFPtCK8RrAxCoRDRLBBCkRh7CuRIUd1STN8D/wQfAwEzFxcXDxP+XQgSDQgEAAAtFlwA=', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (215, 'BJ36195260254', 'DATA FP PIN=5	FID=7	Size=1312	Valid=1	TMP=SptTUzIxAAAD2NwECAUHCc7QAAAb2WkBAAAAgwUjl9hQAIEPrwCvACHXRABrAFcPaAB82JcPPgCLAB0PadiUAOcPVQBbAEfXlQCfAHkODwCj2C0PgwClAI4OntivAIMOkAB0ADLVdQDJAMQPJQDP2K8PkQDSAOwOsdj+AKQPwwDBAaTX6gAFAZ4PZAAP2RoPUAAOAecPr9gVAZsP3ADfAYzXMAAiAR4OWQAh2ZYOdAAsAVgPQdgwAZ4OrgDxAY7XywA4AYYP8wBA2ZgOqABEAUMPethIAY8PoACKAQHX1wBQAX8PqgBb2Y0PrQBdAUcPHbku7UMLoY07obBzc4BfFU9yaHVFxg9vxpRygHfzCn6znKZzLV4fbEQgMPh5MVFJP5vIcIKAVR0p1YDLd4+oDI07RLMo6Rphy5yilY56RoQMyyYL5mQW+OOq6iVAiSkKZQWED/nAPBNm+mv+RIBOobCGygWuhrqEglhIBbH6zfNX6EnRgIKehE79CP22pggOHRPaCu8TPt6AgrJ+QQhQ+vrTKAuB+9L5BP6hpLp7VYTJ+PAGSt2s9/qOWXxkgVGssPt2/4/4CP25K+6NoYG5/gf2IjX9+gUgMgHHERhiBgBPRG3DBcFa1QGqSo+AwQXEcrUjAJBOg3kHwXmjwsDBXP/BBP/GHMFpcVYEAPVSXbgLAJhSDP71R8PVAZBTg4jCVcNh3QGyayD/VcoAQrdbwnHBZ8GAwR/YqXucw8LEB6BvsXHCwmx2xDsDA8F/TMERAD9N1sMl/irA/vzBOcD8nxAAZ5HX+zj7/uNDZIMQAG5W5/4i/DNKwv/CBcAV2OaRrX7Bg0XBwRmChMEMAGdcSYMniIQXAMecbGvAeJyTgGpzBcWPnqLHpA8AVKGDcIAYw8HBw3kExc6h8UwEAN+jLZwJA8+lScJkUgTFyaf1WgkAgKtPAXrAqgsAobIk/5DBw0ENAIW0Q4gHwmlXDQCTtCfDOcFGGsJvDgAwvIN+whiQgcIHAJUBJ2EnwQQA49AnBMEH2JTUKXsFAFXVMhqCKQD34KkF/n+K/sKbwpKLB8HBGHDB/sOMhATCwfgB+/eiV8DywYNNw8TDwsLBBP/CG8HBwcGWBNW2AcJ2IRDoBJ4FL8MnwMLAwsTIB6xsXHbAw2TBBNVUDPqACBBPEikHwsGyBxCwFxfCBkQHyBseN6kEEGUlFVMEEEY1F8GsBBMWOQNlBxCshgDDGFsFEDpFEAVXD8geSQxew/8B/8OEAhB9SwnCwRCnlfxEBBCkUsN1AMgoVBbFBhA3W4Or/lJCAAtDxAAD00RS', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (216, 'BJ36195260254', 'DATA USER PIN=4	Name=Teddy Munawar	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (217, 'BJ36195260254', 'DATA FP PIN=4	FID=5	Size=1460	Valid=1	TMP=TQVTUzIxAAAERkYECAUHCc7QAAAcR2kBAAAAhOskjkY1AIcPvQD6AJdJWwBPAHcPvwBQRnoPMABXADYPS0ZiAPgPQQCsAGtJMgCGAGkPWgCMRogP5wCMAFgPU0aVAPwP4gBdACBJlQCvAIoP+QCyRlgPvQDJAOoP6UbLACkPrQAWADxJbADWADUO9wDTRk0PnQDeAIUPUEbeAD0P7AAqAD1JvADwAEYPRQDxRqsOswD4AH4PhEYCAYoP1QDCAU1JbwAIAf8PXgAgR3cPgQAsAUIPyEZCAdoPVQCAAYtJgABLAX4OrwBIR/8O6gBXAawPSUZZAYcPTg3G9WNUdg1jGz8PmIIWumsJjgTa9b6EtcCf/IZ/+YiYgh5CAHi1fmYIL/wuKPdzRgKfE8ZnMD0id2cXFpYnpzfKLYuX/bv3BwIaETJMdg0GX5Ycub+78pLqmvEe/BdDMAmx+Xb0ePtyy1L0AvU+EfIbLU9nhVb9NQsL8euiq/AKEcv0ZY/iVlv8GSA1r0d1rDFrfdZ1ueCojTJAGxDaBMqRvHVlEa96ffOy76L46VU7CFaKwnH6Z2vVQAkBkvoTRILCvovzEXKBgjN4ttfOI7P3yfkviPdM+99eZAcg/wEGNR6jDQBzCsxHS4bBPgYAww3T/lJOAawRBvxEjw0EKRUGRDtdUs0AZ1j8Kz0EADfo9EZOAWQmAP/9ncEMRocyhnh0CMXBRVxLwDAVAB+N8E+H/GD/Rv//lksHRlRPd8EQAPdS9HP+S8D//0w6CAQwU4PCw0XAzwB6EghLTFUWAN1X7wD/wEMy//+GN8RFAXZYfcIDxSxdNsMNAFNm9IUxxHjABAA9aHSyBAR5bG3A/xEA8oT0CcH+/v//NgX/REIBm4SQiQjFb388dnsDAC+FqMETRhSJ7VVPQfDA+w3BwFoXAKNPGkOG/0zBM8D+O/36u8MuDACbi0mAgobD/8QDADFJacRQAVuP+js8OkT6ucH9YCcDAC6PGrkJAFOWcIAEgBBGWpb6//47hMD7fUckBADml9szAUbinCfARwrFka/VwpLCwsPAzwCU9oiOwcTBk8wAPqpBwsLDwcJaBgTesxz/MQYA/LleMsAQALnFp03BjIXAwMGJBQAEyy25Nw0Au80wBf/7uv4uwCkJACnONIT9xPrBQgTFcdex9/oRAGnZhsXBgMfJwsXExwbHwIOpFgAu2lBDxMeGwMOO/sLCAcDGh8PDCABU2hX9+Lr8HRQANduMwJ+EkMN8xcDCB8LESgGh4TrA+zn6+70l/iIAUOKDp8bmqcPDwmHDB8LA5sL/xMPBwwedAkaa4kP//Pg6DQSt8zQ7/v3/OMD7uf4JABn4TAPAx87DEhDRCkk6Kfq5/8D//f/COMAwVRHXCkD9/zspxLg6av4+CBDRITCAwZHACBDIgmf7ucHA/f8DEN1eDYdTQgALQwHFAA8DUwA=', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (218, 'BJ36195260254', 'DATA FP PIN=4	FID=6	Size=1128	Valid=1	TMP=Sg9TUzIxAAADTFAECAUHCc7QAAAbTWkBAAAAg/EeZ0xJAHIPrAC1ACFDfQB9AHoPSQCWTIYOVACZAIsP40ycAKcPuwBnAKdDcACnAEEOrgC0TDIMfAC3ANsMj0zAAJoOzgAEAJ5DdADHALIMewDQTJAPegDUAFwMzkzgAIgPWgAtAJ1DvgDoAIMPIQDsTIMPMgDwAFIOVEz4AIoPrwA8AH5DewD9AIsPCgABTXsPeQAXAboPw0wZAXgPVgDYAX9DtgBBAfgPCQBMTf8OrgBbAbkPPLcmU1snv5wSqZTNMPdSO28sZA9hBE9qRgxaHt7UVUkvDjMbBgkf/WhQjBBpJdL0iBQeuHiB5ey1bLyFfjFc6kUDQQ7jFI21ABihlHmByAkuXcz2mejJA2x/ZkiY+RELKRQLBvla7Py99V0KUP9iR4cC9g7i+sofvqD/AToR4f7XBDFJOA96AY7upAfqt7P4xfd+BWf34k+3/VKD/v0D9ei8oP7Vf1KD2Ar1yDqK0Yf2gBYHbt7xGCAtAQEHFglJAWs2fcF7wwBscXyGwAoAo4EiwgY/wgcAYEa/w3CPDABoR/3/OcH9sz9EBwBgTLR7fEQBsHMkwf4EZBJMe3mGxZbCBMHCj8XFwsH/wc0AgzIX/sBYwAzFeHzMx3nCjqUTxR+FkD9B/v4uwINSF0yKkJPDxsMAwsOIxcHDwsCQlg4DxJeGw8bFwwfFwon+w2oKAJBdIGfH/sINAFGelcLBj8KWwsF7FcW8nefDwMGCwsMHwcGMw8CCRhMAcqCjjMF1xMLEwAZ0wIybBQCFo5MPxsdHAY2mIsNRB//BAwcAv6YicQcLA1WtxvzA/kw6/f1CAXRbAyo/OsDCjYUIAHqzui3+j4wJAHu7KcYEbv5LAXnLHJJEwQDSrg6ABAAv5tJ/BUz69H3ASQTFIvdFaAQAqv16+wQDsP+AXQ0Ayzp6WBj+ZMANEMzDd0mMwfx2UxAQOgh+jHpRXP5zDtX6EjbBb0BrOwXVOxdPWA4Q/xh3BVtuCT8KEL0Yd51WV0AR+iN3wf+TwGONBxEDLnrABV0GXPQ7d1QHEHZBeYxcwAUQyFC4UgdcqVx6bgUQJV6Kj3dSQgALQ8QAA0dEUg==', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (219, 'BJ36195260254', 'DATA USER PIN=3	Name=Fitri Andiani	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (220, 'BJ36195260254', 'DATA FP PIN=3	FID=5	Size=1160	Valid=1	TMP=SidTUzIxAAADZGkECAUHCc7QAAAbZWkBAAAAg4kWOGRyAHsPqwBZAIRrWQDKAHEPDgDMZIoPPgDYADcPhmTnAHkPxQArAIlrZQDxAPgPpgD0ZHUPrAD+AEYPK2T+AO8PwADGAQ1rUgAIAXAPcAAOZRAPNgAOATQPcWQgAWUOvADmAYhrTwA/AVAPSwBAZUcOOgBEAZMPXGRRAT4OlQCdAS1pOg9Hixf34v9Mdy7/foBGeoL8PWQ+fU8KeoAjB6Wbf4F2Bh/4hH5hbL8A0Ibli7uB1xpsBvr+KXTMdeWctAGag2r/EPz+6TyG8f7te0+AUmAYkKWKMQVPgHwZu/ZCI87zbH69GKcKqf1RFtLsbn7f47MIIQn/GugC5PLS6jv4wOrYlv7LH98YIPgBAV8dcAUASz24wFFnAVxbBsAFxYhhbVUFACleA5wDA3Jq9/8FAESsAMMjCQCAbAP+Bf/CMQIAN3CAwsYAPBf8/wsAaHLGS1g4AgA3d3rB1QAv5vbAPkL9wYBTEWQXkffAUz+OUltoAaeZjMHABGz9pksFAK+dDwRVD2Smn4bAwMCqZMJjAaCrBv9FBQsD+K2GwHRvwDoSA32x7T///sE7YvybW/8TABbGKERDI8MrYMAGAJHIdzjBCQBcyfqKwP0NDgDHy497TmLCpVITABXP7Y7AwplhSjZdBAAK0hM9BQA62nBs1QBBvvbD/T44wTr/w1kJAILmesEEUsNvAYDs+jL/B/xUaQHA7YlZfARiwmgBdvT6wP2APUh3ARX16f7BO8DCUv89U1kIAJr2dByCBwCo/IlOhw50ogCDwcGFAf59pQcQxAAMOAQUE5MBlnD/doMEa8KlwMIGEMMGyUDCYxFODXCLeMIQu2oO/0XBBBD3EWQbBxB2H/c7OwgTCiFtw8DAlMAQqUCIlgYQbyWijcNiEawlCTXBwxBvSmGRwBcRA+qXwiGRaonBwHsHhgl0czXr//3+OEfCchH8OpNKakyLwaVqwYsREPT7k8ObwcDBlv/FOpDCYBFwP1OjBNVNQTdsAxCLRFADAxNSRF7DAxA7jVfBYhGZTAb+QsEQojIINg8Q/F9fcMObicXCxKkN1YFh0/z5/Pv+/zrAw6T+ChCUYrA+9vuk/8H/wFJCxQtAZQEAC0VSAA==', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (221, 'BJ36195260254', 'DATA USER PIN=1	Name=Ika Arsianti Dewi	Pri=14			TZ=0000000100000000	Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (222, 'BJ36195260254', 'DATA FP PIN=1	FID=5	Size=1252	Valid=1	TMP=SulTUzIxAAADqqoECAUHCc7QAAAbq2kBAAAAg1cZTap+AGoPQABGAO+ljwCOAAAOWgCNqoEOVACjAJMPWaqvAOMPuwBrAIyleAC2AE4PPQDBqqEPZgDLAIYP8KrjACQOdAA9ADulPwAGAUMPTAAcqy4PeQAnAYQPj6oxAS8OYQD7AcKlsQBBAaUNdgBJqxgN4gBLAWQPUKpOAcIOgQCVAcenoABRAaAMpwBXq9AOwwBUAVkOjipTFU+IiYR7msCjgIDWt5tyRIAlWWI2VHfm7RNuSyXPoKqUlhNKkvxZkA++bMb773xsuXYjHffuYCvvJS7+l6eHdgs69IRSNg5rh1MHSADCW//7LRVRFWeADqrk8aJtHQI48qEqEY45Bv0L2XZ+19h5VgRjiK79zlqcAsMAOvR7JIk/0InB/mLc+BBuuKsMfYWF+x/8Q6j9ACA+AQKZHcGsAWkoGsVbxgBZkHDBBwBiOz9AWKcByFCPwVwEefwpEQDXXpBxOsF7acDAwmQTACZskGrAaWeMwcC1wROqpXCJwsHBB8LBasHAwcDCwAcIAwxwDP7BPv/RAOTcksDAwlnCOpbBasBbxRIAsrmQi2jBxMDBwMEFwXNoCAC0fRBBBP1eugFDgefAMDv//Wr+/8DAMwjFTILDd8LBwhUANoeZaP54dMLAwwfAwWv+cREAkom/wZJuUcPAPnsKxZeKo/7///5Vws4AkjkBLv5TZATFepbakhMAj5h9UsGSyMNDwVcFAFOZAIAHANC1IMCfCgP4plrCcf/BlQ4D06hijJDAZZYDAzWhhsIPAHdhZ4tpa2T/eA4AT69qbMDDdf/BQz4EAyirZI8GAIh9VpFoBhCFBjR3RQYDZbwkV8INALK6VAjBZcDAIBnF9cMIZcJ4k8KQBMHCL8FbBwDUzeX/RmsaAQTMq4WyeItrwsDD/8LABcLD2QgAY89JhzpkCKppz0PBV8Q5wSmsAdfZIv9SwwDVSyVVwQYA1i8pwvAGANDsJ8A6dwWq1fwreMEH1c8Dg8HCZwcQzM0nwsjDBwB1+j2zMAW6tQ8pa8IH1akKg8HAwmELEGUHLtrBwcHBwMHBEJGyKHEIEL8K7MFn0gYQxgona6oJExIKJ2RpwQbVPwjswXwKEJ0P7mt9wQgQmBUrwQXBwlWDCBCKIi0HwMJrZQUQeSo64QMTJjIrwwQQtYscX64R5k8awvzGEI/4W/4DEKVU0sAHupFb/R5SQsULQKsBAAtFUgA=', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (223, 'BJ36195260254', 'DATA FP PIN=1	FID=6	Size=1428	Valid=1	TMP=TW1TUzIxAAAELjEECAUHCc7QAAAcL2kBAAAAhNMmvi4uAIUOkADxAGUhZgA5AOQPZAA+Ll4NRwA9AJ4Pzy5HAAMPnACCAPwjtQBLAHAOSwBXLt0OngBVADcORC5cAN0PUABNAFYhyQCMAAcPUACXLl4P2QCcAEUPVy6gANYPdgBgAOQhLwCyAE0PDQC3LmIP0ADEAJ0PMy7JAMwP2wAVAB8g2QDgACUOUwDtLjgPNwD0APIP0S77ACIP5gA+ACQgsgARAbEPKAAQL6MOTgAYAXYPWC4fATwPpwDkASAhawAvATQPGgA2LxcPhAA0Ae8P6S5JAZkPoQCQAach0wBaAZYPqCslqUQXLQVJaqeEHqabhrcIcWh0AUXcI3hugCP/MJYhrQunWZjFCCgdDUCAgpl6qexM5W5SSPwVGH2Gq4TToob5aX7jdI50naS7pvepjoHaWT/RoHpdH0oqoIa21xuKJg2OgfqQYawjehP+TQ0850JnSDzZ9V03oILyuY74CcSt+Mu5ISKgBxHPb4i6F1c1c4cKb2/+pAQh0YOB5QCVg8v8LaO7knd4lYf3jIav3HjqgXZ/EIhtJFoUOXXK/maB9dRUD+qBlX/7dL6t3PtCCnqLVIdWKqr5gnvjDGaB0tK7g3P0ntzS4RwOOwECQxyXwABwPGh3CACHFLXBx+/BWwgAXhWlW8V5BQCIGmnABxEEhyeDxMNiwARndtHCCgDcLYYE/PrpwcVcDgCL8V76Sf6EwMBZDcWQPHI5wv+DwP8HCQSzOWfE/v/ABYUCLqQ5+kb/BMVkOE7BwQYAQj6lbcUpAepAg8FXAwcEaUBXUmYLAHVIfuj/wML/g8LAALxlAUMPAPtcTHvF74nBwMHAwsMAOU5WWcAWAPujkMBxcMPAasHBs8JhOQH9cZOTeE1neu7CTsEMAP+yhmLswIF7CwD6RYyA7ICEBQDMicY4Ai5NilbBwMIEBQR/jVDAbBMAAYxz7f7EgHOJd74cBNCNkMGMi8QE/4dbwYT/wZHEwADIoQjAQBMAklNigbrC/8LBwMOAjh0u1JmGwsPCBsKCSMN+wsDBnaoEBPOcDDMUANVlg8axjXHCwIvCQQcEfqRPwf7DMM8Ad4dbw2d0wAnFxLVfxJvCgAUACbIEDQIAKrRWwsIANJhNwf/Bbg7FxbNJxZvCacLARBcFKsCkl8KbxAfCxezDwcHBwMI6wsYiAc3GYMSnBYl8KAE2zElSws0A0/xSxsVqwxLF/daywKHFxMOQBnHF7wUA4NQWQMAA3/cfwGANAP0bnsXqxMfGl8GDwwDfyybD///+BMWV6hl5BAA1+EOoBRQRDD3/wcAD1U0YbsEEEFgiPTrDAj5eIjRRwwnVqyYMwcHAwpAK1aYhBYJ5wf4FEK4xMO5uBBCEOStTUkYuCkMBAAALgFI=', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (224, 'BJ36195260254', 'DATA USER PIN=2	Name=Fatimatus Sa\'Diah	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (225, 'BJ36195260254', 'DATA FP PIN=2	FID=5	Size=1280	Valid=1	TMP=SoNTUzIxAAADwMcECAUHCc7QAAAbwWkBAAAAg20be8BQAIEPXQCnAPzPPQB0AG4PKACAwJYPgQCEALoPJ8CKAO0PagBfAPzPlACcAIQPVQCkwH8PggC8ALAO6sC8AJkPvgAGAIXPlgDVAHwOpADUwGEPpwDqAKwP6sDqAJYPVwAxAFbPrgD9ABgPuAAJwToPKAAPAZYPasARAUUPSgDcAUbPPQAcAUwPPAA4wRAP5QBJAdMPMcBOATwOsgCdASHPa4Q7BWsXq4DtUqKBdoD+cvZzLMNGE18XJvyngDHCd4B785/zp4CRQquPTAuiBJMR1z9cCrIC5fr3+OExYxcrBKsHrw/1L1MfKReqCDP7bcwH7yPmSVF47+0nrvyLE1+DP/RV0HsSGbEXnBrdujnf6z8lRQr/ERjCMA2yAObwcPgxwMv1LQjN+u4I2j7i8yt/UQYm9RDDDvEX+//rkg1Q0x4P+a/7BeVDAsJbHdwEAGHhE8c/AgBfMQbAwABP8nZpBQBQO79+B8BZOwBRCgBZQw8+wET/wP8IxbNB0EP+WQgAdIiAcqoLAHxQA0AF/8L2CQB1VH1iB2UGwBpV7f9DDsVpRsNVN0vAwP/LAGOiAVT////ABf/B8hAAG3DwS63B/j/BP0QEADmzcXjTARt68MBDOcHD/z/BPgkAfUWDwQCKbAwAhYTMwPyV/v7A/8AJxX2FQHZ0whMAJ0Lpwz4xRP9EVEbWAChM7MH+/jtkOGjDhgIAbpb9/8IAZVpwZm8HAJlZDMI//zwDAG6dOP8IwI2kgG9swLgLA1SmA/9ARsA6CwNNq33Ad35k1wAYdObAPv/A/upC/YIKAH65fZMHWIXFAYa7/UALxW/Aq8F+wHPCA8Xtw+DACAC6xYYEgcABBgDCxRNBkggDVMkDS/49BMV706mICACO0AMFMEnHAXnaYMHBBIwFwFzWZHvBDMVg2JzBZnKDDQC73121wYbCw4sJxZzZw/4ywDYFAEveagODCwCi6nFgxMICwHEVABvsJ8DDhDDAODtUwMEAUTZdfwMAV/iWwQvAs/sP/v9SBQsDavxpx6x7cMIQssEbSmAJEKvAHsOleQoQpQk9AHt1AgYQqw0pfp4JE7wOPcLCwXsEBBPkEVeCBxBl10yYvgYQKhNTakYHE6sVQMDEhQrV/RtcWHSRDQCTIGSTBcDBxMDBe8MQRdxHbMEGEDjbU8GwBBBNHkBuwxA+4Eh5/xQRA+6eVQHBwcOwxcRBwcMBAhDnTRrCl0IDy0IBAAALRZcA', '2021-03-16 16:51:24', '2021-03-16 16:51:32', '2021-03-16 16:51:34', 0, NULL);
INSERT INTO `devcmds` VALUES (226, 'BWXP203960242', 'DATA DEL_USER PIN=41', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (227, 'BJ36195260254', 'DATA USER PIN=41	Name=Ebid Dilli Wanto	Pri=0		Card=[849E360700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (228, 'BWXP203960242', 'DATA DEL_USER PIN=40', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (229, 'BJ36195260254', 'DATA USER PIN=40	Name=Nuruddin Lazuardi	Pri=0		Card=[00E1F50500]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (230, 'BWXP203960242', 'DATA DEL_USER PIN=39', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (231, 'BJ36195260254', 'DATA USER PIN=39	Name=Fertho Pasaribu	Pri=0		Card=[7377360700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (232, 'BWXP203960242', 'DATA DEL_USER PIN=38', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (233, 'BJ36195260254', 'DATA USER PIN=38	Name=Ahmad Ghozali	Pri=0		Card=[E2E2280700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (234, 'BWXP203960242', 'DATA DEL_USER PIN=37', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (235, 'BJ36195260254', 'DATA USER PIN=37	Name=Tri Puspita Sari	Pri=0		Card=[E1E2280700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (236, 'BWXP203960242', 'DATA DEL_USER PIN=36', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (237, 'BJ36195260254', 'DATA USER PIN=36	Name=Roristua Pandiangan	Pri=0		Card=[E0E2280700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (238, 'BWXP203960242', 'DATA DEL_USER PIN=35', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (239, 'BJ36195260254', 'DATA USER PIN=35	Name=Yugo Goutomo	Pri=0		Card=[00E1F50500]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (240, 'BWXP203960242', 'DATA DEL_USER PIN=34', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (241, 'BJ36195260254', 'DATA USER PIN=34	Name=Mariatul Kiftiah	Pri=0		Card=[00E1F50500]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (242, 'BWXP203960242', 'DATA DEL_USER PIN=33', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (243, 'BJ36195260254', 'DATA USER PIN=33	Name=Muchlis Ramadhan	Pri=0		Card=[AF6D280700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (244, 'BWXP203960242', 'DATA DEL_USER PIN=32', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (245, 'BJ36195260254', 'DATA USER PIN=32	Name=Maulana Fadlan	Pri=0		Card=[1E0E270700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (246, 'BWXP203960242', 'DATA DEL_USER PIN=31', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (247, 'BJ36195260254', 'DATA USER PIN=31	Name=Dira Arisman	Pri=0		Card=[9D46280700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (248, 'BWXP203960242', 'DATA DEL_USER PIN=30', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (249, 'BJ36195260254', 'DATA USER PIN=30	Name=Fani Sintya Pratiwi	Pri=0		Card=[9C46280700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (250, 'BWXP203960242', 'DATA DEL_USER PIN=29', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (251, 'BJ36195260254', 'DATA USER PIN=29	Name=Indah Susanti	Pri=0		Card=[1B0E270700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (252, 'BWXP203960242', 'DATA DEL_USER PIN=28', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (253, 'BJ36195260254', 'DATA USER PIN=28	Name=Dewi Puspita	Pri=0		Card=[8A1F280700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (254, 'BWXP203960242', 'DATA DEL_USER PIN=27', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (255, 'BJ36195260254', 'DATA USER PIN=27	Name=Alifia Syahda	Pri=0		Card=[891F280700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (256, 'BWXP203960242', 'DATA DEL_USER PIN=26', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (257, 'BJ36195260254', 'DATA USER PIN=26	Name=Hendri Walesa	Pri=0		Card=[78F8270700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (258, 'BWXP203960242', 'DATA DEL_USER PIN=25', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (259, 'BJ36195260254', 'DATA USER PIN=25	Name=Chandra Regina	Pri=0		Card=[77F8270700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (260, 'BWXP203960242', 'DATA DEL_USER PIN=24', '2021-03-16 16:53:02', '2021-03-16 16:53:26', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (261, 'BJ36195260254', 'DATA USER PIN=24	Name=Bayuadhi Indrayana	Pri=0		Card=[56AA270700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (262, 'BWXP203960242', 'DATA DEL_USER PIN=23', '2021-03-16 16:53:02', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (263, 'BJ36195260254', 'DATA USER PIN=23	Name=Ratna Purnamasari	Pri=0		Card=[355C270700]		Grp=1', '2021-03-16 16:53:02', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (264, 'BWXP203960242', 'DATA DEL_USER PIN=22', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (265, 'BJ36195260254', 'DATA USER PIN=22	Name=Nicolaas Ehrlich Riwoe	Pri=0		Card=[7452190700]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (266, 'BWXP203960242', 'DATA DEL_USER PIN=21', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (267, 'BJ36195260254', 'DATA USER PIN=21	Name=Asteria Bunga Indah	Pri=0		Card=[43DD180700]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (268, 'BWXP203960242', 'DATA DEL_USER PIN=20', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (269, 'BJ36195260254', 'DATA USER PIN=20	Name=Nadhea Clarasari Azharia	Pri=0		Card=[D2CB170700]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (270, 'BWXP203960242', 'DATA DEL_USER PIN=19', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (271, 'BJ36195260254', 'DATA USER PIN=19	Name=Syarifah Nuraini	Pri=0		Card=[218F180700]	TZ=0000000100000000	Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (272, 'BJ36195260254', 'DATA FP PIN=19	FID=6	Size=1360	Valid=1	TMP=Sr9TUzIxAAAD/AMECAUHCc7QAAAb/WkBAAAAgyEgX/wgAH4PUwD9APzzggA6AIQPswBK/A8PMgCKAJAPV/ySAFIPkQBWAJ/zhwCaAI0OqACq/B0NHQCtAAwPW/ywADYOfgB7AKbwuADDAEAPYgDZ/FYPOgDiAOMPH/zlADQPNQAoACXzVADxABMP7wDw/CoPcwD6AFAPkvwNAXwPuQDIAWHzMQARAasPZwAo/ecPRAAtAc0OV/wuAYwOTAD9AZDyrgA6Ae0PeABB/fIPoABMAb8PVPxVAYQPLgCSAYbzUIIb/C9wlIKVDoZ8WXmXCLqEUnEHEh+QNgVHjkzeaxxOOLr9iRNNfzb43PNdc/vp1haIe1GTjnY+lrhrPB4G5FqSRIul5WtynevHnyKnBufCtV/2rAN8/tkIbAldE0oQ6QPHA+j3Aux6gDPsQ/v4+TUGeoTHGbQPn+kymQYev36hFmp0joD+pVuFvgXfbEZtoXS4fCGhUft5hDIJCQuWcB8Qqfw5CTR2JvQDeCoN5Y4/iMlor/C6+XoCPwLdC9J8FxElZuU0Av5bH9cHAHzFCTa1AgA/An3DyQBZ/gEy/z7AOMYAoP4fwQQASAxFhw38TAz9NcD+gf9E+gFZHYDAxJwNA5wgBj0+/8AFWgX8WSR9wcNR1gAQ2+b+/jxU/4P/w7sFAFY0/TDDAEzFdXTBBABX/wNf8AGHPQ///gVG/LAhAHlJDP87wD3O/v9TOPz+Ov/9Pf3/wP/A/wUVA+9L4v1K/jvzPkW3GwAUYuL+OkFSAfxH/zg9STglA+tr6cD+wf85PMMCP//+wP9Ejv38Av7+//zARjodA+R351TAIv39/zY8P//A/f/+Oi8b/BiE4v9M/uI7OJQ5KSAANYch//wA/vwu/zMqO/75Bv///v79/jr8+eYIABWKQGWh/wD8LItewwgA9o9ZP3R8DwCQj2XCwFyWkIM4ABtR1/6w//0q//7/60QtAPz+/f/9/QX//QH/wP3+/f4+/v8D/P/9/v39O/j5Av79CgBQmJOdmG8EAG6lCfk//wf8aq1AqQ8AcsdAPCvA/P0uLtcAvjs8///B+/47wP4B/v///f/+OwgDWt9T//z9/jn9C/w86CfBwcS8BAPg6zSDAwDtNUP88QE08S2RwQFslPMBKfY0ksO5hcY+wAYAGfwrB3kE/BL9N6J7BtURDNfDwoUEELXKXiruERIfKaD/RmJYOWAEEN0haZwLE+Q5EMB4wMKjBhPvPhPC/4MF1ddAiDsPENNLdIfAw8JXSgUQFkvM/4H6EZ1QesBMwhDGpXvAwv4+BdUkZgb8aQ4AbJqhx8dnxsjGw8Kwl0ID90IBAAALRZcA', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (273, 'BJ36195260254', 'DATA FP PIN=19	FID=7	Size=1132	Valid=1	TMP=ShNTUzIxAAADUFUECAUHCc7QAAAbUWkBAAAAg/0aV1AvAPAPaACaAPxfWQBpAG0OjQBsUO4OewB2ANUPuVCDACQPiABAACFfbACKAHMOmwCMUPUOcACcAOcNTVCrAO4PmABpADNfNwC1ANsPngC0UFUOvQDLAP8PSFDUAFMOQAAuANBecwDsAE8PcgDwUL4PpQAjAZ0PIVA2AfAPYgD9AeBfmgBDAdwPuQBOUecPPgBdATwPw1BhAe0Pw/EKh9hT7JWm8PIRQID+ISNdhYSC8X/+lqHInhYQ2wV+9uRHABXZs8IARIBKAehmgYCl1icIGuH4MkIAtZ3EF2msAxPiE2/4UO+p2c+KzWmCAc81jS7mDAcbgYLHAdUqgIKvhWf6D/+wLeL/ioYTaYJzdS36mYt3u/hWD2BPu/z/7acL3/hx1cLwjgw2BL6TLFhqGX8XMxCClyBbK2K6AiApxAH1S6wEAGUbcAXCBVBjInDCSQbFlCbZw8LCwA0AZjKMksPBe8T/wL4EA+BPHEcQAMeKmn3AgnBdDwCzkpqOIX97xAwAbJn3/q4xR0IHAHGlAC0QEADPYKCMv4HCk/7B/8IGAIFzZyjBHAB+dQ/2RjRi/kHA/fxHkP8QUNZ+pMHAxJ/Ew9eRwHcGAL5HIPyvTwgAuoYi/UYJUIuHHv9AQDoUA4uOqcJpwYBVi8EyDgBzmhcnOv49rj3+DQByoNv9/HrA/sD//f/QAJr/KjPA/j4wOMD+kv/CUBUAN3TaO6/6/vn/wMA7/sKtwf///sAXxRiwh/7AwP82/AX8/K7/wP7A//86VgdQb7cxKwoAk7hZklD+/oMNAKK5Oa8v//5EPQrFW7gAw8D7wETAzgBi7EI4/v3AVOAAGpPWwFRBK/s7QD0QVcD/Nfz/+/0XUL3GtHeAw2XDw5DDwv5vCgB5zj6QQf9PFQDBCzc9r/9P/fzBwDvBT67FDgDa4DqKwPyu/v4xwAkAq+5Tr/79wP9MCsV08xkyMcD/IgDW+dOuYzf/+8D8P/1DZTkw/jJRHdUSC4b/wcDBwTM4+vqt///+wP//9v79r/7B/wQQoeNaPlURpydTLgbVXjkgSsEDENdGlfoGQHlPdMBGUocACBMAAAALRVI=', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (274, 'BWXP203960242', 'DATA DEL_USER PIN=18', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (275, 'BJ36195260254', 'DATA USER PIN=18	Name=Ahmad Fauzan	Pri=14		Card=[F019180700]	TZ=0000000100000000	Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (276, 'BJ36195260254', 'DATA FP PIN=18	FID=6	Size=1380	Valid=1	TMP=TUlTUzIxAAAECgoECAUHCc7QAAAcC2kBAAAAgzchrgoiAIoPTgDhAPoFxgA2AAsPJwBwChcPOgCBAK0PxQqHAB8PUwBYAGQF5wCdACMPCQCnCioPxQC5APMOaQrAADgPfQAEAC8EjwDIABkNIgDOCi4PmgDQAFwMTArcADYPJAAsAEEFpwDsAN4OggD2Ci8PwwD/ALUOPwoHASYOqgDOAX0EVAANAasO6wALCzsO1AARAR8O5goeAeMPIgDkAVEEXwAjAZIP+AAvC4YOTwA1Ab4ONQo2Ae8N2gCFAekF2ABPAXQPy4FzhR53g3fPmwajCoum97vv1vpv9rvnPwo/Mzs/U/RKAHv/xvpKK/o20fEbDsLvofaICw4GGA5eCi4XjAxWK/Pb1fRlFa+UhYr48fLh5vrXD/8OgIAavH5wSAm6+JsTRhliIfcSVk7fZLpxFflsCoaOMJp9+6qVBOw18GR/9QvCnMujARBgh4J8LRRk5nK+yPlJbi5j+Anu8z93BR5Va/zTSRCg6mYNWZjIDY09mPXh6oaMtGg9lZN01XheDZYU1YLWkMufzB7EpgUqPwECWxvhwAA5AvbA/P8HALgIB/TBQgMAWwqywAgKOxr3wMH9Bf8xbgsApSGJcgTCbwABUiT6N/87wfv1EAAVROfA7D5XNEoHABJU3u/B+gEBaDQDVEueCwQYYN7+/Vv+8gcErkYQRTcJAL1khHTAwYwSABOu4Po0/kA+/lfC0wAVZ/vEwDvB/YNH+07BwP8FALOwF8RICABheHeQBcGYCQHkeBzACMVhhX6KwYwLABJH3PlB/kHACAC4qxZAylcEADeDaawKBGKIdMHBg8JIBASmliD//gcAAIkayj7AIwCujNk1PPX++//+/cA7/sT0w/7B/v76OPzFyv7+///+/8IAE5rlMFYLALhDIMRBwMH/MRAAZ50aOfz//vYn/TgqAwpOm2mSeBzFb597k8Rx/8TDAIZrmsXAxcGFBMXqmSo8BADmoSQFwAsKdqR3p8XAAcHHy8DEw8EKAAumI0rB/v38/wvFmagQ/vn//Pj6OSAJCnCtZ6XDiAHChwkBirGDxwPFl7IW/QMAjLoXOQMEH7xDwAUAtHg3+/T2BADEvTcF/A8KaMRGxsDEBJ6cDgF/xCvCxNcA7cYs//78+8A4wfnKwf7/wf7ABAwEQ+M3w8DCxQSIlgkBFeRDwATFJukwKgQA/f9aO8AAGwIDUycEEP4LL6ACEBgPScHXEQcZX/5MwP7+mf51agQRBB1a/YkPFNQjaf//QML6hcUOEAQrYDIE1Uw8fX0DEP1AcAUNFNxDd1b//1sGPgEbAElrwEIK1dVJfcFbUcEFEBJTaTVTQgALQwHFAA9PUwA=', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (277, 'BJ36195260254', 'DATA FP PIN=18	FID=7	Size=1236	Valid=1	TMP=St1TUzIxAAADnpwECAUHCc7QAAAbn2kBAAAAg0MfWZ4rAO8PdwDoAGeRcQA4AOcPdQBJnvYPmgBZALUPTp5kAOkPjgCqAPaRuwB2AAYPWQC2nvwPdADPADUPy57eABsPrAAhABGR6gDtACQPsAD1nvEP4wABAegPup4DATMPeQDGAfeRNQAWAd8PfgAZn68PjAAiAf0PhZ4yAVYP6QDxAT+RdQA5AVwPYAA8n04OvABHAY4NyZ5JAUwNIgCPAWSQYABTAdwPfQBVn8gNsABXAYoMn55ZAc4OqQtQj9iVdX+hd0P2tYcyZbZ58YvC8y4FZuD4ezJvdwam/5xpYIaS82sB35sBjTMT7wy37WLn0Zx69M/93Quz+rV0aPue4CMVaPrtlM7yxfxSAnq5JpTX//oXiYY7IB2EQAS2vcOhNnqYcZLzkX4qY9dnlnur3PJF+SFY/TmWr/G38AMR3Al9HgckQQZhA0SDOp6AhJH9uQBchqFi6oojjxMPu4CIFqoTNH6BgFh+LxQMBbGBsYFEg7KZ3lEqKCAzxAILhQUFAFcSbQRaCp5rEmnAwMAFbwCeeRh0wgMAuR9zXgIAlyBw/8wAcLJxe3DBCACTLWr1wcHDAwCW6HfAjgG3NH10eAR4QVwLAGw6a2sHRcGXAbo9esDBonMMnq1LesDBwqB+w1/BwQwAlleywsNfwcHAwMJDwQDMyYJpDgCYXahWwl7BXcGMBAB+YIMZBADKaoBwyACJ73HCwGL/cATBE563dn11wHAFwMNfaBMA2ouMBcHH7H/Aaf94FMXelBJtwsDCbmW+wViKAd6gicCLRsFxYcNS/8MHAGWx+d9BFADrspdMw8MawMBzc3MOxZi16o1Fcf/BwM0AoykBwP/+//wHDAPmzPDAK//9/cALnsrgFv4+OM0As3oO/ixdEAAi6p8IwYmAwGQExevyvEAPAHr07ev9/mH/KzYUAQMxnMPuw4uHwnjBOsMXnuH9pIzFbLBS/cLBBhB9Au07/BmZEecDKUHDPggTfAQwWMAmCNW7BbP8SzYEEDDfYMNfBhCQHyf64sAKjokia8P+woLABY6PJkD+/TvAEIS0XWgEEOY4+EQHjuw4NCsFEEA6VKAYEBZK6cI7e/xfwTD9/vwqO/9IYxQQsVPMhAPAx1uWwVjB/8GZAxPAVmf+FBAip+JK0lYd+isiEtUxYXzBYkz9/vU+/v9ewftSQgALhgEDngpFUgA=', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (278, 'BWXP203960242', 'DATA DEL_USER PIN=17', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (279, 'BJ36195260254', 'DATA USER PIN=17	Name=Suharsono	Pri=0		Card=[DFF2170700]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (280, 'BWXP203960242', 'DATA DEL_USER PIN=16', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (281, 'BJ36195260254', 'DATA USER PIN=16	Name=Budi Susilo	Pri=0		Card=[DEF2170700]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (282, 'BWXP203960242', 'DATA DEL_USER PIN=15', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (283, 'BJ36195260254', 'DATA USER PIN=15	Name=Daraswati Zakirah	Pri=0		Card=[ED19180700]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (284, 'BWXP203960242', 'DATA DEL_USER PIN=14', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (285, 'BJ36195260254', 'DATA USER PIN=14	Name=Erwin Nugraha	Pri=0		Card=[BCFE080700]	TZ=0000000100000000	Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (286, 'BJ36195260254', 'DATA FP PIN=14	FID=6	Size=1060	Valid=1	TMP=SllTUzIxAAADGh0ECAUHCc7QAAAbG2kBAAAAg8cWcRpEAAEPVgCVAP4VPABkAPYPtgBzGnYPIQCRACgPNhqjAGQPegBtAHYVnwCrABYPeQCzGpIP0wC0AOQPYBq/AGAPlgA1ADUVwwAIAUEPtQAMGywPSQAQAf0PsRoUAU0O0gDjAUQVYwApASUPGgA6G0UPkABAAWUPexpHAREPigCfAZUV8wTCj+sPs/zpEqeLcvjjCVKCyWGvf5OCsYuu+ayVuHs3BuNzqxQRe8oCcoTuobb29mx3fHcj6ZIiDsD1A+y7/hdPtuiwEmL1pfVu/RINqRLX9jv4ahWPDmwxGA1KCdsYpAblE8/9Mvj+7UcV5uTqBtv7WZLsD3RnZHKRfxbtcPuOnZJz6cYrIOgBAusYiwMAczM//gYamjyGhAQAnUF3awUAdkL9PsMAbV97dsEHAHaCA/zbRQkAWVD6OjhYEgF4YX1s/VIMA1pi9P////4EQEQUAcFnkMFcvcDBkQkAb256eAWLCxp2cANL/0HCAGhve3fA/w8A2YXk5T44//9AwNUA0oCWwMCI/8K6wV4XATmg6f1XOv/85sMrBAAxoaiSBhoypmTBhRPFdqRnw8KAwXfCO2/BkhMAF6rg/TrC/k/8wTFLwQzFoakK/ik9/XYSxXivbY2MwMJkgFISA6Ovl5CDhMKqwZMXAaCvFzzAO/9FXwIA07gnwdAAZKHx//79Kjg6QPxd/P0PAF+9rMPDk8DBbsODEMViwUTAwJDC/8EBwY/YGQAS4skoOv782vzAwDH/KZBQBxqQ70aXAwBS9DfaCxDCC0DA7/z+OhUQSQzD/zhB/Dsm/zU7EhB3Ebnbw8PFxcfCAMPB28PCy8fAEtVGF1mcwoLE/sEBwqPYCRBNFDd3BoEHCnAULYAFEHAZReQcGxBgJbDs/f3k//39/f0qBTv95MD7/h8GEBEpQCH9HRBmKyRHw8bZwsPCwMHEBcLA3sKsopLCBdVgLjHDegQQ5jqGwvgeEeA/QykNxZDkeMfEwsLCzwPDx9vEUkIAC0PEAAMRRFI=', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (287, 'BJ36195260254', 'DATA FP PIN=14	FID=7	Size=1504	Valid=1	TMP=TStTUzIxAAAEaGoECAUHCc7QAAAcaWkBAAAAhJUqhWhEAHIPQwCVAO9nawBdAPMPrQB9aG8PzwB/ANYOTGiAAPEPXwBIAOlnyQCeAIYPewCoaBUPnQCyAMMPMGiyAFcPbAAIAO5n6gDVACoP7QDcaNIPzgDnAOoPaGjqAOMPtgAoACpmqQDwACUOLAD2aDUPtAD8AGcOiWj+AE8PbgDNAd9n6gAKAbQPWwAPaUoOjAANAZ4PLWgQAUEPUwDXASpnqgAdAUsPggAkaS0PvQAiAYIPdGgpAeAOyQDuAUBlawAzAaEO2AAxaTUP7AA2Af0Ne2g2AXAOcQCEAX9mnwBEAV4P8ABOaR0PZgBKAS8P7GhUAUQObwCkAYlnb4BjB4uLY/rXlLp+0YdugNsKYerUf4p8uox6AMtnpAeGhE8IoIItl178VXTGdK6AQfjnET8AdvWugON2d4b7ag9uHwiHjtYTmfvC/V55fhbulqvryQKk/7Lk3Ate+LaWDAid5EgCVfh9hGzfjeoQD90HpXREfEEzdPRNBR4s3K9hk6+AiYIOf7eHtZnQ/V0C6QzkEaroVxWODkIXdAVBP29RQQXdAo8INWnr7WqOVQQA/dKW9UPBceFmHPzKkEsNtMMNKCwxbnAb9jsIjvQT9Q7vePSxkZnRrJCxtOwMtvHyFmPnBoA28Gc0fXCYSs02AwznAeP/YKayfMMfhxoYo+kAJFUAAkwccAbFdy0fisEIAJcrv8DGqf6HCQB9Q7LCbwEEAIVE/TbPALstjnjDgcELxX1NGXFlw18HAAdUjRyXAwBuXvQ6BgT8VgBA/wkAo190FsHBwMMTABFtlAeFwHfBasAHwgho1nSJ/3fBRHMOaGR6aU3/wQSRF2jef5CFwmxDUceUxcEKAGOKLP1LXvwSAOKXkwWAbePAwYvAEgAAmo0Qwv+TfGqD5gDAyIH/hsDDeECTcfXCwsaTi8YEyQFozaAQNRgAKquYqcJfwcL/k0FzhzsGAMGuDzX9BwTJrgD/+8E2wACd23uSBQAxtZLAe2UBoLYDKf0FPzpJAffKpMJ5B8HE6IqHw8B5wwTDwKzEh8MNAHAL6ftC/vxBLgwArdFe7MDBxMLExgEDBIfXJ/8FAOocK8QODwBu6NwjOP74QsBBBgDQ6/XAxCIEALnvMcD9BAR+8ENZBwDqMDH7qVQIALb4qQHFwMgCELUAMP7AEJJqQSMDEIkDpcIReGYZvf39Ljj9/0b+S/7C/f3GEIx4W/8eEI4Rlf34kfv8/P3A/zj++pb///v///46/sWXwf/AwMAI1SUQIcPE/8OPCdUsECjDwcKZwgPVUxJcwhEQbhrMOCz9kvzA/v3A/zspAHgUIUBlAxBuI0iXBBBHJTDDaAYU0iRG//81BtXAISv+NQUQxi+GNQF4zS9A/y4E1eo9VWgEEO85NOAFFHU9N5cEENr5PShtEZpFXsD9OgMUi0dA/gQQoI1XLWwRN04eiFKHAA8rAAAAC0VS', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (288, 'BWXP203960242', 'DATA DEL_USER PIN=13', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (289, 'BJ36195260254', 'DATA USER PIN=13	Name=Jefri	Pri=0				Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (290, 'BWXP203960242', 'DATA DEL_USER PIN=12', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (291, 'BJ36195260254', 'DATA USER PIN=12	Name=Mochammad Rila Alafi	Pri=0		Card=[DAA6FA0600]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (292, 'BWXP203960242', 'DATA DEL_USER PIN=11', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (293, 'BJ36195260254', 'DATA USER PIN=11	Name=Ananda Karina	Pri=0		Card=[B958FA0600]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (294, 'BWXP203960242', 'DATA DEL_USER PIN=10', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (295, 'BJ36195260254', 'DATA USER PIN=10	Name=Rahmad Nurhadi	Pri=0		Card=[586EF90600]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (296, 'BWXP203960242', 'DATA DEL_USER PIN=9', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (297, 'BJ36195260254', 'DATA USER PIN=9	Name=Rakhmat Januardy	Pri=0		Card=[576EF90600]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (298, 'BWXP203960242', 'DATA DEL_USER PIN=8', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (299, 'BJ36195260254', 'DATA USER PIN=8	Name=Zuleka Endah Pujiastuti	Pri=0		Card=[4647F90600]		Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (300, 'BWXP203960242', 'DATA DEL_USER PIN=6', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (301, 'BJ36195260254', 'DATA USER PIN=6	Name=Ubayt Kurniawan	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (302, 'BJ36195260254', 'DATA FP PIN=6	FID=5	Size=1400	Valid=1	TMP=TVtTUzIxAAAEGBoECAUHCc7QAAAcGWkBAAAAhMUbkhgpAJcPgQCNAIwXZQBRAAkP7QBwGHYPhAB0AEwPZRiWAHwPuABeABgXlQCsAIkPjwC1GAEPYwC5AEUPQxjEAHIP3QAAAKQXrwDJAI4PWgDJGBcPPQDXAKgP5hjeACEPYwAgAGsXKwDpAGMPHADvGKEP+AD0AGUPyxj4ACIPNQDXAVIXfAA0AScPJwA+GSMPTQBQAfcPvBhTASIP3QCTAaAXQxJPkzcTq4DW6jcDboCbgJp3J+f2czd7tgNegF8UQ/1ifef0E5ariLoKLnUa/iNuzYmMg16FjYO3ELod1HVlBf703IMiGl4UaXiWBnp0ZZAfjT/+6f2wD+Z2uIAZg4KAZway59PzAftWDz7wuZg4gO4AgoCrAFqaOIQ6AFqGJ/f38w7rx/ZvByrToZvKABcDOw7G31cLZ4FLAPP/YIdmnZqH764CAuVCBRqzJJ0GAFLXBvvmWgUAPhkDOv/7FgFxJgn+V5LAxNjBwAkApx3TU/vYXwYAth0QOFYAGDwiBkoOALUuFHBVwFRvCQBnIx7aOcDB/wsAXCsU507AwcBaFcUWNu8/QFPAREQFXA0YFzr6OMH+oAQEDUL3LAUASIYGUhsBOEeAwgzFhU0U/8E+/8HAkA8EcE4D/0DB/QT/YCMFAENOfXrKAGxNDVdKRErB0AASRPtUPkRgwIZCEhgXZfrA//+DwEbnRUREBAAVq/dGHQFMagNGFMUscBjBVMDBK8D+XWIVARaE98A+gkHFCQEVj/RGVP3/QlIHAF2UfWsHFgQOlvfA/8E1gTXETUv/DABll8ZBRy/+BgBdmn0H/20RAbyaFjZRBQQEo54cSwoAkWKMhHZYCgCQrYmzwsbmdwwAmK8QO1T758F7DQBOsThDP+bBwP/ABQCUt4eMBwBnuQPAOkMDGF68fXKNBMVDwGKIBwBLxP2KwPsdAUTJdHgFxeHNOMFBCwCjy9X+Rk05CwCi0RaJU04bATLdbcAFxeHnPMP/wBcAFSDpRdr9wf/9wP46RvvYwWTBFQAuI+3GP8EpQcD/ZKEIBEPmccJ+bAbF0vk6wcBgGRASy9z72EH+/cH9//f/R9j+wsH9wQfVMhJCkIwZEBMaH0T62CIw//7A/zpoxNp8CRBjHAA9/8VJ/gYQYiEwB1ADCGohKU5hBtVeIiLCwHMXEBno1zrYMfwuPkTABXMACBQzQEoFELo4I3ICEOQ9IsDUELBWpsHAwGzDA8TA2cXDbRcQ2pGkxE3D/3mNksOimRUIamCp/8D+Pv3+4fr//2RfFtVLYqn8w/z+//07/Pjl/P///8DABMB1DxE9W7TA/Tj/++X+/f39/f46wPvnwMDAwcJShwAPWwAAAAtFUg==', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (303, 'BWXP205260321', 'DATA DEL_USER PIN=5', '2021-03-16 16:53:03', '2021-03-16 16:53:29', '2021-03-16 16:53:29', 0, NULL);
INSERT INTO `devcmds` VALUES (304, 'BJ36195260254', 'DATA USER PIN=5	Name=Febri Suhandi	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (305, 'BJ36195260254', 'DATA FP PIN=5	FID=5	Size=1548	Valid=1	TMP=TctTUzIxAAAEiIwECAUHCc7QAAAciWkBAAAAhLUpg4hfABMP1ACgAJCHOwBoAHoPXQBziBIPiAB7AFUPz4h/AJQP7wBAAByHUgCHAAQPSwCDiI4PVACSAL4PN4iWAPkPzQBhAJaHMgCmAHcOXACoiI0PNwC1AD0PuIi+ABUPUgAGAHGHqQDHAI4PoQDXiHUPUwDfAD8Ph4jeAIEPuQAoAImHrgDyABIP8AD3iGcPZgD1AK8PoYj2AIgPUAA5AGeHSAARAVkPcgARiY8PyQAWAdoPlYgbAVMPSwDkAUiH5AA1AaAPTgA+iSUPbwBAAeIPpYhCARoPYwCOASOG1ABOAZUPUABTiaQOWgBZAesOs4heAZsPrYdTAK4PPAMSf2OD63pLCDIA5YTFhdMAGIvofLF/vQMzfSqO84UOh8uIfYvuhSOOoAPJfeMGxPODhHIGyYQHAIYIR3yuAtN8DIBFCPf+IgCq/s96OQhHAJ6E3YqDhAYCKAJJf6J8IHqajCMDdX2pAtv0aQFEh6mTkgyjGR5zYX9hBjYCmYfYB6eFKQcGbYMNjYK4c9b55Hsg/iJ1bA4R+q3/oAzxctP19XGeCW994RmHgxKXdjDvxgJG8PT66VMk/wyCC3oWbQ7V/1eAuYhQB7b4vXYw+ooJPACx+EoHA/RedXZ9sY6OgCMNLYAzCAvn0gm3+Y4JiufXMvQB5UkFinkcsQQAYYwMa48BuEoQQ1XGALPYFsADADBTMv0AiK9XEP/CBcVIXnUqBgCLXQw4XAOIrF0Wa2AJxaJbnsFWwEMGAPZhB0hGCwCJYheuwcR3/nEEANho1loIiINwHv/EwftWxYsBJ3L6wgTFUGiLOQkAnHYTBcFC4wsAmXsXbY9XDYgifvA1QP/NAC8M9sD/QP8DxVeAiP4EAE+HgEwMBPKIDMDA/cKlwGSHAVaKBkf/BP1y3MAFAJKKDDpNC4hZkgNBU1w7wMV3CwAhpfda9EQOiJSujGqLxDoDBBWuE8ASADt19zy2/kT/wv/ABf8NiD62+j1L/8IAxDYR///CKwTFTsXyfw4AVsL9hf9T0EoHAL7DF6FGD4gjx+01/0aLBATGxneDCACsDBNR3wcAYNF9lAQOBODSAEDAwP2u//t3BwBh1nrEnwQE992DjAQAhxoJXY4Bf+GAeMLRACZr5v8+/MH+OsDESPzBwf7AOcgAr3mRwoHBwYgFwQOIsvEM/sBAzwCCfIGgwsH/lc4ApXyNwYuDfwfFY/Hjfo8JALL21v/FvTwKAKn5E5A7fIQBl/yGm8MEw8VJjgUATf5kBIENmIcBeqeJxMAQkon8/DoLELXVk8ZKwsHFwZ4E1UcQ1pcGEM0VHDr/xEoIELMWk6ABxMZNCRC7Fx7AOsP7SMEDEMoaIAUGFAYdXsXFnQrVkSR1+j7AcgYQjiVXS8GZBhCNKPjH+wYHEJ4oFlgFBxQbLCSLhAYQWS0a8MAFEIw+J00FFPtCK8RrAxCoRDRLBBCkRh7CuRIUd1STN8D/wQfAwEzFxcXDxP+XQgSDQgEAAAtFlwA=', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (306, 'BJ36195260254', 'DATA FP PIN=5	FID=7	Size=1312	Valid=1	TMP=SptTUzIxAAAD2NwECAUHCc7QAAAb2WkBAAAAgwUjl9hQAIEPrwCvACHXRABrAFcPaAB82JcPPgCLAB0PadiUAOcPVQBbAEfXlQCfAHkODwCj2C0PgwClAI4OntivAIMOkAB0ADLVdQDJAMQPJQDP2K8PkQDSAOwOsdj+AKQPwwDBAaTX6gAFAZ4PZAAP2RoPUAAOAecPr9gVAZsP3ADfAYzXMAAiAR4OWQAh2ZYOdAAsAVgPQdgwAZ4OrgDxAY7XywA4AYYP8wBA2ZgOqABEAUMPethIAY8PoACKAQHX1wBQAX8PqgBb2Y0PrQBdAUcPHbku7UMLoY07obBzc4BfFU9yaHVFxg9vxpRygHfzCn6znKZzLV4fbEQgMPh5MVFJP5vIcIKAVR0p1YDLd4+oDI07RLMo6Rphy5yilY56RoQMyyYL5mQW+OOq6iVAiSkKZQWED/nAPBNm+mv+RIBOobCGygWuhrqEglhIBbH6zfNX6EnRgIKehE79CP22pggOHRPaCu8TPt6AgrJ+QQhQ+vrTKAuB+9L5BP6hpLp7VYTJ+PAGSt2s9/qOWXxkgVGssPt2/4/4CP25K+6NoYG5/gf2IjX9+gUgMgHHERhiBgBPRG3DBcFa1QGqSo+AwQXEcrUjAJBOg3kHwXmjwsDBXP/BBP/GHMFpcVYEAPVSXbgLAJhSDP71R8PVAZBTg4jCVcNh3QGyayD/VcoAQrdbwnHBZ8GAwR/YqXucw8LEB6BvsXHCwmx2xDsDA8F/TMERAD9N1sMl/irA/vzBOcD8nxAAZ5HX+zj7/uNDZIMQAG5W5/4i/DNKwv/CBcAV2OaRrX7Bg0XBwRmChMEMAGdcSYMniIQXAMecbGvAeJyTgGpzBcWPnqLHpA8AVKGDcIAYw8HBw3kExc6h8UwEAN+jLZwJA8+lScJkUgTFyaf1WgkAgKtPAXrAqgsAobIk/5DBw0ENAIW0Q4gHwmlXDQCTtCfDOcFGGsJvDgAwvIN+whiQgcIHAJUBJ2EnwQQA49AnBMEH2JTUKXsFAFXVMhqCKQD34KkF/n+K/sKbwpKLB8HBGHDB/sOMhATCwfgB+/eiV8DywYNNw8TDwsLBBP/CG8HBwcGWBNW2AcJ2IRDoBJ4FL8MnwMLAwsTIB6xsXHbAw2TBBNVUDPqACBBPEikHwsGyBxCwFxfCBkQHyBseN6kEEGUlFVMEEEY1F8GsBBMWOQNlBxCshgDDGFsFEDpFEAVXD8geSQxew/8B/8OEAhB9SwnCwRCnlfxEBBCkUsN1AMgoVBbFBhA3W4Or/lJCAAtDxAAD00RS', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (307, 'BWXP205260321', 'DATA DEL_USER PIN=4', '2021-03-16 16:53:03', '2021-03-16 16:53:29', '2021-03-16 16:53:29', 0, NULL);
INSERT INTO `devcmds` VALUES (308, 'BJ36195260254', 'DATA USER PIN=4	Name=Teddy Munawar	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (309, 'BJ36195260254', 'DATA FP PIN=4	FID=5	Size=1460	Valid=1	TMP=TQVTUzIxAAAERkYECAUHCc7QAAAcR2kBAAAAhOskjkY1AIcPvQD6AJdJWwBPAHcPvwBQRnoPMABXADYPS0ZiAPgPQQCsAGtJMgCGAGkPWgCMRogP5wCMAFgPU0aVAPwP4gBdACBJlQCvAIoP+QCyRlgPvQDJAOoP6UbLACkPrQAWADxJbADWADUO9wDTRk0PnQDeAIUPUEbeAD0P7AAqAD1JvADwAEYPRQDxRqsOswD4AH4PhEYCAYoP1QDCAU1JbwAIAf8PXgAgR3cPgQAsAUIPyEZCAdoPVQCAAYtJgABLAX4OrwBIR/8O6gBXAawPSUZZAYcPTg3G9WNUdg1jGz8PmIIWumsJjgTa9b6EtcCf/IZ/+YiYgh5CAHi1fmYIL/wuKPdzRgKfE8ZnMD0id2cXFpYnpzfKLYuX/bv3BwIaETJMdg0GX5Ycub+78pLqmvEe/BdDMAmx+Xb0ePtyy1L0AvU+EfIbLU9nhVb9NQsL8euiq/AKEcv0ZY/iVlv8GSA1r0d1rDFrfdZ1ueCojTJAGxDaBMqRvHVlEa96ffOy76L46VU7CFaKwnH6Z2vVQAkBkvoTRILCvovzEXKBgjN4ttfOI7P3yfkviPdM+99eZAcg/wEGNR6jDQBzCsxHS4bBPgYAww3T/lJOAawRBvxEjw0EKRUGRDtdUs0AZ1j8Kz0EADfo9EZOAWQmAP/9ncEMRocyhnh0CMXBRVxLwDAVAB+N8E+H/GD/Rv//lksHRlRPd8EQAPdS9HP+S8D//0w6CAQwU4PCw0XAzwB6EghLTFUWAN1X7wD/wEMy//+GN8RFAXZYfcIDxSxdNsMNAFNm9IUxxHjABAA9aHSyBAR5bG3A/xEA8oT0CcH+/v//NgX/REIBm4SQiQjFb388dnsDAC+FqMETRhSJ7VVPQfDA+w3BwFoXAKNPGkOG/0zBM8D+O/36u8MuDACbi0mAgobD/8QDADFJacRQAVuP+js8OkT6ucH9YCcDAC6PGrkJAFOWcIAEgBBGWpb6//47hMD7fUckBADml9szAUbinCfARwrFka/VwpLCwsPAzwCU9oiOwcTBk8wAPqpBwsLDwcJaBgTesxz/MQYA/LleMsAQALnFp03BjIXAwMGJBQAEyy25Nw0Au80wBf/7uv4uwCkJACnONIT9xPrBQgTFcdex9/oRAGnZhsXBgMfJwsXExwbHwIOpFgAu2lBDxMeGwMOO/sLCAcDGh8PDCABU2hX9+Lr8HRQANduMwJ+EkMN8xcDCB8LESgGh4TrA+zn6+70l/iIAUOKDp8bmqcPDwmHDB8LA5sL/xMPBwwedAkaa4kP//Pg6DQSt8zQ7/v3/OMD7uf4JABn4TAPAx87DEhDRCkk6Kfq5/8D//f/COMAwVRHXCkD9/zspxLg6av4+CBDRITCAwZHACBDIgmf7ucHA/f8DEN1eDYdTQgALQwHFAA8DUwA=', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (310, 'BJ36195260254', 'DATA FP PIN=4	FID=6	Size=1128	Valid=1	TMP=Sg9TUzIxAAADTFAECAUHCc7QAAAbTWkBAAAAg/EeZ0xJAHIPrAC1ACFDfQB9AHoPSQCWTIYOVACZAIsP40ycAKcPuwBnAKdDcACnAEEOrgC0TDIMfAC3ANsMj0zAAJoOzgAEAJ5DdADHALIMewDQTJAPegDUAFwMzkzgAIgPWgAtAJ1DvgDoAIMPIQDsTIMPMgDwAFIOVEz4AIoPrwA8AH5DewD9AIsPCgABTXsPeQAXAboPw0wZAXgPVgDYAX9DtgBBAfgPCQBMTf8OrgBbAbkPPLcmU1snv5wSqZTNMPdSO28sZA9hBE9qRgxaHt7UVUkvDjMbBgkf/WhQjBBpJdL0iBQeuHiB5ey1bLyFfjFc6kUDQQ7jFI21ABihlHmByAkuXcz2mejJA2x/ZkiY+RELKRQLBvla7Py99V0KUP9iR4cC9g7i+sofvqD/AToR4f7XBDFJOA96AY7upAfqt7P4xfd+BWf34k+3/VKD/v0D9ei8oP7Vf1KD2Ar1yDqK0Yf2gBYHbt7xGCAtAQEHFglJAWs2fcF7wwBscXyGwAoAo4EiwgY/wgcAYEa/w3CPDABoR/3/OcH9sz9EBwBgTLR7fEQBsHMkwf4EZBJMe3mGxZbCBMHCj8XFwsH/wc0AgzIX/sBYwAzFeHzMx3nCjqUTxR+FkD9B/v4uwINSF0yKkJPDxsMAwsOIxcHDwsCQlg4DxJeGw8bFwwfFwon+w2oKAJBdIGfH/sINAFGelcLBj8KWwsF7FcW8nefDwMGCwsMHwcGMw8CCRhMAcqCjjMF1xMLEwAZ0wIybBQCFo5MPxsdHAY2mIsNRB//BAwcAv6YicQcLA1WtxvzA/kw6/f1CAXRbAyo/OsDCjYUIAHqzui3+j4wJAHu7KcYEbv5LAXnLHJJEwQDSrg6ABAAv5tJ/BUz69H3ASQTFIvdFaAQAqv16+wQDsP+AXQ0Ayzp6WBj+ZMANEMzDd0mMwfx2UxAQOgh+jHpRXP5zDtX6EjbBb0BrOwXVOxdPWA4Q/xh3BVtuCT8KEL0Yd51WV0AR+iN3wf+TwGONBxEDLnrABV0GXPQ7d1QHEHZBeYxcwAUQyFC4UgdcqVx6bgUQJV6Kj3dSQgALQ8QAA0dEUg==', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (311, 'BWXP203960242', 'DATA DEL_USER PIN=3', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (312, 'BJ36195260254', 'DATA USER PIN=3	Name=Fitri Andiani	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (313, 'BJ36195260254', 'DATA FP PIN=3	FID=5	Size=1160	Valid=1	TMP=SidTUzIxAAADZGkECAUHCc7QAAAbZWkBAAAAg4kWOGRyAHsPqwBZAIRrWQDKAHEPDgDMZIoPPgDYADcPhmTnAHkPxQArAIlrZQDxAPgPpgD0ZHUPrAD+AEYPK2T+AO8PwADGAQ1rUgAIAXAPcAAOZRAPNgAOATQPcWQgAWUOvADmAYhrTwA/AVAPSwBAZUcOOgBEAZMPXGRRAT4OlQCdAS1pOg9Hixf34v9Mdy7/foBGeoL8PWQ+fU8KeoAjB6Wbf4F2Bh/4hH5hbL8A0Ibli7uB1xpsBvr+KXTMdeWctAGag2r/EPz+6TyG8f7te0+AUmAYkKWKMQVPgHwZu/ZCI87zbH69GKcKqf1RFtLsbn7f47MIIQn/GugC5PLS6jv4wOrYlv7LH98YIPgBAV8dcAUASz24wFFnAVxbBsAFxYhhbVUFACleA5wDA3Jq9/8FAESsAMMjCQCAbAP+Bf/CMQIAN3CAwsYAPBf8/wsAaHLGS1g4AgA3d3rB1QAv5vbAPkL9wYBTEWQXkffAUz+OUltoAaeZjMHABGz9pksFAK+dDwRVD2Smn4bAwMCqZMJjAaCrBv9FBQsD+K2GwHRvwDoSA32x7T///sE7YvybW/8TABbGKERDI8MrYMAGAJHIdzjBCQBcyfqKwP0NDgDHy497TmLCpVITABXP7Y7AwplhSjZdBAAK0hM9BQA62nBs1QBBvvbD/T44wTr/w1kJAILmesEEUsNvAYDs+jL/B/xUaQHA7YlZfARiwmgBdvT6wP2APUh3ARX16f7BO8DCUv89U1kIAJr2dByCBwCo/IlOhw50ogCDwcGFAf59pQcQxAAMOAQUE5MBlnD/doMEa8KlwMIGEMMGyUDCYxFODXCLeMIQu2oO/0XBBBD3EWQbBxB2H/c7OwgTCiFtw8DAlMAQqUCIlgYQbyWijcNiEawlCTXBwxBvSmGRwBcRA+qXwiGRaonBwHsHhgl0czXr//3+OEfCchH8OpNKakyLwaVqwYsREPT7k8ObwcDBlv/FOpDCYBFwP1OjBNVNQTdsAxCLRFADAxNSRF7DAxA7jVfBYhGZTAb+QsEQojIINg8Q/F9fcMObicXCxKkN1YFh0/z5/Pv+/zrAw6T+ChCUYrA+9vuk/8H/wFJCxQtAZQEAC0VSAA==', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (314, 'BWXP205260364', 'DATA DEL_USER PIN=1', '2021-03-16 16:53:03', '2021-03-16 16:53:12', '2021-03-16 16:53:12', 0, NULL);
INSERT INTO `devcmds` VALUES (315, 'BJ36195260254', 'DATA USER PIN=1	Name=Ika Arsianti Dewi	Pri=14			TZ=0000000100000000	Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (316, 'BJ36195260254', 'DATA FP PIN=1	FID=5	Size=1252	Valid=1	TMP=SulTUzIxAAADqqoECAUHCc7QAAAbq2kBAAAAg1cZTap+AGoPQABGAO+ljwCOAAAOWgCNqoEOVACjAJMPWaqvAOMPuwBrAIyleAC2AE4PPQDBqqEPZgDLAIYP8KrjACQOdAA9ADulPwAGAUMPTAAcqy4PeQAnAYQPj6oxAS8OYQD7AcKlsQBBAaUNdgBJqxgN4gBLAWQPUKpOAcIOgQCVAcenoABRAaAMpwBXq9AOwwBUAVkOjipTFU+IiYR7msCjgIDWt5tyRIAlWWI2VHfm7RNuSyXPoKqUlhNKkvxZkA++bMb773xsuXYjHffuYCvvJS7+l6eHdgs69IRSNg5rh1MHSADCW//7LRVRFWeADqrk8aJtHQI48qEqEY45Bv0L2XZ+19h5VgRjiK79zlqcAsMAOvR7JIk/0InB/mLc+BBuuKsMfYWF+x/8Q6j9ACA+AQKZHcGsAWkoGsVbxgBZkHDBBwBiOz9AWKcByFCPwVwEefwpEQDXXpBxOsF7acDAwmQTACZskGrAaWeMwcC1wROqpXCJwsHBB8LBasHAwcDCwAcIAwxwDP7BPv/RAOTcksDAwlnCOpbBasBbxRIAsrmQi2jBxMDBwMEFwXNoCAC0fRBBBP1eugFDgefAMDv//Wr+/8DAMwjFTILDd8LBwhUANoeZaP54dMLAwwfAwWv+cREAkom/wZJuUcPAPnsKxZeKo/7///5Vws4AkjkBLv5TZATFepbakhMAj5h9UsGSyMNDwVcFAFOZAIAHANC1IMCfCgP4plrCcf/BlQ4D06hijJDAZZYDAzWhhsIPAHdhZ4tpa2T/eA4AT69qbMDDdf/BQz4EAyirZI8GAIh9VpFoBhCFBjR3RQYDZbwkV8INALK6VAjBZcDAIBnF9cMIZcJ4k8KQBMHCL8FbBwDUzeX/RmsaAQTMq4WyeItrwsDD/8LABcLD2QgAY89JhzpkCKppz0PBV8Q5wSmsAdfZIv9SwwDVSyVVwQYA1i8pwvAGANDsJ8A6dwWq1fwreMEH1c8Dg8HCZwcQzM0nwsjDBwB1+j2zMAW6tQ8pa8IH1akKg8HAwmELEGUHLtrBwcHBwMHBEJGyKHEIEL8K7MFn0gYQxgona6oJExIKJ2RpwQbVPwjswXwKEJ0P7mt9wQgQmBUrwQXBwlWDCBCKIi0HwMJrZQUQeSo64QMTJjIrwwQQtYscX64R5k8awvzGEI/4W/4DEKVU0sAHupFb/R5SQsULQKsBAAtFUgA=', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (317, 'BJ36195260254', 'DATA FP PIN=1	FID=6	Size=1428	Valid=1	TMP=TW1TUzIxAAAELjEECAUHCc7QAAAcL2kBAAAAhNMmvi4uAIUOkADxAGUhZgA5AOQPZAA+Ll4NRwA9AJ4Pzy5HAAMPnACCAPwjtQBLAHAOSwBXLt0OngBVADcORC5cAN0PUABNAFYhyQCMAAcPUACXLl4P2QCcAEUPVy6gANYPdgBgAOQhLwCyAE0PDQC3LmIP0ADEAJ0PMy7JAMwP2wAVAB8g2QDgACUOUwDtLjgPNwD0APIP0S77ACIP5gA+ACQgsgARAbEPKAAQL6MOTgAYAXYPWC4fATwPpwDkASAhawAvATQPGgA2LxcPhAA0Ae8P6S5JAZkPoQCQAach0wBaAZYPqCslqUQXLQVJaqeEHqabhrcIcWh0AUXcI3hugCP/MJYhrQunWZjFCCgdDUCAgpl6qexM5W5SSPwVGH2Gq4TToob5aX7jdI50naS7pvepjoHaWT/RoHpdH0oqoIa21xuKJg2OgfqQYawjehP+TQ0850JnSDzZ9V03oILyuY74CcSt+Mu5ISKgBxHPb4i6F1c1c4cKb2/+pAQh0YOB5QCVg8v8LaO7knd4lYf3jIav3HjqgXZ/EIhtJFoUOXXK/maB9dRUD+qBlX/7dL6t3PtCCnqLVIdWKqr5gnvjDGaB0tK7g3P0ntzS4RwOOwECQxyXwABwPGh3CACHFLXBx+/BWwgAXhWlW8V5BQCIGmnABxEEhyeDxMNiwARndtHCCgDcLYYE/PrpwcVcDgCL8V76Sf6EwMBZDcWQPHI5wv+DwP8HCQSzOWfE/v/ABYUCLqQ5+kb/BMVkOE7BwQYAQj6lbcUpAepAg8FXAwcEaUBXUmYLAHVIfuj/wML/g8LAALxlAUMPAPtcTHvF74nBwMHAwsMAOU5WWcAWAPujkMBxcMPAasHBs8JhOQH9cZOTeE1neu7CTsEMAP+yhmLswIF7CwD6RYyA7ICEBQDMicY4Ai5NilbBwMIEBQR/jVDAbBMAAYxz7f7EgHOJd74cBNCNkMGMi8QE/4dbwYT/wZHEwADIoQjAQBMAklNigbrC/8LBwMOAjh0u1JmGwsPCBsKCSMN+wsDBnaoEBPOcDDMUANVlg8axjXHCwIvCQQcEfqRPwf7DMM8Ad4dbw2d0wAnFxLVfxJvCgAUACbIEDQIAKrRWwsIANJhNwf/Bbg7FxbNJxZvCacLARBcFKsCkl8KbxAfCxezDwcHBwMI6wsYiAc3GYMSnBYl8KAE2zElSws0A0/xSxsVqwxLF/daywKHFxMOQBnHF7wUA4NQWQMAA3/cfwGANAP0bnsXqxMfGl8GDwwDfyybD///+BMWV6hl5BAA1+EOoBRQRDD3/wcAD1U0YbsEEEFgiPTrDAj5eIjRRwwnVqyYMwcHAwpAK1aYhBYJ5wf4FEK4xMO5uBBCEOStTUkYuCkMBAAALgFI=', '2021-03-16 16:53:03', '2021-03-16 16:53:18', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (318, 'BWXP203960242', 'DATA DEL_USER PIN=2', '2021-03-16 16:53:03', '2021-03-16 16:53:27', '2021-03-16 16:53:30', 0, NULL);
INSERT INTO `devcmds` VALUES (319, 'BJ36195260254', 'DATA USER PIN=2	Name=Fatimatus Sa\'Diah	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:53:03', '2021-03-16 16:53:19', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (320, 'BJ36195260254', 'DATA FP PIN=2	FID=5	Size=1280	Valid=1	TMP=SoNTUzIxAAADwMcECAUHCc7QAAAbwWkBAAAAg20be8BQAIEPXQCnAPzPPQB0AG4PKACAwJYPgQCEALoPJ8CKAO0PagBfAPzPlACcAIQPVQCkwH8PggC8ALAO6sC8AJkPvgAGAIXPlgDVAHwOpADUwGEPpwDqAKwP6sDqAJYPVwAxAFbPrgD9ABgPuAAJwToPKAAPAZYPasARAUUPSgDcAUbPPQAcAUwPPAA4wRAP5QBJAdMPMcBOATwOsgCdASHPa4Q7BWsXq4DtUqKBdoD+cvZzLMNGE18XJvyngDHCd4B785/zp4CRQquPTAuiBJMR1z9cCrIC5fr3+OExYxcrBKsHrw/1L1MfKReqCDP7bcwH7yPmSVF47+0nrvyLE1+DP/RV0HsSGbEXnBrdujnf6z8lRQr/ERjCMA2yAObwcPgxwMv1LQjN+u4I2j7i8yt/UQYm9RDDDvEX+//rkg1Q0x4P+a/7BeVDAsJbHdwEAGHhE8c/AgBfMQbAwABP8nZpBQBQO79+B8BZOwBRCgBZQw8+wET/wP8IxbNB0EP+WQgAdIiAcqoLAHxQA0AF/8L2CQB1VH1iB2UGwBpV7f9DDsVpRsNVN0vAwP/LAGOiAVT////ABf/B8hAAG3DwS63B/j/BP0QEADmzcXjTARt68MBDOcHD/z/BPgkAfUWDwQCKbAwAhYTMwPyV/v7A/8AJxX2FQHZ0whMAJ0Lpwz4xRP9EVEbWAChM7MH+/jtkOGjDhgIAbpb9/8IAZVpwZm8HAJlZDMI//zwDAG6dOP8IwI2kgG9swLgLA1SmA/9ARsA6CwNNq33Ad35k1wAYdObAPv/A/upC/YIKAH65fZMHWIXFAYa7/UALxW/Aq8F+wHPCA8Xtw+DACAC6xYYEgcABBgDCxRNBkggDVMkDS/49BMV706mICACO0AMFMEnHAXnaYMHBBIwFwFzWZHvBDMVg2JzBZnKDDQC73121wYbCw4sJxZzZw/4ywDYFAEveagODCwCi6nFgxMICwHEVABvsJ8DDhDDAODtUwMEAUTZdfwMAV/iWwQvAs/sP/v9SBQsDavxpx6x7cMIQssEbSmAJEKvAHsOleQoQpQk9AHt1AgYQqw0pfp4JE7wOPcLCwXsEBBPkEVeCBxBl10yYvgYQKhNTakYHE6sVQMDEhQrV/RtcWHSRDQCTIGSTBcDBxMDBe8MQRdxHbMEGEDjbU8GwBBBNHkBuwxA+4Eh5/xQRA+6eVQHBwcOwxcRBwcMBAhDnTRrCl0IDy0IBAAALRZcA', '2021-03-16 16:53:03', '2021-03-16 16:53:19', '2021-03-16 16:53:21', 0, NULL);
INSERT INTO `devcmds` VALUES (321, 'BJ36195260254', 'DATA USER PIN=7	Name=Yogyantoro	Pri=14	Passwd=123456		TZ=0000000100000000	Grp=1', '2021-03-16 16:55:26', '2021-03-16 16:55:27', '2021-03-16 16:55:28', 0, NULL);
INSERT INTO `devcmds` VALUES (322, 'BJ36195260254', 'DATA USER PIN=67	Name=Bayu Setiawan	Pri=0				Grp=1', '2021-03-16 16:57:51', '2021-03-16 16:57:54', '2021-03-16 16:57:55', 0, NULL);
INSERT INTO `devcmds` VALUES (323, 'BWXP203960242', 'DATA DEL_USER PIN=51', '2021-03-16 16:58:52', '2021-03-16 16:58:57', '2021-03-16 16:58:58', 0, NULL);
INSERT INTO `devcmds` VALUES (324, 'BJ36195260254', 'DATA USER PIN=51	Name=AGUS SUSIANTO	Pri=0			TZ=0000000100000000	Grp=1', '2021-03-16 16:58:52', '2021-03-16 16:58:53', '2021-03-16 16:58:54', 0, NULL);
INSERT INTO `devcmds` VALUES (325, 'BJ36195260254', 'DATA FP PIN=51	FID=6	Size=1280	Valid=1	TMP=Sv1TUzIxAAADvr4ECAUHCc7QAAAbv2kBAAAAg2MeW75IAPsPtACLAJKxNwBhAGAPEwBpvh4PnAB5AE8PZ76UAPkPbABvAA+xMgCtAE8PnACxvj4PRwDCAPoPkL7HAJMP8QAPAJ+x6wDfAJIPhADnvjEP0QDpAEgPYb7wAJgPvwA3AIixPQD0AO0OKAD3voYPjAD2AEwPT776AIAPKwA4AN+xtQACAYMP8AAEv/cP1AASAb8Por4VAX0PXwDZAXqxKQAoAfYPngAov/wPlwAtAb8P7SHCB6NzDneCCHAlC2dHa2MTO5PYKZaHz/jvb6KTulDXvOO+5c3gFt1xVBM6EiNa9DWmvBNIJQLl808RiDY2DH9XMQ7vF0WtKA29+mEHWER+DK9UYQXl/8MIWqR7aWauTQkgAR2sYLylbAERcPWJQlcOIg0GC7vzkirw6q1SxehU8aHi1PlhCxIJ6Bxat3h7mvmy8iP25kFUB671UXx3+sldWwFOH4/5iIQ4wwYJ1f/j+QbyyFm+PyA6AQLxHD+6AaICD0YIxYUIQ/xBRAQAgtZ9ercBihMJ/ziDBgOGNe3/RwsARR8AQEHA/0QHAJlF9485EwApSOsFTP1A/sD9/8D/OsDCiw8As0qXjAXCiMzABwBUS3GvlBO+XUv9wP4+8EpmvQG4Uhf+BcUxYODA/8IEANqvHGa4AdZuImT/zwCbxo3BwsLCwwTD/LEBapP0/fzqWnDlGQAXltP+OsIplf/+PMFM/wRUDr5upv37/v6/wHF+BQBwrQ8pywBZENf8+yFScQUKA9avQ8LGwpSgBwOQrlNzgQgA8bFK68EsCABVtIzEwXrDxMALAFxzQMF7wsJw/8IUxUi9dyj+/fv//TvAw0HBwv/CRhrFEsB3/8E1wC7+OjP99MH/UsAEAIzGPhYJAHjFIsWAVxu+78iawEPBOsHHfsCfwsLAwgRi/rsBl8oXwHffABRz0cD/V8Aq9P097/7AZAMAQyIexr0BZvMJwgTFw/C9ZAkAkPYJB1FhtgFQ+wNJUcYQMrRowA8QOQoy/z3iwVtuBBDQ1X1atRGdEYBWTgR/AK75EXr/CRAVFnf8wf5eBBCe3XpFuxFbGoDCwQQIE0YbfcDCU8HBEFiedUYTEPskuMB978FUYsBbBNX/Kc47DxDLNnSPW1jU/gUQkyuABzgFrlYsel3DCtWUMsnBPnf/ERAyOn7KWP//VsH/gAsTTUN0VcBkWc8Q/Ppm/UTBwTPDEPHobP3+f1JCxQtAvwEAC0VSAA==', '2021-03-16 16:58:52', '2021-03-16 16:58:53', '2021-03-16 16:58:54', 0, NULL);
INSERT INTO `devcmds` VALUES (326, 'BJ36195260254', 'DATA FP PIN=51	FID=7	Size=1232	Valid=1	TMP=St9TUzIxAAADnKAECAUHCc7QAAAbnWkBAAAAg0EfepwrAP0PrQCCAIWTKgBcAOoPlABjnGQPjQBnAMEOoZxoAIQOdgCyAG+TKACCAOIPSgCcnGoPsgCzAE8PdJzAAOwPjAAGAFyTogDPAGgPXgDenCQPXwDfAJIPTZzjAFoOaAAtAFGTfwDuAEEP4QDznN0PPAD6AB4PyJwFAaEPRADAAdmTiwAQAZYOHAAfnZIPYQAfASkOSpwhAeIP3gDpAY+TsAA3AYoPkgA5nfgPKwBHATQPV5xSAf4Pm3t++9wHSwVeh5OLHwqdGqaDon4y+0aFgh3km16DgYEPAXCE/GuuCwvop/qA4Zp7Wg0u4reDTbiPImYumY03lm0fpHU1+048qESul+/gMbwGyAPlS5uk/D4ZIQT0C4Ec0f85Ern7DPIpgdPttQO+Bl+Hzpw0A4KACRPLFzSGTADh+3KBW1VdM45FIQiZ95IIFpLk9zIWnfqcC8l0qPim728EKgDcZJr2zf5VD/MYnWuG+GsQSQbLDziB/v3/fyA6xAIFhNQFAH8UfQWUC5yaHIbEWsM6BAM7I3pRBQB173RumQF9LQPCKckAu6KNwIfCxP0FiQicq0OJb8NJmQUDpEVrwoMLAF5JgGOYwH7DDACRXvNcKj4rBABMpWmHmAFQZGJZDcWJZObBlmnAwf8EBgM6agk1/woAt3V3D8HBwF0JAL929Lcq/gsAc3uownNcwWsSAOOAW4R748WFwW4OAE6deVr+h8D/ZFnJAJA8Afz9/zj/BF4EnIqjbcLDWsAArS2Rw6cMAHsF6f5h//wpZwoAVcH+YPrA/sD/wwcEAxTDa8TBFwApv67iiJHBlv/DlMBolQGLx2CIPDgEAwPKfcfEDABa0WgyxpB0BQCnFyRbiQHnzrGDeQTBo115wGQFAJ8fJPwUFADj27B3BMHCWMDBxcDDwATA/F4yCACX3kYBxMf7BQBb4FdVwgCffTXDw8HAwsEAY39XRwgAZOyTPFSZAWvsUMD9OgQD5vFJJQQAOThcPZ8RzwgawATVQAr8NQcQjhQQBcDD6wYQXSFtW4wME/og8P0oc2jAEEa/aEwLEK0zSWKUywYQWjbt/OrABoy0OAlYBBCWPHPYDRBbPPf+8mDCxQoQWE79PZPAP58RUFN9wgvVWFafSP9QSREQGleQFUJswGfAwcYQWcKCwwYQYmHGwMPFU0IAC0MBxQAI2VMA', '2021-03-16 16:58:52', '2021-03-16 16:58:53', '2021-03-16 16:58:54', 0, NULL);

-- ----------------------------
-- Table structure for devlog
-- ----------------------------
DROP TABLE IF EXISTS `devlog`;
CREATE TABLE `devlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SN_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OP` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Object` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Cnt` int(11) NULL DEFAULT NULL,
  `ECnt` int(11) NULL DEFAULT NULL,
  `OpTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `devlog_SN_id`(`SN_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 479 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of devlog
-- ----------------------------
INSERT INTO `devlog` VALUES (1, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-10 19:56:55');
INSERT INTO `devlog` VALUES (2, 'BWXP203960242', 'TRANSACT', '6	2021-03-10 15:57:3', 1, 0, '2021-03-10 19:57:35');
INSERT INTO `devlog` VALUES (3, 'BWXP203960242', 'TRANSACT', '1	2021-03-10 15:57:3', 1, 0, '2021-03-10 19:57:45');
INSERT INTO `devlog` VALUES (4, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 10:50:51');
INSERT INTO `devlog` VALUES (5, 'BWXP203960242', 'TRANSACT', '1	2021-03-12 07:05:1', 1, 0, '2021-03-12 11:05:14');
INSERT INTO `devlog` VALUES (6, 'BWXP203960242', 'USERDATA', 'None', 2, 0, '2021-03-12 11:27:32');
INSERT INTO `devlog` VALUES (7, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:37:25');
INSERT INTO `devlog` VALUES (8, 'BWXP203960242', 'USERDATA', 'None', 2, 0, '2021-03-12 11:37:25');
INSERT INTO `devlog` VALUES (9, 'BWXP203960242', 'TRANSACT', '6	2021-03-12 07:39:4', 1, 0, '2021-03-12 11:41:35');
INSERT INTO `devlog` VALUES (10, 'BWXP203960242', 'TRANSACT', '1	2021-03-12 07:39:4', 1, 0, '2021-03-12 11:41:35');
INSERT INTO `devlog` VALUES (11, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:41:45');
INSERT INTO `devlog` VALUES (12, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:42:45');
INSERT INTO `devlog` VALUES (13, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:43:15');
INSERT INTO `devlog` VALUES (14, 'BWXP203960242', 'USERDATA', '000000006 Yogi-02', 1, 0, '2021-03-12 11:43:15');
INSERT INTO `devlog` VALUES (15, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:43:15');
INSERT INTO `devlog` VALUES (16, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:43:25');
INSERT INTO `devlog` VALUES (17, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:44:05');
INSERT INTO `devlog` VALUES (18, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:44:15');
INSERT INTO `devlog` VALUES (19, 'BWXP203960242', 'USERDATA', '000000006 Yogi-02', 1, 0, '2021-03-12 11:44:15');
INSERT INTO `devlog` VALUES (20, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:44:15');
INSERT INTO `devlog` VALUES (21, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:44:15');
INSERT INTO `devlog` VALUES (22, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 11:52:01');
INSERT INTO `devlog` VALUES (23, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 12:10:16');
INSERT INTO `devlog` VALUES (24, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 14:54:23');
INSERT INTO `devlog` VALUES (25, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 15:00:45');
INSERT INTO `devlog` VALUES (26, 'BWXP205260321', 'USERDATA', '000000001 Test', 1, 0, '2021-03-12 15:03:25');
INSERT INTO `devlog` VALUES (27, 'BWXP205260321', 'USERDATA', '000000001 Test', 1, 0, '2021-03-12 15:03:25');
INSERT INTO `devlog` VALUES (28, 'BWXP205260321', 'USERDATA', '000000001 Test', 1, 0, '2021-03-12 15:03:25');
INSERT INTO `devlog` VALUES (29, 'BWXP205260321', 'USERDATA', 'None', 14, 0, '2021-03-12 15:03:25');
INSERT INTO `devlog` VALUES (30, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-12 15:05:25');
INSERT INTO `devlog` VALUES (31, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-12 15:10:16');
INSERT INTO `devlog` VALUES (32, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-12 15:15:16');
INSERT INTO `devlog` VALUES (33, 'BWXP203960242', 'USERDATA', 'None', 3, 0, '2021-03-12 15:19:27');
INSERT INTO `devlog` VALUES (34, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 16:07:23');
INSERT INTO `devlog` VALUES (35, 'BWXP203960242', 'USERDATA', '000000014 Erwin Nugr', 1, 0, '2021-03-12 16:08:23');
INSERT INTO `devlog` VALUES (36, 'BWXP203960242', 'USERDATA', 'None', 2, 0, '2021-03-12 16:08:23');
INSERT INTO `devlog` VALUES (37, 'BWXP203960242', 'USERDATA', '000000014 Erwin Nugr', 2, 0, '2021-03-12 16:08:23');
INSERT INTO `devlog` VALUES (38, 'BWXP203960242', 'USERDATA', '000000019 Syarifah N', 1, 0, '2021-03-12 16:09:43');
INSERT INTO `devlog` VALUES (39, 'BWXP203960242', 'USERDATA', 'None', 2, 0, '2021-03-12 16:09:43');
INSERT INTO `devlog` VALUES (40, 'BWXP203960242', 'USERDATA', '000000019 Syarifah N', 2, 0, '2021-03-12 16:09:43');
INSERT INTO `devlog` VALUES (41, 'BWXP205260321', 'USERDATA', 'None', 3, 0, '2021-03-12 19:03:25');
INSERT INTO `devlog` VALUES (42, 'BWXP205260321', 'USERDATA', 'None', 32, 0, '2021-03-12 19:03:25');
INSERT INTO `devlog` VALUES (43, 'BWXP205260321', 'USERDATA', '000000006 Admin', 6, 0, '2021-03-12 19:03:25');
INSERT INTO `devlog` VALUES (44, 'BWXP205260321', 'USERDATA', '000000006 Admin', 6, 0, '2021-03-12 19:03:25');
INSERT INTO `devlog` VALUES (45, 'BWXP205260321', 'TRANSACT', '1	2021-03-12 13:52:2', 7, 0, '2021-03-12 19:03:35');
INSERT INTO `devlog` VALUES (46, 'BWXP205260321', 'TRANSACT', '', 0, 0, '2021-03-12 19:03:35');
INSERT INTO `devlog` VALUES (47, 'BWXP205260321', 'TRANSACT', '6	2021-03-12 16:03:2', 1, 0, '2021-03-12 20:03:39');
INSERT INTO `devlog` VALUES (48, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-12 20:03:39');
INSERT INTO `devlog` VALUES (49, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 20:05:09');
INSERT INTO `devlog` VALUES (50, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 20:06:09');
INSERT INTO `devlog` VALUES (51, 'BWXP203960242', 'USERDATA', '000000018 Ahmad Fauz', 1, 0, '2021-03-12 20:06:19');
INSERT INTO `devlog` VALUES (52, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 20:06:19');
INSERT INTO `devlog` VALUES (53, 'BWXP203960242', 'USERDATA', '000000001 Ika Arsian', 1, 0, '2021-03-12 20:07:39');
INSERT INTO `devlog` VALUES (54, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 20:07:40');
INSERT INTO `devlog` VALUES (55, 'BWXP205260321', 'TRANSACT', '6	2021-03-12 16:07:4', 1, 0, '2021-03-12 20:07:50');
INSERT INTO `devlog` VALUES (56, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 20:08:00');
INSERT INTO `devlog` VALUES (57, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-12 20:08:00');
INSERT INTO `devlog` VALUES (58, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 20:08:10');
INSERT INTO `devlog` VALUES (59, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 20:09:00');
INSERT INTO `devlog` VALUES (60, 'BWXP203960242', 'USERDATA', '000000007 Yogyantoro', 1, 0, '2021-03-12 20:09:10');
INSERT INTO `devlog` VALUES (61, 'BWXP203960242', 'USERDATA', 'None', 2, 0, '2021-03-12 20:09:10');
INSERT INTO `devlog` VALUES (62, 'BWXP203960242', 'USERDATA', '000000007 Yogyantoro', 2, 0, '2021-03-12 20:09:10');
INSERT INTO `devlog` VALUES (63, 'BWXP205260321', 'TRANSACT', '1	2021-03-12 16:09:0', 1, 0, '2021-03-12 20:09:20');
INSERT INTO `devlog` VALUES (64, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 20:09:30');
INSERT INTO `devlog` VALUES (65, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-12 20:09:30');
INSERT INTO `devlog` VALUES (66, 'BWXP205260321', 'USERDATA', '000000001 Ika Arsian', 1, 0, '2021-03-12 20:10:36');
INSERT INTO `devlog` VALUES (67, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-12 20:10:36');
INSERT INTO `devlog` VALUES (68, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-12 20:10:56');
INSERT INTO `devlog` VALUES (69, 'BWXP205260321', 'USERDATA', '000000042 Peri Priat', 1, 0, '2021-03-12 20:11:06');
INSERT INTO `devlog` VALUES (70, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-12 20:11:06');
INSERT INTO `devlog` VALUES (71, 'BWXP205260321', 'USERDATA', '000000042 Peri Priat', 1, 0, '2021-03-12 20:11:06');
INSERT INTO `devlog` VALUES (72, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-12 20:11:06');
INSERT INTO `devlog` VALUES (73, 'BWXP205260321', 'TRANSACT', '42	2021-03-12 16:39:', 1, 0, '2021-03-12 20:39:50');
INSERT INTO `devlog` VALUES (74, 'BWXP205260321', 'TRANSACT', '4	2021-03-12 16:39:5', 1, 0, '2021-03-12 20:40:00');
INSERT INTO `devlog` VALUES (75, 'BWXP205260321', 'TRANSACT', '3	2021-03-12 16:39:5', 1, 0, '2021-03-12 20:40:00');
INSERT INTO `devlog` VALUES (76, 'BWXP205260321', 'TRANSACT', '5	2021-03-12 16:40:0', 1, 0, '2021-03-12 20:40:10');
INSERT INTO `devlog` VALUES (77, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 21:40:50');
INSERT INTO `devlog` VALUES (78, 'BWXP203960242', 'USERDATA', '000000018 Ahmad Fauz', 1, 0, '2021-03-12 21:41:45');
INSERT INTO `devlog` VALUES (79, 'BWXP203960242', 'USERDATA', 'None', 2, 0, '2021-03-12 21:41:55');
INSERT INTO `devlog` VALUES (80, 'BWXP203960242', 'USERDATA', '000000018 Ahmad Fauz', 2, 0, '2021-03-12 21:41:55');
INSERT INTO `devlog` VALUES (81, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-12 21:43:35');
INSERT INTO `devlog` VALUES (82, 'BWXP203960242', 'USERDATA', '000000051 AGUS SUSIA', 1, 0, '2021-03-12 21:44:55');
INSERT INTO `devlog` VALUES (83, 'BWXP203960242', 'USERDATA', 'None', 2, 0, '2021-03-12 21:44:55');
INSERT INTO `devlog` VALUES (84, 'BWXP203960242', 'USERDATA', '000000051 AGUS SUSIA', 2, 0, '2021-03-12 21:44:55');
INSERT INTO `devlog` VALUES (85, 'BWXP205260321', 'TRANSACT', '42	2021-03-13 09:53:', 1, 0, '2021-03-13 09:54:03');
INSERT INTO `devlog` VALUES (86, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-13 09:54:13');
INSERT INTO `devlog` VALUES (87, 'BWXP205260321', 'USERDATA', '000000046 Intan Nurr', 1, 0, '2021-03-13 09:55:53');
INSERT INTO `devlog` VALUES (88, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-13 09:55:53');
INSERT INTO `devlog` VALUES (89, 'BWXP205260321', 'USERDATA', '000000046 Intan Nurr', 1, 0, '2021-03-13 09:56:03');
INSERT INTO `devlog` VALUES (90, 'BWXP205260321', 'TRANSACT', '46	2021-03-13 09:55:', 1, 0, '2021-03-13 09:56:03');
INSERT INTO `devlog` VALUES (91, 'BWXP205260321', 'TRANSACT', '42	2021-03-13 10:04:', 1, 0, '2021-03-13 10:04:48');
INSERT INTO `devlog` VALUES (92, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-13 10:04:58');
INSERT INTO `devlog` VALUES (93, 'BWXP205260321', 'USERDATA', '000000045 Geovani', 1, 0, '2021-03-13 10:05:28');
INSERT INTO `devlog` VALUES (94, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-13 10:05:29');
INSERT INTO `devlog` VALUES (95, 'BWXP205260321', 'USERDATA', '000000045 Geovani', 1, 0, '2021-03-13 10:05:29');
INSERT INTO `devlog` VALUES (96, 'BWXP205260321', 'TRANSACT', '45	2021-03-13 10:05:', 1, 0, '2021-03-13 10:05:29');
INSERT INTO `devlog` VALUES (97, 'BWXP205260321', 'TRANSACT', '42	2021-03-13 10:07:', 1, 0, '2021-03-13 10:07:54');
INSERT INTO `devlog` VALUES (98, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-13 10:08:04');
INSERT INTO `devlog` VALUES (99, 'BWXP205260321', 'USERDATA', '000000043 Okki Rubiy', 1, 0, '2021-03-13 10:08:24');
INSERT INTO `devlog` VALUES (100, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-13 10:08:34');
INSERT INTO `devlog` VALUES (101, 'BWXP205260321', 'USERDATA', '000000043 Okki Rubiy', 1, 0, '2021-03-13 10:08:34');
INSERT INTO `devlog` VALUES (102, 'BWXP205260321', 'TRANSACT', '43	2021-03-13 10:08:', 1, 0, '2021-03-13 10:08:34');
INSERT INTO `devlog` VALUES (103, 'BWXP205260364', 'USERDATA', 'None', 12, 0, '2021-03-13 10:18:39');
INSERT INTO `devlog` VALUES (104, 'BWXP205260364', 'USERDATA', 'None', 12, 0, '2021-03-13 10:18:39');
INSERT INTO `devlog` VALUES (105, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 10:25:19');
INSERT INTO `devlog` VALUES (106, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 10:25:59');
INSERT INTO `devlog` VALUES (107, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:40:01');
INSERT INTO `devlog` VALUES (108, 'BWXP205260364', 'USERDATA', '000000066 Satrio Ram', 1, 0, '2021-03-13 11:40:41');
INSERT INTO `devlog` VALUES (109, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 11:40:41');
INSERT INTO `devlog` VALUES (110, 'BWXP205260364', 'USERDATA', '000000066 Satrio Ram', 1, 0, '2021-03-13 11:40:41');
INSERT INTO `devlog` VALUES (111, 'BWXP205260364', 'TRANSACT', '66	2021-03-13 11:40:', 1, 0, '2021-03-13 11:40:41');
INSERT INTO `devlog` VALUES (112, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:41:01');
INSERT INTO `devlog` VALUES (113, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:42:11');
INSERT INTO `devlog` VALUES (114, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:42:31');
INSERT INTO `devlog` VALUES (115, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:42:41');
INSERT INTO `devlog` VALUES (116, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:43:01');
INSERT INTO `devlog` VALUES (117, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:43:41');
INSERT INTO `devlog` VALUES (118, 'BWXP205260364', 'USERDATA', '000000065 Irvan Auld', 1, 0, '2021-03-13 11:44:21');
INSERT INTO `devlog` VALUES (119, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 11:44:21');
INSERT INTO `devlog` VALUES (120, 'BWXP205260364', 'USERDATA', '000000065 Irvan Auld', 1, 0, '2021-03-13 11:44:21');
INSERT INTO `devlog` VALUES (121, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:44:21');
INSERT INTO `devlog` VALUES (122, 'BWXP205260364', 'USERDATA', '000000065 Irvan Auld', 1, 0, '2021-03-13 11:44:31');
INSERT INTO `devlog` VALUES (123, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:44:31');
INSERT INTO `devlog` VALUES (124, 'BWXP205260364', 'TRANSACT', '65	2021-03-13 11:44:', 1, 0, '2021-03-13 11:44:41');
INSERT INTO `devlog` VALUES (125, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:44:51');
INSERT INTO `devlog` VALUES (126, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:45:21');
INSERT INTO `devlog` VALUES (127, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:45:41');
INSERT INTO `devlog` VALUES (128, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:46:01');
INSERT INTO `devlog` VALUES (129, 'BWXP205260364', 'USERDATA', '000000001 Ika Arsian', 1, 0, '2021-03-13 11:46:31');
INSERT INTO `devlog` VALUES (130, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 11:46:31');
INSERT INTO `devlog` VALUES (131, 'BWXP205260364', 'USERDATA', '000000001 Ika Arsian', 1, 0, '2021-03-13 11:46:31');
INSERT INTO `devlog` VALUES (132, 'BWXP205260364', 'TRANSACT', '1	2021-03-13 11:46:3', 1, 0, '2021-03-13 11:46:41');
INSERT INTO `devlog` VALUES (133, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:47:31');
INSERT INTO `devlog` VALUES (134, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 11:47:51');
INSERT INTO `devlog` VALUES (135, 'BWXP205260364', 'TRANSACT', '65	2021-03-13 12:10:', 1, 0, '2021-03-13 12:10:06');
INSERT INTO `devlog` VALUES (136, 'BWXP205260321', 'TRANSACT', '3	2021-03-13 13:40:5', 1, 0, '2021-03-13 13:41:01');
INSERT INTO `devlog` VALUES (137, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 13:43:52');
INSERT INTO `devlog` VALUES (138, 'BWXP205260321', 'TRANSACT', '2	2021-03-13 13:47:2', 1, 0, '2021-03-13 13:47:32');
INSERT INTO `devlog` VALUES (139, 'BWXP205260321', 'TRANSACT', '3	2021-03-13 13:48:0', 1, 0, '2021-03-13 13:48:12');
INSERT INTO `devlog` VALUES (140, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 13:49:37');
INSERT INTO `devlog` VALUES (141, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 13:49:47');
INSERT INTO `devlog` VALUES (142, 'BWXP205260364', 'USERDATA', '000000053 Ijad Mujad', 1, 0, '2021-03-13 13:50:27');
INSERT INTO `devlog` VALUES (143, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 13:50:27');
INSERT INTO `devlog` VALUES (144, 'BWXP205260364', 'USERDATA', '000000053 Ijad Mujad', 2, 0, '2021-03-13 13:50:27');
INSERT INTO `devlog` VALUES (145, 'BWXP205260364', 'TRANSACT', '53	2021-03-13 13:50:', 1, 0, '2021-03-13 13:50:27');
INSERT INTO `devlog` VALUES (146, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 13:50:37');
INSERT INTO `devlog` VALUES (147, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 13:51:27');
INSERT INTO `devlog` VALUES (148, 'BWXP205260364', 'USERDATA', '000000055 Suherman', 1, 0, '2021-03-13 13:52:27');
INSERT INTO `devlog` VALUES (149, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 13:52:27');
INSERT INTO `devlog` VALUES (150, 'BWXP205260364', 'USERDATA', '000000055 Suherman', 2, 0, '2021-03-13 13:52:27');
INSERT INTO `devlog` VALUES (151, 'BWXP205260364', 'TRANSACT', '55	2021-03-13 13:52:', 1, 0, '2021-03-13 13:52:27');
INSERT INTO `devlog` VALUES (152, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 13:52:37');
INSERT INTO `devlog` VALUES (153, 'BWXP205260364', 'USERDATA', '000000057 Asep Rahma', 1, 0, '2021-03-13 13:53:27');
INSERT INTO `devlog` VALUES (154, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 13:53:27');
INSERT INTO `devlog` VALUES (155, 'BWXP205260364', 'USERDATA', '000000057 Asep Rahma', 2, 0, '2021-03-13 13:53:27');
INSERT INTO `devlog` VALUES (156, 'BWXP205260364', 'TRANSACT', '57	2021-03-13 13:53:', 1, 0, '2021-03-13 13:53:27');
INSERT INTO `devlog` VALUES (157, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 13:54:07');
INSERT INTO `devlog` VALUES (158, 'BWXP205260364', 'USERDATA', '000000062 Salma Rosm', 1, 0, '2021-03-13 13:54:57');
INSERT INTO `devlog` VALUES (159, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 13:54:57');
INSERT INTO `devlog` VALUES (160, 'BWXP205260364', 'USERDATA', '000000062 Salma Rosm', 2, 0, '2021-03-13 13:54:57');
INSERT INTO `devlog` VALUES (161, 'BWXP205260364', 'TRANSACT', '62	2021-03-13 13:54:', 1, 0, '2021-03-13 13:54:57');
INSERT INTO `devlog` VALUES (162, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 13:56:17');
INSERT INTO `devlog` VALUES (163, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 13:57:07');
INSERT INTO `devlog` VALUES (164, 'BWXP205260364', 'USERDATA', '000000054 Nurul Rahm', 1, 0, '2021-03-13 13:57:17');
INSERT INTO `devlog` VALUES (165, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 13:57:17');
INSERT INTO `devlog` VALUES (166, 'BWXP205260364', 'USERDATA', '000000054 Nurul Rahm', 2, 0, '2021-03-13 13:57:17');
INSERT INTO `devlog` VALUES (167, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 13:57:27');
INSERT INTO `devlog` VALUES (168, 'BWXP205260364', 'USERDATA', '000000060 Sandi Susa', 1, 0, '2021-03-13 13:58:17');
INSERT INTO `devlog` VALUES (169, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 13:58:17');
INSERT INTO `devlog` VALUES (170, 'BWXP205260364', 'USERDATA', '000000060 Sandi Susa', 2, 0, '2021-03-13 13:58:17');
INSERT INTO `devlog` VALUES (171, 'BWXP205260364', 'TRANSACT', '54	2021-03-13 13:58:', 1, 0, '2021-03-13 13:58:27');
INSERT INTO `devlog` VALUES (172, 'BWXP205260364', 'TRANSACT', '60	2021-03-13 13:58:', 1, 0, '2021-03-13 13:58:37');
INSERT INTO `devlog` VALUES (173, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 13:58:57');
INSERT INTO `devlog` VALUES (174, 'BWXP205260364', 'USERDATA', '000000061 Dzaky Ridh', 1, 0, '2021-03-13 13:59:42');
INSERT INTO `devlog` VALUES (175, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 13:59:42');
INSERT INTO `devlog` VALUES (176, 'BWXP205260364', 'USERDATA', '000000061 Dzaky Ridh', 2, 0, '2021-03-13 13:59:42');
INSERT INTO `devlog` VALUES (177, 'BWXP205260364', 'TRANSACT', '61	2021-03-13 13:59:', 1, 0, '2021-03-13 13:59:42');
INSERT INTO `devlog` VALUES (178, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 14:00:42');
INSERT INTO `devlog` VALUES (179, 'BWXP205260364', 'USERDATA', '000000064 Bayu Musti', 1, 0, '2021-03-13 14:01:32');
INSERT INTO `devlog` VALUES (180, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 14:01:32');
INSERT INTO `devlog` VALUES (181, 'BWXP205260364', 'USERDATA', '000000064 Bayu Musti', 2, 0, '2021-03-13 14:01:32');
INSERT INTO `devlog` VALUES (182, 'BWXP205260364', 'TRANSACT', '64	2021-03-13 14:01:', 1, 0, '2021-03-13 14:01:32');
INSERT INTO `devlog` VALUES (183, 'BWXP205260321', 'TRANSACT', '4	2021-03-13 14:02:1', 1, 0, '2021-03-13 14:02:22');
INSERT INTO `devlog` VALUES (184, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 14:02:22');
INSERT INTO `devlog` VALUES (185, 'BWXP205260321', 'TRANSACT', '5	2021-03-13 14:02:2', 1, 0, '2021-03-13 14:02:32');
INSERT INTO `devlog` VALUES (186, 'BWXP205260364', 'USERDATA', '000000063 Syiffa Her', 1, 0, '2021-03-13 14:03:12');
INSERT INTO `devlog` VALUES (187, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 14:03:12');
INSERT INTO `devlog` VALUES (188, 'BWXP205260364', 'USERDATA', '000000063 Syiffa Her', 2, 0, '2021-03-13 14:03:12');
INSERT INTO `devlog` VALUES (189, 'BWXP205260364', 'TRANSACT', '63	2021-03-13 14:03:', 1, 0, '2021-03-13 14:03:12');
INSERT INTO `devlog` VALUES (190, 'BWXP205260321', 'TRANSACT', '5	2021-03-13 14:21:4', 1, 0, '2021-03-13 14:21:52');
INSERT INTO `devlog` VALUES (191, 'BWXP205260321', 'TRANSACT', '4	2021-03-13 14:21:5', 1, 0, '2021-03-13 14:21:52');
INSERT INTO `devlog` VALUES (192, 'BWXP205260321', 'TRANSACT', '42	2021-03-13 14:24:', 1, 0, '2021-03-13 14:24:32');
INSERT INTO `devlog` VALUES (193, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-13 14:24:42');
INSERT INTO `devlog` VALUES (194, 'BWXP205260321', 'USERDATA', '000000004 Teddy Muna', 1, 0, '2021-03-13 14:25:52');
INSERT INTO `devlog` VALUES (195, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-13 14:25:52');
INSERT INTO `devlog` VALUES (196, 'BWXP205260321', 'USERDATA', '000000004 Teddy Muna', 1, 0, '2021-03-13 14:25:52');
INSERT INTO `devlog` VALUES (197, 'BWXP205260321', 'USERDATA', '000000050 Alda Eka P', 1, 0, '2021-03-13 14:26:43');
INSERT INTO `devlog` VALUES (198, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-13 14:26:43');
INSERT INTO `devlog` VALUES (199, 'BWXP205260321', 'USERDATA', '000000050 Alda Eka P', 1, 0, '2021-03-13 14:26:43');
INSERT INTO `devlog` VALUES (200, 'BWXP205260321', 'TRANSACT', '50	2021-03-13 14:26:', 1, 0, '2021-03-13 14:26:43');
INSERT INTO `devlog` VALUES (201, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-13 14:27:03');
INSERT INTO `devlog` VALUES (202, 'BWXP205260321', 'USERDATA', '000000005 Febri Suha', 1, 0, '2021-03-13 14:28:03');
INSERT INTO `devlog` VALUES (203, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-13 14:28:03');
INSERT INTO `devlog` VALUES (204, 'BWXP205260321', 'USERDATA', '000000005 Febri Suha', 1, 0, '2021-03-13 14:28:03');
INSERT INTO `devlog` VALUES (205, 'BWXP205260321', 'USERDATA', '000000044 Rini Apria', 1, 0, '2021-03-13 14:28:43');
INSERT INTO `devlog` VALUES (206, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-13 14:28:43');
INSERT INTO `devlog` VALUES (207, 'BWXP205260321', 'USERDATA', '000000044 Rini Apria', 1, 0, '2021-03-13 14:28:43');
INSERT INTO `devlog` VALUES (208, 'BWXP205260321', 'TRANSACT', '44	2021-03-13 14:28:', 1, 0, '2021-03-13 14:28:53');
INSERT INTO `devlog` VALUES (209, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-13 14:29:03');
INSERT INTO `devlog` VALUES (210, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 14:29:33');
INSERT INTO `devlog` VALUES (211, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-13 14:29:47');
INSERT INTO `devlog` VALUES (212, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-13 14:30:07');
INSERT INTO `devlog` VALUES (213, 'BWXP205260364', 'USERDATA', '000000059 Iskandar', 1, 0, '2021-03-13 14:30:17');
INSERT INTO `devlog` VALUES (214, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 14:30:17');
INSERT INTO `devlog` VALUES (215, 'BWXP205260364', 'USERDATA', '000000059 Iskandar', 2, 0, '2021-03-13 14:30:17');
INSERT INTO `devlog` VALUES (216, 'BWXP205260364', 'TRANSACT', '59	2021-03-13 14:30:', 1, 0, '2021-03-13 14:30:17');
INSERT INTO `devlog` VALUES (217, 'BWXP205260321', 'USERDATA', '000000049 Reni Andan', 1, 0, '2021-03-13 14:30:37');
INSERT INTO `devlog` VALUES (218, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-13 14:30:38');
INSERT INTO `devlog` VALUES (219, 'BWXP205260321', 'USERDATA', '000000049 Reni Andan', 1, 0, '2021-03-13 14:30:38');
INSERT INTO `devlog` VALUES (220, 'BWXP205260321', 'TRANSACT', '49	2021-03-13 14:30:', 1, 0, '2021-03-13 14:30:38');
INSERT INTO `devlog` VALUES (221, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-13 14:30:48');
INSERT INTO `devlog` VALUES (222, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-13 14:31:18');
INSERT INTO `devlog` VALUES (223, 'BWXP205260321', 'USERDATA', '000000048 Wawan Hend', 1, 0, '2021-03-13 14:31:38');
INSERT INTO `devlog` VALUES (224, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-13 14:31:38');
INSERT INTO `devlog` VALUES (225, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 14:31:38');
INSERT INTO `devlog` VALUES (226, 'BWXP205260321', 'USERDATA', '000000048 Wawan Hend', 1, 0, '2021-03-13 14:31:48');
INSERT INTO `devlog` VALUES (227, 'BWXP205260321', 'TRANSACT', '48	2021-03-13 14:31:', 1, 0, '2021-03-13 14:31:48');
INSERT INTO `devlog` VALUES (228, 'BWXP205260364', 'USERDATA', '000000056 Tia Aulia ', 1, 0, '2021-03-13 14:32:08');
INSERT INTO `devlog` VALUES (229, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 14:32:18');
INSERT INTO `devlog` VALUES (230, 'BWXP205260364', 'USERDATA', '000000056 Tia Aulia ', 2, 0, '2021-03-13 14:32:18');
INSERT INTO `devlog` VALUES (231, 'BWXP205260364', 'TRANSACT', '56	2021-03-13 14:32:', 1, 0, '2021-03-13 14:32:18');
INSERT INTO `devlog` VALUES (232, 'BWXP205260364', 'TRANSACT', '53	2021-03-13 14:43:', 1, 0, '2021-03-13 14:43:13');
INSERT INTO `devlog` VALUES (233, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-13 14:43:23');
INSERT INTO `devlog` VALUES (234, 'BWXP205260364', 'USERDATA', '000000058 Mulyana Ag', 1, 0, '2021-03-13 14:44:03');
INSERT INTO `devlog` VALUES (235, 'BWXP205260364', 'USERDATA', 'None', 2, 0, '2021-03-13 14:44:03');
INSERT INTO `devlog` VALUES (236, 'BWXP205260364', 'USERDATA', '000000058 Mulyana Ag', 2, 0, '2021-03-13 14:44:03');
INSERT INTO `devlog` VALUES (237, 'BWXP205260364', 'TRANSACT', '58	2021-03-13 14:43:', 1, 0, '2021-03-13 14:44:03');
INSERT INTO `devlog` VALUES (238, 'BWXP205260364', 'TRANSACT', '61	2021-03-13 15:11:', 1, 0, '2021-03-13 15:11:18');
INSERT INTO `devlog` VALUES (239, 'BWXP205260364', 'TRANSACT', '60	2021-03-13 15:11:', 1, 0, '2021-03-13 15:11:38');
INSERT INTO `devlog` VALUES (240, 'BWXP205260364', 'TRANSACT', '55	2021-03-13 15:11:', 1, 0, '2021-03-13 15:12:08');
INSERT INTO `devlog` VALUES (241, 'BWXP205260364', 'TRANSACT', '62	2021-03-13 15:12:', 1, 0, '2021-03-13 15:12:08');
INSERT INTO `devlog` VALUES (242, 'BWXP205260364', 'TRANSACT', '54	2021-03-13 15:12:', 1, 0, '2021-03-13 15:12:18');
INSERT INTO `devlog` VALUES (243, 'BWXP205260321', 'TRANSACT', '45	2021-03-13 16:01:', 1, 0, '2021-03-13 16:01:24');
INSERT INTO `devlog` VALUES (244, 'BWXP205260321', 'TRANSACT', '46	2021-03-13 16:01:', 1, 0, '2021-03-13 16:01:44');
INSERT INTO `devlog` VALUES (245, 'BWXP205260321', 'TRANSACT', '43	2021-03-13 16:17:', 1, 0, '2021-03-13 16:17:29');
INSERT INTO `devlog` VALUES (246, 'BWXP205260321', 'TRANSACT', '42	2021-03-13 16:44:', 1, 0, '2021-03-13 16:44:09');
INSERT INTO `devlog` VALUES (247, 'BWXP205260364', 'TRANSACT', '64	2021-03-13 17:03:', 1, 0, '2021-03-13 17:03:16');
INSERT INTO `devlog` VALUES (248, 'BWXP205260364', 'TRANSACT', '56	2021-03-13 20:29:', 1, 0, '2021-03-13 20:29:58');
INSERT INTO `devlog` VALUES (249, 'BWXP205260364', 'TRANSACT', '57	2021-03-13 20:30:', 1, 0, '2021-03-13 20:30:18');
INSERT INTO `devlog` VALUES (250, 'BWXP205260364', 'TRANSACT', '59	2021-03-13 20:31:', 1, 0, '2021-03-13 20:31:28');
INSERT INTO `devlog` VALUES (251, 'BWXP205260364', 'TRANSACT', '58	2021-03-13 20:31:', 1, 0, '2021-03-13 20:31:38');
INSERT INTO `devlog` VALUES (252, 'BWXP205260364', 'TRANSACT', '63	2021-03-13 20:32:', 1, 0, '2021-03-13 20:32:53');
INSERT INTO `devlog` VALUES (253, 'BWXP205260321', 'TRANSACT', '49	2021-03-13 20:51:', 1, 0, '2021-03-13 20:51:49');
INSERT INTO `devlog` VALUES (254, 'BWXP205260321', 'TRANSACT', '50	2021-03-13 20:51:', 1, 0, '2021-03-13 20:51:49');
INSERT INTO `devlog` VALUES (255, 'BWXP205260321', 'TRANSACT', '44	2021-03-13 20:51:', 1, 0, '2021-03-13 20:51:59');
INSERT INTO `devlog` VALUES (256, 'BWXP205260321', 'TRANSACT', '48	2021-03-13 20:52:', 1, 0, '2021-03-13 20:52:09');
INSERT INTO `devlog` VALUES (257, 'BWXP205260364', 'TRANSACT', '60	2021-03-14 07:45:', 1, 0, '2021-03-14 07:45:09');
INSERT INTO `devlog` VALUES (258, 'BWXP205260364', 'TRANSACT', '62	2021-03-14 08:33:', 1, 0, '2021-03-14 08:33:55');
INSERT INTO `devlog` VALUES (259, 'BWXP205260364', 'TRANSACT', '55	2021-03-14 08:35:', 1, 0, '2021-03-14 08:35:15');
INSERT INTO `devlog` VALUES (260, 'BWXP205260364', 'TRANSACT', '61	2021-03-14 08:37:', 1, 0, '2021-03-14 08:37:55');
INSERT INTO `devlog` VALUES (261, 'BWXP205260364', 'TRANSACT', '54	2021-03-14 08:37:', 1, 0, '2021-03-14 08:38:05');
INSERT INTO `devlog` VALUES (262, 'BWXP205260321', 'TRANSACT', '43	2021-03-14 09:36:', 1, 0, '2021-03-14 09:36:08');
INSERT INTO `devlog` VALUES (263, 'BWXP205260321', 'TRANSACT', '46	2021-03-14 09:41:', 1, 0, '2021-03-14 09:41:53');
INSERT INTO `devlog` VALUES (264, 'BWXP205260321', 'TRANSACT', '45	2021-03-14 09:41:', 1, 0, '2021-03-14 09:41:53');
INSERT INTO `devlog` VALUES (265, 'BWXP205260321', 'TRANSACT', '42	2021-03-14 09:55:', 1, 0, '2021-03-14 09:55:38');
INSERT INTO `devlog` VALUES (266, 'BWXP205260321', 'USERDATA', 'None', 1, 0, '2021-03-14 09:55:48');
INSERT INTO `devlog` VALUES (267, 'BWXP205260321', 'USERDATA', '000000047 Ahmad Agun', 1, 0, '2021-03-14 09:56:18');
INSERT INTO `devlog` VALUES (268, 'BWXP205260321', 'USERDATA', 'None', 2, 0, '2021-03-14 09:56:18');
INSERT INTO `devlog` VALUES (269, 'BWXP205260321', 'USERDATA', '000000047 Ahmad Agun', 1, 0, '2021-03-14 09:56:18');
INSERT INTO `devlog` VALUES (270, 'BWXP205260321', 'TRANSACT', '47	2021-03-14 09:56:', 1, 0, '2021-03-14 09:56:28');
INSERT INTO `devlog` VALUES (271, 'BWXP205260364', 'TRANSACT', '59	2021-03-14 10:16:', 1, 0, '2021-03-14 10:16:59');
INSERT INTO `devlog` VALUES (272, 'BWXP205260364', 'TRANSACT', '58	2021-03-14 13:21:', 1, 0, '2021-03-14 13:21:49');
INSERT INTO `devlog` VALUES (273, 'BWXP205260364', 'TRANSACT', '57	2021-03-14 13:22:', 1, 0, '2021-03-14 13:22:59');
INSERT INTO `devlog` VALUES (274, 'BWXP205260321', 'TRANSACT', '49	2021-03-14 13:31:', 1, 0, '2021-03-14 13:31:20');
INSERT INTO `devlog` VALUES (275, 'BWXP205260364', 'TRANSACT', '56	2021-03-14 13:33:', 1, 0, '2021-03-14 13:33:15');
INSERT INTO `devlog` VALUES (276, 'BWXP205260364', 'TRANSACT', '63	2021-03-14 13:33:', 1, 0, '2021-03-14 13:33:35');
INSERT INTO `devlog` VALUES (277, 'BWXP205260321', 'TRANSACT', '50	2021-03-14 13:35:', 1, 0, '2021-03-14 13:35:15');
INSERT INTO `devlog` VALUES (278, 'BWXP205260321', 'TRANSACT', '44	2021-03-14 13:35:', 1, 0, '2021-03-14 13:35:25');
INSERT INTO `devlog` VALUES (279, 'BWXP205260364', 'TRANSACT', '64	2021-03-14 13:43:', 1, 0, '2021-03-14 13:43:30');
INSERT INTO `devlog` VALUES (280, 'BWXP205260321', 'TRANSACT', '48	2021-03-14 13:43:', 1, 0, '2021-03-14 13:43:40');
INSERT INTO `devlog` VALUES (281, 'BWXP203960242', 'TRANSACT', '7	2021-03-13 14:34:0', 12, 0, '2021-03-14 14:54:47');
INSERT INTO `devlog` VALUES (282, 'BWXP203960242', 'USERDATA', 'None', 5, 0, '2021-03-14 14:54:47');
INSERT INTO `devlog` VALUES (283, 'BWXP205260364', 'TRANSACT', '61	2021-03-14 15:11:', 1, 0, '2021-03-14 15:11:52');
INSERT INTO `devlog` VALUES (284, 'BWXP205260364', 'TRANSACT', '60	2021-03-14 15:12:', 1, 0, '2021-03-14 15:12:22');
INSERT INTO `devlog` VALUES (285, 'BWXP205260364', 'TRANSACT', '55	2021-03-14 15:12:', 1, 0, '2021-03-14 15:12:46');
INSERT INTO `devlog` VALUES (286, 'BWXP205260364', 'TRANSACT', '62	2021-03-14 15:13:', 1, 0, '2021-03-14 15:13:46');
INSERT INTO `devlog` VALUES (287, 'BWXP205260364', 'TRANSACT', '54	2021-03-14 15:13:', 1, 0, '2021-03-14 15:13:56');
INSERT INTO `devlog` VALUES (288, 'BWXP205260321', 'TRANSACT', '45	2021-03-14 16:07:', 1, 0, '2021-03-14 16:07:32');
INSERT INTO `devlog` VALUES (289, 'BWXP205260321', 'TRANSACT', '46	2021-03-14 16:07:', 1, 0, '2021-03-14 16:07:42');
INSERT INTO `devlog` VALUES (290, 'BWXP205260321', 'TRANSACT', '43	2021-03-14 16:11:', 1, 0, '2021-03-14 16:11:12');
INSERT INTO `devlog` VALUES (291, 'BWXP205260321', 'TRANSACT', '47	2021-03-14 16:11:', 1, 0, '2021-03-14 16:11:22');
INSERT INTO `devlog` VALUES (292, 'BWXP205260364', 'TRANSACT', '59	2021-03-14 17:38:', 1, 0, '2021-03-14 17:38:49');
INSERT INTO `devlog` VALUES (293, 'BWXP205260364', 'USERDATA', 'None', 1, 0, '2021-03-14 19:03:12');
INSERT INTO `devlog` VALUES (294, 'BWXP205260364', 'TRANSACT', '63	2021-03-14 20:23:', 1, 0, '2021-03-14 20:23:29');
INSERT INTO `devlog` VALUES (295, 'BWXP205260364', 'TRANSACT', '56	2021-03-14 20:24:', 1, 0, '2021-03-14 20:24:49');
INSERT INTO `devlog` VALUES (296, 'BWXP205260364', 'TRANSACT', '57	2021-03-14 20:24:', 1, 0, '2021-03-14 20:24:59');
INSERT INTO `devlog` VALUES (297, 'BWXP205260364', 'TRANSACT', '58	2021-03-14 20:26:', 1, 0, '2021-03-14 20:26:11');
INSERT INTO `devlog` VALUES (298, 'BWXP205260364', 'TRANSACT', '64	2021-03-14 20:26:', 1, 0, '2021-03-14 20:26:21');
INSERT INTO `devlog` VALUES (299, 'BWXP205260321', 'TRANSACT', '42	2021-03-14 20:53:', 1, 0, '2021-03-14 20:53:21');
INSERT INTO `devlog` VALUES (300, 'BWXP205260321', 'TRANSACT', '49	2021-03-14 20:53:', 1, 0, '2021-03-14 20:53:31');
INSERT INTO `devlog` VALUES (301, 'BWXP205260321', 'TRANSACT', '50	2021-03-14 20:53:', 1, 0, '2021-03-14 20:53:41');
INSERT INTO `devlog` VALUES (302, 'BWXP205260321', 'TRANSACT', '44	2021-03-14 20:53:', 1, 0, '2021-03-14 20:53:51');
INSERT INTO `devlog` VALUES (303, 'BWXP205260321', 'TRANSACT', '48	2021-03-14 20:53:', 1, 0, '2021-03-14 20:53:51');
INSERT INTO `devlog` VALUES (304, 'BWXP205260364', 'TRANSACT', '63	2021-03-15 07:58:', 1, 0, '2021-03-15 07:58:19');
INSERT INTO `devlog` VALUES (305, 'BWXP205260364', 'TRANSACT', '59	2021-03-15 08:13:', 1, 0, '2021-03-15 08:13:50');
INSERT INTO `devlog` VALUES (306, 'BWXP205260364', 'TRANSACT', '56	2021-03-15 08:29:', 1, 0, '2021-03-15 08:29:26');
INSERT INTO `devlog` VALUES (307, 'BWXP205260364', 'TRANSACT', '57	2021-03-15 08:33:', 1, 0, '2021-03-15 08:33:21');
INSERT INTO `devlog` VALUES (308, 'BWXP205260321', 'TRANSACT', '49	2021-03-15 09:43:', 1, 0, '2021-03-15 09:43:28');
INSERT INTO `devlog` VALUES (309, 'BWXP205260321', 'TRANSACT', '50	2021-03-15 09:43:', 1, 0, '2021-03-15 09:43:38');
INSERT INTO `devlog` VALUES (310, 'BWXP205260321', 'TRANSACT', '44	2021-03-15 09:43:', 1, 0, '2021-03-15 09:43:38');
INSERT INTO `devlog` VALUES (311, 'BWXP205260321', 'TRANSACT', '48	2021-03-15 09:44:', 1, 0, '2021-03-15 09:44:18');
INSERT INTO `devlog` VALUES (312, 'BWXP205260321', 'TRANSACT', '42	2021-03-15 09:44:', 1, 0, '2021-03-15 09:44:38');
INSERT INTO `devlog` VALUES (313, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-15 11:35:01');
INSERT INTO `devlog` VALUES (314, 'BWXP205260364', 'TRANSACT', '64	2021-03-15 11:58:', 1, 0, '2021-03-15 11:58:28');
INSERT INTO `devlog` VALUES (315, 'BWXP205260364', 'TRANSACT', '54	2021-03-15 12:57:', 1, 0, '2021-03-15 12:58:01');
INSERT INTO `devlog` VALUES (316, 'BWXP205260364', 'TRANSACT', '60	2021-03-15 12:58:', 1, 0, '2021-03-15 12:58:51');
INSERT INTO `devlog` VALUES (317, 'BWXP205260321', 'TRANSACT', '43	2021-03-15 13:05:', 1, 0, '2021-03-15 13:05:16');
INSERT INTO `devlog` VALUES (318, 'BWXP203960242', 'TRANSACT', '51	2021-03-15 13:06:', 1, 0, '2021-03-15 13:06:26');
INSERT INTO `devlog` VALUES (319, 'BWXP205260321', 'TRANSACT', '47	2021-03-15 13:28:', 1, 0, '2021-03-15 13:28:37');
INSERT INTO `devlog` VALUES (320, 'BWXP205260364', 'TRANSACT', '55	2021-03-15 13:28:', 1, 0, '2021-03-15 13:28:37');
INSERT INTO `devlog` VALUES (321, 'BWXP205260321', 'TRANSACT', '45	2021-03-15 13:43:', 1, 0, '2021-03-15 13:43:52');
INSERT INTO `devlog` VALUES (322, 'BWXP205260321', 'TRANSACT', '46	2021-03-15 13:43:', 1, 0, '2021-03-15 13:44:02');
INSERT INTO `devlog` VALUES (323, 'BWXP205260364', 'TRANSACT', '62	2021-03-15 13:45:', 1, 0, '2021-03-15 13:45:58');
INSERT INTO `devlog` VALUES (324, 'BWXP205260364', 'TRANSACT', '56	2021-03-15 15:11:', 1, 0, '2021-03-15 15:11:35');
INSERT INTO `devlog` VALUES (325, 'BWXP205260364', 'TRANSACT', '57	2021-03-15 15:11:', 1, 0, '2021-03-15 15:11:45');
INSERT INTO `devlog` VALUES (326, 'BWXP205260364', 'TRANSACT', '53	2021-03-15 15:21:', 1, 0, '2021-03-15 15:21:57');
INSERT INTO `devlog` VALUES (327, 'BWXP205260364', 'TRANSACT', '59	2021-03-15 15:40:', 1, 0, '2021-03-15 15:40:59');
INSERT INTO `devlog` VALUES (328, 'BWXP205260364', 'TRANSACT', '63	2021-03-15 15:42:', 1, 0, '2021-03-15 15:42:49');
INSERT INTO `devlog` VALUES (329, 'BWXP205260321', 'TRANSACT', '49	2021-03-15 16:00:', 1, 0, '2021-03-15 16:00:11');
INSERT INTO `devlog` VALUES (330, 'BWXP205260321', 'TRANSACT', '44	2021-03-15 16:00:', 1, 0, '2021-03-15 16:00:21');
INSERT INTO `devlog` VALUES (331, 'BWXP205260321', 'TRANSACT', '50	2021-03-15 16:00:', 1, 0, '2021-03-15 16:00:21');
INSERT INTO `devlog` VALUES (332, 'BWXP205260321', 'TRANSACT', '48	2021-03-15 16:01:', 1, 0, '2021-03-15 16:01:11');
INSERT INTO `devlog` VALUES (333, 'BWXP205260321', 'TRANSACT', '42	2021-03-15 16:01:', 1, 0, '2021-03-15 16:01:21');
INSERT INTO `devlog` VALUES (334, 'BWXP205260364', 'TRANSACT', '54	2021-03-15 20:16:', 1, 0, '2021-03-15 20:17:00');
INSERT INTO `devlog` VALUES (335, 'BWXP205260364', 'TRANSACT', '62	2021-03-15 20:16:', 1, 0, '2021-03-15 20:17:11');
INSERT INTO `devlog` VALUES (336, 'BWXP205260364', 'TRANSACT', '55	2021-03-15 20:17:', 1, 0, '2021-03-15 20:17:21');
INSERT INTO `devlog` VALUES (337, 'BWXP205260364', 'TRANSACT', '64	2021-03-15 20:17:', 1, 0, '2021-03-15 20:17:31');
INSERT INTO `devlog` VALUES (338, 'BWXP205260364', 'TRANSACT', '60	2021-03-15 20:17:', 1, 0, '2021-03-15 20:17:41');
INSERT INTO `devlog` VALUES (339, 'BWXP205260321', 'TRANSACT', '46	2021-03-15 20:55:', 1, 0, '2021-03-15 20:55:32');
INSERT INTO `devlog` VALUES (340, 'BWXP205260321', 'TRANSACT', '45	2021-03-15 20:55:', 1, 0, '2021-03-15 20:55:52');
INSERT INTO `devlog` VALUES (341, 'BWXP205260321', 'TRANSACT', '43	2021-03-15 20:55:', 1, 0, '2021-03-15 20:56:02');
INSERT INTO `devlog` VALUES (342, 'BWXP205260321', 'TRANSACT', '47	2021-03-15 20:56:', 1, 0, '2021-03-15 20:56:12');
INSERT INTO `devlog` VALUES (343, 'BWXP205260364', 'TRANSACT', '58	2021-03-16 07:48:', 1, 0, '2021-03-16 07:48:57');
INSERT INTO `devlog` VALUES (344, 'BWXP205260364', 'TRANSACT', '63	2021-03-16 08:08:', 1, 0, '2021-03-16 08:08:08');
INSERT INTO `devlog` VALUES (345, 'BWXP205260364', 'TRANSACT', '56	2021-03-16 08:08:', 1, 0, '2021-03-16 08:08:18');
INSERT INTO `devlog` VALUES (346, 'BWXP205260364', 'TRANSACT', '59	2021-03-16 08:29:', 1, 0, '2021-03-16 08:29:19');
INSERT INTO `devlog` VALUES (347, 'BWXP205260321', 'TRANSACT', '48	2021-03-16 09:38:', 1, 0, '2021-03-16 09:39:00');
INSERT INTO `devlog` VALUES (348, 'BWXP205260321', 'TRANSACT', '50	2021-03-16 09:40:', 1, 0, '2021-03-16 09:40:20');
INSERT INTO `devlog` VALUES (349, 'BWXP205260321', 'TRANSACT', '44	2021-03-16 09:43:', 1, 0, '2021-03-16 09:43:21');
INSERT INTO `devlog` VALUES (350, 'BWXP205260321', 'TRANSACT', '42	2021-03-16 12:52:', 1, 0, '2021-03-16 12:52:06');
INSERT INTO `devlog` VALUES (351, 'BWXP205260364', 'TRANSACT', '55	2021-03-16 13:08:', 1, 0, '2021-03-16 13:09:07');
INSERT INTO `devlog` VALUES (352, 'BWXP205260364', 'TRANSACT', '54	2021-03-16 13:16:', 1, 0, '2021-03-16 13:16:17');
INSERT INTO `devlog` VALUES (353, 'BWXP205260321', 'TRANSACT', '47	2021-03-16 13:33:', 1, 0, '2021-03-16 13:34:07');
INSERT INTO `devlog` VALUES (354, 'BWXP205260321', 'TRANSACT', '45	2021-03-16 13:37:', 1, 0, '2021-03-16 13:37:28');
INSERT INTO `devlog` VALUES (355, 'BWXP205260321', 'TRANSACT', '46	2021-03-16 13:42:', 1, 0, '2021-03-16 13:42:33');
INSERT INTO `devlog` VALUES (356, 'BWXP205260364', 'TRANSACT', '62	2021-03-16 13:45:', 1, 0, '2021-03-16 13:45:23');
INSERT INTO `devlog` VALUES (357, 'BWXP205260364', 'TRANSACT', '64	2021-03-16 13:45:', 1, 0, '2021-03-16 13:45:33');
INSERT INTO `devlog` VALUES (358, 'BJ36195260254', 'USERDATA', 'None', 10, 0, '2021-03-16 14:05:33');
INSERT INTO `devlog` VALUES (359, 'BJ36195260254', 'USERDATA', 'None', 10, 0, '2021-03-16 14:05:33');
INSERT INTO `devlog` VALUES (360, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 14:16:00');
INSERT INTO `devlog` VALUES (361, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 14:17:10');
INSERT INTO `devlog` VALUES (362, 'BWXP205260364', 'TRANSACT', '56	2021-03-16 15:06:', 1, 0, '2021-03-16 15:07:07');
INSERT INTO `devlog` VALUES (363, 'BWXP205260364', 'TRANSACT', '59	2021-03-16 15:07:', 1, 0, '2021-03-16 15:07:57');
INSERT INTO `devlog` VALUES (364, 'BWXP205260364', 'TRANSACT', '63	2021-03-16 15:07:', 1, 0, '2021-03-16 15:08:07');
INSERT INTO `devlog` VALUES (365, 'BWXP205260364', 'TRANSACT', '58	2021-03-16 15:11:', 1, 0, '2021-03-16 15:11:12');
INSERT INTO `devlog` VALUES (366, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 15:51:39');
INSERT INTO `devlog` VALUES (367, 'BWXP205260321', 'TRANSACT', '44	2021-03-16 16:01:', 1, 0, '2021-03-16 16:01:24');
INSERT INTO `devlog` VALUES (368, 'BJ36195260254', 'USERDATA', 'None', 2, 0, '2021-03-16 16:01:34');
INSERT INTO `devlog` VALUES (369, 'BWXP205260321', 'TRANSACT', '50	2021-03-16 16:01:', 1, 0, '2021-03-16 16:01:34');
INSERT INTO `devlog` VALUES (370, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 16:02:04');
INSERT INTO `devlog` VALUES (371, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 16:05:14');
INSERT INTO `devlog` VALUES (372, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 16:05:44');
INSERT INTO `devlog` VALUES (373, 'BWXP205260321', 'TRANSACT', '48	2021-03-16 16:07:', 1, 0, '2021-03-16 16:07:15');
INSERT INTO `devlog` VALUES (374, 'BJ36195260254', 'TRANSACT', '7	2021-03-16 16:36:1', 1, 0, '2021-03-16 16:36:20');
INSERT INTO `devlog` VALUES (375, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 16:36:20');
INSERT INTO `devlog` VALUES (376, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 16:36:30');
INSERT INTO `devlog` VALUES (377, 'BWXP203960242', 'TRANSACT', '7	2021-03-16 16:37:3', 1, 0, '2021-03-16 16:37:40');
INSERT INTO `devlog` VALUES (378, 'BWXP203960242', 'TRANSACT', '51	2021-03-15 18:51:', 1, 0, '2021-03-16 16:38:40');
INSERT INTO `devlog` VALUES (379, 'BWXP203960242', 'USERDATA', 'None', 1, 0, '2021-03-16 16:38:40');
INSERT INTO `devlog` VALUES (380, 'BJ36195260254', 'TRANSACT', '66	2021-03-16 16:39:', 1, 0, '2021-03-16 16:39:30');
INSERT INTO `devlog` VALUES (381, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 16:39:30');
INSERT INTO `devlog` VALUES (382, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 16:39:40');
INSERT INTO `devlog` VALUES (383, 'BWXP203960242', 'TRANSACT', '66	2021-03-16 16:42:', 1, 0, '2021-03-16 16:42:04');
INSERT INTO `devlog` VALUES (384, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 16:42:25');
INSERT INTO `devlog` VALUES (385, 'BWXP203960242', 'TRANSACT', '66	2021-03-16 16:44:', 1, 0, '2021-03-16 16:44:35');
INSERT INTO `devlog` VALUES (386, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 16:44:45');
INSERT INTO `devlog` VALUES (387, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 16:46:05');
INSERT INTO `devlog` VALUES (388, 'BJ36195260254', 'TRANSACT', '65	2021-03-16 17:22:', 1, 0, '2021-03-16 17:22:25');
INSERT INTO `devlog` VALUES (389, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 17:22:25');
INSERT INTO `devlog` VALUES (390, 'BJ36195260254', 'TRANSACT', '65	2021-03-16 17:22:', 1, 0, '2021-03-16 17:22:35');
INSERT INTO `devlog` VALUES (391, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 17:22:35');
INSERT INTO `devlog` VALUES (392, 'BJ36195260254', 'TRANSACT', '65	2021-03-16 17:22:', 1, 0, '2021-03-16 17:22:45');
INSERT INTO `devlog` VALUES (393, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 17:22:45');
INSERT INTO `devlog` VALUES (394, 'BJ36195260254', 'TRANSACT', '6	2021-03-16 17:22:4', 1, 0, '2021-03-16 17:22:55');
INSERT INTO `devlog` VALUES (395, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 17:22:55');
INSERT INTO `devlog` VALUES (396, 'BJ36195260254', 'TRANSACT', '6	2021-03-16 17:22:5', 1, 0, '2021-03-16 17:22:55');
INSERT INTO `devlog` VALUES (397, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 17:22:55');
INSERT INTO `devlog` VALUES (398, 'BJ36195260254', 'TRANSACT', '65	2021-03-16 18:28:', 1, 0, '2021-03-16 18:28:26');
INSERT INTO `devlog` VALUES (399, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 18:28:26');
INSERT INTO `devlog` VALUES (400, 'BJ36195260254', 'TRANSACT', '65	2021-03-16 18:28:', 1, 0, '2021-03-16 18:28:46');
INSERT INTO `devlog` VALUES (401, 'BJ36195260254', 'TRANSACT', '65	2021-03-16 18:41:', 1, 0, '2021-03-16 18:45:47');
INSERT INTO `devlog` VALUES (402, 'BJ36195260254', 'USERDATA', 'None', 6, 0, '2021-03-16 18:45:47');
INSERT INTO `devlog` VALUES (403, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 18:54:01');
INSERT INTO `devlog` VALUES (404, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 18:54:31');
INSERT INTO `devlog` VALUES (405, 'BJ36195260254', 'TRANSACT', '6	2021-03-16 18:55:1', 1, 0, '2021-03-16 18:55:21');
INSERT INTO `devlog` VALUES (406, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 18:55:21');
INSERT INTO `devlog` VALUES (407, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 18:55:41');
INSERT INTO `devlog` VALUES (408, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 18:57:32');
INSERT INTO `devlog` VALUES (409, 'BJ36195260254', 'USERDATA', '000000006 Ubayt Kurn', 1, 0, '2021-03-16 18:58:32');
INSERT INTO `devlog` VALUES (410, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 18:58:32');
INSERT INTO `devlog` VALUES (411, 'BJ36195260254', 'USERDATA', '000000066 Satrio Ram', 1, 0, '2021-03-16 18:59:12');
INSERT INTO `devlog` VALUES (412, 'BJ36195260254', 'USERDATA', 'None', 2, 0, '2021-03-16 18:59:12');
INSERT INTO `devlog` VALUES (413, 'BJ36195260254', 'USERDATA', '000000066 Satrio Ram', 2, 0, '2021-03-16 18:59:12');
INSERT INTO `devlog` VALUES (414, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 18:59:12');
INSERT INTO `devlog` VALUES (415, 'BJ36195260254', 'TRANSACT', '66	2021-03-16 19:11:', 1, 0, '2021-03-16 19:11:37');
INSERT INTO `devlog` VALUES (416, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 19:11:47');
INSERT INTO `devlog` VALUES (417, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 19:11:47');
INSERT INTO `devlog` VALUES (418, 'BJ36195260254', 'USERDATA', '000000066 Satrio Ram', 1, 0, '2021-03-16 19:12:52');
INSERT INTO `devlog` VALUES (419, 'BJ36195260254', 'USERDATA', 'None', 2, 0, '2021-03-16 19:12:52');
INSERT INTO `devlog` VALUES (420, 'BJ36195260254', 'USERDATA', '000000066 Satrio Ram', 2, 0, '2021-03-16 19:12:52');
INSERT INTO `devlog` VALUES (421, 'BJ36195260254', 'TRANSACT', '66	2021-03-16 19:12:', 1, 0, '2021-03-16 19:12:52');
INSERT INTO `devlog` VALUES (422, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 19:13:02');
INSERT INTO `devlog` VALUES (423, 'BJ36195260254', 'TRANSACT', '66	2021-03-16 19:16:', 1, 0, '2021-03-16 19:16:42');
INSERT INTO `devlog` VALUES (424, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 19:16:42');
INSERT INTO `devlog` VALUES (425, 'BJ36195260254', 'TRANSACT', '66	2021-03-16 19:49:', 1, 0, '2021-03-16 19:50:07');
INSERT INTO `devlog` VALUES (426, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 19:50:07');
INSERT INTO `devlog` VALUES (427, 'BJ36195260254', 'TRANSACT', '66	2021-03-16 19:50:', 1, 0, '2021-03-16 19:50:07');
INSERT INTO `devlog` VALUES (428, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 19:50:07');
INSERT INTO `devlog` VALUES (429, 'BJ36195260254', 'TRANSACT', '66	2021-03-16 19:50:', 1, 0, '2021-03-16 19:50:07');
INSERT INTO `devlog` VALUES (430, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 19:50:07');
INSERT INTO `devlog` VALUES (431, 'BJ36195260254', 'TRANSACT', '66	2021-03-16 19:50:', 1, 0, '2021-03-16 19:50:17');
INSERT INTO `devlog` VALUES (432, 'BJ36195260254', 'USERDATA', 'None', 1, 0, '2021-03-16 19:50:17');
INSERT INTO `devlog` VALUES (433, 'BWXP205260364', 'TRANSACT', '62	2021-03-16 20:25:', 1, 0, '2021-03-16 20:25:38');
INSERT INTO `devlog` VALUES (434, 'BWXP205260364', 'TRANSACT', '54	2021-03-16 20:25:', 1, 0, '2021-03-16 20:25:38');
INSERT INTO `devlog` VALUES (435, 'BWXP205260364', 'TRANSACT', '64	2021-03-16 20:25:', 1, 0, '2021-03-16 20:25:48');
INSERT INTO `devlog` VALUES (436, 'BWXP205260364', 'TRANSACT', '55	2021-03-16 20:25:', 1, 0, '2021-03-16 20:25:58');
INSERT INTO `devlog` VALUES (437, 'BWXP205260321', 'TRANSACT', '42	2021-03-16 20:47:', 1, 0, '2021-03-16 20:47:48');
INSERT INTO `devlog` VALUES (438, 'BWXP205260321', 'TRANSACT', '45	2021-03-16 20:47:', 1, 0, '2021-03-16 20:47:58');
INSERT INTO `devlog` VALUES (439, 'BWXP205260321', 'TRANSACT', '46	2021-03-16 20:47:', 1, 0, '2021-03-16 20:48:08');
INSERT INTO `devlog` VALUES (440, 'BWXP205260321', 'TRANSACT', '47	2021-03-16 20:48:', 1, 0, '2021-03-16 20:48:18');
INSERT INTO `devlog` VALUES (441, 'BWXP205260364', 'TRANSACT', '58	2021-03-17 07:47:', 1, 0, '2021-03-17 07:47:36');
INSERT INTO `devlog` VALUES (442, 'BWXP205260364', 'TRANSACT', '63	2021-03-17 08:10:', 1, 0, '2021-03-17 08:10:41');
INSERT INTO `devlog` VALUES (443, 'BWXP205260364', 'TRANSACT', '56	2021-03-17 08:10:', 1, 0, '2021-03-17 08:10:51');
INSERT INTO `devlog` VALUES (444, 'BWXP205260364', 'TRANSACT', '57	2021-03-17 08:21:', 1, 0, '2021-03-17 08:21:57');
INSERT INTO `devlog` VALUES (445, 'BWXP205260321', 'TRANSACT', '42	2021-03-17 09:26:', 1, 0, '2021-03-17 09:26:29');
INSERT INTO `devlog` VALUES (446, 'BWXP205260321', 'TRANSACT', '48	2021-03-17 09:29:', 1, 0, '2021-03-17 09:29:19');
INSERT INTO `devlog` VALUES (447, 'BWXP205260321', 'TRANSACT', '49	2021-03-17 09:32:', 1, 0, '2021-03-17 09:32:34');
INSERT INTO `devlog` VALUES (448, 'BWXP205260321', 'TRANSACT', '44	2021-03-17 09:32:', 1, 0, '2021-03-17 09:32:44');
INSERT INTO `devlog` VALUES (449, 'BWXP205260364', 'TRANSACT', '60	2021-03-17 13:06:', 1, 0, '2021-03-17 13:06:59');
INSERT INTO `devlog` VALUES (450, 'BWXP205260364', 'TRANSACT', '55	2021-03-17 13:29:', 1, 0, '2021-03-17 13:29:09');
INSERT INTO `devlog` VALUES (451, 'BWXP205260364', 'TRANSACT', '64	2021-03-17 13:36:', 1, 0, '2021-03-17 13:36:24');
INSERT INTO `devlog` VALUES (452, 'BWXP205260364', 'TRANSACT', '62	2021-03-17 13:41:', 1, 0, '2021-03-17 13:41:14');
INSERT INTO `devlog` VALUES (453, 'BWXP205260321', 'TRANSACT', '46	2021-03-17 13:43:', 1, 0, '2021-03-17 13:44:05');
INSERT INTO `devlog` VALUES (454, 'BWXP205260321', 'TRANSACT', '47	2021-03-17 13:46:', 1, 0, '2021-03-17 13:46:15');
INSERT INTO `devlog` VALUES (455, 'BWXP205260321', 'TRANSACT', '43	2021-03-17 13:51:', 1, 0, '2021-03-17 13:51:18');
INSERT INTO `devlog` VALUES (456, 'BWXP205260364', 'TRANSACT', '58	2021-03-17 15:05:', 1, 0, '2021-03-17 15:06:06');
INSERT INTO `devlog` VALUES (457, 'BWXP205260364', 'TRANSACT', '56	2021-03-17 15:06:', 1, 0, '2021-03-17 15:06:16');
INSERT INTO `devlog` VALUES (458, 'BWXP205260364', 'TRANSACT', '57	2021-03-17 15:06:', 1, 0, '2021-03-17 15:06:26');
INSERT INTO `devlog` VALUES (459, 'BWXP205260364', 'TRANSACT', '63	2021-03-17 15:07:', 1, 0, '2021-03-17 15:07:36');
INSERT INTO `devlog` VALUES (460, 'BWXP205260321', 'TRANSACT', '49	2021-03-17 16:01:', 1, 0, '2021-03-17 16:01:34');
INSERT INTO `devlog` VALUES (461, 'BWXP205260321', 'TRANSACT', '44	2021-03-17 16:01:', 1, 0, '2021-03-17 16:01:54');
INSERT INTO `devlog` VALUES (462, 'BWXP205260321', 'TRANSACT', '48	2021-03-17 16:08:', 1, 0, '2021-03-17 16:08:44');
INSERT INTO `devlog` VALUES (463, 'BWXP205260321', 'TRANSACT', '42	2021-03-17 18:30:', 1, 0, '2021-03-17 18:30:59');
INSERT INTO `devlog` VALUES (464, 'BWXP205260364', 'TRANSACT', '55	2021-03-17 20:17:', 1, 0, '2021-03-17 20:17:41');
INSERT INTO `devlog` VALUES (465, 'BWXP205260364', 'TRANSACT', '64	2021-03-17 20:17:', 1, 0, '2021-03-17 20:17:51');
INSERT INTO `devlog` VALUES (466, 'BWXP205260364', 'TRANSACT', '62	2021-03-17 20:18:', 1, 0, '2021-03-17 20:18:11');
INSERT INTO `devlog` VALUES (467, 'BWXP205260321', 'TRANSACT', '43	2021-03-17 20:26:', 1, 0, '2021-03-17 20:27:03');
INSERT INTO `devlog` VALUES (468, 'BWXP205260321', 'TRANSACT', '46	2021-03-17 20:27:', 1, 0, '2021-03-17 20:27:23');
INSERT INTO `devlog` VALUES (469, 'BWXP205260321', 'TRANSACT', '47	2021-03-17 20:27:', 1, 0, '2021-03-17 20:27:43');
INSERT INTO `devlog` VALUES (470, 'BWXP205260364', 'TRANSACT', '60	2021-03-17 20:30:', 1, 0, '2021-03-17 20:30:24');
INSERT INTO `devlog` VALUES (471, 'BWXP205260364', 'TRANSACT', '58	2021-03-18 07:56:', 1, 0, '2021-03-18 07:56:48');
INSERT INTO `devlog` VALUES (472, 'BWXP205260364', 'TRANSACT', '57	2021-03-18 08:23:', 1, 0, '2021-03-18 08:23:17');
INSERT INTO `devlog` VALUES (473, 'BWXP205260364', 'TRANSACT', '56	2021-03-18 08:26:', 1, 0, '2021-03-18 08:26:27');
INSERT INTO `devlog` VALUES (474, 'BWXP205260364', 'TRANSACT', '59	2021-03-18 08:32:', 1, 0, '2021-03-18 08:32:40');
INSERT INTO `devlog` VALUES (475, 'BWXP205260321', 'TRANSACT', '42	2021-03-18 09:13:', 1, 0, '2021-03-18 09:13:41');
INSERT INTO `devlog` VALUES (476, 'BWXP205260321', 'TRANSACT', '48	2021-03-18 09:15:', 1, 0, '2021-03-18 09:15:51');
INSERT INTO `devlog` VALUES (477, 'BWXP205260321', 'TRANSACT', '49	2021-03-18 09:28:', 1, 0, '2021-03-18 09:28:37');
INSERT INTO `devlog` VALUES (478, 'BWXP205260321', 'TRANSACT', '50	2021-03-18 09:36:', 1, 0, '2021-03-18 09:36:07');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(0) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action_flag` smallint(5) UNSIGNED NULL DEFAULT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_user_id`(`user_id`) USING BTREE,
  INDEX `django_admin_log_content_type_id`(`content_type_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `app_label`(`app_label`, `model`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'session', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (2, 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES (4, 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'message', 'auth', 'message');
INSERT INTO `django_content_type` VALUES (6, 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (8, 'department', 'iclock', 'department');
INSERT INTO `django_content_type` VALUES (9, 'device', 'iclock', 'iclock');
INSERT INTO `django_content_type` VALUES (10, 'admin granted department', 'iclock', 'deptadmin');
INSERT INTO `django_content_type` VALUES (11, 'employee', 'iclock', 'employee');
INSERT INTO `django_content_type` VALUES (12, 'fingerprint', 'iclock', 'fptemp');
INSERT INTO `django_content_type` VALUES (13, 'transaction', 'iclock', 'transaction');
INSERT INTO `django_content_type` VALUES (14, 'device operation log', 'iclock', 'oplog');
INSERT INTO `django_content_type` VALUES (15, 'data from device', 'iclock', 'devlog');
INSERT INTO `django_content_type` VALUES (16, 'command to device', 'iclock', 'devcmds');
INSERT INTO `django_content_type` VALUES (17, 'public information', 'iclock', 'messages');
INSERT INTO `django_content_type` VALUES (18, 'information subscription', 'iclock', 'iclockmsg');
INSERT INTO `django_content_type` VALUES (19, 'administration log', 'iclock', 'adminlog');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`session_key`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `connection` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for iclock
-- ----------------------------
DROP TABLE IF EXISTS `iclock`;
CREATE TABLE `iclock`  (
  `SN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `State` int(11) NULL DEFAULT NULL,
  `LastActivity` datetime(0) NULL DEFAULT NULL,
  `TransTimes` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `TransInterval` int(11) NULL DEFAULT NULL,
  `LogStamp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OpLogStamp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PhotoStamp` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Alias` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeptID` int(11) NULL DEFAULT NULL,
  `UpdateDB` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Style` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FWVersion` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FPCount` int(11) NULL DEFAULT NULL,
  `TransactionCount` int(11) NULL DEFAULT NULL,
  `UserCount` int(11) NULL DEFAULT NULL,
  `MainTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MaxFingerCount` int(11) NULL DEFAULT NULL,
  `MaxAttLogCount` int(11) NULL DEFAULT NULL,
  `DeviceName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AlgVer` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FlashSize` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FreeFlashSize` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Language` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `VOLUME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DtFmt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IPAddress` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `IsTFT` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Platform` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Brightness` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `BackupDev` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `OEMVendor` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `City` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AccFun` smallint(6) NULL DEFAULT NULL,
  `TZAdj` smallint(6) NULL DEFAULT NULL,
  `DelTag` smallint(6) NULL DEFAULT NULL,
  `FPVersion` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PushVersion` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`SN`) USING BTREE,
  INDEX `iclock_DeptID`(`DeptID`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of iclock
-- ----------------------------
INSERT INTO `iclock` VALUES ('BWXP203960242', 1, '2021-03-16 18:14:52', '00:00;14:05', 1, '9999', '9999', '', 'ALC', 1, '1111111100', 'F7', 'Ver 8.0.4.5-20200729', 2, 54, 5, '1970-01-01 00:00:00', 10000, 200000, 'X100-C', '10', '202880', '148904', '69', '0', '0', '192.168.100.240', '1', 'ZMM200_TFT', '0', '0', 'solution', 'JAKARTA', 0, 7, 0, '10', '0.0');
INSERT INTO `iclock` VALUES ('BWXP205260321', 1, '2021-03-18 11:34:19', '00:00;14:05', 1, '9999', '9999', '', 'ALC-R002', 10, '1111111100', 'F7', 'Ver 8.0.4.5-20200729', 11, 108, 11, '1970-01-01 00:00:00', 10000, 200000, 'X100-C', '10', '202880', '148956', '73', '70', '0', '192.168.1.220', '1', 'ZMM200_TFT', '0', '0', 'solution', '', 0, 7, 0, '10', '0.0');
INSERT INTO `iclock` VALUES ('BWXP205260364', 1, '2021-03-18 11:34:14', '00:00;14:05', 1, '9999', '9999', '', 'ALC-R001', 9, '1111111100', 'F7', 'Ver 8.0.4.5-20200729', 24, 105, 13, '1970-01-01 00:00:00', 10000, 200000, 'X100-C', '10', '202880', '148968', '73', '70', '0', '192.168.1.201', '1', 'ZMM200_TFT', '0', '0', 'solution', '', 0, 7, 0, '10', '0.0');
INSERT INTO `iclock` VALUES ('BJ36195260254', 1, '2021-03-16 20:29:28', '00:00;14:05', 1, '9999', '9999', '', 'ALC-LT20', 1, '1111111100', 'F7', 'Ver 8.0.4.4-20190617', 24, 18, 45, '1970-01-01 00:00:00', 10000, 200000, 'X302-S', '10', '202880', '149584', '69', '70', '0', '192.168.1.201', '1', 'ZMM200_TFT', '0', '0', 'solution', '', 0, 7, 0, '10', '0.0');

-- ----------------------------
-- Table structure for iclock_adminlog
-- ----------------------------
DROP TABLE IF EXISTS `iclock_adminlog`;
CREATE TABLE `iclock_adminlog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` datetime(0) NULL DEFAULT NULL,
  `User_id` int(11) NULL DEFAULT NULL,
  `model` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `object` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `iclock_adminlog_User_id`(`User_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 273 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of iclock_adminlog
-- ----------------------------
INSERT INTO `iclock_adminlog` VALUES (1, '2021-03-10 19:13:58', 1, 'None', 'LOGIN', '127.0.0.1', 1);
INSERT INTO `iclock_adminlog` VALUES (2, '2021-03-10 19:44:05', 1, 'iclock', 'Create', 'BWXP203960242(ALC-20)', 1);
INSERT INTO `iclock_adminlog` VALUES (3, '2021-03-10 19:44:30', 1, 'department', 'Modify', '1 ALC-HOLDING', 1);
INSERT INTO `iclock_adminlog` VALUES (4, '2021-03-10 19:56:32', 1, 'None', 'LOGIN', '192.168.0.127', 1);
INSERT INTO `iclock_adminlog` VALUES (5, '2021-03-10 19:58:00', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (6, '2021-03-12 10:48:28', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (7, '2021-03-12 10:49:29', 1, NULL, 'LOGOUT', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (8, '2021-03-12 10:49:42', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (9, '2021-03-12 10:51:28', 1, 'None', 'LOGIN', '192.168.0.131', 1);
INSERT INTO `iclock_adminlog` VALUES (10, '2021-03-12 10:52:08', 1, 'department', 'Create', '2 TMC', 1);
INSERT INTO `iclock_adminlog` VALUES (11, '2021-03-12 11:04:44', 1, 'employee', 'Modify', '000000001  Ika Aersianti Dewi', 1);
INSERT INTO `iclock_adminlog` VALUES (12, '2021-03-12 11:04:58', 1, 'employee', 'Modify', '000000001  Ika Arsianti Dewi', 1);
INSERT INTO `iclock_adminlog` VALUES (13, '2021-03-12 11:11:44', 1, 'transaction', 'Clear', 'All', 1);
INSERT INTO `iclock_adminlog` VALUES (14, '2021-03-12 11:28:20', 1, 'None', 'LOGIN', '192.168.0.127', 1);
INSERT INTO `iclock_adminlog` VALUES (15, '2021-03-12 11:29:20', 1, 'department', 'Modify', '1 ALC-JAKARTA', 1);
INSERT INTO `iclock_adminlog` VALUES (16, '2021-03-12 11:30:52', 1, NULL, 'LOGOUT', '192.168.0.127', 1);
INSERT INTO `iclock_adminlog` VALUES (17, '2021-03-12 11:30:58', 1, 'None', 'LOGIN', '192.168.0.127', 1);
INSERT INTO `iclock_adminlog` VALUES (18, '2021-03-12 11:32:05', 1, 'None', 'LOGIN', '192.168.0.129', 1);
INSERT INTO `iclock_adminlog` VALUES (19, '2021-03-12 11:32:38', 1, NULL, 'LOGOUT', '192.168.0.129', 1);
INSERT INTO `iclock_adminlog` VALUES (20, '2021-03-12 11:34:26', 1, 'oplog', 'Clear', 'All', 1);
INSERT INTO `iclock_adminlog` VALUES (21, '2021-03-12 11:39:01', 1, 'iclock', 'reboot', 'BWXP203960242', 1);
INSERT INTO `iclock_adminlog` VALUES (22, '2021-03-12 11:40:00', 1, 'iclock', 'info', 'BWXP203960242', 1);
INSERT INTO `iclock_adminlog` VALUES (23, '2021-03-12 11:47:44', 1, NULL, 'LOGOUT', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (24, '2021-03-12 11:51:34', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (25, '2021-03-12 11:52:54', 1, 'iclock', 'Modify', 'BWXP203960242(ALC-20)', 1);
INSERT INTO `iclock_adminlog` VALUES (26, '2021-03-12 11:54:27', 1, 'iclock', 'Modify', 'BWXP203960242(ALC-20)', 1);
INSERT INTO `iclock_adminlog` VALUES (27, '2021-03-12 11:58:07', 1, 'None', 'LOGIN', '192.168.0.110', 1);
INSERT INTO `iclock_adminlog` VALUES (28, '2021-03-12 12:00:54', 1, 'employee', 'Modify', '000000002 Fatimatus Sa\'diyah', 1);
INSERT INTO `iclock_adminlog` VALUES (29, '2021-03-12 12:02:22', 1, 'department', 'Modify', '2 ALT', 1);
INSERT INTO `iclock_adminlog` VALUES (30, '2021-03-12 12:04:15', 1, 'employee', 'Create', '000000003  Fitri Andriani', 1);
INSERT INTO `iclock_adminlog` VALUES (31, '2021-03-12 12:04:56', 1, 'employee', 'Create', '000000004  Teddy Munawar', 1);
INSERT INTO `iclock_adminlog` VALUES (32, '2021-03-12 12:05:30', 1, 'employee', 'Modify', '000000004  Teddy Munawar', 1);
INSERT INTO `iclock_adminlog` VALUES (33, '2021-03-12 12:06:37', 1, 'employee', 'Create', '000000005  Ubayt Kurniawan', 1);
INSERT INTO `iclock_adminlog` VALUES (34, '2021-03-12 12:07:38', 1, 'employee', 'Create', '000000006  Febri Suhandi', 1);
INSERT INTO `iclock_adminlog` VALUES (35, '2021-03-12 12:08:04', 1, 'employee', 'Create', '000000007  Yogyantoro', 1);
INSERT INTO `iclock_adminlog` VALUES (36, '2021-03-12 12:08:16', 1, 'employee', 'Modify', '000000003  Fitri Andriani', 1);
INSERT INTO `iclock_adminlog` VALUES (37, '2021-03-12 12:13:48', 1, 'employee', 'Modify', '000000001  Ika Arsianti Dewi', 1);
INSERT INTO `iclock_adminlog` VALUES (38, '2021-03-12 12:19:00', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (39, '2021-03-12 12:39:22', 1, 'employee', 'Create', '000000008 Zuleka Endah Pujiastuti', 1);
INSERT INTO `iclock_adminlog` VALUES (40, '2021-03-12 12:40:19', 1, 'employee', 'Create', '000000009  Rakhmat Januardy', 1);
INSERT INTO `iclock_adminlog` VALUES (41, '2021-03-12 12:41:04', 1, 'employee', 'Create', '000000010  Rahmad Nurhadi', 1);
INSERT INTO `iclock_adminlog` VALUES (42, '2021-03-12 12:41:48', 1, 'employee', 'Create', '000000011  Ananda Karina', 1);
INSERT INTO `iclock_adminlog` VALUES (43, '2021-03-12 12:42:43', 1, 'employee', 'Create', '000000012  Mochammad Rila Alafi', 1);
INSERT INTO `iclock_adminlog` VALUES (44, '2021-03-12 14:12:50', 1, 'employee', 'Create', '000000013  Jefri', 1);
INSERT INTO `iclock_adminlog` VALUES (45, '2021-03-12 14:14:48', 1, 'employee', 'Create', '000000014  Erwin Nugraha', 1);
INSERT INTO `iclock_adminlog` VALUES (46, '2021-03-12 14:15:28', 1, 'employee', 'Create', '000000015  Daraswati Zakirah', 1);
INSERT INTO `iclock_adminlog` VALUES (47, '2021-03-12 14:16:22', 1, 'employee', 'Create', '000000016  Budi Susilo', 1);
INSERT INTO `iclock_adminlog` VALUES (48, '2021-03-12 14:18:12', 1, 'employee', 'Create', '000000017  Suharsono', 1);
INSERT INTO `iclock_adminlog` VALUES (49, '2021-03-12 14:18:46', 1, 'employee', 'Create', '000000018  Ahmad Fauzan', 1);
INSERT INTO `iclock_adminlog` VALUES (50, '2021-03-12 14:21:41', 1, 'employee', 'Modify', '000000017  Suharsono', 1);
INSERT INTO `iclock_adminlog` VALUES (51, '2021-03-12 14:22:37', 1, 'employee', 'Create', '000000019  Syarifah Nuraini', 1);
INSERT INTO `iclock_adminlog` VALUES (52, '2021-03-12 14:23:19', 1, 'employee', 'Create', '000000020  Nadhea Clarasari Azharia', 1);
INSERT INTO `iclock_adminlog` VALUES (53, '2021-03-12 14:23:53', 1, 'employee', 'Create', '000000021  Asteria Bunga Indah', 1);
INSERT INTO `iclock_adminlog` VALUES (54, '2021-03-12 14:24:40', 1, 'employee', 'Create', '000000022  Nicolaas Ehrlich Riwoe', 1);
INSERT INTO `iclock_adminlog` VALUES (55, '2021-03-12 14:25:23', 1, 'employee', 'Create', '000000023  Ratna Purnamasari', 1);
INSERT INTO `iclock_adminlog` VALUES (56, '2021-03-12 14:26:15', 1, 'employee', 'Create', '000000024  Bayuadhi Indrayana', 1);
INSERT INTO `iclock_adminlog` VALUES (57, '2021-03-12 14:27:29', 1, 'employee', 'Create', '000000025  Chandra Regina', 1);
INSERT INTO `iclock_adminlog` VALUES (58, '2021-03-12 14:28:04', 1, 'employee', 'Create', '000000026  Hendri Walesa', 1);
INSERT INTO `iclock_adminlog` VALUES (59, '2021-03-12 14:47:10', 1, 'employee', 'Create', '000000027  Alifia Syahda', 1);
INSERT INTO `iclock_adminlog` VALUES (60, '2021-03-12 14:47:47', 1, 'employee', 'Create', '000000028  Dewi Puspita', 1);
INSERT INTO `iclock_adminlog` VALUES (61, '2021-03-12 14:48:30', 1, 'employee', 'Create', '000000029  Indah Susanti', 1);
INSERT INTO `iclock_adminlog` VALUES (62, '2021-03-12 14:49:26', 1, 'employee', 'Create', '000000030  Fani Sintya Pratiwi', 1);
INSERT INTO `iclock_adminlog` VALUES (63, '2021-03-12 14:52:06', 1, 'employee', 'Create', '000000031  Dira Arisman', 1);
INSERT INTO `iclock_adminlog` VALUES (64, '2021-03-12 14:52:47', 1, 'employee', 'Create', '000000032 Maulana Fadlan', 1);
INSERT INTO `iclock_adminlog` VALUES (65, '2021-03-12 14:53:38', 1, 'employee', 'Create', '000000033  Muchlis Ramadhan', 1);
INSERT INTO `iclock_adminlog` VALUES (66, '2021-03-12 14:55:00', 1, 'employee', 'Create', '000000034  Mariatul Kiftiah', 1);
INSERT INTO `iclock_adminlog` VALUES (67, '2021-03-12 14:55:39', 1, 'employee', 'Create', '000000035  Yugo Goutomo ', 1);
INSERT INTO `iclock_adminlog` VALUES (68, '2021-03-12 15:03:23', 1, 'None', 'LOGIN', '192.168.0.127', 1);
INSERT INTO `iclock_adminlog` VALUES (69, '2021-03-12 15:04:18', 1, 'department', 'Create', '3 ALC - TANGGERANG', 1);
INSERT INTO `iclock_adminlog` VALUES (70, '2021-03-12 15:04:27', 1, 'department', 'Modify', '1 ALC - JAKARTA', 1);
INSERT INTO `iclock_adminlog` VALUES (71, '2021-03-12 15:04:40', 1, 'iclock', 'Modify', 'BWXP205260321(0.0.0.0)', 1);
INSERT INTO `iclock_adminlog` VALUES (72, '2021-03-12 15:11:47', 1, 'iclock', 'upgradefw', 'BWXP205260321', 1);
INSERT INTO `iclock_adminlog` VALUES (73, '2021-03-12 15:53:06', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (74, '2021-03-12 15:54:32', 1, 'iclock', 'Modify', 'BWXP205260321(ALC-Race Kutabumi)', 1);
INSERT INTO `iclock_adminlog` VALUES (75, '2021-03-12 15:55:12', 1, 'iclock', 'Modify', 'BWXP205260321(ALC-R002)', 1);
INSERT INTO `iclock_adminlog` VALUES (76, '2021-03-12 15:56:35', 1, 'iclock', 'Modify', 'BWXP203960242(ALC-LT20)', 1);
INSERT INTO `iclock_adminlog` VALUES (77, '2021-03-12 16:00:31', 1, 'employee', 'Create', '000000036  Roristua Pandiangan', 1);
INSERT INTO `iclock_adminlog` VALUES (78, '2021-03-12 16:02:02', 1, 'employee', 'Create', '000000037  Tri Puspita Sari', 1);
INSERT INTO `iclock_adminlog` VALUES (79, '2021-03-12 16:02:43', 1, 'employee', 'Create', '000000038  Ahmad Ghozali', 1);
INSERT INTO `iclock_adminlog` VALUES (80, '2021-03-12 16:03:17', 1, 'employee', 'Create', '000000039  Fertho Pasaribu', 1);
INSERT INTO `iclock_adminlog` VALUES (81, '2021-03-12 16:04:11', 1, 'employee', 'Create', '000000040  Nuruddin Lazuardi', 1);
INSERT INTO `iclock_adminlog` VALUES (82, '2021-03-12 16:04:51', 1, 'employee', 'Create', '000000041  Ebid Dilli Wanto', 1);
INSERT INTO `iclock_adminlog` VALUES (83, '2021-03-12 16:28:00', 1, 'employee', 'Modify', '000000001 Ika Arsianti Dewi', 1);
INSERT INTO `iclock_adminlog` VALUES (84, '2021-03-12 16:31:34', 1, 'transaction', 'Clear', 'All', 1);
INSERT INTO `iclock_adminlog` VALUES (85, '2021-03-12 16:36:47', 1, 'employee', 'Create', '000000042  Peri Priatna', 1);
INSERT INTO `iclock_adminlog` VALUES (86, '2021-03-12 16:37:17', 1, 'employee', 'Create', '000000043  Okki Rubiyantoro', 1);
INSERT INTO `iclock_adminlog` VALUES (87, '2021-03-12 16:37:53', 1, 'employee', 'Create', '000000044  Rini Aprianti', 1);
INSERT INTO `iclock_adminlog` VALUES (88, '2021-03-12 16:38:25', 1, 'employee', 'Create', '000000045  Geovani', 1);
INSERT INTO `iclock_adminlog` VALUES (89, '2021-03-12 16:39:02', 1, 'employee', 'Create', '000000046  Intan Nurrahmah', 1);
INSERT INTO `iclock_adminlog` VALUES (90, '2021-03-12 16:39:29', 1, 'employee', 'Create', '000000047  Ahmad Agung', 1);
INSERT INTO `iclock_adminlog` VALUES (91, '2021-03-12 16:40:07', 1, 'employee', 'Create', '000000048  Wawan Hendrawan', 1);
INSERT INTO `iclock_adminlog` VALUES (92, '2021-03-12 16:40:32', 1, 'employee', 'Create', '000000049  Reni Andani', 1);
INSERT INTO `iclock_adminlog` VALUES (93, '2021-03-12 16:40:57', 1, 'employee', 'Create', '000000050  Alda Eka Putri', 1);
INSERT INTO `iclock_adminlog` VALUES (94, '2021-03-12 16:43:02', 1, 'employee', 'Modify', '000000046  Intan Nurrahmah', 1);
INSERT INTO `iclock_adminlog` VALUES (95, '2021-03-12 18:26:20', 1, 'None', 'LOGIN', '125.161.131.12', 1);
INSERT INTO `iclock_adminlog` VALUES (96, '2021-03-12 18:37:00', 1, 'None', 'LOGIN', '125.161.131.12', 1);
INSERT INTO `iclock_adminlog` VALUES (97, '2021-03-12 19:12:24', 1, NULL, 'LOGOUT', '125.161.131.12', 1);
INSERT INTO `iclock_adminlog` VALUES (98, '2021-03-12 19:17:56', 1, 'transaction', 'del', '6', 1);
INSERT INTO `iclock_adminlog` VALUES (99, '2021-03-12 19:18:02', 1, 'transaction', 'del', '11', 1);
INSERT INTO `iclock_adminlog` VALUES (100, '2021-03-12 19:19:31', 1, 'employee', 'Modify', '000000001 Ika Arsianti Dewi', 1);
INSERT INTO `iclock_adminlog` VALUES (101, '2021-03-12 19:19:48', 1, 'employee', 'Modify', '000000001 Ika Arsianti Dewi', 1);
INSERT INTO `iclock_adminlog` VALUES (102, '2021-03-12 19:20:31', 1, 'employee', 'Modify', '000000002 Fatimatus Sa\'Diah', 1);
INSERT INTO `iclock_adminlog` VALUES (103, '2021-03-12 19:21:04', 1, 'employee', 'Modify', '000000003 Fitri Andiani', 1);
INSERT INTO `iclock_adminlog` VALUES (104, '2021-03-12 19:21:22', 1, 'employee', 'Modify', '000000004 Teddy Munawar', 1);
INSERT INTO `iclock_adminlog` VALUES (105, '2021-03-12 19:21:33', 1, 'employee', 'Modify', '000000004 Teddy Munawar', 1);
INSERT INTO `iclock_adminlog` VALUES (106, '2021-03-12 19:22:06', 1, 'employee', 'Modify', '000000005 Febri Suhandi', 1);
INSERT INTO `iclock_adminlog` VALUES (107, '2021-03-12 19:22:32', 1, 'employee', 'Modify', '000000006 Ubayt Kurniawan', 1);
INSERT INTO `iclock_adminlog` VALUES (108, '2021-03-12 19:22:54', 1, 'employee', 'Modify', '000000005 Febri Suhandi', 1);
INSERT INTO `iclock_adminlog` VALUES (109, '2021-03-12 19:23:13', 1, 'employee', 'Modify', '000000006 Ubayt Kurniawan', 1);
INSERT INTO `iclock_adminlog` VALUES (110, '2021-03-12 19:38:27', 1, 'department', 'Create', '4 ALC-Sukabumi', 1);
INSERT INTO `iclock_adminlog` VALUES (111, '2021-03-12 19:38:43', 1, 'department', 'Modify', '4 ALC - SUKABUMI', 1);
INSERT INTO `iclock_adminlog` VALUES (112, '2021-03-12 19:39:02', 1, 'department', 'Modify', '4 AKS - SUKABUMI', 1);
INSERT INTO `iclock_adminlog` VALUES (113, '2021-03-12 19:39:14', 1, 'department', 'Modify', '3 AKS - TANGGERANG', 1);
INSERT INTO `iclock_adminlog` VALUES (114, '2021-03-12 19:42:20', 1, 'None', 'LOGIN', '125.161.131.12', 1);
INSERT INTO `iclock_adminlog` VALUES (115, '2021-03-12 19:43:05', 1, NULL, 'LOGOUT', '125.161.131.12', 1);
INSERT INTO `iclock_adminlog` VALUES (116, '2021-03-12 19:54:05', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (117, '2021-03-12 20:11:08', 1, 'employee', 'Modify', '000000006 Ubayt Kurniawan', 1);
INSERT INTO `iclock_adminlog` VALUES (118, '2021-03-12 20:13:22', 1, 'transaction', 'del', '13', 1);
INSERT INTO `iclock_adminlog` VALUES (119, '2021-03-12 20:14:40', 1, 'employee', 'Modify', '000000001 Ika Arsianti Dewi', 1);
INSERT INTO `iclock_adminlog` VALUES (120, '2021-03-12 20:18:20', 1, 'employee', 'Modify', '000000001 Ika Arsianti Dewi', 1);
INSERT INTO `iclock_adminlog` VALUES (121, '2021-03-12 20:24:06', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (122, '2021-03-12 20:25:16', 1, 'user', 'Modify', 'admin', 1);
INSERT INTO `iclock_adminlog` VALUES (123, '2021-03-12 20:26:55', 1, 'user', 'Create', 'regina', 1);
INSERT INTO `iclock_adminlog` VALUES (124, '2021-03-12 20:27:16', 1, 'user', 'Modify', 'regina', 1);
INSERT INTO `iclock_adminlog` VALUES (125, '2021-03-12 20:28:52', 1, 'user', 'Modify', 'regina', 1);
INSERT INTO `iclock_adminlog` VALUES (126, '2021-03-12 20:29:22', 1, 'user', 'Modify', 'regina', 1);
INSERT INTO `iclock_adminlog` VALUES (127, '2021-03-12 20:29:47', 1, 'user', 'Modify', 'regina', 1);
INSERT INTO `iclock_adminlog` VALUES (128, '2021-03-12 20:29:57', 1, NULL, 'LOGOUT', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (129, '2021-03-12 20:30:08', 2, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (130, '2021-03-12 20:30:50', 2, NULL, 'LOGOUT', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (131, '2021-03-12 20:30:56', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (132, '2021-03-12 21:06:00', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (133, '2021-03-12 21:07:11', 1, NULL, 'LOGOUT', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (134, '2021-03-12 21:09:34', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (135, '2021-03-12 21:16:34', 1, 'iclock', 'Modify', 'BWXP205260321(ALC-R002)', 1);
INSERT INTO `iclock_adminlog` VALUES (136, '2021-03-12 21:30:39', 1, 'None', 'LOGIN', '127.0.0.1', 1);
INSERT INTO `iclock_adminlog` VALUES (137, '2021-03-12 21:43:18', 1, 'employee', 'Create', '000000051  AGUS SUSIANTO', 1);
INSERT INTO `iclock_adminlog` VALUES (138, '2021-03-13 07:51:26', 1, 'None', 'LOGIN', '123.253.235.5', 1);
INSERT INTO `iclock_adminlog` VALUES (139, '2021-03-13 07:58:10', 1, 'department', 'Modify', '2 ALT - JAKARTA', 1);
INSERT INTO `iclock_adminlog` VALUES (140, '2021-03-13 08:00:02', 1, 'department', 'Modify', '3 ATT - JAKARTA', 1);
INSERT INTO `iclock_adminlog` VALUES (141, '2021-03-13 08:00:33', 1, 'department', 'Modify', '4 ALA - JAKARTA', 1);
INSERT INTO `iclock_adminlog` VALUES (142, '2021-03-13 08:01:44', 1, 'department', 'Create', '5 AKSA - JAKARTA', 1);
INSERT INTO `iclock_adminlog` VALUES (143, '2021-03-13 08:02:05', 1, 'department', 'Modify', '5 AKS - JAKARTA', 1);
INSERT INTO `iclock_adminlog` VALUES (144, '2021-03-13 08:03:10', 1, 'department', 'Create', '6 TMC - JAKARTA', 1);
INSERT INTO `iclock_adminlog` VALUES (145, '2021-03-13 08:04:46', 1, 'department', 'Create', '7 ADL - JAKARTA', 1);
INSERT INTO `iclock_adminlog` VALUES (146, '2021-03-13 08:05:32', 1, 'department', 'Create', '8 AML - JAKARTA', 1);
INSERT INTO `iclock_adminlog` VALUES (147, '2021-03-13 08:07:14', 1, 'department', 'Create', '9 AKS - SUKABUMI', 1);
INSERT INTO `iclock_adminlog` VALUES (148, '2021-03-13 08:08:15', 1, 'department', 'Create', '10 AKS - KUTABUMI', 1);
INSERT INTO `iclock_adminlog` VALUES (149, '2021-03-13 08:11:03', 1, 'employee', 'Modify', '000000050  Alda Eka Putri', 1);
INSERT INTO `iclock_adminlog` VALUES (150, '2021-03-13 08:11:27', 1, 'employee', 'Modify', '000000051 AGUS SUSIANTO', 1);
INSERT INTO `iclock_adminlog` VALUES (151, '2021-03-13 08:11:50', 1, 'employee', 'Modify', '000000049  Reni Andani', 1);
INSERT INTO `iclock_adminlog` VALUES (152, '2021-03-13 08:12:18', 1, 'employee', 'Modify', '000000042 Peri Priatna', 1);
INSERT INTO `iclock_adminlog` VALUES (153, '2021-03-13 08:12:37', 1, 'employee', 'Modify', '000000043  Okki Rubiyantoro', 1);
INSERT INTO `iclock_adminlog` VALUES (154, '2021-03-13 08:12:59', 1, 'employee', 'Modify', '000000044  Rini Aprianti', 1);
INSERT INTO `iclock_adminlog` VALUES (155, '2021-03-13 08:13:24', 1, 'employee', 'Modify', '000000045  Geovani', 1);
INSERT INTO `iclock_adminlog` VALUES (156, '2021-03-13 08:13:41', 1, 'employee', 'Modify', '000000048  Wawan Hendrawan', 1);
INSERT INTO `iclock_adminlog` VALUES (157, '2021-03-13 08:13:57', 1, 'employee', 'Modify', '000000047  Ahmad Agung', 1);
INSERT INTO `iclock_adminlog` VALUES (158, '2021-03-13 08:14:16', 1, 'employee', 'Modify', '000000046  Intan Nurrahmah', 1);
INSERT INTO `iclock_adminlog` VALUES (159, '2021-03-13 10:06:35', 1, 'None', 'LOGIN', '114.124.203.59', 1);
INSERT INTO `iclock_adminlog` VALUES (160, '2021-03-13 10:17:15', 1, 'None', 'LOGIN', '36.71.232.26', 1);
INSERT INTO `iclock_adminlog` VALUES (161, '2021-03-13 10:21:14', 1, 'iclock', 'Modify', 'BWXP205260364(0.0.0.0)', 1);
INSERT INTO `iclock_adminlog` VALUES (162, '2021-03-13 10:22:32', 1, 'iclock', 'Modify', 'BWXP205260321(ALC-R002)', 1);
INSERT INTO `iclock_adminlog` VALUES (163, '2021-03-13 11:05:14', 1, 'None', 'LOGIN', '114.124.203.59', 1);
INSERT INTO `iclock_adminlog` VALUES (164, '2021-03-13 11:06:14', 1, 'iclock', 'Modify', 'BWXP205260364(ALC-R001)', 1);
INSERT INTO `iclock_adminlog` VALUES (165, '2021-03-13 11:08:56', 1, 'employee', 'Create', '000000052  Dede Erwan Taufik. N', 1);
INSERT INTO `iclock_adminlog` VALUES (166, '2021-03-13 11:09:51', 1, 'employee', 'Create', '000000053  Ijad Mujadid', 1);
INSERT INTO `iclock_adminlog` VALUES (167, '2021-03-13 11:10:09', 1, 'employee', 'Modify', '000000053  Ijad Mujadid', 1);
INSERT INTO `iclock_adminlog` VALUES (168, '2021-03-13 11:11:42', 1, 'employee', 'Create', '000000054  Nurul Rahmawati', 1);
INSERT INTO `iclock_adminlog` VALUES (169, '2021-03-13 11:12:49', 1, 'employee', 'Create', '000000055  ', 1);
INSERT INTO `iclock_adminlog` VALUES (170, '2021-03-13 11:13:07', 1, 'employee', 'Modify', '000000055  Suherman', 1);
INSERT INTO `iclock_adminlog` VALUES (171, '2021-03-13 11:14:12', 1, 'employee', 'Create', '000000056  Tia Aulia Derbian Rustini', 1);
INSERT INTO `iclock_adminlog` VALUES (172, '2021-03-13 11:14:43', 1, 'employee', 'Create', '000000057  Asep Rahman', 1);
INSERT INTO `iclock_adminlog` VALUES (173, '2021-03-13 11:15:30', 1, 'employee', 'Create', '000000058  Mulyana Agustiawan', 1);
INSERT INTO `iclock_adminlog` VALUES (174, '2021-03-13 11:15:36', 1, 'employee', 'Modify', '000000057  Asep Rahman', 1);
INSERT INTO `iclock_adminlog` VALUES (175, '2021-03-13 11:16:46', 1, 'employee', 'Create', '000000059  Iskandar', 1);
INSERT INTO `iclock_adminlog` VALUES (176, '2021-03-13 11:17:16', 1, 'employee', 'Create', '000000060  Sandi Susandi', 1);
INSERT INTO `iclock_adminlog` VALUES (177, '2021-03-13 11:17:27', 1, 'employee', 'Modify', '000000060  Sandi Susandi', 1);
INSERT INTO `iclock_adminlog` VALUES (178, '2021-03-13 11:17:39', 1, 'employee', 'Modify', '000000056  Tia Aulia Derbian Rustini', 1);
INSERT INTO `iclock_adminlog` VALUES (179, '2021-03-13 11:18:16', 1, 'employee', 'Create', '000000061  ', 1);
INSERT INTO `iclock_adminlog` VALUES (180, '2021-03-13 11:18:33', 1, 'employee', 'Modify', '000000061  Dzaky Ridho Russhofwan', 1);
INSERT INTO `iclock_adminlog` VALUES (181, '2021-03-13 11:19:58', 1, 'employee', 'Create', '000000062  ', 1);
INSERT INTO `iclock_adminlog` VALUES (182, '2021-03-13 11:20:13', 1, 'employee', 'Modify', '000000062  Salma Rosmalah Kurnia', 1);
INSERT INTO `iclock_adminlog` VALUES (183, '2021-03-13 11:21:04', 1, 'employee', 'Create', '000000063  Syiffa Hermawati', 1);
INSERT INTO `iclock_adminlog` VALUES (184, '2021-03-13 11:22:19', 1, 'employee', 'Create', '000000064 Bayu Mustika Hendra', 1);
INSERT INTO `iclock_adminlog` VALUES (185, '2021-03-13 11:22:31', 1, 'employee', 'Modify', '000000063 Syiffa Hermawati', 1);
INSERT INTO `iclock_adminlog` VALUES (186, '2021-03-13 11:22:42', 1, 'employee', 'Modify', '000000062 Salma Rosmalah Kurnia', 1);
INSERT INTO `iclock_adminlog` VALUES (187, '2021-03-13 11:23:05', 1, 'employee', 'Modify', '000000061 Dzaky Ridho Russhofwan', 1);
INSERT INTO `iclock_adminlog` VALUES (188, '2021-03-13 11:23:16', 1, 'employee', 'Modify', '000000060 Sandi Susandi', 1);
INSERT INTO `iclock_adminlog` VALUES (189, '2021-03-13 11:23:48', 1, 'employee', 'Modify', '000000059 Iskandar', 1);
INSERT INTO `iclock_adminlog` VALUES (190, '2021-03-13 11:23:54', 1, 'employee', 'Modify', '000000058 Mulyana Agustiawan', 1);
INSERT INTO `iclock_adminlog` VALUES (191, '2021-03-13 11:24:02', 1, 'employee', 'Modify', '000000057 Asep Rahman', 1);
INSERT INTO `iclock_adminlog` VALUES (192, '2021-03-13 11:24:10', 1, 'employee', 'Modify', '000000056 Tia Aulia Derbian Rustini', 1);
INSERT INTO `iclock_adminlog` VALUES (193, '2021-03-13 11:24:17', 1, 'employee', 'Modify', '000000055 Suherman', 1);
INSERT INTO `iclock_adminlog` VALUES (194, '2021-03-13 11:24:43', 1, 'employee', 'Modify', '000000054 Nurul Rahmawati', 1);
INSERT INTO `iclock_adminlog` VALUES (195, '2021-03-13 11:24:56', 1, 'employee', 'Modify', '000000053 Ijad Mujadid', 1);
INSERT INTO `iclock_adminlog` VALUES (196, '2021-03-13 11:25:20', 1, 'employee', 'Modify', '000000052 Dede Erwan Taufik. N', 1);
INSERT INTO `iclock_adminlog` VALUES (197, '2021-03-13 11:29:31', 1, 'employee', 'Create', '000000065  Irvan Auldrien', 1);
INSERT INTO `iclock_adminlog` VALUES (198, '2021-03-13 11:30:36', 1, 'employee', 'Create', '000000066  ', 1);
INSERT INTO `iclock_adminlog` VALUES (199, '2021-03-13 11:30:43', 1, 'employee', 'Modify', '000000066  Satrio Rama', 1);
INSERT INTO `iclock_adminlog` VALUES (200, '2021-03-13 11:30:50', 1, 'employee', 'Modify', '000000066  Satrio Rama', 1);
INSERT INTO `iclock_adminlog` VALUES (201, '2021-03-13 11:30:56', 1, 'employee', 'Modify', '000000065  Irvan Auldrien', 1);
INSERT INTO `iclock_adminlog` VALUES (202, '2021-03-13 11:32:09', 1, 'employee', 'Modify', '000000052 Dede Erwan Taufik. N', 1);
INSERT INTO `iclock_adminlog` VALUES (203, '2021-03-13 11:32:16', 1, 'employee', 'Modify', '000000053 Ijad Mujadid', 1);
INSERT INTO `iclock_adminlog` VALUES (204, '2021-03-13 11:32:29', 1, 'employee', 'Modify', '000000054 Nurul Rahmawati', 1);
INSERT INTO `iclock_adminlog` VALUES (205, '2021-03-13 11:32:46', 1, 'employee', 'Modify', '000000066  Satrio Rama', 1);
INSERT INTO `iclock_adminlog` VALUES (206, '2021-03-13 11:32:57', 1, 'employee', 'Modify', '000000065  Irvan Auldrien', 1);
INSERT INTO `iclock_adminlog` VALUES (207, '2021-03-13 11:34:29', 1, 'employee', 'Modify', '000000057 Asep Rahman', 1);
INSERT INTO `iclock_adminlog` VALUES (208, '2021-03-13 11:35:36', 1, 'employee', 'Modify', '000000066  Satrio Rama', 1);
INSERT INTO `iclock_adminlog` VALUES (209, '2021-03-13 11:35:45', 1, 'employee', 'Modify', '000000065  Irvan Auldrien', 1);
INSERT INTO `iclock_adminlog` VALUES (210, '2021-03-13 11:42:41', 1, 'employee', 'Modify', '000000001 Ika Arsianti Dewi', 1);
INSERT INTO `iclock_adminlog` VALUES (211, '2021-03-13 11:55:48', 1, NULL, 'LOGOUT', '114.124.203.59', 1);
INSERT INTO `iclock_adminlog` VALUES (212, '2021-03-13 12:36:20', 1, 'None', 'LOGIN', '114.124.202.171', 1);
INSERT INTO `iclock_adminlog` VALUES (213, '2021-03-13 12:36:37', 1, NULL, 'LOGOUT', '114.124.202.186', 1);
INSERT INTO `iclock_adminlog` VALUES (214, '2021-03-13 13:11:35', 1, 'iclock', 'info', 'BWXP205260364', 1);
INSERT INTO `iclock_adminlog` VALUES (215, '2021-03-13 13:14:29', 1, 'iclock', 'info', 'BWXP205260364', 1);
INSERT INTO `iclock_adminlog` VALUES (216, '2021-03-13 13:42:07', 1, 'None', 'LOGIN', '36.71.232.26', 1);
INSERT INTO `iclock_adminlog` VALUES (217, '2021-03-13 13:42:09', 1, NULL, 'LOGOUT', '36.71.232.26', 1);
INSERT INTO `iclock_adminlog` VALUES (218, '2021-03-13 14:01:47', 1, 'employee', 'Modify', '000000065 Irvanda Auldrien', 1);
INSERT INTO `iclock_adminlog` VALUES (219, '2021-03-13 14:02:11', 1, 'iclock', 'info', 'BWXP205260321', 1);
INSERT INTO `iclock_adminlog` VALUES (220, '2021-03-13 16:11:39', 1, 'None', 'LOGIN', '114.124.234.139', 1);
INSERT INTO `iclock_adminlog` VALUES (221, '2021-03-13 21:10:46', 1, 'None', 'LOGIN', '123.253.235.5', 1);
INSERT INTO `iclock_adminlog` VALUES (222, '2021-03-13 21:27:04', 1, NULL, 'LOGOUT', '123.253.235.5', 1);
INSERT INTO `iclock_adminlog` VALUES (223, '2021-03-14 08:24:44', 1, 'None', 'LOGIN', '123.253.235.5', 1);
INSERT INTO `iclock_adminlog` VALUES (224, '2021-03-14 08:30:17', 1, NULL, 'LOGOUT', '123.253.235.5', 1);
INSERT INTO `iclock_adminlog` VALUES (225, '2021-03-14 20:50:33', 1, 'None', 'LOGIN', '123.253.235.5', 1);
INSERT INTO `iclock_adminlog` VALUES (226, '2021-03-14 21:56:56', 1, 'None', 'LOGIN', '123.253.235.5', 1);
INSERT INTO `iclock_adminlog` VALUES (227, '2021-03-14 21:58:34', 1, NULL, 'LOGOUT', '123.253.235.5', 1);
INSERT INTO `iclock_adminlog` VALUES (228, '2021-03-15 09:32:13', 1, 'None', 'LOGIN', '182.0.180.98', 1);
INSERT INTO `iclock_adminlog` VALUES (229, '2021-03-15 10:53:33', 1, 'None', 'LOGIN', '192.168.0.134', 1);
INSERT INTO `iclock_adminlog` VALUES (230, '2021-03-15 12:41:52', 1, 'None', 'LOGIN', '192.168.0.121', 1);
INSERT INTO `iclock_adminlog` VALUES (231, '2021-03-15 12:43:12', 1, 'user', 'Create', 'rama', 1);
INSERT INTO `iclock_adminlog` VALUES (232, '2021-03-15 12:43:34', 3, 'None', 'LOGIN', '192.168.0.121', 1);
INSERT INTO `iclock_adminlog` VALUES (233, '2021-03-15 12:44:42', 1, 'Group', 'Create', 'HRD', 1);
INSERT INTO `iclock_adminlog` VALUES (234, '2021-03-15 12:54:23', 1, 'user', 'Modify', 'rama', 1);
INSERT INTO `iclock_adminlog` VALUES (235, '2021-03-15 14:17:37', 1, 'employee', 'Modify', '000000007 Yogyantoro', 1);
INSERT INTO `iclock_adminlog` VALUES (236, '2021-03-15 14:47:17', 1, NULL, 'LOGOUT', '127.0.0.1', 1);
INSERT INTO `iclock_adminlog` VALUES (237, '2021-03-15 14:55:01', 3, 'None', 'LOGIN', '192.168.0.121', 1);
INSERT INTO `iclock_adminlog` VALUES (238, '2021-03-15 15:14:11', 1, 'None', 'LOGIN', '182.0.149.254', 1);
INSERT INTO `iclock_adminlog` VALUES (239, '2021-03-15 15:14:46', 1, 'None', 'LOGIN', '182.0.149.254', 1);
INSERT INTO `iclock_adminlog` VALUES (240, '2021-03-15 15:14:48', 1, NULL, 'LOGOUT', '182.0.149.254', 1);
INSERT INTO `iclock_adminlog` VALUES (241, '2021-03-15 17:15:13', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (242, '2021-03-15 21:34:25', 1, 'None', 'LOGIN', '123.253.235.5', 1);
INSERT INTO `iclock_adminlog` VALUES (243, '2021-03-16 10:40:55', 1, 'None', 'LOGIN', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (244, '2021-03-16 10:42:10', 1, NULL, 'LOGOUT', '61.247.46.76', 1);
INSERT INTO `iclock_adminlog` VALUES (245, '2021-03-16 10:46:19', 1, 'None', 'LOGIN', '192.168.0.111', 1);
INSERT INTO `iclock_adminlog` VALUES (246, '2021-03-16 10:46:28', 1, NULL, 'LOGOUT', '192.168.0.111', 1);
INSERT INTO `iclock_adminlog` VALUES (247, '2021-03-16 10:47:23', 1, 'None', 'LOGIN', '192.168.0.111', 1);
INSERT INTO `iclock_adminlog` VALUES (248, '2021-03-16 14:10:50', 3, NULL, 'LOGOUT', '192.168.0.113', 1);
INSERT INTO `iclock_adminlog` VALUES (249, '2021-03-16 14:10:56', 1, 'None', 'LOGIN', '192.168.0.113', 1);
INSERT INTO `iclock_adminlog` VALUES (250, '2021-03-16 14:11:38', 1, 'iclock', 'Modify', 'BJ36195260254(ALC-LT20)', 1);
INSERT INTO `iclock_adminlog` VALUES (251, '2021-03-16 14:11:55', 1, 'iclock', 'Modify', 'BWXP203960242(ALC)', 1);
INSERT INTO `iclock_adminlog` VALUES (252, '2021-03-16 15:50:40', 1, 'employee', 'Modify', '000000007 Yogyantoro', 1);
INSERT INTO `iclock_adminlog` VALUES (253, '2021-03-16 15:58:23', 1, 'employee', 'Modify', '000000007 Yogyantoro', 1);
INSERT INTO `iclock_adminlog` VALUES (254, '2021-03-16 15:59:05', 1, 'employee', 'Modify', '000000007 Yogyantoro', 1);
INSERT INTO `iclock_adminlog` VALUES (255, '2021-03-16 15:59:33', 1, 'iclock', 'reboot', 'BJ36195260254', 1);
INSERT INTO `iclock_adminlog` VALUES (256, '2021-03-16 16:32:52', 1, 'None', 'LOGIN', '114.124.139.40', 1);
INSERT INTO `iclock_adminlog` VALUES (257, '2021-03-16 16:33:56', 1, 'iclock', 'Modify', 'BJ36195260254(ALC-LT20)', 1);
INSERT INTO `iclock_adminlog` VALUES (258, '2021-03-16 16:35:49', 1, 'employee', 'mvToDev', '7', 1);
INSERT INTO `iclock_adminlog` VALUES (259, '2021-03-16 16:38:59', 1, 'employee', 'mvToDev', '66', 1);
INSERT INTO `iclock_adminlog` VALUES (260, '2021-03-16 16:41:35', 1, 'employee', 'mvToDev', '66', 1);
INSERT INTO `iclock_adminlog` VALUES (261, '2021-03-16 16:48:21', 1, 'employee', 'Modify', '000000066 Satrio Rama', 1);
INSERT INTO `iclock_adminlog` VALUES (262, '2021-03-16 16:48:44', 1, 'employee', 'mvToDev', '65', 1);
INSERT INTO `iclock_adminlog` VALUES (263, '2021-03-16 16:49:00', 1, 'employee', 'mvToDev', '66', 1);
INSERT INTO `iclock_adminlog` VALUES (264, '2021-03-16 16:51:24', 1, 'employee', 'toDev', '1', 1);
INSERT INTO `iclock_adminlog` VALUES (265, '2021-03-16 16:53:02', 1, 'employee', 'mvToDev', '1', 1);
INSERT INTO `iclock_adminlog` VALUES (266, '2021-03-16 16:55:26', 1, 'employee', 'Modify', '000000007 Yogyantoro', 1);
INSERT INTO `iclock_adminlog` VALUES (267, '2021-03-16 16:57:51', 1, 'employee', 'Create', '000000067  Bayu Setiawan', 1);
INSERT INTO `iclock_adminlog` VALUES (268, '2021-03-16 16:58:51', 1, 'employee', 'mvToDev', '51', 1);
INSERT INTO `iclock_adminlog` VALUES (269, '2021-03-16 17:06:32', 1, NULL, 'LOGOUT', '114.124.139.40', 1);
INSERT INTO `iclock_adminlog` VALUES (270, '2021-03-16 17:06:50', 1, 'None', 'LOGIN', '114.124.139.40', 1);
INSERT INTO `iclock_adminlog` VALUES (271, '2021-03-17 11:09:45', 1, 'None', 'LOGIN', '192.168.0.139', 1);
INSERT INTO `iclock_adminlog` VALUES (272, '2021-03-17 18:15:46', 1, 'None', 'LOGIN', '192.168.0.114', 1);

-- ----------------------------
-- Table structure for iclock_deptadmin
-- ----------------------------
DROP TABLE IF EXISTS `iclock_deptadmin`;
CREATE TABLE `iclock_deptadmin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `dept_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `iclock_deptadmin_user_id`(`user_id`) USING BTREE,
  INDEX `iclock_deptadmin_dept_id`(`dept_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = FIXED;

-- ----------------------------
-- Records of iclock_deptadmin
-- ----------------------------
INSERT INTO `iclock_deptadmin` VALUES (1, 2, 2);
INSERT INTO `iclock_deptadmin` VALUES (2, 3, 1);

-- ----------------------------
-- Table structure for iclock_iclockmsg
-- ----------------------------
DROP TABLE IF EXISTS `iclock_iclockmsg`;
CREATE TABLE `iclock_iclockmsg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SN_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MsgType` int(11) NULL DEFAULT NULL,
  `StartTime` datetime(0) NULL DEFAULT NULL,
  `EndTime` datetime(0) NULL DEFAULT NULL,
  `MsgParam` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MsgContent` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LastTime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `iclock_iclockmsg_SN_id`(`SN_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of iclock_iclockmsg
-- ----------------------------

-- ----------------------------
-- Table structure for iclock_messages
-- ----------------------------
DROP TABLE IF EXISTS `iclock_messages`;
CREATE TABLE `iclock_messages`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `MsgType` int(11) NULL DEFAULT NULL,
  `StartTime` datetime(0) NULL DEFAULT NULL,
  `EndTime` datetime(0) NULL DEFAULT NULL,
  `MsgContent` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `MsgImage` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DeptID_id` int(11) NULL DEFAULT NULL,
  `MsgParam` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `iclock_messages_DeptID_id`(`DeptID_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of iclock_messages
-- ----------------------------

-- ----------------------------
-- Table structure for iclock_oplog
-- ----------------------------
DROP TABLE IF EXISTS `iclock_oplog`;
CREATE TABLE `iclock_oplog`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin` int(11) NULL DEFAULT NULL,
  `OP` smallint(6) NULL DEFAULT NULL,
  `OPTime` datetime(0) NULL DEFAULT NULL,
  `Object` int(11) NULL DEFAULT NULL,
  `Param1` int(11) NULL DEFAULT NULL,
  `Param2` int(11) NULL DEFAULT NULL,
  `Param3` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `SN`(`SN`, `OPTime`) USING BTREE,
  INDEX `iclock_oplog_SN`(`SN`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 238 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of iclock_oplog
-- ----------------------------
INSERT INTO `iclock_oplog` VALUES (8, 'BWXP203960242', 0, 0, '2021-03-12 07:39:28', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (7, 'BWXP203960242', 0, 4, '2021-03-12 07:35:55', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (6, 'BWXP203960242', 0, 0, '2021-03-12 07:35:41', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (5, 'BWXP203960242', 0, 4, '2021-03-12 07:32:40', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (9, 'BWXP203960242', 0, 4, '2021-03-12 07:42:40', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (10, 'BWXP203960242', 0, 71, '2021-03-12 07:43:09', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (11, 'BWXP203960242', 0, 36, '2021-03-12 07:43:11', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (12, 'BWXP203960242', 0, 4, '2021-03-12 07:43:18', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (13, 'BWXP203960242', 0, 4, '2021-03-12 07:43:53', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (14, 'BWXP203960242', 0, 71, '2021-03-12 07:44:08', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (15, 'BWXP203960242', 0, 36, '2021-03-12 07:44:09', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (16, 'BWXP203960242', 0, 4, '2021-03-12 07:44:11', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (17, 'BWXP203960242', 0, 4, '2021-03-12 07:51:58', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (18, 'BWXP203960242', 0, 4, '2021-03-12 12:10:09', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (19, 'BWXP203960242', 0, 4, '2021-03-12 14:54:17', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (20, 'BWXP203960242', 0, 4, '2021-03-12 15:00:43', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (21, 'BWXP205260321', 0, 0, '2000-02-01 01:01:05', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (22, 'BWXP205260321', 0, 0, '2021-01-04 15:11:41', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (23, 'BWXP205260321', 0, 4, '2021-01-04 15:12:20', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (24, 'BWXP205260321', 0, 0, '2021-01-04 15:26:23', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (25, 'BWXP205260321', 0, 4, '2021-01-04 15:27:28', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (26, 'BWXP205260321', 0, 0, '2021-03-12 14:51:57', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (27, 'BWXP205260321', 0, 4, '2021-03-12 14:52:01', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (28, 'BWXP205260321', 0, 70, '2021-03-12 14:52:34', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (29, 'BWXP205260321', 0, 30, '2021-03-12 14:53:13', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (30, 'BWXP205260321', 0, 4, '2021-03-12 14:55:29', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (31, 'BWXP205260321', 0, 4, '2021-03-12 14:58:08', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (32, 'BWXP205260321', 0, 4, '2021-03-12 15:00:31', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (33, 'BWXP205260321', 0, 4, '2021-03-12 15:01:43', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (34, 'BWXP205260321', 0, 4, '2021-03-12 11:05:14', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (35, 'BWXP205260321', 0, 4, '2021-03-12 11:10:06', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (36, 'BWXP205260321', 0, 4, '2021-03-12 11:15:09', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (37, 'BWXP203960242', 0, 4, '2021-03-12 15:08:30', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (38, 'BWXP203960242', 0, 4, '2021-03-12 15:10:25', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (39, 'BWXP203960242', 0, 4, '2021-03-12 15:15:13', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (40, 'BWXP203960242', 0, 4, '2021-03-12 16:07:18', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (41, 'BWXP203960242', 0, 36, '2021-03-12 16:08:16', 14, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (42, 'BWXP203960242', 0, 36, '2021-03-12 16:09:32', 19, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (43, 'BWXP205260321', 0, 0, '2021-03-12 13:49:36', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (44, 'BWXP205260321', 0, 4, '2021-03-12 13:49:39', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (45, 'BWXP205260321', 0, 9, '2021-03-12 13:50:56', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (46, 'BWXP205260321', 0, 70, '2021-03-12 13:51:53', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (47, 'BWXP205260321', 0, 71, '2021-03-12 13:51:57', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (48, 'BWXP205260321', 0, 30, '2021-03-12 13:52:17', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (49, 'BWXP205260321', 0, 4, '2021-03-12 13:52:35', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (50, 'BWXP205260321', 0, 70, '2021-03-12 13:53:09', 2, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (51, 'BWXP205260321', 0, 30, '2021-03-12 13:53:42', 2, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (52, 'BWXP205260321', 0, 4, '2021-03-12 13:54:01', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (53, 'BWXP205260321', 0, 4, '2021-03-12 13:55:05', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (54, 'BWXP205260321', 0, 70, '2021-03-12 13:56:02', 3, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (55, 'BWXP205260321', 0, 30, '2021-03-12 13:56:28', 3, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (56, 'BWXP205260321', 0, 6, '2021-03-12 13:56:29', 3, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (57, 'BWXP205260321', 0, 4, '2021-03-12 13:57:37', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (58, 'BWXP205260321', 0, 70, '2021-03-12 13:57:57', 4, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (59, 'BWXP205260321', 0, 30, '2021-03-12 13:58:18', 4, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (60, 'BWXP205260321', 0, 4, '2021-03-12 13:59:30', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (61, 'BWXP205260321', 0, 70, '2021-03-12 13:59:53', 5, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (62, 'BWXP205260321', 0, 30, '2021-03-12 14:00:18', 5, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (63, 'BWXP205260321', 0, 0, '2021-03-12 14:15:25', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (64, 'BWXP205260321', 0, 0, '2021-03-12 14:22:26', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (65, 'BWXP205260321', 0, 4, '2021-03-12 14:23:36', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (66, 'BWXP205260321', 0, 70, '2021-03-12 14:23:55', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (67, 'BWXP205260321', 0, 71, '2021-03-12 14:24:10', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (68, 'BWXP205260321', 0, 30, '2021-03-12 14:24:12', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (69, 'BWXP205260321', 0, 4, '2021-03-12 14:26:35', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (70, 'BWXP205260321', 0, 4, '2021-03-12 14:27:16', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (71, 'BWXP205260321', 0, 4, '2021-03-12 14:28:20', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (72, 'BWXP205260321', 0, 4, '2021-03-12 14:29:28', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (73, 'BWXP205260321', 0, 4, '2021-03-12 16:03:34', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (74, 'BWXP203960242', 0, 4, '2021-03-12 20:05:02', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (75, 'BWXP203960242', 0, 71, '2021-03-12 20:06:05', 18, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (76, 'BWXP203960242', 0, 36, '2021-03-12 20:06:11', 18, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (77, 'BWXP203960242', 0, 6, '2021-03-12 20:07:30', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (78, 'BWXP203960242', 0, 71, '2021-03-12 20:07:54', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (79, 'BWXP205260321', 0, 4, '2021-03-12 16:07:50', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (80, 'BWXP203960242', 0, 71, '2021-03-12 20:08:06', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (81, 'BWXP203960242', 0, 71, '2021-03-12 20:08:58', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (82, 'BWXP203960242', 0, 36, '2021-03-12 20:09:03', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (83, 'BWXP203960242', 0, 71, '2021-03-12 20:09:22', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (84, 'BWXP205260321', 0, 4, '2021-03-12 16:09:14', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (85, 'BWXP205260321', 0, 6, '2021-03-12 16:10:26', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (86, 'BWXP205260321', 0, 71, '2021-03-12 16:10:52', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (87, 'BWXP205260321', 0, 36, '2021-03-12 16:10:54', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (88, 'BWXP205260321', 0, 4, '2021-03-12 16:11:03', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (89, 'BWXP203960242', 0, 4, '2021-03-12 21:40:43', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (90, 'BWXP203960242', 0, 36, '2021-03-12 21:41:43', 18, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (91, 'BWXP203960242', 0, 4, '2021-03-12 21:43:28', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (92, 'BWXP203960242', 0, 36, '2021-03-12 21:44:48', 51, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (93, 'BWXP205260321', 0, 4, '2021-03-13 09:54:08', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (94, 'BWXP205260321', 0, 36, '2021-03-13 09:55:51', 46, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (95, 'BWXP205260321', 0, 4, '2021-03-13 10:04:51', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (96, 'BWXP205260321', 0, 36, '2021-03-13 10:05:22', 45, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (97, 'BWXP205260321', 0, 4, '2021-03-13 10:07:58', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (98, 'BWXP205260321', 0, 36, '2021-03-13 10:08:22', 43, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (99, 'BWXP205260364', 0, 0, '2000-01-12 01:14:36', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (100, 'BWXP205260364', 0, 0, '2021-01-04 13:52:00', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (101, 'BWXP205260364', 0, 4, '2021-01-04 13:54:11', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (102, 'BWXP205260364', 0, 0, '2021-01-04 14:28:34', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (103, 'BWXP205260364', 0, 4, '2021-01-04 14:29:22', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (104, 'BWXP205260364', 0, 4, '2021-01-04 14:29:25', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (105, 'BWXP205260364', 0, 0, '2021-03-13 10:06:49', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (106, 'BWXP205260364', 0, 4, '2021-03-13 10:06:58', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (107, 'BWXP205260364', 0, 0, '2021-03-13 10:10:06', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (108, 'BWXP205260364', 0, 0, '2021-03-13 10:15:37', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (109, 'BWXP205260364', 0, 4, '2021-03-13 10:15:49', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (110, 'BWXP205260364', 0, 4, '2021-03-13 10:17:21', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (111, 'BWXP205260364', 0, 4, '2021-03-13 06:25:13', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (112, 'BWXP205260364', 0, 4, '2021-03-13 06:25:53', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (113, 'BWXP205260364', 0, 4, '2021-03-13 11:39:59', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (114, 'BWXP205260364', 0, 36, '2021-03-13 11:40:35', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (115, 'BWXP205260364', 0, 4, '2021-03-13 11:40:53', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (116, 'BWXP205260364', 0, 71, '2021-03-13 11:42:10', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (117, 'BWXP205260364', 0, 71, '2021-03-13 11:42:28', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (118, 'BWXP205260364', 0, 71, '2021-03-13 11:42:36', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (119, 'BWXP205260364', 0, 71, '2021-03-13 11:42:55', 60, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (120, 'BWXP205260364', 0, 4, '2021-03-13 11:43:30', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (121, 'BWXP205260364', 0, 36, '2021-03-13 11:44:15', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (122, 'BWXP205260364', 0, 71, '2021-03-13 11:44:19', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (123, 'BWXP205260364', 0, 36, '2021-03-13 11:44:20', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (124, 'BWXP205260364', 0, 4, '2021-03-13 11:44:46', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (125, 'BWXP205260364', 0, 4, '2021-03-13 11:45:12', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (126, 'BWXP205260364', 0, 4, '2021-03-13 11:45:32', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (127, 'BWXP205260364', 0, 4, '2021-03-13 11:45:57', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (128, 'BWXP205260364', 0, 36, '2021-03-13 11:46:24', 1, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (129, 'BWXP205260364', 0, 4, '2021-03-13 11:47:23', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (130, 'BWXP205260364', 0, 4, '2021-03-13 11:47:49', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (131, 'BWXP205260364', 0, 0, '2021-03-13 13:36:24', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (132, 'BWXP205260364', 0, 0, '2021-03-13 13:41:45', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (133, 'BWXP205260364', 0, 4, '2021-03-13 13:49:28', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (134, 'BWXP205260364', 0, 71, '2021-03-13 13:49:42', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (135, 'BWXP205260364', 0, 36, '2021-03-13 13:50:15', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (136, 'BWXP205260364', 0, 4, '2021-03-13 13:50:33', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (137, 'BWXP205260364', 0, 4, '2021-03-13 13:51:19', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (138, 'BWXP205260364', 0, 36, '2021-03-13 13:52:18', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (139, 'BWXP205260364', 0, 4, '2021-03-13 13:52:34', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (140, 'BWXP205260364', 0, 36, '2021-03-13 13:53:16', 57, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (141, 'BWXP205260364', 0, 4, '2021-03-13 13:54:02', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (142, 'BWXP205260364', 0, 36, '2021-03-13 13:54:50', 62, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (143, 'BWXP205260364', 0, 4, '2021-03-13 13:56:13', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (144, 'BWXP205260364', 0, 71, '2021-03-13 13:57:01', 54, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (145, 'BWXP205260364', 0, 36, '2021-03-13 13:57:10', 54, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (146, 'BWXP205260364', 0, 4, '2021-03-13 13:57:22', 54, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (147, 'BWXP205260364', 0, 36, '2021-03-13 13:58:12', 60, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (148, 'BWXP205260364', 0, 4, '2021-03-13 13:58:50', 54, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (149, 'BWXP205260364', 0, 36, '2021-03-13 13:59:35', 61, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (150, 'BWXP205260364', 0, 4, '2021-03-13 14:00:32', 54, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (151, 'BWXP205260364', 0, 36, '2021-03-13 14:01:21', 64, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (152, 'BWXP205260364', 0, 6, '2021-03-13 14:01:22', 64, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (153, 'BWXP205260364', 0, 4, '2021-03-13 14:02:20', 54, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (154, 'BWXP205260364', 0, 36, '2021-03-13 14:03:04', 63, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (155, 'BWXP205260321', 0, 4, '2021-03-13 14:24:36', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (156, 'BWXP205260321', 0, 36, '2021-03-13 14:25:46', 4, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (157, 'BWXP205260321', 0, 36, '2021-03-13 14:26:34', 50, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (158, 'BWXP205260321', 0, 4, '2021-03-13 14:26:57', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (159, 'BWXP205260321', 0, 36, '2021-03-13 14:27:56', 5, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (160, 'BWXP205260321', 0, 36, '2021-03-13 14:28:37', 44, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (161, 'BWXP205260321', 0, 4, '2021-03-13 14:28:58', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (162, 'BWXP205260364', 0, 4, '2021-03-13 14:29:28', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (163, 'BWXP205260321', 0, 9, '2021-03-13 14:29:37', 3, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (164, 'BWXP205260321', 0, 4, '2021-03-13 14:29:57', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (165, 'BWXP205260364', 0, 36, '2021-03-13 14:30:07', 59, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (166, 'BWXP205260321', 0, 36, '2021-03-13 14:30:29', 49, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (167, 'BWXP205260321', 0, 4, '2021-03-13 14:30:41', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (168, 'BWXP205260321', 0, 9, '2021-03-13 14:31:12', 2, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (169, 'BWXP205260321', 0, 36, '2021-03-13 14:31:34', 48, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (170, 'BWXP205260364', 0, 4, '2021-03-13 14:31:27', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (171, 'BWXP205260364', 0, 36, '2021-03-13 14:32:05', 56, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (172, 'BWXP205260364', 0, 4, '2021-03-13 14:43:12', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (173, 'BWXP205260364', 0, 36, '2021-03-13 14:43:53', 58, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (174, 'BWXP205260321', 0, 4, '2021-03-14 09:55:38', 42, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (175, 'BWXP205260321', 0, 36, '2021-03-14 09:56:12', 47, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (176, 'BWXP203960242', 0, 0, '2021-03-13 14:34:01', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (177, 'BWXP203960242', 0, 0, '2021-03-13 14:42:07', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (178, 'BWXP203960242', 0, 0, '2021-03-13 14:45:10', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (179, 'BWXP203960242', 0, 0, '2021-03-13 21:13:39', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (180, 'BWXP203960242', 0, 0, '2021-03-14 14:53:33', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (181, 'BWXP205260364', 0, 4, '2021-03-14 19:03:10', 53, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (182, 'BWXP203960242', 0, 0, '2021-03-15 11:33:48', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (183, 'BJ36195260254', 0, 0, '2000-11-01 23:15:20', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (184, 'BJ36195260254', 0, 0, '2019-12-28 08:12:27', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (185, 'BJ36195260254', 0, 3, '2019-12-28 08:12:29', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (186, 'BJ36195260254', 0, 4, '2019-12-28 08:12:41', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (187, 'BJ36195260254', 0, 0, '2019-12-28 08:14:29', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (188, 'BJ36195260254', 0, 3, '2019-12-28 08:17:11', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (189, 'BJ36195260254', 0, 4, '2019-12-28 08:17:22', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (190, 'BJ36195260254', 0, 0, '2021-03-16 14:00:32', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (191, 'BJ36195260254', 0, 3, '2021-03-16 14:00:34', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (192, 'BJ36195260254', 0, 4, '2021-03-16 14:01:14', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (193, 'BJ36195260254', 0, 4, '2021-03-16 10:15:54', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (194, 'BJ36195260254', 0, 21, '2021-03-16 10:17:01', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (195, 'BJ36195260254', 0, 4, '2021-03-16 11:51:38', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (196, 'BJ36195260254', 0, 0, '2021-03-16 12:00:25', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (197, 'BJ36195260254', 0, 3, '2021-03-16 12:00:26', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (198, 'BJ36195260254', 0, 4, '2021-03-16 12:01:56', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (199, 'BJ36195260254', 0, 4, '2021-03-16 12:05:06', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (200, 'BJ36195260254', 0, 9, '2021-03-16 12:05:41', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (201, 'BJ36195260254', 0, 3, '2021-03-16 16:36:18', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (202, 'BJ36195260254', 0, 4, '2021-03-16 16:36:29', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (203, 'BWXP203960242', 0, 0, '2021-03-16 16:37:28', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (204, 'BJ36195260254', 0, 3, '2021-03-16 16:39:28', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (205, 'BJ36195260254', 0, 4, '2021-03-16 16:39:34', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (206, 'BJ36195260254', 0, 4, '2021-03-16 16:42:18', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (207, 'BJ36195260254', 0, 4, '2021-03-16 16:44:44', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (208, 'BJ36195260254', 0, 4, '2021-03-16 16:46:02', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (209, 'BJ36195260254', 0, 3, '2021-03-16 17:22:24', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (210, 'BJ36195260254', 0, 3, '2021-03-16 17:22:30', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (211, 'BJ36195260254', 0, 3, '2021-03-16 17:22:43', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (212, 'BJ36195260254', 0, 3, '2021-03-16 17:22:49', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (213, 'BJ36195260254', 0, 3, '2021-03-16 17:22:54', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (214, 'BJ36195260254', 0, 3, '2021-03-16 18:28:22', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (215, 'BJ36195260254', 0, 0, '2021-03-16 18:40:37', 0, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (216, 'BJ36195260254', 0, 3, '2021-03-16 18:40:39', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (217, 'BJ36195260254', 0, 3, '2021-03-16 18:41:34', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (218, 'BJ36195260254', 0, 4, '2021-03-16 18:41:50', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (219, 'BJ36195260254', 65, 4, '2021-03-16 18:42:10', 0, 3002, 0, 0);
INSERT INTO `iclock_oplog` VALUES (220, 'BJ36195260254', 0, 4, '2021-03-16 18:42:19', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (221, 'BJ36195260254', 0, 4, '2021-03-16 18:53:56', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (222, 'BJ36195260254', 0, 4, '2021-03-16 18:54:21', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (223, 'BJ36195260254', 0, 3, '2021-03-16 18:55:19', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (224, 'BJ36195260254', 0, 4, '2021-03-16 18:55:36', 65, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (225, 'BJ36195260254', 0, 4, '2021-03-16 18:57:21', 7, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (226, 'BJ36195260254', 0, 6, '2021-03-16 18:58:22', 6, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (227, 'BJ36195260254', 0, 36, '2021-03-16 18:59:05', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (228, 'BJ36195260254', 0, 4, '2021-03-16 18:59:10', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (229, 'BJ36195260254', 0, 3, '2021-03-16 19:11:35', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (230, 'BJ36195260254', 0, 4, '2021-03-16 19:11:44', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (231, 'BJ36195260254', 0, 36, '2021-03-16 19:12:44', 66, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (232, 'BJ36195260254', 0, 3, '2021-03-16 19:12:51', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (233, 'BJ36195260254', 0, 3, '2021-03-16 19:16:34', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (234, 'BJ36195260254', 0, 3, '2021-03-16 19:49:59', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (235, 'BJ36195260254', 0, 3, '2021-03-16 19:50:02', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (236, 'BJ36195260254', 0, 3, '2021-03-16 19:50:05', 55, 0, 0, 0);
INSERT INTO `iclock_oplog` VALUES (237, 'BJ36195260254', 0, 3, '2021-03-16 19:50:07', 55, 0, 0, 0);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `batch` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2021_03_16_034947_create_roles_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'admin', '2021-03-17 07:05:14', '2021-03-17 07:05:14');
INSERT INTO `roles` VALUES (2, 'hrd', '2021-03-17 07:05:14', '2021-03-17 07:05:14');
INSERT INTO `roles` VALUES (3, 'staff', '2021-03-17 07:05:14', '2021-03-17 07:05:14');

-- ----------------------------
-- Table structure for template
-- ----------------------------
DROP TABLE IF EXISTS `template`;
CREATE TABLE `template`  (
  `templateid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NULL DEFAULT NULL,
  `Template` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FingerID` smallint(6) NULL DEFAULT NULL,
  `Valid` smallint(6) NULL DEFAULT NULL,
  `DelTag` smallint(6) NULL DEFAULT NULL,
  `SN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UTime` datetime(0) NULL DEFAULT NULL,
  `BITMAPPICTURE` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BITMAPPICTURE2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BITMAPPICTURE3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `BITMAPPICTURE4` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `USETYPE` smallint(6) NULL DEFAULT NULL,
  `Template2` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `Template3` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`templateid`) USING BTREE,
  UNIQUE INDEX `userid`(`userid`, `FingerID`) USING BTREE,
  UNIQUE INDEX `USERFINGER`(`userid`, `FingerID`) USING BTREE,
  INDEX `template_userid`(`userid`) USING BTREE,
  INDEX `template_SN`(`SN`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of template
-- ----------------------------
INSERT INTO `template` VALUES (1, 2, 'SulTUzIxAAADqqoECAUHCc7QAAAbq2kBAAAAg1cZTap+AGoPQABGAO+ljwCOAAAOWgCNqoEOVACjAJMPWaqvAOMPuwBrAIyleAC2AE4PPQDBqqEPZgDLAIYP8KrjACQOdAA9ADulPwAGAUMPTAAcqy4PeQAnAYQPj6oxAS8OYQD7AcKlsQBBAaUNdgBJqxgN4gBLAWQPUKpOAcIOgQCVAcenoABRAaAMpwBXq9AOwwBUAVkOjipTFU+IiYR7msCjgIDWt5tyRIAlWWI2VHfm7RNuSyXPoKqUlhNKkvxZkA++bMb773xsuXYjHffuYCvvJS7+l6eHdgs69IRSNg5rh1MHSADCW//7LRVRFWeADqrk8aJtHQI48qEqEY45Bv0L2XZ+19h5VgRjiK79zlqcAsMAOvR7JIk/0InB/mLc+BBuuKsMfYWF+x/8Q6j9ACA+AQKZHcGsAWkoGsVbxgBZkHDBBwBiOz9AWKcByFCPwVwEefwpEQDXXpBxOsF7acDAwmQTACZskGrAaWeMwcC1wROqpXCJwsHBB8LBasHAwcDCwAcIAwxwDP7BPv/RAOTcksDAwlnCOpbBasBbxRIAsrmQi2jBxMDBwMEFwXNoCAC0fRBBBP1eugFDgefAMDv//Wr+/8DAMwjFTILDd8LBwhUANoeZaP54dMLAwwfAwWv+cREAkom/wZJuUcPAPnsKxZeKo/7///5Vws4AkjkBLv5TZATFepbakhMAj5h9UsGSyMNDwVcFAFOZAIAHANC1IMCfCgP4plrCcf/BlQ4D06hijJDAZZYDAzWhhsIPAHdhZ4tpa2T/eA4AT69qbMDDdf/BQz4EAyirZI8GAIh9VpFoBhCFBjR3RQYDZbwkV8INALK6VAjBZcDAIBnF9cMIZcJ4k8KQBMHCL8FbBwDUzeX/RmsaAQTMq4WyeItrwsDD/8LABcLD2QgAY89JhzpkCKppz0PBV8Q5wSmsAdfZIv9SwwDVSyVVwQYA1i8pwvAGANDsJ8A6dwWq1fwreMEH1c8Dg8HCZwcQzM0nwsjDBwB1+j2zMAW6tQ8pa8IH1akKg8HAwmELEGUHLtrBwcHBwMHBEJGyKHEIEL8K7MFn0gYQxgona6oJExIKJ2RpwQbVPwjswXwKEJ0P7mt9wQgQmBUrwQXBwlWDCBCKIi0HwMJrZQUQeSo64QMTJjIrwwQQtYscX64R5k8awvzGEI/4W/4DEKVU0sAHupFb/R5SQsULQKsBAAtFUgA=', 5, 1, 0, 'BWXP205260364', '2021-03-13 11:46:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (6, 1, 'SoNTUzIxAAADwMcECAUHCc7QAAAbwWkBAAAAg20be8BQAIEPXQCnAPzPPQB0AG4PKACAwJYPgQCEALoPJ8CKAO0PagBfAPzPlACcAIQPVQCkwH8PggC8ALAO6sC8AJkPvgAGAIXPlgDVAHwOpADUwGEPpwDqAKwP6sDqAJYPVwAxAFbPrgD9ABgPuAAJwToPKAAPAZYPasARAUUPSgDcAUbPPQAcAUwPPAA4wRAP5QBJAdMPMcBOATwOsgCdASHPa4Q7BWsXq4DtUqKBdoD+cvZzLMNGE18XJvyngDHCd4B785/zp4CRQquPTAuiBJMR1z9cCrIC5fr3+OExYxcrBKsHrw/1L1MfKReqCDP7bcwH7yPmSVF47+0nrvyLE1+DP/RV0HsSGbEXnBrdujnf6z8lRQr/ERjCMA2yAObwcPgxwMv1LQjN+u4I2j7i8yt/UQYm9RDDDvEX+//rkg1Q0x4P+a/7BeVDAsJbHdwEAGHhE8c/AgBfMQbAwABP8nZpBQBQO79+B8BZOwBRCgBZQw8+wET/wP8IxbNB0EP+WQgAdIiAcqoLAHxQA0AF/8L2CQB1VH1iB2UGwBpV7f9DDsVpRsNVN0vAwP/LAGOiAVT////ABf/B8hAAG3DwS63B/j/BP0QEADmzcXjTARt68MBDOcHD/z/BPgkAfUWDwQCKbAwAhYTMwPyV/v7A/8AJxX2FQHZ0whMAJ0Lpwz4xRP9EVEbWAChM7MH+/jtkOGjDhgIAbpb9/8IAZVpwZm8HAJlZDMI//zwDAG6dOP8IwI2kgG9swLgLA1SmA/9ARsA6CwNNq33Ad35k1wAYdObAPv/A/upC/YIKAH65fZMHWIXFAYa7/UALxW/Aq8F+wHPCA8Xtw+DACAC6xYYEgcABBgDCxRNBkggDVMkDS/49BMV706mICACO0AMFMEnHAXnaYMHBBIwFwFzWZHvBDMVg2JzBZnKDDQC73121wYbCw4sJxZzZw/4ywDYFAEveagODCwCi6nFgxMICwHEVABvsJ8DDhDDAODtUwMEAUTZdfwMAV/iWwQvAs/sP/v9SBQsDavxpx6x7cMIQssEbSmAJEKvAHsOleQoQpQk9AHt1AgYQqw0pfp4JE7wOPcLCwXsEBBPkEVeCBxBl10yYvgYQKhNTakYHE6sVQMDEhQrV/RtcWHSRDQCTIGSTBcDBxMDBe8MQRdxHbMEGEDjbU8GwBBBNHkBuwxA+4Eh5/xQRA+6eVQHBwcOwxcRBwcMBAhDnTRrCl0IDy0IBAAALRZcA', 5, 1, 0, 'BWXP205260321', '2021-03-12 19:03:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (2, 14, 'SllTUzIxAAADGh0ECAUHCc7QAAAbG2kBAAAAg8cWcRpEAAEPVgCVAP4VPABkAPYPtgBzGnYPIQCRACgPNhqjAGQPegBtAHYVnwCrABYPeQCzGpIP0wC0AOQPYBq/AGAPlgA1ADUVwwAIAUEPtQAMGywPSQAQAf0PsRoUAU0O0gDjAUQVYwApASUPGgA6G0UPkABAAWUPexpHAREPigCfAZUV8wTCj+sPs/zpEqeLcvjjCVKCyWGvf5OCsYuu+ayVuHs3BuNzqxQRe8oCcoTuobb29mx3fHcj6ZIiDsD1A+y7/hdPtuiwEmL1pfVu/RINqRLX9jv4ahWPDmwxGA1KCdsYpAblE8/9Mvj+7UcV5uTqBtv7WZLsD3RnZHKRfxbtcPuOnZJz6cYrIOgBAusYiwMAczM//gYamjyGhAQAnUF3awUAdkL9PsMAbV97dsEHAHaCA/zbRQkAWVD6OjhYEgF4YX1s/VIMA1pi9P////4EQEQUAcFnkMFcvcDBkQkAb256eAWLCxp2cANL/0HCAGhve3fA/w8A2YXk5T44//9AwNUA0oCWwMCI/8K6wV4XATmg6f1XOv/85sMrBAAxoaiSBhoypmTBhRPFdqRnw8KAwXfCO2/BkhMAF6rg/TrC/k/8wTFLwQzFoakK/ik9/XYSxXivbY2MwMJkgFISA6Ovl5CDhMKqwZMXAaCvFzzAO/9FXwIA07gnwdAAZKHx//79Kjg6QPxd/P0PAF+9rMPDk8DBbsODEMViwUTAwJDC/8EBwY/YGQAS4skoOv782vzAwDH/KZBQBxqQ70aXAwBS9DfaCxDCC0DA7/z+OhUQSQzD/zhB/Dsm/zU7EhB3Ebnbw8PFxcfCAMPB28PCy8fAEtVGF1mcwoLE/sEBwqPYCRBNFDd3BoEHCnAULYAFEHAZReQcGxBgJbDs/f3k//39/f0qBTv95MD7/h8GEBEpQCH9HRBmKyRHw8bZwsPCwMHEBcLA3sKsopLCBdVgLjHDegQQ5jqGwvgeEeA/QykNxZDkeMfEwsLCzwPDx9vEUkIAC0PEAAMRRFI=', 6, 1, 0, 'BWXP203960242', '2021-03-12 16:08:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (3, 14, 'TStTUzIxAAAEaGoECAUHCc7QAAAcaWkBAAAAhJUqhWhEAHIPQwCVAO9nawBdAPMPrQB9aG8PzwB/ANYOTGiAAPEPXwBIAOlnyQCeAIYPewCoaBUPnQCyAMMPMGiyAFcPbAAIAO5n6gDVACoP7QDcaNIPzgDnAOoPaGjqAOMPtgAoACpmqQDwACUOLAD2aDUPtAD8AGcOiWj+AE8PbgDNAd9n6gAKAbQPWwAPaUoOjAANAZ4PLWgQAUEPUwDXASpnqgAdAUsPggAkaS0PvQAiAYIPdGgpAeAOyQDuAUBlawAzAaEO2AAxaTUP7AA2Af0Ne2g2AXAOcQCEAX9mnwBEAV4P8ABOaR0PZgBKAS8P7GhUAUQObwCkAYlnb4BjB4uLY/rXlLp+0YdugNsKYerUf4p8uox6AMtnpAeGhE8IoIItl178VXTGdK6AQfjnET8AdvWugON2d4b7ag9uHwiHjtYTmfvC/V55fhbulqvryQKk/7Lk3Ate+LaWDAid5EgCVfh9hGzfjeoQD90HpXREfEEzdPRNBR4s3K9hk6+AiYIOf7eHtZnQ/V0C6QzkEaroVxWODkIXdAVBP29RQQXdAo8INWnr7WqOVQQA/dKW9UPBceFmHPzKkEsNtMMNKCwxbnAb9jsIjvQT9Q7vePSxkZnRrJCxtOwMtvHyFmPnBoA28Gc0fXCYSs02AwznAeP/YKayfMMfhxoYo+kAJFUAAkwccAbFdy0fisEIAJcrv8DGqf6HCQB9Q7LCbwEEAIVE/TbPALstjnjDgcELxX1NGXFlw18HAAdUjRyXAwBuXvQ6BgT8VgBA/wkAo190FsHBwMMTABFtlAeFwHfBasAHwgho1nSJ/3fBRHMOaGR6aU3/wQSRF2jef5CFwmxDUceUxcEKAGOKLP1LXvwSAOKXkwWAbePAwYvAEgAAmo0Qwv+TfGqD5gDAyIH/hsDDeECTcfXCwsaTi8YEyQFozaAQNRgAKquYqcJfwcL/k0FzhzsGAMGuDzX9BwTJrgD/+8E2wACd23uSBQAxtZLAe2UBoLYDKf0FPzpJAffKpMJ5B8HE6IqHw8B5wwTDwKzEh8MNAHAL6ftC/vxBLgwArdFe7MDBxMLExgEDBIfXJ/8FAOocK8QODwBu6NwjOP74QsBBBgDQ6/XAxCIEALnvMcD9BAR+8ENZBwDqMDH7qVQIALb4qQHFwMgCELUAMP7AEJJqQSMDEIkDpcIReGYZvf39Ljj9/0b+S/7C/f3GEIx4W/8eEI4Rlf34kfv8/P3A/zj++pb///v///46/sWXwf/AwMAI1SUQIcPE/8OPCdUsECjDwcKZwgPVUxJcwhEQbhrMOCz9kvzA/v3A/zspAHgUIUBlAxBuI0iXBBBHJTDDaAYU0iRG//81BtXAISv+NQUQxi+GNQF4zS9A/y4E1eo9VWgEEO85NOAFFHU9N5cEENr5PShtEZpFXsD9OgMUi0dA/gQQoI1XLWwRN04eiFKHAA8rAAAAC0VS', 7, 1, 0, 'BWXP203960242', '2021-03-12 16:08:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (4, 19, 'Sr9TUzIxAAAD/AMECAUHCc7QAAAb/WkBAAAAgyEgX/wgAH4PUwD9APzzggA6AIQPswBK/A8PMgCKAJAPV/ySAFIPkQBWAJ/zhwCaAI0OqACq/B0NHQCtAAwPW/ywADYOfgB7AKbwuADDAEAPYgDZ/FYPOgDiAOMPH/zlADQPNQAoACXzVADxABMP7wDw/CoPcwD6AFAPkvwNAXwPuQDIAWHzMQARAasPZwAo/ecPRAAtAc0OV/wuAYwOTAD9AZDyrgA6Ae0PeABB/fIPoABMAb8PVPxVAYQPLgCSAYbzUIIb/C9wlIKVDoZ8WXmXCLqEUnEHEh+QNgVHjkzeaxxOOLr9iRNNfzb43PNdc/vp1haIe1GTjnY+lrhrPB4G5FqSRIul5WtynevHnyKnBufCtV/2rAN8/tkIbAldE0oQ6QPHA+j3Aux6gDPsQ/v4+TUGeoTHGbQPn+kymQYev36hFmp0joD+pVuFvgXfbEZtoXS4fCGhUft5hDIJCQuWcB8Qqfw5CTR2JvQDeCoN5Y4/iMlor/C6+XoCPwLdC9J8FxElZuU0Av5bH9cHAHzFCTa1AgA/An3DyQBZ/gEy/z7AOMYAoP4fwQQASAxFhw38TAz9NcD+gf9E+gFZHYDAxJwNA5wgBj0+/8AFWgX8WSR9wcNR1gAQ2+b+/jxU/4P/w7sFAFY0/TDDAEzFdXTBBABX/wNf8AGHPQ///gVG/LAhAHlJDP87wD3O/v9TOPz+Ov/9Pf3/wP/A/wUVA+9L4v1K/jvzPkW3GwAUYuL+OkFSAfxH/zg9STglA+tr6cD+wf85PMMCP//+wP9Ejv38Av7+//zARjodA+R351TAIv39/zY8P//A/f/+Oi8b/BiE4v9M/uI7OJQ5KSAANYch//wA/vwu/zMqO/75Bv///v79/jr8+eYIABWKQGWh/wD8LItewwgA9o9ZP3R8DwCQj2XCwFyWkIM4ABtR1/6w//0q//7/60QtAPz+/f/9/QX//QH/wP3+/f4+/v8D/P/9/v39O/j5Av79CgBQmJOdmG8EAG6lCfk//wf8aq1AqQ8AcsdAPCvA/P0uLtcAvjs8///B+/47wP4B/v///f/+OwgDWt9T//z9/jn9C/w86CfBwcS8BAPg6zSDAwDtNUP88QE08S2RwQFslPMBKfY0ksO5hcY+wAYAGfwrB3kE/BL9N6J7BtURDNfDwoUEELXKXiruERIfKaD/RmJYOWAEEN0haZwLE+Q5EMB4wMKjBhPvPhPC/4MF1ddAiDsPENNLdIfAw8JXSgUQFkvM/4H6EZ1QesBMwhDGpXvAwv4+BdUkZgb8aQ4AbJqhx8dnxsjGw8Kwl0ID90IBAAALRZcA', 6, 1, 0, 'BWXP203960242', '2021-03-12 16:09:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (5, 19, 'ShNTUzIxAAADUFUECAUHCc7QAAAbUWkBAAAAg/0aV1AvAPAPaACaAPxfWQBpAG0OjQBsUO4OewB2ANUPuVCDACQPiABAACFfbACKAHMOmwCMUPUOcACcAOcNTVCrAO4PmABpADNfNwC1ANsPngC0UFUOvQDLAP8PSFDUAFMOQAAuANBecwDsAE8PcgDwUL4PpQAjAZ0PIVA2AfAPYgD9AeBfmgBDAdwPuQBOUecPPgBdATwPw1BhAe0Pw/EKh9hT7JWm8PIRQID+ISNdhYSC8X/+lqHInhYQ2wV+9uRHABXZs8IARIBKAehmgYCl1icIGuH4MkIAtZ3EF2msAxPiE2/4UO+p2c+KzWmCAc81jS7mDAcbgYLHAdUqgIKvhWf6D/+wLeL/ioYTaYJzdS36mYt3u/hWD2BPu/z/7acL3/hx1cLwjgw2BL6TLFhqGX8XMxCClyBbK2K6AiApxAH1S6wEAGUbcAXCBVBjInDCSQbFlCbZw8LCwA0AZjKMksPBe8T/wL4EA+BPHEcQAMeKmn3AgnBdDwCzkpqOIX97xAwAbJn3/q4xR0IHAHGlAC0QEADPYKCMv4HCk/7B/8IGAIFzZyjBHAB+dQ/2RjRi/kHA/fxHkP8QUNZ+pMHAxJ/Ew9eRwHcGAL5HIPyvTwgAuoYi/UYJUIuHHv9AQDoUA4uOqcJpwYBVi8EyDgBzmhcnOv49rj3+DQByoNv9/HrA/sD//f/QAJr/KjPA/j4wOMD+kv/CUBUAN3TaO6/6/vn/wMA7/sKtwf///sAXxRiwh/7AwP82/AX8/K7/wP7A//86VgdQb7cxKwoAk7hZklD+/oMNAKK5Oa8v//5EPQrFW7gAw8D7wETAzgBi7EI4/v3AVOAAGpPWwFRBK/s7QD0QVcD/Nfz/+/0XUL3GtHeAw2XDw5DDwv5vCgB5zj6QQf9PFQDBCzc9r/9P/fzBwDvBT67FDgDa4DqKwPyu/v4xwAkAq+5Tr/79wP9MCsV08xkyMcD/IgDW+dOuYzf/+8D8P/1DZTkw/jJRHdUSC4b/wcDBwTM4+vqt///+wP//9v79r/7B/wQQoeNaPlURpydTLgbVXjkgSsEDENdGlfoGQHlPdMBGUocACBMAAAALRVI=', 7, 1, 0, 'BWXP203960242', '2021-03-12 16:09:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (7, 3, 'SidTUzIxAAADZGkECAUHCc7QAAAbZWkBAAAAg4kWOGRyAHsPqwBZAIRrWQDKAHEPDgDMZIoPPgDYADcPhmTnAHkPxQArAIlrZQDxAPgPpgD0ZHUPrAD+AEYPK2T+AO8PwADGAQ1rUgAIAXAPcAAOZRAPNgAOATQPcWQgAWUOvADmAYhrTwA/AVAPSwBAZUcOOgBEAZMPXGRRAT4OlQCdAS1pOg9Hixf34v9Mdy7/foBGeoL8PWQ+fU8KeoAjB6Wbf4F2Bh/4hH5hbL8A0Ibli7uB1xpsBvr+KXTMdeWctAGag2r/EPz+6TyG8f7te0+AUmAYkKWKMQVPgHwZu/ZCI87zbH69GKcKqf1RFtLsbn7f47MIIQn/GugC5PLS6jv4wOrYlv7LH98YIPgBAV8dcAUASz24wFFnAVxbBsAFxYhhbVUFACleA5wDA3Jq9/8FAESsAMMjCQCAbAP+Bf/CMQIAN3CAwsYAPBf8/wsAaHLGS1g4AgA3d3rB1QAv5vbAPkL9wYBTEWQXkffAUz+OUltoAaeZjMHABGz9pksFAK+dDwRVD2Smn4bAwMCqZMJjAaCrBv9FBQsD+K2GwHRvwDoSA32x7T///sE7YvybW/8TABbGKERDI8MrYMAGAJHIdzjBCQBcyfqKwP0NDgDHy497TmLCpVITABXP7Y7AwplhSjZdBAAK0hM9BQA62nBs1QBBvvbD/T44wTr/w1kJAILmesEEUsNvAYDs+jL/B/xUaQHA7YlZfARiwmgBdvT6wP2APUh3ARX16f7BO8DCUv89U1kIAJr2dByCBwCo/IlOhw50ogCDwcGFAf59pQcQxAAMOAQUE5MBlnD/doMEa8KlwMIGEMMGyUDCYxFODXCLeMIQu2oO/0XBBBD3EWQbBxB2H/c7OwgTCiFtw8DAlMAQqUCIlgYQbyWijcNiEawlCTXBwxBvSmGRwBcRA+qXwiGRaonBwHsHhgl0czXr//3+OEfCchH8OpNKakyLwaVqwYsREPT7k8ObwcDBlv/FOpDCYBFwP1OjBNVNQTdsAxCLRFADAxNSRF7DAxA7jVfBYhGZTAb+QsEQojIINg8Q/F9fcMObicXCxKkN1YFh0/z5/Pv+/zrAw6T+ChCUYrA+9vuk/8H/wFJCxQtAZQEAC0VSAA==', 5, 1, 0, 'BWXP205260321', '2021-03-12 19:03:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (8, 4, 'TQVTUzIxAAAERkYECAUHCc7QAAAcR2kBAAAAhOskjkY1AIcPvQD6AJdJWwBPAHcPvwBQRnoPMABXADYPS0ZiAPgPQQCsAGtJMgCGAGkPWgCMRogP5wCMAFgPU0aVAPwP4gBdACBJlQCvAIoP+QCyRlgPvQDJAOoP6UbLACkPrQAWADxJbADWADUO9wDTRk0PnQDeAIUPUEbeAD0P7AAqAD1JvADwAEYPRQDxRqsOswD4AH4PhEYCAYoP1QDCAU1JbwAIAf8PXgAgR3cPgQAsAUIPyEZCAdoPVQCAAYtJgABLAX4OrwBIR/8O6gBXAawPSUZZAYcPTg3G9WNUdg1jGz8PmIIWumsJjgTa9b6EtcCf/IZ/+YiYgh5CAHi1fmYIL/wuKPdzRgKfE8ZnMD0id2cXFpYnpzfKLYuX/bv3BwIaETJMdg0GX5Ycub+78pLqmvEe/BdDMAmx+Xb0ePtyy1L0AvU+EfIbLU9nhVb9NQsL8euiq/AKEcv0ZY/iVlv8GSA1r0d1rDFrfdZ1ueCojTJAGxDaBMqRvHVlEa96ffOy76L46VU7CFaKwnH6Z2vVQAkBkvoTRILCvovzEXKBgjN4ttfOI7P3yfkviPdM+99eZAcg/wEGNR6jDQBzCsxHS4bBPgYAww3T/lJOAawRBvxEjw0EKRUGRDtdUs0AZ1j8Kz0EADfo9EZOAWQmAP/9ncEMRocyhnh0CMXBRVxLwDAVAB+N8E+H/GD/Rv//lksHRlRPd8EQAPdS9HP+S8D//0w6CAQwU4PCw0XAzwB6EghLTFUWAN1X7wD/wEMy//+GN8RFAXZYfcIDxSxdNsMNAFNm9IUxxHjABAA9aHSyBAR5bG3A/xEA8oT0CcH+/v//NgX/REIBm4SQiQjFb388dnsDAC+FqMETRhSJ7VVPQfDA+w3BwFoXAKNPGkOG/0zBM8D+O/36u8MuDACbi0mAgobD/8QDADFJacRQAVuP+js8OkT6ucH9YCcDAC6PGrkJAFOWcIAEgBBGWpb6//47hMD7fUckBADml9szAUbinCfARwrFka/VwpLCwsPAzwCU9oiOwcTBk8wAPqpBwsLDwcJaBgTesxz/MQYA/LleMsAQALnFp03BjIXAwMGJBQAEyy25Nw0Au80wBf/7uv4uwCkJACnONIT9xPrBQgTFcdex9/oRAGnZhsXBgMfJwsXExwbHwIOpFgAu2lBDxMeGwMOO/sLCAcDGh8PDCABU2hX9+Lr8HRQANduMwJ+EkMN8xcDCB8LESgGh4TrA+zn6+70l/iIAUOKDp8bmqcPDwmHDB8LA5sL/xMPBwwedAkaa4kP//Pg6DQSt8zQ7/v3/OMD7uf4JABn4TAPAx87DEhDRCkk6Kfq5/8D//f/COMAwVRHXCkD9/zspxLg6av4+CBDRITCAwZHACBDIgmf7ucHA/f8DEN1eDYdTQgALQwHFAA8DUwA=', 5, 1, 0, 'BWXP205260321', '2021-03-12 19:03:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (9, 5, 'TctTUzIxAAAEiIwECAUHCc7QAAAciWkBAAAAhLUpg4hfABMP1ACgAJCHOwBoAHoPXQBziBIPiAB7AFUPz4h/AJQP7wBAAByHUgCHAAQPSwCDiI4PVACSAL4PN4iWAPkPzQBhAJaHMgCmAHcOXACoiI0PNwC1AD0PuIi+ABUPUgAGAHGHqQDHAI4PoQDXiHUPUwDfAD8Ph4jeAIEPuQAoAImHrgDyABIP8AD3iGcPZgD1AK8PoYj2AIgPUAA5AGeHSAARAVkPcgARiY8PyQAWAdoPlYgbAVMPSwDkAUiH5AA1AaAPTgA+iSUPbwBAAeIPpYhCARoPYwCOASOG1ABOAZUPUABTiaQOWgBZAesOs4heAZsPrYdTAK4PPAMSf2OD63pLCDIA5YTFhdMAGIvofLF/vQMzfSqO84UOh8uIfYvuhSOOoAPJfeMGxPODhHIGyYQHAIYIR3yuAtN8DIBFCPf+IgCq/s96OQhHAJ6E3YqDhAYCKAJJf6J8IHqajCMDdX2pAtv0aQFEh6mTkgyjGR5zYX9hBjYCmYfYB6eFKQcGbYMNjYK4c9b55Hsg/iJ1bA4R+q3/oAzxctP19XGeCW994RmHgxKXdjDvxgJG8PT66VMk/wyCC3oWbQ7V/1eAuYhQB7b4vXYw+ooJPACx+EoHA/RedXZ9sY6OgCMNLYAzCAvn0gm3+Y4JiufXMvQB5UkFinkcsQQAYYwMa48BuEoQQ1XGALPYFsADADBTMv0AiK9XEP/CBcVIXnUqBgCLXQw4XAOIrF0Wa2AJxaJbnsFWwEMGAPZhB0hGCwCJYheuwcR3/nEEANho1loIiINwHv/EwftWxYsBJ3L6wgTFUGiLOQkAnHYTBcFC4wsAmXsXbY9XDYgifvA1QP/NAC8M9sD/QP8DxVeAiP4EAE+HgEwMBPKIDMDA/cKlwGSHAVaKBkf/BP1y3MAFAJKKDDpNC4hZkgNBU1w7wMV3CwAhpfda9EQOiJSujGqLxDoDBBWuE8ASADt19zy2/kT/wv/ABf8NiD62+j1L/8IAxDYR///CKwTFTsXyfw4AVsL9hf9T0EoHAL7DF6FGD4gjx+01/0aLBATGxneDCACsDBNR3wcAYNF9lAQOBODSAEDAwP2u//t3BwBh1nrEnwQE992DjAQAhxoJXY4Bf+GAeMLRACZr5v8+/MH+OsDESPzBwf7AOcgAr3mRwoHBwYgFwQOIsvEM/sBAzwCCfIGgwsH/lc4ApXyNwYuDfwfFY/Hjfo8JALL21v/FvTwKAKn5E5A7fIQBl/yGm8MEw8VJjgUATf5kBIENmIcBeqeJxMAQkon8/DoLELXVk8ZKwsHFwZ4E1UcQ1pcGEM0VHDr/xEoIELMWk6ABxMZNCRC7Fx7AOsP7SMEDEMoaIAUGFAYdXsXFnQrVkSR1+j7AcgYQjiVXS8GZBhCNKPjH+wYHEJ4oFlgFBxQbLCSLhAYQWS0a8MAFEIw+J00FFPtCK8RrAxCoRDRLBBCkRh7CuRIUd1STN8D/wQfAwEzFxcXDxP+XQgSDQgEAAAtFlwA=', 5, 1, 0, 'BWXP205260321', '2021-03-12 19:03:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (10, 6, 'SvdTUzIxAAADtLkECAUHCc7QAAAbtWkBAAAAg1kghbQzAIAPkgD3AIy7RgBOAPUPSABXtIAPYQB/ADkPe7SQAFoMVABZAOq7fQClADINtgCqtEsOagC0AP4Og7S0ADQOrAB4ACm7PADhAC8O9QDutDMOtwDzAOUPSbT5AK8O0gDEAaG7WwADASMPfQAKtaAPTQALAe8OQbQYAa8OvQDhAZu7egAnAZkPiwA0tZkOswA7AVEPbLRBAZIPnACEAYy7LwBIAY0PpABPtQwPggBVAU8OlLRbARYOaACYAYm6AfM6AXOPtRM5pWafu/p/d1Z3xUG7AWOHoacTFLQAYClxEsFjr+y5BKuhvOuFAMzZJ6+UEFUZIfCMCiq+BATt7c36G/voTo4Otf19g7MPMrFgh3ILoYKzgJw8DIXpjX2DlANxMDcOyfj1dQd0njbUAxkLQQh0fRLJrIUCGLaM/AaiT8P6OQsGD4ePDjub6PYJYQZ4/k03UIXB+xELLP46zlsE4vXH4T6BpjFYfRV3AXasA5pP9I41ikqHbH3qt8P43Di7/+U5ArYTGTADAEXZa8OxAX0cg34FxYsjk8VcBgCEI0bBwnXDAwAuMGAFCwM7MZDDjE2FwQCChYHBwgUATv93kLwBXDv6TP47/wS0UT9raXMLxUlJWfxM/jv+D8VLU0DB/cExL/8FQQ60iFCDd4bDi8UFtEJRZ8DCc8wAkuAR///+wFfJAIrigYGRwHUNxYd/vf/+/z/AweoIA+mDZ8TC/8KzBAPDhXSODgCKQS3HdfxlU8FcBMV9i99QDACWihfqVFh2CwCFmjHEOkDAxAUAi5ocRM0AUCtRwoZzAwC/qUN2DwCAqSnCOXDBScJzwwwAcGk6eD/DwkcdAOx3pFp1/MKN/8KNOonCMcHDwMDAC8Vpuo55wsHBhAjFgrqZ/MTBYgkAdb8hSnLAdwYAqwQwwUuCIQDvw6kHWMJLwZ3D/8PFO5OH3n/EwYEaADbbs3fBWf/AwcIGwIFwhcJ4dQsAQNwqdIrC/cJuBMU65oB+BAAu8DpCBAOA8TBcBwC5PSBwdf8IEF4EIrHBX7AR1gUewMHBEFuzLJ8GEBoO9cOLvRETDz3CxQH/wdEEEEUdIsI6wwakZycPWAMQBScUdgQQYysawgXCB6QQLC2kEBB3N5TQNDX/Lv4SxXKc6sLCxMHBwUGL/EuJBRC3PhObBxPHQxBtdQUQZUIMdFcFEDJLCQVBBaQaVANR/1KHAAj3AAAAC0VS', 5, 1, 0, 'BJ36195260254', '2021-03-16 18:58:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (11, 2, 'TW1TUzIxAAAELjEECAUHCc7QAAAcL2kBAAAAhNMmvi4uAIUOkADxAGUhZgA5AOQPZAA+Ll4NRwA9AJ4Pzy5HAAMPnACCAPwjtQBLAHAOSwBXLt0OngBVADcORC5cAN0PUABNAFYhyQCMAAcPUACXLl4P2QCcAEUPVy6gANYPdgBgAOQhLwCyAE0PDQC3LmIP0ADEAJ0PMy7JAMwP2wAVAB8g2QDgACUOUwDtLjgPNwD0APIP0S77ACIP5gA+ACQgsgARAbEPKAAQL6MOTgAYAXYPWC4fATwPpwDkASAhawAvATQPGgA2LxcPhAA0Ae8P6S5JAZkPoQCQAach0wBaAZYPqCslqUQXLQVJaqeEHqabhrcIcWh0AUXcI3hugCP/MJYhrQunWZjFCCgdDUCAgpl6qexM5W5SSPwVGH2Gq4TToob5aX7jdI50naS7pvepjoHaWT/RoHpdH0oqoIa21xuKJg2OgfqQYawjehP+TQ0850JnSDzZ9V03oILyuY74CcSt+Mu5ISKgBxHPb4i6F1c1c4cKb2/+pAQh0YOB5QCVg8v8LaO7knd4lYf3jIav3HjqgXZ/EIhtJFoUOXXK/maB9dRUD+qBlX/7dL6t3PtCCnqLVIdWKqr5gnvjDGaB0tK7g3P0ntzS4RwOOwECQxyXwABwPGh3CACHFLXBx+/BWwgAXhWlW8V5BQCIGmnABxEEhyeDxMNiwARndtHCCgDcLYYE/PrpwcVcDgCL8V76Sf6EwMBZDcWQPHI5wv+DwP8HCQSzOWfE/v/ABYUCLqQ5+kb/BMVkOE7BwQYAQj6lbcUpAepAg8FXAwcEaUBXUmYLAHVIfuj/wML/g8LAALxlAUMPAPtcTHvF74nBwMHAwsMAOU5WWcAWAPujkMBxcMPAasHBs8JhOQH9cZOTeE1neu7CTsEMAP+yhmLswIF7CwD6RYyA7ICEBQDMicY4Ai5NilbBwMIEBQR/jVDAbBMAAYxz7f7EgHOJd74cBNCNkMGMi8QE/4dbwYT/wZHEwADIoQjAQBMAklNigbrC/8LBwMOAjh0u1JmGwsPCBsKCSMN+wsDBnaoEBPOcDDMUANVlg8axjXHCwIvCQQcEfqRPwf7DMM8Ad4dbw2d0wAnFxLVfxJvCgAUACbIEDQIAKrRWwsIANJhNwf/Bbg7FxbNJxZvCacLARBcFKsCkl8KbxAfCxezDwcHBwMI6wsYiAc3GYMSnBYl8KAE2zElSws0A0/xSxsVqwxLF/daywKHFxMOQBnHF7wUA4NQWQMAA3/cfwGANAP0bnsXqxMfGl8GDwwDfyybD///+BMWV6hl5BAA1+EOoBRQRDD3/wcAD1U0YbsEEEFgiPTrDAj5eIjRRwwnVqyYMwcHAwpAK1aYhBYJ5wf4FEK4xMO5uBBCEOStTUkYuCkMBAAALgFI=', 6, 1, 0, 'BWXP203960242', '2021-03-12 20:07:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (12, 7, 'SttTUzIxAAADmJ8ECAUHCc7QAAAbmWkBAAAAg0Ude5hKAAcOiQCUAI+WOQBVAGcPCwBdmBIP7ABlAFQPt5huAIkPaABZAHKXqwCoAIcP+wCymO4PIAC4ACMPpZi4AIUP1QB5ACeXTQDPAGEPGgDMmKMPkgDdALMPv5jgAB0PYAAgAFqWMADqAN8PAgDpmJ0P3wDzAGcPb5gDAVINTwDRAUCWMQAVAUYP/wAkmcsPnwBEAe8PaphIAbkPtwCLASuX5QBcASINEABcmasOiX33o1aDgh0OBf97F2Pe30Bje4TWjPeLv4Bokjpv4niT/Tb6fBxmExvvRQTKZMCbCwjCkIOAV/isHc4JxQBSEu5oih23C+OgQggLdIEejIEiAT4JJ/INw4YdgYBSfr9+yWBbCKd8goInm5wQgID1/8L9qAuhmXOG4viaEdbdouO//CrxZX3/BP3zYIWZi9MTrAfU6mqDx5Jj87J76ptvgWcI2Xgq/Oxj0IhuhWuDuPxchyE5AQIaGlkGAwoiDFH/BACyMINawQsAjzID92j9rgIAQ0b0wM4Ab6X8QFVPBwC5RwXUTgUAdEqAsgUDSWMaZQ0AsK6PhBzAwHYDACqr8MCWAUxc+sEv+ztzlQGwcYNNXwTAwvgHALhyED4FBwP2knrCccANxXSWYv7+NzJBB8VkmOzBwsJGCQCpnAPG/MI2BABmZXFyjQETo+D+TDr/Rcz+MsDD/A7FpaQRfcT+cMLBRBQDjqze/v5X/47AQ2dUwBQAG7Qb/v3PLlT9VFMPxaK3Hn2DfHHCC8WquYj+QD1mBwBnu4BYisMGANm82UP+mwFHz2fDE8XbzAZ5icCQb8I7wsCbAUzTYsEExeLQuksEAI7afQbDDpiX3gb+/E8FTIyQAbjekITDB8IAmI/gd8MGAJnlY1rBkAsAYemZfsBmksIGAC/tm8LDMAgAy+4i/4HAwWMbAODup8IFw4X0icDBbsHBOsHAWcMLAJXwCTj9/GXBdP8RANs3on8Rw5FyiAYAJPYkZ8BDCQBl+ZnDx2eNwA8Ab/4f/CdmKf9a/woQTAL+Yvr//2rBB9WRBIb9UsAFEIvMMFadEWITScKLwBBkizz/wv8HEOkZU1v+kwcQMxn4/oZcBhBPHEmJSwQTO0QkPwQQnoItwlgVENZbsHM6wMIGycTDw8LBBcLCnxGPYK3//4YIEx8UOsDBhMOXQgOTQgEAAAtFlwA=', 6, 1, 0, 'BWXP203960242', '2021-03-12 20:09:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (13, 7, 'TdFTUzIxAAAEkpUECAUHCc7QAAAck2kBAAAAhL8rfpIuAHUPXwCCAPKdlQBPAHwPeABrkogOzAB2ANMN3JJ8AJQNdQBGAHKdfQCMAHMPSgCLkgUPPQCTACoPtJKSAIcP3ABSABicYgClAPUPYAChkhMPiQCxALMPypLSACwPrwAfAJCdpADgAH4PXADrki4PkAD+APIPeZIBAUMPzwDFATKdvwABAUAPlgABk0wOPwAMARYObpIQAUYP6wDUATadWgASAUwOlQAck8sOqgAZAX8PjpIbAUQPpADmAcGd3QAnAUUPaQAxk9UOygA+AaIPpJJAAdwOhgCDAcidaABNAdMPhABUk9QPUwBRARMPlZJQAd8OywCWAd2c7wBeAUINq4E2aE4DboGTfnqDrpgi9Y+KCXTL9EKUgIT9jJr9RIAh6YMMMAcdd5uCsG0UcW6BBZHIk5pmp/+He49/lHWGFssCHYsSCS+XahdjgpqCRY0bnBaC+2TSdb4GC5jOIZf7WBtOZCNo6H1cUV5JqfjosTYOIAjF9ZH3/A2lbGwDyfhiBLvyOZ6fiNYSXQC8haHvyAmhibWLfPwZlMz7qe/m/Br0pBUwCN0AoIO4fVVrHfcF66Z8jIMBnegDkA/t8YyDEYWY4/ISDfiYEW2NWJH1J6aUQAgBbBwT1eyt8+v4IWynCC4CrQFvBnOdLAGlBqMNhBSFlIMOZXW2mY8Hyvve3PP/P3927+ORIUYBAmodyQQEKCoMQwYApekMQVIKAH4uBsI+wvvI//0DAHcytcAJkmJD8P8x/zrAxNIFAFtJbW/IAGfY9j02/v7C8goEAkyAb4N0CMWYS5vB//3CNQfFkVfvgHgNAE9qMcBDbfzA//5TDsW5aALDdW16wcPIAL3giGnBe4DBxgDYEhf/BABxg7+SCpJyiP1eNT6OCgTjiHfCwHV0yQB9HnV4wcF4hsgARB3sPf3CwP2EwAiSipB9woD/TmoOkrWUE8D+/448FZItlufAQD4F/vuqUgQA4JYW9gUEq5Znw18EABubGtgNAGWh8f/uwPmhwQwAqaMMOzBR0wQAoaSJwkEMBM2mYmZpXMPOAKw7EjzAPkoQxYWq75bD/3xYwDrAFpKMsgz///87/vpSwcD+ZFcIxYWw6MKSwP8DADXULVILAK/Wnp8BxHSXAdDWKf9SzwCvSJahxsDCYcIApk6RxsPGdwzFs9q2MMD8/f39RAUEM+ODxcbDB8Wp57b8J/4EAJY0PXuWAZ3xNMDA1ADKabDBjMKPw0bCOZgRkQI6wf85//pvSwMQ0wIwOwUUXAI3/y4GELwEQsT8BxB/BD2F//ibEU8GU8NAgwUULAc6/h4IEPsQVFLBPcAFEGbRRkWREe8UMMAG1W0R0Tr+BBDpFfJoAYJWFkxMBRCbFk1tSwkQiRbABfz+Z/sqBxCHHoY0MZYRjh49/f/bEPmNsV1vd3zBUsPE+8DBWm4EEGYnTbsFENorQyDBEOS5OxoHEMY+of18UgQQykJX+5QFFHRGT/lFAxBLVGRtBRDHVm1El0IEmUIBAAALRZcA', 3, 1, 0, 'BWXP203960242', '2021-03-12 20:09:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (24, 53, 'SplTUzIxAAAD2tgECAUHCc7QAAAb22kBAAAAgwccw9pfAIEPkACkAAXUNgByAG8OkQB22mwPIQB6ACoOuNqAAIkPQwBAAPPVnwCHAH4PiwCP2mgPqQCTAMMP39qZAIsPpgBeAH3VTACcAPEPHACm2ogPKwCuAKcPkdqxAHQPbwB8APHV0gDHAIwPrgDM2lsPjQDRAJkOxtrpAB4PYgA1AE/UigDzADUOnQAE284O6AAcAeAPWNo1ASgPNgD7AS/VswBMASYPg/l8pl4Frop7hFJ+PliEghUHdX6YBprZhIKeAaOInIZx1lcMqIs5grSGJqI0Avr0sHuceOIkyYodiF1+hQeN3D4A0Hq1AqQPUlJAAv6SwAOH/ZzaD3L3dAP4KPtVwoOF1ZqGgW+avd9Hcb8A7WrvAXHL7+iqBWop85XcMfbHhX4C9f8aDQPT6u/cgYY3q6BEBgu/AxObC/4VgR7fSgYvX+7jPNnmAwvz5SGiByOfAAJoHcIFxVc+oMDB/QQAYoZ6cNkBtEgQwgnFfEpaecL/iwUAtlF+GGQEADdfbb0DA3JRBv8JAHiSfcCU/owGAINcv8L8vQIAsWUG/8AA07cR/8DAAwASaBMlBQCjaYP/BAkDrWZ3wMHAewcIA3ZsBj7APgTFNXWx/8QFAFF2tXYJ2rZ9jMF1bzsQA52A7T3//kyU/zveAdyLEDUDxauCU8MFAIt9fbAMA1WCfXCUwcKGBQPliWnAhAcAX4l+GnbABgC4icYxw98BSottcAbFTJO9wcBZBgCsVgZHJRAA2JeMdTrBext7bQ8AqphMicMZZsFbwgQAaZkFiA8AopuAhKqEUswBn6GAwYMEwnckw4mQbwMAcqEFJQUA3acWVN0AzXaIwMJck4ScwoUbwYgEAJqtQ58K2qetAP8zRMAA03cI/UQDACl1Z8HQAZK0+jPAOz4R2oi3dMJ5ZweLwRhxDABrvGdBwXkbggkA0MOQB3zBGMAKAMzIjLmSlN8B18oawDvLAGQVX8LAwJ3DtMDB1wGJ0mDDkQZxw0IJAGrTV8AFw8CnCQCd4fr6Ovxe1wGY6T3DwbNwwyTCCADJ6hw6RMEnDQCg6wD6OMBdpP4NAIzv0Dj5/yTB//7///8ECwN87iJSQsDAOgwDe/IthcBrW88AZy5IwMTAxMC1DANS9j2TccFVyQCMLTB0wcHB/5kaEtkCq4eQiMEGwp0bwMRxYRcRxA6qooLBw8Gul0HAxycFEOwdIP87BBM9ISdcAxAV90PB3xFfNSRYBdVaO/d5BBA6QCuwBBPuQzSSUkIAzkMC2gELRVI=', 5, 1, 0, 'BWXP205260364', '2021-03-13 13:50:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (14, 42, 'So9TUzIxAAADzM4ECAUHCc7QAAAbzWkBAAAAg3EfwMxMAJMPOwCUAP/DlwBTABEPoQBWzHwPZgBxAL4PvcxyAJMPZwBeAHvDpgCjAI4PQwCszH0OVwC5AJ8PfMy4AAMNNAB/AF/DjgC6AIMNvwC8zGUNzQDJAP0Pa8zUADoMcQATADLAzADXAEcPuADzzK0NXADzANoPesz2AA4NnwA8AInDSAD7ACcPFAAKzWAOfgALAVkP5swKAVYO2gDZAdfCbQAkAQsPkgAkzZ4PxAAvAb0PNcxSAZEPNgKvhzjLi4KjgrOHr4PsWY6BQQeKgsZtxs9HB6OCtgJOhUDJXyEi/S52kwxl2V6MXHsp+KQZUez/5aYB2KKdi4JMJwU7Jw/nZAiCTHQi+GL56dDiijzqrtO3TArg25XQ1fohzn2HPBB0JaK+KKIVE0B/0jVoEzLkSGZsdfo/g+Fi8np+jAmMRFYYJQ1Njavqnl2k8z6QsfVEhYgshIFddRFfNG1RvEL83ZWXeA4E7mvXGusky/YWi7ijH16PLCA2xAI10MoGAF03eqn+C8x0NxDD/v+CBQNdOQb9RwUAcj0UMXcHAD9N+gX9VMABmVIJK/6Y/lXLARZV7f/AOjMJzG1CA0L9wDo4BMxpVgA1TgzFmFTfwTc+wD4GxVdatkjDBwBib0WLb+EBanEGVP/9Qfzxwf7//v8q7EQ2gMH+J/4pCMUZcSf/TDkPAHWkBsMxwcBP/0xCwgBiuXx+aQMA4r0gwssBGnnwQi/IAHelBz7/T0v/8AAVWOxMRsD9RoP+/DLBwP7//sE5Kf4z///A//7/O8HDMv/+/v39/wX+/TEuDAB4pwY7//0y/Pz7+xgHxRGYMcLBPhIAaEYDPjNB/j7+/zHNAGBXe5B6DQCkZ5OTDMHDfogJANGt5zJV/kQIAIBLAyszMAQAg7CDTAYD9Lfk/v/+/9UAf1MHQP3+/fzh/f7TGwAwuGKRTcPDD3ZmwXDAwgXCx8cBUrlnxcBHxH7fAXu5fcPFB8LBCMV9woHDjsEAkHAWJBIAV72ZkMAOw8TAeYBxwAB1DGrEmAUA0g4xLcoBctHc+Pw5/QfMfdEA+/0DxW3b8ccEAIbZIgHFDsxn2kPHwY8HoJzCAdHcPf39OP//4sD9/f0DAKX0HQwFEEsAJ3zDEP7OQTP/CRDUyFP/6/44FRAbJOfDWr3BwHvDwMAGwKHLEXAoEIxq1hAU4CPD/3aHZwXAwDN+CRASNhy9c8LPERRCHMMG1RVP28NdBBAVVtOLUY4BC0MBAADORVHM', 5, 1, 0, 'BWXP205260321', '2021-03-12 20:11:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (15, 18, 'TUlTUzIxAAAECgoECAUHCc7QAAAcC2kBAAAAgzchrgoiAIoPTgDhAPoFxgA2AAsPJwBwChcPOgCBAK0PxQqHAB8PUwBYAGQF5wCdACMPCQCnCioPxQC5APMOaQrAADgPfQAEAC8EjwDIABkNIgDOCi4PmgDQAFwMTArcADYPJAAsAEEFpwDsAN4OggD2Ci8PwwD/ALUOPwoHASYOqgDOAX0EVAANAasO6wALCzsO1AARAR8O5goeAeMPIgDkAVEEXwAjAZIP+AAvC4YOTwA1Ab4ONQo2Ae8N2gCFAekF2ABPAXQPy4FzhR53g3fPmwajCoum97vv1vpv9rvnPwo/Mzs/U/RKAHv/xvpKK/o20fEbDsLvofaICw4GGA5eCi4XjAxWK/Pb1fRlFa+UhYr48fLh5vrXD/8OgIAavH5wSAm6+JsTRhliIfcSVk7fZLpxFflsCoaOMJp9+6qVBOw18GR/9QvCnMujARBgh4J8LRRk5nK+yPlJbi5j+Anu8z93BR5Va/zTSRCg6mYNWZjIDY09mPXh6oaMtGg9lZN01XheDZYU1YLWkMufzB7EpgUqPwECWxvhwAA5AvbA/P8HALgIB/TBQgMAWwqywAgKOxr3wMH9Bf8xbgsApSGJcgTCbwABUiT6N/87wfv1EAAVROfA7D5XNEoHABJU3u/B+gEBaDQDVEueCwQYYN7+/Vv+8gcErkYQRTcJAL1khHTAwYwSABOu4Po0/kA+/lfC0wAVZ/vEwDvB/YNH+07BwP8FALOwF8RICABheHeQBcGYCQHkeBzACMVhhX6KwYwLABJH3PlB/kHACAC4qxZAylcEADeDaawKBGKIdMHBg8JIBASmliD//gcAAIkayj7AIwCujNk1PPX++//+/cA7/sT0w/7B/v76OPzFyv7+///+/8IAE5rlMFYLALhDIMRBwMH/MRAAZ50aOfz//vYn/TgqAwpOm2mSeBzFb597k8Rx/8TDAIZrmsXAxcGFBMXqmSo8BADmoSQFwAsKdqR3p8XAAcHHy8DEw8EKAAumI0rB/v38/wvFmagQ/vn//Pj6OSAJCnCtZ6XDiAHChwkBirGDxwPFl7IW/QMAjLoXOQMEH7xDwAUAtHg3+/T2BADEvTcF/A8KaMRGxsDEBJ6cDgF/xCvCxNcA7cYs//78+8A4wfnKwf7/wf7ABAwEQ+M3w8DCxQSIlgkBFeRDwATFJukwKgQA/f9aO8AAGwIDUycEEP4LL6ACEBgPScHXEQcZX/5MwP7+mf51agQRBB1a/YkPFNQjaf//QML6hcUOEAQrYDIE1Uw8fX0DEP1AcAUNFNxDd1b//1sGPgEbAElrwEIK1dVJfcFbUcEFEBJTaTVTQgALQwHFAA9PUwA=', 6, 1, 0, 'BWXP203960242', '2021-03-12 21:41:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (16, 18, 'St1TUzIxAAADnpwECAUHCc7QAAAbn2kBAAAAg0MfWZ4rAO8PdwDoAGeRcQA4AOcPdQBJnvYPmgBZALUPTp5kAOkPjgCqAPaRuwB2AAYPWQC2nvwPdADPADUPy57eABsPrAAhABGR6gDtACQPsAD1nvEP4wABAegPup4DATMPeQDGAfeRNQAWAd8PfgAZn68PjAAiAf0PhZ4yAVYP6QDxAT+RdQA5AVwPYAA8n04OvABHAY4NyZ5JAUwNIgCPAWSQYABTAdwPfQBVn8gNsABXAYoMn55ZAc4OqQtQj9iVdX+hd0P2tYcyZbZ58YvC8y4FZuD4ezJvdwam/5xpYIaS82sB35sBjTMT7wy37WLn0Zx69M/93Quz+rV0aPue4CMVaPrtlM7yxfxSAnq5JpTX//oXiYY7IB2EQAS2vcOhNnqYcZLzkX4qY9dnlnur3PJF+SFY/TmWr/G38AMR3Al9HgckQQZhA0SDOp6AhJH9uQBchqFi6oojjxMPu4CIFqoTNH6BgFh+LxQMBbGBsYFEg7KZ3lEqKCAzxAILhQUFAFcSbQRaCp5rEmnAwMAFbwCeeRh0wgMAuR9zXgIAlyBw/8wAcLJxe3DBCACTLWr1wcHDAwCW6HfAjgG3NH10eAR4QVwLAGw6a2sHRcGXAbo9esDBonMMnq1LesDBwqB+w1/BwQwAlleywsNfwcHAwMJDwQDMyYJpDgCYXahWwl7BXcGMBAB+YIMZBADKaoBwyACJ73HCwGL/cATBE563dn11wHAFwMNfaBMA2ouMBcHH7H/Aaf94FMXelBJtwsDCbmW+wViKAd6gicCLRsFxYcNS/8MHAGWx+d9BFADrspdMw8MawMBzc3MOxZi16o1Fcf/BwM0AoykBwP/+//wHDAPmzPDAK//9/cALnsrgFv4+OM0As3oO/ixdEAAi6p8IwYmAwGQExevyvEAPAHr07ev9/mH/KzYUAQMxnMPuw4uHwnjBOsMXnuH9pIzFbLBS/cLBBhB9Au07/BmZEecDKUHDPggTfAQwWMAmCNW7BbP8SzYEEDDfYMNfBhCQHyf64sAKjokia8P+woLABY6PJkD+/TvAEIS0XWgEEOY4+EQHjuw4NCsFEEA6VKAYEBZK6cI7e/xfwTD9/vwqO/9IYxQQsVPMhAPAx1uWwVjB/8GZAxPAVmf+FBAip+JK0lYd+isiEtUxYXzBYkz9/vU+/v9ewftSQgALhgEDngpFUgA=', 7, 1, 0, 'BWXP203960242', '2021-03-12 21:41:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (17, 51, 'Sv1TUzIxAAADvr4ECAUHCc7QAAAbv2kBAAAAg2MeW75IAPsPtACLAJKxNwBhAGAPEwBpvh4PnAB5AE8PZ76UAPkPbABvAA+xMgCtAE8PnACxvj4PRwDCAPoPkL7HAJMP8QAPAJ+x6wDfAJIPhADnvjEP0QDpAEgPYb7wAJgPvwA3AIixPQD0AO0OKAD3voYPjAD2AEwPT776AIAPKwA4AN+xtQACAYMP8AAEv/cP1AASAb8Por4VAX0PXwDZAXqxKQAoAfYPngAov/wPlwAtAb8P7SHCB6NzDneCCHAlC2dHa2MTO5PYKZaHz/jvb6KTulDXvOO+5c3gFt1xVBM6EiNa9DWmvBNIJQLl808RiDY2DH9XMQ7vF0WtKA29+mEHWER+DK9UYQXl/8MIWqR7aWauTQkgAR2sYLylbAERcPWJQlcOIg0GC7vzkirw6q1SxehU8aHi1PlhCxIJ6Bxat3h7mvmy8iP25kFUB671UXx3+sldWwFOH4/5iIQ4wwYJ1f/j+QbyyFm+PyA6AQLxHD+6AaICD0YIxYUIQ/xBRAQAgtZ9ercBihMJ/ziDBgOGNe3/RwsARR8AQEHA/0QHAJlF9485EwApSOsFTP1A/sD9/8D/OsDCiw8As0qXjAXCiMzABwBUS3GvlBO+XUv9wP4+8EpmvQG4Uhf+BcUxYODA/8IEANqvHGa4AdZuImT/zwCbxo3BwsLCwwTD/LEBapP0/fzqWnDlGQAXltP+OsIplf/+PMFM/wRUDr5upv37/v6/wHF+BQBwrQ8pywBZENf8+yFScQUKA9avQ8LGwpSgBwOQrlNzgQgA8bFK68EsCABVtIzEwXrDxMALAFxzQMF7wsJw/8IUxUi9dyj+/fv//TvAw0HBwv/CRhrFEsB3/8E1wC7+OjP99MH/UsAEAIzGPhYJAHjFIsWAVxu+78iawEPBOsHHfsCfwsLAwgRi/rsBl8oXwHffABRz0cD/V8Aq9P097/7AZAMAQyIexr0BZvMJwgTFw/C9ZAkAkPYJB1FhtgFQ+wNJUcYQMrRowA8QOQoy/z3iwVtuBBDQ1X1atRGdEYBWTgR/AK75EXr/CRAVFnf8wf5eBBCe3XpFuxFbGoDCwQQIE0YbfcDCU8HBEFiedUYTEPskuMB978FUYsBbBNX/Kc47DxDLNnSPW1jU/gUQkyuABzgFrlYsel3DCtWUMsnBPnf/ERAyOn7KWP//VsH/gAsTTUN0VcBkWc8Q/Ppm/UTBwTPDEPHobP3+f1JCxQtAvwEAC0VSAA==', 6, 1, 0, 'BWXP203960242', '2021-03-12 21:44:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (18, 51, 'St9TUzIxAAADnKAECAUHCc7QAAAbnWkBAAAAg0EfepwrAP0PrQCCAIWTKgBcAOoPlABjnGQPjQBnAMEOoZxoAIQOdgCyAG+TKACCAOIPSgCcnGoPsgCzAE8PdJzAAOwPjAAGAFyTogDPAGgPXgDenCQPXwDfAJIPTZzjAFoOaAAtAFGTfwDuAEEP4QDznN0PPAD6AB4PyJwFAaEPRADAAdmTiwAQAZYOHAAfnZIPYQAfASkOSpwhAeIP3gDpAY+TsAA3AYoPkgA5nfgPKwBHATQPV5xSAf4Pm3t++9wHSwVeh5OLHwqdGqaDon4y+0aFgh3km16DgYEPAXCE/GuuCwvop/qA4Zp7Wg0u4reDTbiPImYumY03lm0fpHU1+048qESul+/gMbwGyAPlS5uk/D4ZIQT0C4Ec0f85Ern7DPIpgdPttQO+Bl+Hzpw0A4KACRPLFzSGTADh+3KBW1VdM45FIQiZ95IIFpLk9zIWnfqcC8l0qPim728EKgDcZJr2zf5VD/MYnWuG+GsQSQbLDziB/v3/fyA6xAIFhNQFAH8UfQWUC5yaHIbEWsM6BAM7I3pRBQB173RumQF9LQPCKckAu6KNwIfCxP0FiQicq0OJb8NJmQUDpEVrwoMLAF5JgGOYwH7DDACRXvNcKj4rBABMpWmHmAFQZGJZDcWJZObBlmnAwf8EBgM6agk1/woAt3V3D8HBwF0JAL929Lcq/gsAc3uownNcwWsSAOOAW4R748WFwW4OAE6deVr+h8D/ZFnJAJA8Afz9/zj/BF4EnIqjbcLDWsAArS2Rw6cMAHsF6f5h//wpZwoAVcH+YPrA/sD/wwcEAxTDa8TBFwApv67iiJHBlv/DlMBolQGLx2CIPDgEAwPKfcfEDABa0WgyxpB0BQCnFyRbiQHnzrGDeQTBo115wGQFAJ8fJPwUFADj27B3BMHCWMDBxcDDwATA/F4yCACX3kYBxMf7BQBb4FdVwgCffTXDw8HAwsEAY39XRwgAZOyTPFSZAWvsUMD9OgQD5vFJJQQAOThcPZ8RzwgawATVQAr8NQcQjhQQBcDD6wYQXSFtW4wME/og8P0oc2jAEEa/aEwLEK0zSWKUywYQWjbt/OrABoy0OAlYBBCWPHPYDRBbPPf+8mDCxQoQWE79PZPAP58RUFN9wgvVWFafSP9QSREQGleQFUJswGfAwcYQWcKCwwYQYmHGwMPFU0IAC0MBxQAI2VMA', 7, 1, 0, 'BWXP203960242', '2021-03-12 21:44:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (19, 46, 'Sq1TUzIxAAAD7uwECAUHCc7QAAAb72kBAAAAgxMgb+4wAIwPmQD6AAjhYABJAIkPaABN7pAPYAB1AEEPpO6tAIYPbgB1AHzgWACxAP4O8wC17n0PwgC6AM4Pe+7DAAYPRwAUAHThRADrAHEPCQD47hgPaAAAAbUPMu4NAWAPcgDKAWfhzQASASgPeQAU7yYOqgAbAVUN7e4eAR4PrADgAYnjMAAqAUYPDAAp76kNpgAwAUEOhu4yAQYOwAD9AW3j0wBAAVwO+gBB7yoPwgBDAbcNrO5JAe4OrQCeAfLhRAcDgD8LVH4Abu6Gyf86BzaCimSCB3MLvv+GizTpD3xrgXsK6HmCb2YJgYH+hV/5LeoDgTsOCoR29/DpJIkSCfORiAu1EuN51f9mEuMCqhy/9MuIOQ1vAoj8Yxz68lc2APVJjCbWzQAZEliCTu7Qmb2dKAssaTrj8/naesLHdf9P5dhlZR/+6M7XMtKAgglO0P8A9S51e4Qqpm5+if/qJiQVney18RC2AgkOzk8nyAfMGIZr2P2JfXWCkAVtbmeG//QKqOU/AuxNHJcEAFfZEGftAUoiCf4DxUUp4cALACouAzhcWL8FAHAzCUvDABXbB0rABgAW+AxoLw4AFkgMwQXAXrzBwMDACQCgSgq2csAEABVbNfrD6gEWXQx7C8VNXe3+wP7CZErOAEiKCFLAwMFVxgAUhAfBAwA4dsbBCe5ldgP/wVCkDQPWfgNzQ0VvwAAUZwHAWQwAVE0DVdBywRIAFpM4/14uRsBS/1sSxRWfE2RYQ0L/waEMA/ujA3tUU//AABZEAnYHAFCoOP9WEQcAq64MwZYGA7uwg23ADAC3sQOq/1h0BQDGfgzDtRUAFcAAwgU4bhH/SsDAwMAFCwOSwQAv/1NtzQB3LIJ0wVUMALnFBapFwMBUBACG0nSCFQAW1PRGkcBFEVLAwMDAFMUW5RpaPf9MwP2YwFrqAUHpdHwUxUnpGUU1L0PA/Tj9/hAEAELvcGnKABUe8cD/S8DBOEtE6wHQ+hfASs8AZxB2w4bBwMQHBQMj/hpZChBsxQA/Efz9PAoQZcFwwWF4xBAQNAosO0DE/sEhBBAsyWnBKhEQyA+ewQSMwyz+wsJzwQfVMROwwP/GwMQJ1W8Tg8XCqoMIEBUUIy4gHQgQzBbi//0TIQ8QqReXB5DHLMPDw8WTD9WmH2GDxcPCx8QHwcEswQcQrh8kO+zBzgUQ8iIi/jkNE0Ylif/DxMINxqCSCRBzKj3GAcHBKv4EELAtiZkFE94uScKcBxC/LyEtw8OZBBDOhlb4EwUQ1ERMF8EQQ6gxl1JCAAuGAQPuCkVSAA==', 5, 1, 0, 'BWXP205260321', '2021-03-13 09:56:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (20, 45, 'TSVTUzIxAAAEZmUECAUHCc7QAAAcZ2kBAAAAhIsfWmYrAIQPUQCPAHhpUgBkAAMPvgBuZoUPpACIANYPNGacAPgPbgB4AHlp1gC/AB4PAwDDZh8PtgDNAOcPg2biAIwOXAAhAE1prQDoADoPeQDvZi0PMgDxAIYP32bwACwPygA+ADFphQAEAZ8LfwABZ0UPfwALAT4LVWYjASAPwgDnAVdpmQAsAeUOqQApZw4OLgAzAdAPxGY1AWUPPwDyAZ1psABIAeEP7ABNZx8POwBNAdIPcWZRAZQPTgmCgytlQHvW+SP5+IuC5EaDhoIXcV4JD/em85v3Y/daf7fVVzcu85uHFAHWm6L11fxRAWv1VWKs65r4Ouw/VTr0C886v64LiBARfXf43fR5+VzrNplqJ4MzwfkbALqMtPE1Ce0J+aaichO/JREBG7fwZDjb7k5yvYu0E8pocPHmEPYiewai5EPuAfOqfYMWcRq0+pkD4RWwhqLkcIQxhsV7vH5GmHOTbQktCoyH9Z8wghkHooUKsXcZh98oLyBExALUQk4DAI4VEAQLBAYaCcBCwD4FBATsHBBcDQBL5AZRpv9dVQMAOO/6+WUBFjn0/wzFZTRl/j/AwFHBwQAQWAF2DABgOcb/T6dDUgUAFUc/wFBoAVhBBlNLBcDFmUwFAE1IfbcMBApKCUdXW//AAEkoe8BnBwAVpfRCpPwNAGhTBgX/QKb+/8BPDwCSYQSZP1M+wVIGxU9gHMHBwfkDAJJmB5kVABVo9ESKRFFZwVUVABV6NP9PNCrAOMBg/9EAEeTxPjhHwME4REFvAaeIE8A3kBUEcovxRsA2PjvAVyzBCQB2koO3w8WmwBUAFJPtOkA5IP7ASkr/EMUWn5ZOwDVMPsHXADD69TBeRlL9BEwDZmScfXKCCMVnmWYyVBgAFbsi/zGZSv7/Vf/+BMD6psE7CgBrvUWMxafAxMEEANsFGkhgAW3CA//97BIEDMJ9wMPChAbBx6b+w8T/wMXAANylH8BZDgAWAeI1J8EwQwQAygMexKYJAMjLIME6/l9iAbrOHkQOxbfVQsFGPf79/dsaBHTT4P8y/v46//uZ/8D+/sHAOv/6mf7++/0UANfe2l1A/v7BKf0E/MRSEgCG3pPEB8PBpMXDxMHC/gbDxaanBABf4fQ5/QtmVuVTw8WSVsHApbAOAFzoSQHDxqXAxMLGxMIBwQNmses0//z/Pv0AZu/sJDQJAHjtLZv+SxgKAIoxoMClzcfCxv/FwgDbkiZLQQYALjBJxqatCgA19UNIwIelCADa9SvA+/0lRwHK/zBA/Dn9+Kb/OztG/f07/vibJv38//wG1YkEwsPL0cIWEFQe76PFw8HEwp87xMaZxMHBw40E1RshUpwIEL4lVzn8+aYrCBBTJiAFwoymCBAtNx7EOIHBmwsQQzscdQb/+/YFEBJBMIfGEP8iUv4KED9L0nKXJAIQLU4ewcEQOTcdj1JCAAuGAQRmCkVSAA==', 5, 1, 0, 'BWXP205260321', '2021-03-13 10:05:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (21, 43, 'St1TUzIxAAADnpwECAUHCc7QAAAbn2kBAAAAg0MXiZ4pACkOuADoAJKRiAAzAJwORgBHngoOuQBGAEgPk55aAIUPnACeAA6R2ABoAJUPQwCKnoAPUQCaADMP456cAJUP3QBmABuRtgCrAA4OZgCvnocPywCwAEsOnp7TAIEPHAARAHqRYwDgAGsPIwDmnpQPcwDtAK0PlJ74AG4PlQDRARCQRwAxATYPWY+ivV6YLQZ3aKr0q+kwkR4aRXFki0J5sP5agWMIOXuq4bfq9IsSBZ+BjJYmASt/Jv8O/NDrfnbDj+t/hX5OlV+LPIbRjicO8hd8gWr6+XmHBgFkfIHZetX7A/5FiNp0DxPnh9ITMpsq/w/vmwtif6idtP0m/gPpkF+hlNvuMacTrfKXIE0+JxvPSEb/IDifA2khxQwAVwgQX//AwS9TBsWtCI3B/sH+DABPFQpeKkpFBAA702tymwGAGQxJDcWAIpLAPzjA/2TGADe6Zv8MAI4uyUtXyP8DADU1egYFA883d8H/wgbFYDrpwMFCBgB4/AD9X//ACABnP7LBVV7BCwCHQgY6wD/b/gcAh0gQvjYInplZk5bAfJoKAz5YCf/+wjWRCgMSW4Z4dnMKxaBckv/AwivAwNEAG+jx/1NLwC+JQsOKAReA8EpM/v9QYcFRCQCBiEaQZ18QABWL7UaW/sNjVlMRABeTNcDDYUUwwENAD8VVlm///kZEPmDAAE4FdXAKAFWbMjg1Xv4EAOSfFwX/Fp4Uoen+wf+Q/SzZTlwEAOCk0lUPnp+rhsCGwDrDw/QHAM+zF8A6WxaeFcHnRDZAO0zDXv7/WxUAFRTtY8pAwS/9wf+WCwMH04PBeMFwBQcDwN5xe40PAKPf92E/MkD/wP3QABt+48D9/8H+Bf/8YMFBwf7A/q4SA33ilsDBwW5EeMMZCQBg5G3CBf+DkQF36/czRjo//bgFAG/sa4TOAHFvaITBw/7EA8EPnpL3esOdwgHEwuULAJv5Bv/0wP3/FwAR/dcoOv/BYkYvwDc4C8WT/u6WqYUJEEzAYIM/wwwQkA303v80XsH/ChCZEMP8/txZCBCRFUADYICXEZkYCfo3mQgTGB1AxXONB9WeI7fBZMEbEQPhrYpew2qMwcHCBMFO58WdBBAVKYZ1Bo5ENjrDhhjV+zQ3wX7DwHzCAXnCX8LEicMVEDtepF7BTcB1w8YBwMZdmMFSQgALhgEDngpFUgA=', 5, 1, 0, 'BWXP205260321', '2021-03-13 10:08:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (22, 66, 'SrtTUzIxAAAD+PsECAUHCc7QAAAb+WkBAAAAgyUeQPg7AHwPlACfAIb3TABgAHoP5gBn+PYPeABlAMEPmPiEAIUPQQBLAGz2LACYAPEOEQCg+BsPJgCnAKkOffirAHcPsgB9AIb3NwDGAGgPtADL+IAPOgDNACsPv/jZAA0PzQAdAIn3ZADdAG4P6wDl+GAPYwDtAK8PKfjyAOcPhQA/AGr3UgAAAWIPNAAL+RwPOQAVAScPXPgoAVIPkgD0ATH3iQA2ATYPYgBK+SYPRABPAYwPOf5ihSN7boDzA3j3vwKGhw57Q3+wcWZ9boACj1qAtftaEJuAgYKzBdwM4IR9hsuIF5asaboP5XxCBTP9WQDm9Bf2MnkjbiEHRX5mCMb9kBbR9E8aPIrljyMKdnwriUf3eXxfB7yJWATp7mYOqHzyj+v43fx1CuMBZnDLBWr6pgFz/5Tx/PqGgPL2zpcA68b7hoBO/XeT5QvDcz4fvP+3DNQZOQdiEdrnO/TxCe7XE/jza+4XWMxHJCA8AQKrIiP+AZ4uCf9KygBP1wdHbf7BRp8KA4YuBkz/wf/9EAO/OwBBwz//OlNR/AE/PnpPFMURTPjCS//BP/6YPWn+AZBVhsFawQA8qXuLCQCYWsz/wzj8wVUFAJCZg8KyBQBTWoOIxgBLmHzCDAB8YsU4RbLACAB0ZYAFwsOfDQB7aAZVO1fCsxUAFoDw/4HALKxL/sFBCwBdhIWMc28UABaKNUbDBzzA/sL9XTo5B/g8jHR2EACAjf45P1c+R/4Fxdim4sFCCQB6qLjCwgbC/nYUABVv6f0Gw/7AwEP++0Ba9AGCqwA7RzrBNf4Beq56dsHPAK5Ph2/BasAVxRW5H0BHRzg+/zppDvhqwPpEwCk7Vxf4FMLpS1TA+zVIkgkAY8RxYgRkB/gzxW2EDACwyPQG/sL8O8L9BAQDzstpXQYAbQ53bDkMAMrXjHFAeIb/AcDZDzXDOAgDmdpxwXt7DsVp3wz+PijAQsDMAGIZbHTBwf/DxgApHmjCBAAs6ptbCPhg7mlxbcABwgj4g/twk//CBcHDOxAAV/zpwTj//jn8NT5TCBCXBGM4wcHAmxgRwSahoXPChnyBwb55BuhcLVbBmQfVljPi/ML+jAUQSzM5PFsFEJQ1K5wEE387N3caEQSEq8CpbsHBw8HAAYRfOcF7FRBGSwr/PMv//C5KQsDGEKq1JsEZEQNPbsHCOf/CacKLwwHBw4vDXBEQcWFy/v3UHf42wGQV1f9iXMBDwsD/mwfFw2/Ahg4Q1mZnwf2SxciykhQQrGey3zL8/fz//AXA/AfBwcEPENykpFiBrqDBUkIAzkMC+AELRVI=', 5, 1, 0, 'BJ36195260254', '2021-03-16 18:59:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (23, 65, 'TeFTUzIxAAAEoqEECAUHCc7QAAAco2kBAAAAhE8vrqI/ACIPmwCEAJWtiwBZAH4PaQBmoi0PXABoAC8PjKJxAGsPRgC2AFStzAB6ACcPYQCPoqUPfQCPAP4PSqKaAEAPxABhACutMgCvAEMPdQC2okAPwQC1APIPbqK2ADQPuwAHAEetggDDALYOYwDAolAOywDQAIQO3KLUACsOkQATAMasQADeADQPmgDkoisPnQDlABQNoaLtAGwNtwAoAM6s1wDvANINDgD0osUNgQD1AM4Of6L2AKkOngAyANmvpAABAX0OQAAHo54OhgAJATgP36INAXEOswDLAe6swgAVAfIOUAAYo54PYwAiAVsO06IjAXQOgADrAY+taQA2AYgOlQAzo3gNXwBAAacNiKJXAX4OsgCeAQ6s2JCe+cKnLHBNtR9lRRbd78tV5hMTDQKdBZ5bg4/O2O5mMAZC2GpusEYX9v6i+w+Hephbavp2FtCHmp6pq/1iDvryXPi9UJ/sJgVzEIISTa5oAZXxnfTUCNVaYIPu9poP1Azhp7j18fZdhwtlAbMsEZWTURgYAfWt5OyZW6poIPFhrKBzUgwD8OoC3lp3gW4izGco9VGzsZ9skxml/GG5qxRPLBNxqyxjvFVE/ZKY6GZsbKmzzaL9DAGtCWN40WANrKMhlQARGASUlIX4PGL89Sn3WP6Bg8mjbPgxzzsMIQilgkSDgQREF4oAGRmEJy6e1AalhqKOrAbdTYfsWCux7bwSGboE8uXf/N9w6OJmC3a696P4O44TIU6bnZDSVBcfJJkAAkobUgnFeiAiwsN0jAUAfCQjyQQAxCcgTMwAe46HpITBCABCLxdc/kvBBwC16iJc9gYArTUc/zrAUKsBrj4gwP8FVcWvAZdAl8LEXsDGYsDB/wkAq4cixODBYAQAh1VDqgCihVqAqQ0AS1seXP///8E/M9wArPyhkMXDksCrbcXPlsEEALBl7EYIoqpmLcE3wjpax7ABWmxWwmsB/8VjdMCdwwcAQHBzZ8XDiwUARbJWh6YB0XwnZATFzHqLaAcAiYYnOMD6X/0RAKKHqQfBw2bEw8HDwcEFwMQ/BgDJjinABVgDosSQLWRkBMV9kZ9/DQBOn0AFwmYqxcDBBADGbS1AvwEhsr0oPgT++l38/P08wP4F/sdiwVHACgAwd0l6YsLCwcALAPCyOffDwcPAw8POALUWPP/8//v7PP36XQcAwrg0MT4IBMq7OsKIw8rAAJYfvMHBwQUARpUz6w4Af7+x/gX8+VT5/DAiAwBjx1RdAgDc1ivE2ABEe7zAwDBg/zj+/4EpwP5c/8DqGQT/2rdF/zH9O/v5Wfz//sD/wDr++owSAIXcrVU7/vlf+/j8LkD8wwA7QzzCkhEARSQ0xGf/lpPEN8I6CwT/4jCNwcKpOgQEweItlQUAszRk/2L4BADb83CyBQRS+4DCxP8ExbP4xf78CBDuA0XDcpIGENMgd2iPCRR2J3D/T14L1ekiz8H//sE+wTgDFPkmD8EKEOb3aS1gP8AJEOJCtf5OYmADEL1VfToDFD1dBv5SQgDOQwWiAQtFUg==', 6, 1, 0, 'BWXP205260364', '2021-03-13 11:44:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (25, 53, 'Sh1TUzIxAAADXl8ECAUHCc7QAAAbX2kBAAAAg4Maa15zAIYPKgCzAPpRLQCKAPkP6QCWXmUPUACcAN8Pj16fAJwPpQBaACtRSgCmAGoPjgCxXkUPNwC3AIsPnF7HAC8OYgAOAD1RjgDNADQOYQDRXq4OxwDiAPQPel4BAUsPrwDAAT1RvgATAT4P7wAUX2APSQAZAZkPol4gAVIPPAD3Ad9RsgAzAcMPXQBMX+APYQBUASIPtV5aAe8PU2zm7lBBxAHGlKviDZdGX5/i3G/abPf9u+2w2u655XbTbyA22I6i+q/1LVNbdXgf/N+1+cAuKlMU5+btgIME/BlU5/3u10YP+ARW2M/7gINdfiOC4dir9+sEU/lm8jhQYAGW7B4PJAGxspN9IgRKhIZ/et2r/BMSUZLHFB1KeINOfMf1mHKN2x/msvSCIq6QOFOWCkuPIhCXLkTBb1iTAiAvxAIHRCYJAIgtHgY2/BcEAKsxFzfBAKBrG0YIAIY41v/DYMAIAIE8Ggf+Vp4RADZH+jY7TP0NNgoAhkoTOsBAoT8UABlT/QTB/hj/wTVKPsDQABkC9lQ1QUdPBcHDoRUAO2L9/zv/NWBVwD5cFwDcZfNoMD7AP///BcD9nlYFAC5x+gUpDl4Yde0wLsCFwBleL3f6OP8o9cI1D03A/P36CMUvhqky/jsKABtC8MNvKP8QADCMMv8pof////7AVwUKA26V98D9J/87/wBeKJlnwhQAnJ8UeTxUJ8D//zh4D16ooCREwFH9CgPRoCf/R8E+wwCm/ShKwAcARmNtwJ7ClA0AT7XywDFw/sAxDABIc0PBoMH//v/+wTn/Cl41u1B2wf2VGwNNw8/9//78Ov7/o/7+//7A/zrAw6P8///A//87GQNHxdf+wPz9Pvz9oP7+wP/9wDjA/KH8wMBKDgCkx7edycnGw/9GO/3DXQEVykPACcVfzB3AO//B+w7FZcxp/v47/y7BBcAPXo/QN8A9wD44/FkBk9At/zsFCQOb5zTBRf04wwDIuCxLwQwQeMFD/2b+/MQyBhBoCUAA/QMQswk6OgYT4xdALP4KEAYWOZ4d/0MFEEjbXkJXEZ0kUzAwBAcT/SRG/P/9RsEQlw1qRQMQsl2xwFEcAQtDAQAAzkVRXg==', 6, 1, 0, 'BWXP205260364', '2021-03-13 13:50:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (26, 55, 'SnFTUzIxAAADMjIECAUHCc7QAAAbM2kBAAAAg98WqzJPAJsPmACjAJU9QQBrAAgPrwCFMogPugCRANgPjzKUAJUPZABmAIQ96ADDAJwPtgDIMosPoQDTANEPrDLVAJIPNwAcAHA98QDhAB4PiwDtMnQOLgAAATcOrzIRAaEPVgDaASI9MQAnASoPfgAtMxQPHgA3AeoPVDJHAaUP2gCCAZc9PAcfgzcLAP80MhJ6k4Gjg0p3QTYL9ZOB44jOiqi9fw1eE+t4BwDtxS//HoBbD0KDqTX+eFsVcYQyjKRFcIAz8+f76wBZsAbrGoTvjy4PqTZ7hUdVen0LylmwD42jE5uPH/qhTBqtuf5OCtM6GUeLgieHNQbaPly9n4Z7fWd7T4KQxbZ71v88IPYBATsbthAAVyjKwD1SWmvAEQBc8RD8Z01kVv7BBMWjMizB/wMAhTTW/ggymTQc///BBP/DQQkARDgG/v1dBDJNQwz+wUPIACB1Aj1EVTgTxRpNO2lPWP9VWQUHAydaA/9d/gPFG2Y7wBMARGkDhTj8ZMHBZcH+CsWcai7BWUzAEACBbwVzQMJFwFkJxR9wMj/B/UwFAOt8AM1SFQAkhv06//x9TltkYMEWxRaMz0fA//5X/4/BR1gGAL6RF/+A/wYyu5UewGcGxRybzz/ABgAepD84wzUBaKQPPGrJABWA8StAQf8WxRW4xv44Nf///gT/w1bAwcHBCADQwvRzTggAFsv3if5NPAF3zhD9RJzAg/IPABXW8Cs6QP0MwQMAM9d6BwoDkNYc/8DAwARyCTI62ABA/j46CQOB2R7A/8FiOgQDAdxwwMUFAI/rg/aXDQBS7wnu/mFVwAMASvF0BQUTGAJaw5oRENQIzM8m/f8xwEKkBxMmEUN0xP8I1a8QLHnBlQoQTtore/PAwcP/ChCeIyFWisDDBxAw6C3AUMMGEL8tEwXAljERvTIawhPVVkKVwfz39P79BcDC8sDAw8DAwAYXE2FGnsD9+/s++vjN/v5ri8L/B8LDMRHeSAnCBdVaShDDwMMbEP2Rg8IH/MD/wMBZB8DH9MObxnbDUocACHEAAAALRVI=', 5, 1, 0, 'BWXP205260364', '2021-03-13 13:52:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (27, 55, 'StdTUzIxAAADlJcECAUHCc7QAAAblWkBAAAAg7kcf5RVAGAPoACxAOmabwB1AOEPCgCGlAkP9ACSAEwPwpSiAP4PXwBrAEmbfwCwAOEPmgC/lM4PxQDAAMcPOpTLAFIONAAQANGaygDVABYPjQDelFEPdQDeABEP2JTnAIEP5gAuACibqADuAN4PcADxlPEPpwD8AJ8OkJQAAdIOxwDGAUibewAPAc0PUwATldgOxwAQAY4PtJRVAV4PKACdAeSbRwBbAecPt4E87GKDN4yn5dIJcRWi+eubygxDggi1h4JvjluLeP9VbL7peXw6aFr4IQwTFOsMcYRj8AkWtO45B6qDRYNWkiOGgIO9hl4FIoKMlobtwYIQAgkWVwYuh9ME1Vui+ls56K/yFXvis2fohAUPHBc8mLIy7HwNbJ2JLPim7RgHdAPVXnvwtmOg/6d0YQhAgyqb9QPiXc7yKhfQE+4XngB/H6KbHZRyH38Twu3dCiOgAAIiHHASxaM74IZ1YlhaxdEAqals/5PAwf+vwMPxw18OAHtFrMDB7FlWwQYAqo1wj2oFAGFMYHPLALDEdsPBZH5rBA0D7FdgasBkwJwDA1FXAP8UAL2Sd49UwX5iwkZdywDw/ZGMd8T/eAUHA3pvjMHCwo3DADnkX8FkBQAvt15zkwFBc1xrW80An+JmwsDC/sIECANndox5wnsMxfuCBMPAl8HB/0IFA0eEA/3A/gvF84UEwpHAwcFd1gCNGV9rw1LBS5E7DpTxkozBwaIEaXSaAAOekHfDB8HC+38GAMSj9+b/GZUDp5PCfcO2iXdW/MA4O/0ExVuzx2gRAHuzVgR4/FQ8Rv7AwQfFtLt5//3+MhABxrqVVY/AxcHBegRaDJSzvmSMc/6eQAWUxr/6/P1CyQBeVE5kwv1MQcgBB0WhiMTDw8EEwl2SAc/UEPzB7gYDpdhXwMHAwM0AR0pWbf52CACM4ExW/FX/DABzJ0lWVPzAQP8FABzikFLHwgMA1+dMxwqUquna/v3+PP7+VQoA3uop/zoz/GsyCwDp7Ss6QDa9DxCXANrDO/8nb////CUMEG0AVc7BO0EKEJLAUFKhMAoQxQdQBcA7VDIIEMcVSYX/OJEQAhg9RQbVulNHwcGYCBDUyTrDtlgVEHZj7QZ0wvDB+Pb6wP07//1V/BgQYWTwVX5YVPr9+Pv+/gX9w2r+/lJCAAuGAQOUCkVSAA==', 4, 1, 0, 'BWXP205260364', '2021-03-13 13:52:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (28, 57, 'TftTUzIxAAAEuLoECAUHCc7QAAAcuWkBAAAAhGUrk7gRACwPUgDRAIu2TQAhABcOkwAjuJYORQArAEIO17gqAK0PsACAALW34QBFACsPKwBIuLAP0QBNAPUPj7hfAK8PxACkADK3tAB9AEgPKQCAuD0PfACVAGYPKbiYACIPRABbABi3YwCmABMNbgCsuGgOnQCpAEsOa7itAJIOkwB3AI+20AC0AM8PQAC+uIgOrgC6AB0POLi6AJ8P9wAAAPW24ADJAOEPqwDOuI0PtADaADQPebjpAIQPTwArAIm32gDuAPgP/gD0uIsPXQAKAUQP4bgUAX0PfgDnAW23ewAtAeUPpQA7uX0OkABFAb4PmLhSAfwOhwCcAQS2mgBcAYEOQn9jO8qXRXgp+YwLhDvFkz2IgIOkEKWx1XPx8NH7xIcSxfv/2oH2fXMHbcTA/AWDZYiIg3K/PASp/lGDfwPr0R4OIQqi8DeFCqyD44+94wlebs9ONBNGkAIZrAqKPWoS7f6yfLcIhTj7+FZwldyUkY1bVQfxJBW6RIABs8Tz2P9hBCAn3Usv+T5q4QBU+2VHYHFJTjVPa4SWxc+PCRIiJy75nUpEF+bp3Qdz/CaxSxim+2skb/l/QMb8cQUiDCoIVqG/fh4L9f3XC79Vr/QaGpr7f4bHJ6qPZIdG8nfqbMcHaL5s7pgjFxvEKIFZfjX+DX4tOfj+iYF1BpSGwD6Ega0K/5zy6/m7IUwBApAe1QsExAEcKMHARgUJBC0BIsAv/lfLAGq5Hf/+/sFRhSYNuEsCF0b+/4MPBBEFLVZAw0HpDQTbBxr//jf+ni8JuLAGJ//ARQT/VnkFALsIJ/8FBgR1CST9wEkExeQgn2EDAMUKJzoFBCMQJ/87BQBTFCl4ZAcAVhYg+FQAuBcm8CIKAJ8rJkdE/nEEABzo9PlFCgBJLxr+Ov9XeIwSABw67Tn8+UXB/1psw8ZwBARUOylfCQCyjDD64Pz//QYA3owtTXkNAChMABYBwMQ8wBsA0lAwBcEtRf3///81/+rA+kfB/sD+/gfFI1D+xP/DeQsA9VQt4IJ1CAArWPLCxDD+BACNYjS5EARwYjD+wfz/OiHERzDBCADDZP9P+p4FALiBQ/8+CQRViTT9+sDAOP3FvQEZjivBhcAAFygwwocRAHhUosSGwcPCxcbGBMddvQH7lkYqBMQDqO8yAwAxmiAFBASUnCd2BgBIWx6IeQsARKIkkkuYCrgTsiLD/8M7w2B5hQgATLgQBYaUvAFIvBfDwMYARAYbwgkAE8Dbw3Z4dAsBAMlxoUHE/wgAEsoag5/CALjczGkzDgA51nDLwf5MwEcExRXTtFQFABTeDI8EBbngesDDAwDQ5gh4AgEB7X3B1QASVwjAdlrAZLsTBK73DH7/clqZwEK9ESQDA8BcyBEHvntDa0JLBdUbCUVNEBDhEoMHUVx4wcL9agQQJxl+/wUQqx19wjoEFKYe/UQGEPXngMbzBRCrJ3RDzhDploFdwcFHwsYQcpd2wAcQ4Tu4ZXK8EV1Cd1kE1YxGxXQEEIxJcOgFFGxIg8JqBBAPU3CCBhCDW4nCB8JHuxG5YYDBUocAD/sAAAALRVI=', 5, 1, 0, 'BWXP205260364', '2021-03-13 13:53:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (29, 57, 'TT9TUzIxAAAEfH4ECAUHCc7QAAAcfWkBAAAAhKEmXnwcAIAOwQDgACRy1QA5AKIOjgA7fHcPeABGAEEPL3xGAPYP0gCeAKVzywBxACcPBwB5fKAP0QCaAOIPQ3ycAPEPgABaAIlz8QCkAKUP8wCxfFcPtgDFAPcPl3zLADsPlwAhAEVz1wDqADMPtADofGIOMQDtAP8PznzvADcPIwAxAD9zQQD3AB0NuwD8fFYOgwAOAZINI3wVAbsPVgDTAZRxlAAbAV4NGwAhfcIPzQA0AQkPfXw2AeIONQD8AYtzLgBBAQEPBwBHfeEPLgBKAUMPzHxTAe0PjACWAfVzbgBVAfAPlw0vgWaPgYOXglr7hfsjASd+goAb+ReIhhCnBX+TR4BrB4p3LX6iAfcCtfQoipYDuXzLfLZ+Z4QGiBYDLJ+XGt67J1R3nspfbvx6B4ODBWeqHn9jy/my83/8RP9Gdfaw+Qum7H/ixIPyAItzPQ2PDhJatABhHZKC+Qf/eNL5NQBJI0eA+Zno54qOyfWkAgpkRPrhAtb2R4Ci3vsumnbrOLbUuXaHfs4LIfrb5helDO2ZCv7gK/TCjYOGTJNBCWPWwAJZdztI0fS8FYZiwYbN+bfOgAxeXGYtDQM6EUISiX9fECdj/3k+WxlcOAECkR/+zwC2fhI4/v/BwAQMBPMFBjVB/cKZBAS0BRc2BQCJzgzERxAAYhMAwDv/RYP+wT/AWwvFYh16Ri8+CwBe2gxsQkMUAD4t9+vC+kJNQkL9CwCJNASDQcA4/wYAHT0jGP4EAE8+AP0IBABHEMD/QP7NAHA0gcCLQgYAE18gvEsOACNj7To++0z//0YFAM6xJMU/BADJdS1+2AAXBeX////9wTr/+oMqQcD/wcGDwPuCwPwKAMaB7Hj7g8EjIQATgyLAREn+Lv9HQsGOPSOBOycAEpHeO/7FT/zC/f3A/jrA+4PBwcH+wP86//mB/MD9///AOv/HgcEUABiW5IH++oP8wP7+//46wPu9/sEFAEqbKP8fewHSnSfBTDgGBACgk8PFiBDFG6aiLv/+Kikv0ACA3yX+/8D+wfD++oL8/sD//8A4/wN8M7VchIsFxTi9K4EGAGXAJDn8/oIeABPFyfyFPCeB/v/9wMD+BP/7g8H+/f7+/QTAJ3wYxtf+WP47/fmB/MD9/8BEOjv5vP3/S8D//FIHBCPHXMXE08cDBATGyS3A/g0AcMkwvMH+T/4kwckAkJtHwv3+/v46Kfp4AZrnPTgSxTLtv/8z/hwh/urAAXzb7C3+MAXF1epIwSkKAC7xhcLGusTFwZoFAPDxOb7FyAYAzvHxwPmD/QsAyPI3/sD/Vf4OAEDzvTr+I4YZ/SgSAE8ytPqB/P379vz8Ov35g/z6+/oJAEX8SIH8//3+/fzMEB1xMcPDwp7CzhAXcjzGwsORwgfDAGyWHlf+/QTVESBbpgMQ3ClaOwYUCThr/v49BdX6ORXBMAgQiFSoLfomBxDEVHdoAQYUnVh3wFpSQsULR30BAAtFUgA=', 6, 1, 0, 'BWXP205260364', '2021-03-13 13:53:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (30, 62, 'TXtTUzIxAAAEODwECAUHCc7QAAAcOWkBAAAAhOUgqzgdABAPjwDxAIc3ugBJABgPcABOOJEPtwBjAEsPmTh7ABAP0wC/ABs3mAB+AIQPegCCOJUPOgC8AJgP0zi9AJ0PsQB4AIk3cgDFAF0PVgDNOG4PjwDYAJgPTDjbAFEPtAAhAI43mgD7AEEP+QD6OE0PngAGAccPSTgYATgPrADkAR02NAAoAUUOegApOZ0OMwA4AfoO6jg4AZIPKQCBAfw2ZwBFAa0PcABKORMPagBZAWUPUDhdAZ0PSwCaAZc3146vgKf4I3YSzxJs4Iqxj9oI7EIsBoYPsQJ8e1K50Y5WhX59CI76qeIS3HYG8if63U6nCXqFUgzuA2crZxJDFZcLoyDyyjMGKvA+AVYMWSybFALk7fB7AVIl3/R+Bh/0n0mCFrf+dEMiuTflWiwD/n4LNMNr6FJCsPfy7Kb6RH4SIBfbgQglD0tMeb4zjfMMnUjM/Boyevhjg397oLhejKdnDQ0xE/MdOkEq+GODmfWYBl40WQ7d/sHzJfrizM/piIt0quU9BTqXJNEGAFrHADn5BACaBBDC+w8ECxD3S0fBVDjA+z4BsxsTwP+QEgQhKes4Pv9EOkNHKgEVNO3APgX++3z8XUIKAIzxhsZWw/97FAAU+uk6x0pL/sFERcsAt36SwcNnbGUHFAQtSOtV/zU4h/5c+AYAvkoX/wRECjiwS5DBwmkFi2AwAblNGlPAjw4Ei2KQwIh3wAf+hy0BF23pSjj9/zbHQsDADQCXv4zHqHHBZwYA1rgeXMcXABN+5MA7U/t4/jFKwFgNxZWEu5HCwGppC8WdhCtG/lNkEAB4gJL5xf6OdGdgzQDGsR9KVhcAE1fkQHL/wCrAwfw6wPv4WgoAEqDgOv/FDkANAIBlBvj/NvhkDgA9ueD9//sfwf42CgCufJbG+5fCiAUANXhixUQVAK2/jMFUw8Wsw2vEw8GJwwA++FZRwggAtQQaxHtuBwBwxmBNbBQ4kch0w5d8VsHGRBgAEtjWNQVHRRZBN1j/DgBO2Wb7kZ3DZ8EIxUTYb8P+wV4DAI/eVPgOALDik8UAxMf5wsKMwW8YxfzomsHAwMP+wEXCx7jD/8PA/8G1GATP8Z5YwMHBOsOV+317wsB6DMWX+nicwpDAgwbVOAZoX/4DED4CjMAOKJwF6ff8ZARtAyitCBpScxfV+wyiwcBQwMPAUMSE+JCFBxCnDOfBxPmFGhEEGZcFTGz7wsTCxMPBBsCSs38GEEocQ2bAAChRHDePFxHGIpL5/GvAn8fDAcHHuMD/mAgQrOAiwF5sBBAxK1DbBxQALTfFcsMY1AMorsA+wMHCwgPIwPrCwsCWYsLBECl5DisEEGpJ4W8BKBlO9Pz8/8AQvWgWw1IEEBuR/fjHAhAbWgn/l0IEM0IBAAALRZcA', 5, 1, 0, 'BWXP205260364', '2021-03-13 13:54:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (31, 62, 'SpFTUzIxAAAD0tIECAUHCc7QAAAb02kBAAAAg38djdIoAHQPwgCfAIfdqwBbAAcPYgBp0ncPogCIADoPzNKQAIsP2gBlAIzdbgClAGEPfwCt0ncPdwC5ACAPftK8AF0PUQANAFzdrQDWAF0PCgDV0oUPpgD7AI8P19L8AIIPbwDFAU3dygAGAS0PuQAL00cPzgATAekPX9IVAVIPQgDSAWPcwQAcATQPnwAy00IMjgA/AXkPs9I+AbkPaACVAa/cUwBSAYEMugBU060PO24/A+rzfqxrEFeGwZC8hsDa1HBSePb0j4itWUr4Hf1SFbqMmtdjGTsOUX6MB3zW++nm7VobcYpOVA+KvHrN/18DEawbBwMAJtmvFfE5fyk6BqoTO+1BzF8bYFdJWpNRStqQ/6PxNK9NA6oo0Piu9S7/yQO+KiCuqfcNB7QTHsFDHQ8VNQjkCiVnAPOKxW6Z2BPF1zcTSv2ahmaNUvzgAoZp/dYPQQUFYAKt81ov4yXC2SE3AQJUH0wKA0EGADFURwvFhhIv/v5AwEQExdEXwTQLAHYd9zs8w5LABACLKHdCDwOPMun+wfrBBf785MFDEABTTCxVMC/B/v//wf4ECwNsV4nCwYz/B1QJ0qRbgMPAfwVqBNLHXBM4WRLFRVw1/sE+LjhABP4K0qxfCcAxWM8Ap7h2hMDAaxLFQm8w/2X+wP7/ODhFExMAPnriwDjBwy3+//3/L/4FPgfSp4b9JBEADpKMEYN5RVtyBsXTls5F/xEA1p9TksBSwv7AwcBV0QA2cuNEwP/AwDr7PS3//8D/wAbFbau2wMBODwC3b33AWmvAwFjAFcQEqXZyg8PDfMGuYsHbAb6vDCn+BTQM0rexd8KIapHBRMYABLWpwsE6wYERgf/CVsDBywB5Zd8x/ifA/YEOA1O458D+/v04wP7sOgoAebxeBcFYEsH/FQEEv2J0bHP/wsHC/X6WCQOuwFpZRMAExU/IssHAEQDP0lbFoxCBwXmACwAO14oXpYuICQCoHWCIW8AGANPZIAX9a9oB0vqTycYHw33DAXL800YzO/z/Lf/A/0wJAGD+TxOJw8DCBBCuA1QW/woQcQRQvI3BExcQ/ASteLzFlBDBfoCWBxALCSQS/ncIEHwLjHnBUwkQyRA9nb0HEx0ZLcL/wlbAEFjLUsAkBxC92jrBQsMHEMIfMLB1FsL9H6nAXMIBx8BBw8J5w3IP1fwudkP/xMPIxADBwhPDERD+PaSRwsIVzZHCwsP/BgQTXUIriAQQs4Ypi9YRWkseXVKHAAiRAAAAC0VS', 6, 1, 0, 'BWXP205260364', '2021-03-13 13:54:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (32, 54, 'TTNTUzIxAAAEcHcECAUHCc7QAAAccWkBAAAAhJ0mc3AbAJEPpwDoAJd/fgAzAI4PpQBxcIsPVgCCAMsPSHCFAIEPXABUAId/pAClAJoPmQCicIEPMACuAJoPeHC6ACEP0QB+AJ1/ZQC+AH8OnADOcBAOWADRAN8OTnDXAB0NVgAfACZ9hADaAJoO/wDfcDgN1ADcAMoPOXDrALgOyAAqAJJ+7QDzAIoOYQDycJkPTgD3ANkOuXAPAY8PqwDVAYJ/uwAUAYIPUQAScQIPLgAfAdwOpXAlAYEPeQDjAYl/owArAQYPawA1cYYPTgAzAVMP7HAyAXkPwgDwAXN/rgBeAXoP4AcHcToLagZ/BYoLoY/v/kcHUXyYCjl77Y+ljE2EPXcZceT6rXSZBfgFUwj6AD8Dwf3wAkIBG+NbKEtEGKaS+NMSJox/APYFZQBYZv1itPqIlL2ALQqw+tn8tf9RdNjkKArsB+AQmggHB4YfgYD4HEFryHoueJKERIDh7aCewYo6CDcNkgx/9WP+HRfPCTrlAGUy/CIAgQ5pecP4BQT1+YgG1IaI/GoAoYWwfqGOf4ZH/Tdi/X4ljaCB3ozyDj+KMPaNgyUGjINcCQVhg37iC69/QwaniqbukfGWcQf1wofbB79110Qv8zhQRwEChSGewQBLdQ5GBgBrCdZlxHMBgAkWwQbFoB5sw8BDDgA5yRfAjcBTYv5lBMVNCGBkBwAvGQb4XQJwrBkQQMAExXsYZsP/CQAVIzL9T7FMEgAZKgCBRPuwwUX/awUAbjAXsE8TABs0AAU4QyVScP4KAIPwE8Qncf4UABc8xmj6J2RRaiwTAN5FB7IqwP5l/sC1/1hlARdOA8L+Ov/Fjv/B/8D/wATAYR8UABVWA13zQMQoaXYUABtdxf/Fjj/A/0zB/5OFFXAUYwNW/v2YwEcqBwAWbP0+BQwEa3IATMBGL8AAEQ37NgcAWYDMQEZ1AUiEgHEPxVmCYMHA/0NiwLUEBDWKgHMLAGBUEMRH/8DCSgYAkZKHsm8TABai8PDANU7+wcH/eQbFWKLzisQIAKio2W9eYQETtNr8/f7+xI48c8EKAHhyl8fgx8CXCACAfxz7KsLBDQBhvEalrrDAwZUJAH16JGaydAQAXssTpQcEK9AawkrBCMV51eqgyKkJAFgQIogp/hQAhNapSMKjtcDEncGAwswASak1xMJ5bgTF2N98YQMAid4eBAkEJ94kiXv/BMXW5GOKDgAb7TQGi8SywMNn/gYAl/cesIEIAKj5EwSDXXgBTvskiMG1AwSS/APAEBATwjGU5n9tdwYQwcsDb7ECEJgUBsLMEPtle/9WTwgQOhxzTsM+AxAyHtnCB2AuIyDCCBHHJH6xPkkDEH0oxsEVYBopIMDDwgWAxLBnwjoDEOT0gMZkERIyJMODOsN2sGPAav8JEHszfib/wDsTEQOFd8SyQVZgRDcG1fpIBGHABxAWU8lidHYR/lZ3W8DDEK8sfGv/UkIAzkMFcAELRVI=', 5, 1, 0, 'BWXP205260364', '2021-03-13 13:57:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (33, 54, 'TbdTUzIxAAAE9PYECAUHCc7QAAAc9WkBAAAAhBksjvQVAPIPZwDSAO77vAAiAPsPIwBD9IEP0ABYAMQPgfRfAPMPpAClAGv7uwB0AP0PYgCK9PoPMQCRAKYPOfSXAOMPagBdAOD78wCYAA4OtQCg9F0PRQCnAKcPtPSqAAAPzQBxAB77SADGAGAPSADN9OcPowDQADAPd/TTANoPuQAWACT6RwDZANsPagDh9GAO5QDuAIQPevT0AOoPPwAyAO779gD7AEcPQgD79HEP2gAJAZwPoPQRAWgPHgDXAfD7sgAZAWUORgAs9e0PwgApARkP8fQtAeAPmQDoAeL6OwAuAfoPEQA49eMPLwA+AcUP1PRTAe4PnACRAfP7swBUAewPewBZ9fMPDgmb+RYDkg3G+5/zEwlifr8KZIOjhmOHoIPa8fuXkoSf+nL7NoCXfApzIpAbBGYJu/xiAEeM6YNG9CaCLIPNgWcDzH8Phh4D2/TOE+/n0Xui/2OECIHG9FsENgSO6AsO8ui//U8MaYUbACp/qPIND7qHVNYd5rSWmffa8fd/sTXkLjoJbX038Kf09EHJbr5/nP6VH9YhuH9KEaIEZuT/+2ON1Qpv8HuctYsmCVaGPBsS4IN+MQRqhGv5qgpzD7/0sfz4ioZ0nAp+hlp+gHrBC0N2DgFGi6aYIQprgIKA4f3vCk/m5PZBC44FnAk3+Eob/f1ZDtcEjfqXBUoSsfzQ9pb0KAh5BRr9tC7NQNYPIEoBAgUjDvMBcARiwygEAwRYDHfBEQDYyH3FC8L/wMJqZQdDDfSFD3DC/8EE/1/+AYYWa8BzocAU9L8WdMBnZARWxL4VAO4Wg8I6xfqWw/5+VsBCwADF1ftBFAD1KUN7xoVrwVjB/0vQAPvBjcJklHhqk/535wADPYbAwouFejZEWw0AxEG4wnU1wW1sBADMhP0y8gHHR3fAac8A/rqHwmrAwMEEBAQgVAA9AwDMnXrF8AHUWwA+DsWgW4CFcP/+dMDCAIWVZcBiwA8AZ2R0jITAwML+/5ANBA9oiXKTwf8EhQL0v3P9OP4NxANyZ4LCw05xDMX6hn1vwJCAFgA8i40Kxf/BxHGApf77NEYIAKqM+v1QB/QskGnCBAD1lWanBAA6mWRbwgBiaGN7QgUAa2FgxXAEAHCoV/+bBQS1q2BUCAC1b/36CijAEwEDrGWSdWaBwSn/BQAMs4JUBwDRsxD9hw4EC7WewcPAkgXFxDbB/wUAz7jSNRf1Bcipk5LDR8D7Clr/BABGyZ/9xv0Bpcvt/vo5/fnfDQCf0WLAiURA4gGn0ffA+D79+Qr9wf//KsA6/8U0/v8HAL3U3xb5NAIA6dkp/sYARyhmwgYAweBfycaLBQCr5WddzQC7Ejv5/0v+DMW547j9OED+wv/LALQdXTjA/v7BBUzE5wHl8zohRjr/N5D+XgQAO/q1dQ70gvx6xf5LkwYUDAFD/f0+CtWFB5nB/0fB/cLGENL/W8ADENwNk/8b5CMO8FJzdjrB+Ar9/f39/8I5/vgKVTUDEKETov8B5P8XXMEtCNV/Lo5pwF8HEP/uacQ0wUkOEL8soTD7t8H/wTUIEFAvcAtETAQQ+TmsRgHlAj1p/z0D1dE7k/4GEQNIbY7BAeT+U2n9SgrVJVH9wkx7wgsQf16HmcL9//+CUocAD7cAAAALRVI=', 4, 1, 0, 'BWXP205260364', '2021-03-13 13:57:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (34, 60, 'Sr9TUzIxAAAD/AMECAUHCc7QAAAb/WkBAAAAgyEggvw0AIwPrQC9AIrzXQB7AHsPWACC/BAPtwCSAFQPNvyVAG8PxQBQABnzawCYAAQPhQCm/P0PWgCnALkPwfy+AI8PYQAHAAPycADCAIAOYADB/A8PrADVANEPm/zeAIoP0gAtAJvzYQD9AHMPAQAA/SQPdgAJAb4Pa/wdAV0P0ADsATbzcQArARsPVgAx/TANpQA0AWYOm/xBAbIOVACNASLzgwBJAaEP+QBI/S0O5ABQAfgPJPxXATAOqwCcAWDzShMfByd/oHkqBx9yNnhKA6oMXnWLgIb7+XhkC4l8OHUm9/v0NIgJbquP3YoqiHOHLnGIg6L/5XpMgzqDbINSfLZ3RIA2e0v/gYCmBX9/pgFsg8aEHQkcjk145HrKfJMM+3R9e5sLIfpGGIZYMXCT8gsRYSJcCk2dUET95trsxxJ5B8OXEcAuoVd9gnxUkamTQfGkdRm9gICxEUESGPZB9mKA0fK5c0+JwgJQDj8T8gt639RjPAZHED8XA7DZPa/HniRL9OU6Av5bHpIDAHHmBv34AWw3DG0DxUg//P4GACdG+v3CDvx1RAP+wP8E/km6DgArSwBKmDZFPQUA1lIcwToEAyldGlkFACWb8MMA/g8AZFUDOsE1sP/AwMDAFMUfawz/PUpGQv+GwAj8JW/3wP5XBUwG/Fl4fXQFAKV6BT5BDACpeoYFZMM9wGkIALF71cA1pQcAWX53ZQYJA1yBBv1V/1XIALBviP7Bi8LAoMIN/G+V/f1K/+rC/b4GALuVHMChwAX8xpcaW8AHxWabgYVqDgBum8Y+SDz/wcBVCwCBpPTXVv7BwAUAk6h5fRUAGqntwAT9QdLAwP43wEXJAKI8jsF1aXIOxbzDc11yxP9xwMwAqj0NwP1ENwbFxsHmVcEKAKjGysD9Az9UEAAc1CxA/Dwq/1L9/xbFJtYIVkBB/13/Oj87/wGv1hPAC8WU3XVt/8F4whrFE+YbLP5G/y/Agzj8wj0ZEPxftAXB/D5ow//CwcAHX8KEgwYA1use/cEL/Fr6d8LBwwVdDvxl/QD//cA6/v4Bwf7+/gsQmAB3dMOGfxUQF8TpwwP+L/7/RP87/UbGCBDIBCdUh/4I7HMGg8PDjAP/kvUReggQwP87+zL0EXMMesGgZxcT7hjT/MD+/zs4Njz+/vzB/MAF/cL4EWQeZ7AV1RcjKyr+/itANPTA/vYRdCcJ+v068vQB/PgFENEu8cAo/xF0Lx7+DtWkLFWew8DEw8MBw8E/AhArMkzCwRBbtyGNBBBSTO6mE+xxHmTExMYA/8Y+xsj/yMKml0ID90IBAAALRZcA', 5, 1, 0, 'BWXP205260364', '2021-03-13 13:58:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (35, 60, 'SqFTUzIxAAAD4uUECAUHCc7QAAAb42kBAAAAgw8jn+JfAPYPcACzAGjtxwCGAAgPngCE4u0PrwCIADsPi+KMAG4P5wBeAIbtTACiAO0PDgCr4gYPegCqADUPuuKtAHcPmABqAGztnQCzAPcPggC34mgPRgDIACkPm+LIAPQP3wAIAIXtqwDRAP0PjQDY4mUP3gDmANIPkuLqAP0PnwArAHrsuADuAAwP4gDz4mIOpgDwAMUO3eL/AJAPSwDDAeDtjAAgAe4PkwAm40UP6gAnAfYPWuI0AckPmAD+AULspwBNAccNWQBY474OygBcAZwOuBr2jd+JeYPz/ACX9A62AZKGvIPp4puDgfq6iTuSZWKzBEICaoBTfmzy4IVqAN4CNJFpZjcBmoBmhFv5ApODgIYIMHqUf5liKYrRBoKAIH1an1sG0YlZhZsCnhtU/k2HPXJjgzwaFAnShMr8HHndHIcCqYotkicOjmaM/k4JFHpUfAqN8A31lyIQwwI1Yfp5DIp99cwGspiDhiZf0qDzg11hxK+/KWN1sHzxgjpaAqen38IfcmZu6KveZX40V31mFAhhispyWPh9YsJouparnAYbDat6BAIgNwHHGx+0DwCySHRtO3/CscMTAO5IhgZceB3AX8BlwQrFi1OYwMLAXWgHxe9SZMLBWgcAW5BrwRnFXwkA4li4dMOMDQDrX3pml8JT8AHaan3BXQb/ZmVTwwgAbHW0hWfsAfd6hv/BUcL8HXfCEgDnf0zCwSNqdsH+fjvBAMlhAjcGAFeJov9f5wHKiQlKCcWFj4VD/sCICQAmm4WIw8F7DADXZYPCmFnCVgMA22T9//IB/6GQcWxEwVUdBQDPpgM4wQDESoKIBADXrcMvD+KVrnHAe8A7w8KoDgCXs23AocB8I8HCXwQARXBtwR8JAKe29zCEEgNHtnfDwGLAqmrDIpwZAPjGkAWQgbBbi3LAw3PNAJkq8TM2DQDbD4zBamNwwQUAQg5nw7UFAK7O+i/GAOAsCP8JAKbSscHCiMDACACt1Dg9/CL6BwBF22IFdMHkAdrkiYTDwQDhBhEpBADi6dI4CeKi7PQuMf46BwNf7QYqPRcAOuyfIcL+h8RqwQVvwSLDwIMMAI0ra8KTdHkIAJvytXWB6BGzAwn9/+YwC/JJClrC/4sHCxNyHOn9/P385v//5xFVKkb+kcAQ78kx/y0TEPz4scGejJLChn0W1AM+WMKAw2yRwQSIYiIGEKVW3sQA0ckhDBCgXvTEAcXHJMilw8ISELFfuRz//jUg/f/mMQzytGTnqcXCAcbAQ3pSQgALQ8QAA+lEUg==', 4, 1, 0, 'BWXP205260364', '2021-03-13 13:58:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (36, 61, 'S79TUzIxAAAC/AMECAUHCc7QAAAa/WkBAAAAgiERsPxjAIcPngCmAAvz1gBkAJQPUQB3/IIPjgCIALkPp/yIAAoOuABLAInyKwC6AF0PXgC+/HsPvADBAFUPQfzSAFUPjQAmAEbzcADpAD4P9wAn/SQPlABEAV8PaPxHAaAPOgCMAaDzeIFmBf71sIXPdbMCcg1HCaqOS/XQfSF70fnAdtSKgIH5khmLRIF8748LRgk/I/IbDBBXOtNxehhqBVmzz/k/GTcTcAsMMia3Of/X6ebHlHlyhyfTZv+i+6Wn4wtfAHd/U33d+N4L++oBIPUBAPMcGQYAcDzFP/30AbhLE/9a/QUCjUMD/00EAHVQErAEAFhEd8GsBwJBRBbA/2gHxV9KiGpvDAB8TMPAOjz+wjIHAGOUenyiDACuXoxvB1LAmAoAmmKJhLV7Cvy3ZBBV/j3PAKObDVT/RsALxZBzenhkwoEEAF12BMIKAJB3fWaywHv7AcWEE0BKzgCIeXzAwnxzwdAAGnTqwExBQVMFOED1AYqLesCEuwgCQJET/zY0FsUStB5L/0DA/cGEO8KpAgAlumDB0ACVQIHDw8HBkQfBxKWKwVsVALx4msE9w8KIwZDBBsDBOHETALjCkKrFhm3Aj3AIAMABHjw8cgcAQNdWBMDGhRkAG+HWQvf+MDz9wf/+Mv87XQ38iOFXx8LDuWfCPJQLAJHhCTn8wI9zDQCM50Nmwf09wMHAhBAAtO5EOMOEwXjB/wR2G/wa8NfA/mjwMDoBOUTA/ggA3fdLPsP/xYweEDsCqz1bwMHBwsIEwsI/w//Dc8LBBMTCbcMaEPsZngU/eWPCkZGgdcHdEPzZmz3BTn3EBsPAPcSWw24JEPMmIJiIwAgQMSnow/0/cB0Q/S6agsFBPcPExMfFwgbCwAPDcMHBbgfVEjTXwn/BCxED+pD9uMFGwAwAkzQrwDzDWMP/hAbVmEXqbMEGEG5J0nDD+BETShpdA9U9T+bDUkIAC0PEAAL3RFI=', 5, 1, 0, 'BWXP205260364', '2021-03-13 13:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (37, 61, 'TV9TUzIxAAAEHB8ECAUHCc7QAAAcHWkBAAAAhMEephwVAPwPwQDTAHgTwAAhAAUPigA2HGUOdwA/ACkP6xxDAIwPOwCGAOcSjABDAPcPDgBOHAsPKwBTAJoOtxxUAHoPYACjAO0TuwBvAAcPVwB5HPgPcQCVACMPPRyfANkP5ABaACUTkwChAPcPVgCxHPcPwwC4AOUPlBzGAO4PuQACACgTrADLADIPKwDUHDMP6gD0AIQPUBwTAdYPJADfAQkSPAAuAYkPBgA9HV0P0QBTARMPjpyX+dcFRHtPgDtpPYsOCbL/RIMuZ34EnfYiiy8HapmOimsX/YZEg7vhEA6ef1/9IJNqncsGAX4H/PZ68W88d5qHbv8OBT8VMI9O/u4TDwXqCnv3qvGC7n7wp+qC82N/xgJe8cfryAEaEUoBFAlNHavFufXF84MCXeWYv1b6yP/oDdJeQQsxF9VHU/HjCAYRBhHfFy4jDlEmyIfrkoSqOD8rl3zWtdefl4j/A94vVnx3l7Kne8KSNiA7AQJXI6IVAbIId3laBQwEYhdpeMBSwJYEBNILd18EAHjUacTeCABiFGLAn0kDHJ8VbcB+wMAAVARmbRIAuxu4wY/f/v94a8BpwQDBAvz8wgYAveR6xIwFAMUkAzbSAO8ijXGAbcNyBXRe3AoAe0DtVOz/RxsB3ECJhHzIAHdeZnBra8DDxgDYUQ3ABwBFUJvAxNxwDACvU32wb8XeUA4BAlOQBMCBm4HBBwBJVJnAXN4GALdUAzeLAwQ2Vl7AFQCtnHpr3sDAwln/wqeAxhEB/1+PwWIFwsZwwQUAXWleBXsDHL9tBsD/KcIAsnN7hIguAQO0kHXixXDCwMNyscBulMbJxsTBwJZG+eP+/EH+BgB7cg3c/jEJAJV9MjTG4jAYAQSColfCamuCwML/cHHIAHGI5v/9wP/9BTA/FwFumF7CwK90+BABlJ3wKv/t/zQYAeefGjUJxTamS3LDXwwAlmbx+TIyRgQA5aPlRA4cj6Rii21J1gCSr/Aj/v3+/TrBxOL//sD+wP7SAQCoqMN4iZDCBsBz3MHCLxAAxn0a+eL+/jU+wSrKAJTe5fwg/v/9Ov753TIVAJTH6zv5++f//f/+/sA6//rcwf7+wP8SxbzMO/z//Dj/QQT+Nd4MAI3KV8GtO/vgIBIA7MupB8LG3aHEwcJkwP0QBK3MLfz9Pv+D/i/jDADt0zfBBP37J0D/BwDy0+g3NRoR/y1JNf7UAKzESDbAOCpH6QgE9vY9//1UwMEQVApoHSUQIC/WxYbdwIPA/8D9Pvn94f/+/sD//wX/+uP8/8DB/8I4/yYMEjEepJLAB4dS4ez6/VRE/fbCNhoRvzteVP3AEMEhVzUEEEFUv09WXgELQwEAAM5FVhw=', 4, 1, 0, 'BWXP205260364', '2021-03-13 13:59:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (38, 64, 'Sp9TUzIxAAAD3OEECAUHCc7QAAAb3WkBAAAAgwEletxbAIwPQwCpAH/TlgBsAI4PcQB93JcO1wCMAPkMx9yPALENhgBVAITTrgCTAIkNJgCU3EAO8QCtAH0LzdyuAKYL2gB9AKLX7ADSAJ4MrwDU3IAP7QDgAFUOYtzqAHsPrgApAIfTHgD3APYPogD43P8POwALAbEPf9wNAQYP1gDVAYvTmgAVAYQOBAAe3Q0OmwAeAcMO9twiARcOiwDjAYLTSgAqAW8NLQAs3Y8OuQAxAUMPP9w0AfAN4gDyAYnTxABBAQsPKABA3ZQPsABNAUUPn9xTAQEPjQCTAXXTDwEvBmsSPvIYKwbzCvmKBYMKNtIM5oIJZfwEjZFFzHVFKnEeC/r93urwwfbt2jdO3thoi56cNRq0e0XJ9AS6ZJL1vPzONgcEJRCK/G/pUtZHhTN+sfRn87QFOHzZ/ip3iwMspU6BpoWHf2qLNlic+0Z9poH/BU1bFAumhIaEpH4lIRNxPIJdBk+AxlZchrIBPIYshZFdzInJj7aEKH3eIqt8eYG+/S5yT9vUeSn5IX0MfkrXeIFSf0P/Ff8aKNR3HYXhjq+AjtCgCbaAeYEods4j9Ix1gV5/xHQBJcr018pyWNUgON0A/RhtBwC7QBAd/sEdCgBahAxXjhoDAFNJDAUGA/FQA/9TCQDrWwUjasBfBgDGmTArHgUAP2iGxAYGAz1rTMbBwP3PAESwB2BkKQMAhW9+HgUA7XQ9fc4AJ6H7T8BDVAnFHIorPEzABADVSkPCGQUA2486/wEDA1aQCcEJAIJXgEBQwQ0AHKH0ij/CHFIPAByo/Qc1wxzB/11EEADetPmH/8D+dkUw1AAYY/vAR//AVQRDQs0BFc70TP+BWFewEwAX1/fAkf1wHFT/wUQHAKPYgBx+wQUAXei4aQXcZOr6Pv8SxRfvK8A+wME1VZ7/Btxe7ndYCwBk84AceP5S/wcAZvT+8z8NAGz7+jr+X+lZDBCsBoOIQsMdZQQQgAkDOsELzHkMg3jDN8YQO9F2wQQQrQ7G/8LYEdoSDEoI1Z8W2nIqCxCZGUVDwLtbBhCeHQY6RQfMxR8G//wF1YclX8GRBBBHKLHBw8wRHy/rNcD9/nghdwoQtTGGBXRyHQUQ7DIrgMEQO+twggYQUzi1wG3QEVs59P1W+8L+HQcQykAQXjsFE5NFdG8JEK2Jg8EikX4GEKBRw//9HP4FEIlTegR2B8yQVgM/BBBMWXerEhAiY+c+BifDHP7/QFcREPdj7r4wVPzAwME6wAbMfWT3NFJCxQtA3QEAC0VSAA==', 5, 1, 0, 'BWXP205260364', '2021-03-13 14:01:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (39, 64, 'SvlTUzIxAAADur0ECAUHCc7QAAAbu2kBAAAAg2cdlrpCAPMPvwCAAPy1dwBLAPEPYABOunMPqABeAD4Pqbp2AAAPLAC8AGu0PgCKAOkOJQCRuoQPuQCdAMYP5rqgAIMPUgBpAGi1zwCsAIEP/wCxuuwPxwDAAMAParrLAOsPpwAcAP612gDfABMPfwD5ugwP5AABAdkPULorAVsPtQDvASW0xwArASwOQgAuu+cPsQA1AZkOhbo3AVcPowCFAVK0qgBEAUgOLwBFuzgPpYEGBHP49jXjBQYPhgBWgJxDSHilgQF3hIjCRC8IPQay/vuTNjhSf0P/NYIDgt1EMARWBHKGXIetuHOCsQBtBpuDjjg/gsKGTX0oApo5iIZaBqsFjIWlTy8GPoIrAWbzrUhr+ovtpvnTEdGxHxJ681r/3wntqb7xK3UzBfYPq3Vc/Knj2QgE0rVf4ZK2lbKjMTt2rogN7HI6CP8SR7AU9Q0vzPrM7Aqd4w/X398XCtfIviE7AQI8HckGAw0mbVb/DQBmKW7owP7BZEwExbss18H/BADGN7FcB7rDQPo2BwCdRHfF/8QEAMNHxlkOuqBLdMBnezrC/HsGAHJNbcEFZAS6olFtQnsNxfNWOcFnxERqB8WsXkDB/MHC/RXEA3AtxcDB/pPCOsFn13oHAK52APhZF7r+fJPCacAA/sFEfWTCTRAAPYyK821qcFoFAP6NZNMSANyOicI7xGp6bsFRwGQDxeSQs/4UANyUgDrBh3vA/8LBwGUEwIy5Ab2bAP8RxbWex4JpWf/BwKwDAwegA8AJAMpvho96w3MEANKsxkoEuk+uZ2JvCMXKszr+xGrBBQAOvQCCFgEDv5PEOsF00F3BwWtWwtQAwHuBwsF7wmedaQa6ysMGSwoAoM1k0/7BwVoIAG7U/vwuFgD+2ZMGWpDCa2RkwQ8AZtp3KmTCWHAEAG7bA4cFAN/dDDrBAN1ZEVAHALz7w/7+/hAA4P+TwgSXeHt/ZQMQ6AHTwBSrAgGWVsLDBcHAMcHAwML9xDvBwkQFEOUFGjjQEQCwm8JmkMTBBGTCeFT/ChDCJ0zCxnnDwML//g7VhytYwf38I//+OMIlvBHKKiIj/8kQiJbmwP37/v85////BBC6LCT+5wQT8jZaWQUQx+op/owHEIQwYos6FBNHNKd4kKd+BXt1vhGDO1p4BNWwOI0rBBCfQVeSBBMfRVA8FBD8jK1sNpnBdMFs+84QvdrB/8XDyMkEwcJ6U0IAC0MBxQAI/1MA', 4, 1, 0, 'BWXP205260364', '2021-03-13 14:01:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (40, 63, 'TRtTUzIxAAAEWFsECAUHCc7QAAAcWWkBAAAAhIUff1gjAIQPcACNAIRXzgBaAJMPTgBiWAwPTwBoALEPGlhtAPcNqgC7AIhXJAB/AHYNXwCIWIUPTACjALUPqlimABUPqQBrAIJX4gC8AJ0PiQDBWGYPWwDMAKQPlVjRAHsPMgAXAF9W6QDbAKMP4QDjWN0O4AATAXQPmFgaAaIPTgDYAS5WugAiAaINkQApWa4O9wAtAQIP6lgwAcQPegD2ARhXkABCARAPEABQWesP0wBaAbgPWVhcAZQPSgbye1NLz/4mdmMMiglv01ITkoIWjmOK66x6AIt8vYFChKvTWAmSgjJ6eIHzXCoJ4fkmcesBVlFDE7P9xJLXkS7S1XKqBVYP2/xz0m4bLQiJDx/5taSbCtLz4vcmaY9GfIIV9yL+XwgjrnoffYKLdVZ/+rTz7UIS6gDvlkLTiHxrEI+brwDWqkaVhYTals4cLF9fGRvdrP+rFBKHfA/ubk5/zPc6KlZx5G5yK7Il1M7euOO7p+QCed/f/qPbbSBIxALGfR4EAGICBoIOBB4K+jb+U1XwBgTwExBU/xQA0xfzb0fATP9KQzsIBC8fhmn/dwzFfyZRSsDAPl4ExXcg2FMEAEcjgLsUBE4198BGW0CB//sFDgAXPfT/gUfEpkX/BQARQsPESFMBUDz9Pv+DXQNYbUSDcML/wABwEAJBBwBsSrhyX1QBqVqJwHgEwMWZXgcAuFsQ+EcBWNJeFkwIAHJgE5lNRAsAjmXG/UMMSAUAhmaGRQgEeGn3YFMMAEVbAhf+wMD+VgzFjW5U/lP//1f+wABCN3X+hgsApr+QgC3BwP8MAKa6icQgwHuACQCuRQ9FHP4DAJaJiQcIBDOHfYXBwMLJAJrVCP//NT5GzQBr1HtzcBYAFV3tQBz/PcE1/sD7wABY5p0iVBYAlaHzHkrBKsH//jjB+6f9wcAFAEhnd8cVBwCxpxM4OgQEY6xwbQ0ApWuMh5lxdMISABR060IMPEf//cD+3wBUm/E4/sD9Pjsw+6b/wvn9/iM7CAQRyGd/wpITxRbOscHAQE/A/joyT00Bjc2Dn8EGwsDKV4vCixEAnM5jmomgw8B7fsAAKoplxIELAI0XfcacwsLDnsISxZXWVy9H/xb6IuoHBLPeLTD9whrFEumI/vvAPktBBPz7mP7+///+/zvAAliG8An8NgXFgfAex58EAIb49cPEXQGO+CLAZdoQ5le2iHzCwYwEjMXbpolZwBQQHhCwyMCMwMTBwlygx1UR4BdA/fs6G8SkwygOEG0Tcf35pfr8/vv/NjoHFEQcMJPAwgPUAxkYwQMQoB4eBhIUnh+reI/HxALDwJjDwcDECBDQJTWbdoIIEFgx5cFjJAgQ9TFa/uv+LV8RETIwxMEEewBI/TZXKAgQvjcmmcCSwQQQEoIkllwR+EppwPzBEPkVYSoEEQNToS5WGgELQwEAAM5FVlg=', 5, 1, 0, 'BWXP205260364', '2021-03-13 14:03:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (41, 63, 'TddTUzIxAAAElJcECAUHCc7QAAAclWkBAAAAhLknUZQnAOwPmADrAHSbugA2AAgPqQA/lPAPogA8AM0PxpRJAIcPgwCIAP2bRABdAOsPRQBqlPgPvgCFAM4PyZSlABAO1wBtAIqaiwCtAAEPdgC8lBAPpwC7ANcPeZS8AAYP3AB7ABqbpwDHABsPQQDWlCMPnADWAPUPv5TXACcPLwAmANObtwDoADcPpwD0lNsOUgDzANoOYJT6AOEO4wA7AD2buQAHAUkPrAANlY8OfgAQAbQPkZQSAVcPZgDRAeuaggAXAWcPqwAtlXkPRQAuAToOlZQ+AWQOqACDAVmbfABPAeUOhABUlZAPtvzjAnb3PfwbaWp5qYE0AwYNrPsuBIeA5Jh1l4uBqYGKgVYYIZ/PAHbxe/2mAqdjTwA7CmPzY/2a6779gIee9BMAhBcocmJ+3f1X8MJ15QPN+absdftgl7znVQWt5lPaHQYPEMr6KAt47UGZEB5l9lIJ7BXdhiAjpfH1Dx/4ui62/b/7FRFP8Oac4fshvN1PnERx1YOQWAvRVPTFxmfaBesW9hRv9TaHPaOlrAEe8Q6ZchQeofGx6tsRWPfEeo2CwPrUEXlnuIrtE+IIA3F6HmcTKQqBg3PutW6fe9cKgYOLbpIft5XXG/OvA1HuPX8gRAECneT5DJRkAGn/wv++BgTaBW3BeAQA/wVj5QkAbAZte64GBAwJcf/BewvFfgzkeWtSDgCnynrGa3b+wmt7D8WrHRSCe8FkwWTVALC2gXWFwf/BBP/FVcEDALoqfQQEBAAsd3cIAJb3cMRUwcDD/woAcjWEVsPAZFsEAGM9BGjABQCHSfQFIg+Ufk9wwGt4rAcEE1H3MML8BcVBZPDAWhIA1GNJwm4fWHBpEwDfppeS5XXBZ3LACMWCbWM/RAsAfG+xaXBVawgAhHD6gTgQlOZ/jMDCXKLC+1bBd8COBAAHhQ3WFQDvjZN5loPEE8DBwcH/FcX6oQPAasJyg8GseMWfAY6p/T79BcH6phMAhq16w7mAk1HCxsHDwg3FjquXSyrAPvsIxf+wCsPAfsIiAGaPhBT+w2d1wcFJw5NQwKDBesOrzACyLA7/M0YNAGe6jVXCiZLCrRHFqr6EwTM+KzA0xgCEKAL/EQCpv9bA+73B//zC/MA6//toBQDevxzAOxQFl8WkwsL/kKrBeFV9wg8AqsbTwfm6QTgzDQCoDh77a/zAK/3AO9EBAESlgMP8xMAEi3NWwY0GAJjTVsXHOQgAoNYk/Tj9QGoMAL/ZIv7swC9qRQ4AndowOyg0av7+MQMAfiRexZ8BtOSpw8EGwsBWlgYAheVTO/v5YQQAFeZAZcIAKnNIkcPDBQBM601o+sILALrr9TP6VP/BKgkAZjXX+m72+vz8/QTFUPLUyMgJEOQA/8A01QQQ/wk3//sNFCALTEf+/yn3BRQuC0ArDBCU0lP6a/79/f/+/usDFP4pesADEGrqdPmeERE4N8XDB5NwlxEfQxzDBNWkTfQ4AxD9SUk7AxQ+S1f+BBASlCShxkMAC0MBAMULQcY=', 4, 1, 0, 'BWXP205260364', '2021-03-13 14:03:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (42, 4, 'Sg9TUzIxAAADTFAECAUHCc7QAAAbTWkBAAAAg/EeZ0xJAHIPrAC1ACFDfQB9AHoPSQCWTIYOVACZAIsP40ycAKcPuwBnAKdDcACnAEEOrgC0TDIMfAC3ANsMj0zAAJoOzgAEAJ5DdADHALIMewDQTJAPegDUAFwMzkzgAIgPWgAtAJ1DvgDoAIMPIQDsTIMPMgDwAFIOVEz4AIoPrwA8AH5DewD9AIsPCgABTXsPeQAXAboPw0wZAXgPVgDYAX9DtgBBAfgPCQBMTf8OrgBbAbkPPLcmU1snv5wSqZTNMPdSO28sZA9hBE9qRgxaHt7UVUkvDjMbBgkf/WhQjBBpJdL0iBQeuHiB5ey1bLyFfjFc6kUDQQ7jFI21ABihlHmByAkuXcz2mejJA2x/ZkiY+RELKRQLBvla7Py99V0KUP9iR4cC9g7i+sofvqD/AToR4f7XBDFJOA96AY7upAfqt7P4xfd+BWf34k+3/VKD/v0D9ei8oP7Vf1KD2Ar1yDqK0Yf2gBYHbt7xGCAtAQEHFglJAWs2fcF7wwBscXyGwAoAo4EiwgY/wgcAYEa/w3CPDABoR/3/OcH9sz9EBwBgTLR7fEQBsHMkwf4EZBJMe3mGxZbCBMHCj8XFwsH/wc0AgzIX/sBYwAzFeHzMx3nCjqUTxR+FkD9B/v4uwINSF0yKkJPDxsMAwsOIxcHDwsCQlg4DxJeGw8bFwwfFwon+w2oKAJBdIGfH/sINAFGelcLBj8KWwsF7FcW8nefDwMGCwsMHwcGMw8CCRhMAcqCjjMF1xMLEwAZ0wIybBQCFo5MPxsdHAY2mIsNRB//BAwcAv6YicQcLA1WtxvzA/kw6/f1CAXRbAyo/OsDCjYUIAHqzui3+j4wJAHu7KcYEbv5LAXnLHJJEwQDSrg6ABAAv5tJ/BUz69H3ASQTFIvdFaAQAqv16+wQDsP+AXQ0Ayzp6WBj+ZMANEMzDd0mMwfx2UxAQOgh+jHpRXP5zDtX6EjbBb0BrOwXVOxdPWA4Q/xh3BVtuCT8KEL0Yd51WV0AR+iN3wf+TwGONBxEDLnrABV0GXPQ7d1QHEHZBeYxcwAUQyFC4UgdcqVx6bgUQJV6Kj3dSQgALQ8QAA0dEUg==', 6, 1, 0, 'BWXP205260321', '2021-03-13 14:25:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (43, 50, 'SutTUzIxAAADqKsECAUHCc7QAAAbqWkBAAAAg1UdX6hAAG4PnwCJABCn1gBmAJsPTgBoqHkPRwBzAJgPhqh1AAoP5QCxACen2wCJAJ8PmACWqFcPrACXAFcPQKifAN0PkQB2ACWnhwDHADAPXwDQqCUPPwDmAPIPh6jqAB8PogA1AKSnugD3AJ8PLwAHqZkPrQAQAV0PQqgQAbMPXQDTARyn5wApAYoPtAAvqZ4PrwAvAUoP16gxAYYPSwD5AZmnuABHAYQPrQBNqY4PZxIz+/5nxTXGCIN7BXnn/XgjYXPiZS/qiwppK/byUJdP+B61/iGwhseXtX5bBVSknHvW+g9Ni27kXI6JlYtqgyKrslKTBDqWJQ6sDpW59PaSfL4ET4d0sk4banhC/OPx5qOThGKIbfvwC+ygLxF3+D8UePsloJ/x1ZeOf8Mb6seHgLaHaQV79WCih4AuEVIG5A+xUPcJ7f1eBbv5/aXX/rp/rfcnAeRWi/W+8atyMk3avCE0AQIqG6kEAyoYfWYEAIreAz+vAbQkFkY8xgBIhuz+DQB0JMU+/INS/xAASzgyTz5oMGXABQBY+nTBIAoAYED3MAT+KFcEAFpFbcFBBQMLSA/+VAoAXkqKasDBwsHBhc4AoPgSRDVbBwBNa3kgiQ0ASnDn9f79V/83/wwAibQA/1c3RmQEAEK2Z5SnATR05D0170r9rAHpdCRXBsWBdtLCiQ4AiXbJO/z9wWLABwBGslzCaf6FBQDleO7CSK4B3IwkVcDXAGM54f3+/P79Ov/8aMHAwMH/R9AAqz2WwsPDxMQEwMFqwcTAw8DCBMHAVgYAWJdelrkYA/aYVsGEw8AG/8fQf8P+wsL+BP4aqDmsU3fAkQbAe9HBwW7/ZwnFPq/hWMDClg8ASLBqYcGjh8DCWcYAGhpBwAkAlbTZP8JoegwAkrotB8Buann+BQCLu/KDB6iGzDGFHgA6zKjFhHuJxMLABsLDamdiw2cEAFnXKi8FADvoQMQ6BwPp6DRvhQQAQu8hasEHAKbzFgT+wPkeAPz2oMCd/8JXwJeqecHDQ8HCakjCHxEDBltbw+Jmw8PGxcEBwMBqwcPBwsHBOsHBVwQQIhEkwakYEwETkP7+//84/v1X/Pr3/v7+BMDCaf7BwMAFEHQTE2hpCxBEFSIEwJNq/sHBBRAe2CTBKQoQdS8QeAX/wMwHECY7E20HChPEUQl0wMFiwxDM93xY/1JCAM5DAqgBC0VS', 5, 1, 0, 'BWXP205260321', '2021-03-13 14:26:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (44, 5, 'SptTUzIxAAAD2NwECAUHCc7QAAAb2WkBAAAAgwUjl9hQAIEPrwCvACHXRABrAFcPaAB82JcPPgCLAB0PadiUAOcPVQBbAEfXlQCfAHkODwCj2C0PgwClAI4OntivAIMOkAB0ADLVdQDJAMQPJQDP2K8PkQDSAOwOsdj+AKQPwwDBAaTX6gAFAZ4PZAAP2RoPUAAOAecPr9gVAZsP3ADfAYzXMAAiAR4OWQAh2ZYOdAAsAVgPQdgwAZ4OrgDxAY7XywA4AYYP8wBA2ZgOqABEAUMPethIAY8PoACKAQHX1wBQAX8PqgBb2Y0PrQBdAUcPHbku7UMLoY07obBzc4BfFU9yaHVFxg9vxpRygHfzCn6znKZzLV4fbEQgMPh5MVFJP5vIcIKAVR0p1YDLd4+oDI07RLMo6Rphy5yilY56RoQMyyYL5mQW+OOq6iVAiSkKZQWED/nAPBNm+mv+RIBOobCGygWuhrqEglhIBbH6zfNX6EnRgIKehE79CP22pggOHRPaCu8TPt6AgrJ+QQhQ+vrTKAuB+9L5BP6hpLp7VYTJ+PAGSt2s9/qOWXxkgVGssPt2/4/4CP25K+6NoYG5/gf2IjX9+gUgMgHHERhiBgBPRG3DBcFa1QGqSo+AwQXEcrUjAJBOg3kHwXmjwsDBXP/BBP/GHMFpcVYEAPVSXbgLAJhSDP71R8PVAZBTg4jCVcNh3QGyayD/VcoAQrdbwnHBZ8GAwR/YqXucw8LEB6BvsXHCwmx2xDsDA8F/TMERAD9N1sMl/irA/vzBOcD8nxAAZ5HX+zj7/uNDZIMQAG5W5/4i/DNKwv/CBcAV2OaRrX7Bg0XBwRmChMEMAGdcSYMniIQXAMecbGvAeJyTgGpzBcWPnqLHpA8AVKGDcIAYw8HBw3kExc6h8UwEAN+jLZwJA8+lScJkUgTFyaf1WgkAgKtPAXrAqgsAobIk/5DBw0ENAIW0Q4gHwmlXDQCTtCfDOcFGGsJvDgAwvIN+whiQgcIHAJUBJ2EnwQQA49AnBMEH2JTUKXsFAFXVMhqCKQD34KkF/n+K/sKbwpKLB8HBGHDB/sOMhATCwfgB+/eiV8DywYNNw8TDwsLBBP/CG8HBwcGWBNW2AcJ2IRDoBJ4FL8MnwMLAwsTIB6xsXHbAw2TBBNVUDPqACBBPEikHwsGyBxCwFxfCBkQHyBseN6kEEGUlFVMEEEY1F8GsBBMWOQNlBxCshgDDGFsFEDpFEAVXD8geSQxew/8B/8OEAhB9SwnCwRCnlfxEBBCkUsN1AMgoVBbFBhA3W4Or/lJCAAtDxAAD00RS', 7, 1, 0, 'BWXP205260321', '2021-03-13 14:28:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (45, 44, 'SqVTUzIxAAAD5uYECAUHCc7QAAAb52kBAAAAgwskb+ZTAA0PiQChAI/pZABtAHsPVgBw5hQPrwB/AFcPR+aEAPwPYgBDAHjpLgCIAHIPqwCZ5hEPeAChAEkPdeaxAH0PNQAMAGfpiwDOAI8PBwDN5qMPdQDRALUPUObVAGAPdwAbAGPpZQDkAEcPQADu5iEOeQDwAOsOMub3AEEPmgA+AJ7p0AAFAS0PuwAF5yUOZQAIAe8PteYXAasPjwDfAaHoWgAbAbYNQAAh5xoOVwApAeQOeOYrAaYPYgDxAZzrtgA1AaEPWgA155oPXABVAV0Pq+ZZAY8PvZdPgZAfHHmOgW4RjALSlf/xFYl+hDacgZqKCFsLAY1DgG1kMG7JAoqAzHkMH/77iIcdlmSWj5k4EJoRyfBwbkXqLwRiJzMeqCFW1DtwYxYXdvoHS/UM4W0qQRp3/B0X2fNdNZUZ6OnaDFAa2PcBwbyGS/UM0YkOBt/m4DAYfH5WeDL8e4SoaN6SFfrZ/uwHqpNUCjb8FgwHgHX0RYtF/4GD0JSeawAbSHvId9j7LoqAhDL5wI8EB07tgICZ69H7mAqdHjMW5f6S+EeAsR+ne8P1qvUH8piRdIgQAg0g8wEB9RuCBQB2OsP+O+ABZkEDwP2DDQOjSPo//jf+O28J5nFQBi/+wIcGA45TfcHBXgvFcFXvLkZUCACGpon8dFoGAGFqfQRwD+ZobgP+//4FR0HhAWFwenRZyQAckvBU/zLALMoAS2T2MC/+wf4FPgbmsoMeVAQAhYZzug8AZoYD/v3/RRlEBwBeiXqswfz1ARWL8P5z9jg9GcE+DQBymtXAM70/wAQAQKC1aQrmdKCJwpP/vggDiKWDiXAMALSlABo5wP8+wRTFFaUL/sA+NML9Oj5AGQkAb6qAg7ENA5eqDDU+/8D/EAPwrfDBLzgx+/8H5nKwgH4PAJ64+Sb9KMD+//8FwIXjAUS5cHgDxVm6kcIEADHIabsUA2HKk8PDwoYHwcIlwsDDlsHBxgAwK2bCEABx0LKexXd+wsH/wwnFcMn2wf1BSgQAitJqfA4AUNhiwwbEiCTDwcHBbA3Fcty8xMPDfsLCng4DhOtMw8GfwZpVC+Z96il7WwnFh/PEwEzAbxYA3vLUGf88///9/TnB/Cb//8D/wsEEBwOc8zHEUsAJxS36qsWOfA8AMzxAwW7AwcDESn7KAJsfo8LDz8XDBMTBGMHCWQQAFj9GfeURZQwtww7VshdBwWfDwsbEBsSe4hG6Gil7CdUaMc+XacEHEBP2N8dx/gQQEk8XBcIH9mFXDMHAUocACKUAAAALRVI=', 6, 1, 0, 'BWXP205260321', '2021-03-13 14:28:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (46, 59, 'SlFTUzIxAAADEhAECAUHCc7QAAAbE2kBAAAAgj8XXxJ+AFwPRQBGAFwdrQCfAIQPJQCrEp0PwQC0AEoPXhK2AEwPIwB4ANQdowDEACEPvADXEjAPsgDVAOUPQhLWAEsPWgAaADsdQQDxAE8PJAD5EpwP0QD/AFgPThIAAToOUADTAZAcQQAeAewO9wAvE+4OeQAtAVMPthIxAZcPNQD8AQIdhwA+AZAPWP5kAIaHHQZTFr6LHeZLZgfpVgyqGURtkwzm9F5xvxZVDJMDyo6njxKLghBPlSqewvg35kEBAAIykYuFvP9CBdd21e+y6PsIVgf0BxoYWQBGf0AZ2ACLfTsKKO2Cu5tQXampWZOlgkv0/eXvyPO0BXlPEAmDBHevmgjA7G4DNBdRF59zlu/m+I//c57rICwTAN0XgwQAl0RqSAUAU09tasAAUEpswmENAKGZgFrRf8DAfgcAkGBoYnwGAINkfQeJABLWdyfCBgClfOQ4/ggArHAJOP5U7QYAWH9iwjrBWBQBQYJiwIvPAFiRVv9kc8EFxUSETsF9FgConkyox9HBjoNljG7PAN+3ocL/woiWzQBwlWPCwMJODcXArYKDxqV5wBDFX7HB/v7+/P78Bf/90sD+/8ILAHi0hezCxsefaAfFxLQywFHBBgBZfVPC1lsDAF66SQcDAzPAUP8aAP8BpMLsdMDBicLCV21xSgQAttUcVcMAPstRRsAIALMcJHeVBAB52jDCBcIRElbiQJvD/rt4w9J6EABd4jRJwcN9w1VtGwD/JKLCSmjAw8PDwgCIw9bAwsHBwG/AAD/mUj0GAEP1gyr8FwHN/Zz/QcwAocsofsNiGQA6/aPTwVL/w8HFDMbAmcHBgMIzBdVRBiLHZRYQ/wdfwv9OwcHBy8rEBsDC0sDCwcH/CdWlCAzBeUcFEETl+vhDBhA2Lff/Of5fHhF9MRrC/wdkeNMREDk1+v47QsNIwP6DDRA5/gM70ll7/wwQForwLdMzaAsQG1cx/vzt/2XBwwcQ1mH50jHCUkIAC4YBAxIKRVIA', 5, 1, 0, 'BWXP205260364', '2021-03-13 14:30:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (47, 59, 'Sz1TUzIxAAACfoEECAUHCc7QAAAaf2kBAAAAgqMPhX5MAI0PkQCbABhxqgBfAJkPQwCGfpMPnACPAOcPaH6uAIQP0ABzAKRxvAC5AKMPnADEflIObgDPAOMO634UAZ4PzwD9AZVxwwBNAY4PSgBQf5IPqABUAUkPHwsL9jf+EY2sg7D0aIN+Djd5xHK4BEYR8ZIXCeqJW007YNf1VQWyh3Vp2P2DgX8T+C4LrQbD7dYWpO6XPHU+E0cXQQoD+1FyyPppB3P9NArpe97/efrpAxr0dQUhKAEBqha3CQLxHRfC/MFVOgwCAR4TwD5YwJQMAgYpCf3/RUSTEQIVLAzAK0rAkD7DdgFcMwn//4PABn5WOwY3AwClRguBBwBMTAM4BAMC9U4T/w4ASZAA/EAuwTb/DABQXRVDwP5KXQ0Ail4ERjfAPsENAFdiIr/ANv9aTgrFr2Bgwf/AVFYJxTVwjv8p/UsHAPF69k4sFgAviOk4Lv2+/P/A/8HAO8H9vsDBVAwAn0ocPL7BWHsWADBX6f+BJsD+TMDAj8DDFwUAnJMiVNYAN+Xo/Sf+/1Q6wMIachUAL6niPv4uLcE3/8LAfToFAhiqjMLDxAjFZrD9wcXFwsTA1QBszB1HwP//wpyEwHkB07kkUXTLAFe7ZsbEeWbBQQ4CJ8tXpMLCYk7DCX5z0R44wWJBDAIT0i3CwP7CBcHCv8DDDABi4PF+cwvBFwA96Lo5/viC/PtG/2JxtHAJfj/zPcLCaQSMBm7SOhCDCRCSQx69b8BtEBDwjobCgf41PUU4DcVc2z3DlMF4kATVxkx4aAcQrFUGroAGbvBfdzVSQsULQX8BAAtFUgA=', 6, 1, 0, 'BWXP205260364', '2021-03-13 14:30:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (48, 49, 'TX9TUzIxAAAEPEEECAUHCc7QAAAcPWkBAAAAhOEihTxJAIcPVQCUAH8zwQCBAIoPdwCKPA4PQQCRALcPoDyYAIMPbgBvAHYzWAC2APIPZQDDPH8PfgDRADgPRjzUAPUPfAAdAHMz2ADYAI4PBADjPIkPNwDoAKwPazzrAHIPTAApAPcz1QDuABcPDwD9PBgPnQD6ALMPPzz+AGcPzQDUAZYziQAUAV4PpQAkPVQPTAAkAZ4PJzwmAV4PmgDtAVYybQA1AUAPpABHPTQOTQBPAYcORDxTAVYNlACRAcUzMQBWAVsOrwBcPbgPcg8b/+Z7+stSCzsLWX2fCU8z1I1Vhb+T/4MjPd774XXi+YYEfb5Dd0f8eYIv/j6/e4FyCiP4FYrds3uB4Y69BqMG0EJkBvr6PXqYC0JJJHEJceH/5HnpSlAG6f7ld0uBEbE8Au2OyQA8kTG2RAQVkaWKoxj+zgtf1QL5do8OrUa7faYPRQ876J43pP1VFmoh2Ak+IU8pIgb7+J4E1ct3k/PcnQ0o7oK1KPV9frX2ce8tMrfoIBeh/N8hOjeHc1+BHQTbGNvAeIZWeIp5EikPMwEgQwECgeUYAjxLNQA+wAjFHUbILkQGAIVIzP7HBgYAdUqDUr4EBJlLAPvBBQCUToRTCgBZUQBKO15QOQFRVXpcEcUVa9f/TMH+TECdEQQqdvD+XUtLBUTEMgG8fZBwwUTAxcN6DgC8goaAfFhWBQDEgxBLwwCysw5YwAQAPVV3izMBRZDxNcA6/sXAd0oSABeVKP9HAcE2wv3/fcEAO6lxbAkAf5dFwvu7wP8IAGqossFvTwoAcqn6QZH/xsESABmz4P06U/lrLsIy/xEAGbWS/sD+xP/C/wfAxvzBwG8GAFVydMbCgg0AXbf6B//6B1pECACcxEaHxcPDBQCkxwmODASlyH3BXcL/tcIPPIrQ/Ttl/4YJBETXesHBhFLJAITk+0D//sL/OFQAPHjbd3wUANHi4AI/wTg1TFHMALnYjpDD/24NxbnstYrCe8LAwAcJBFfrcMCLwEXBADfXbMLAFAATKeQ7/SpH/sD+S5sEBOTsEzsFAEgqZ145AdfyF0YHxZn8RoJ3BgDN+tL/QDYBofsD//w6/8T8WA0AmP13RsGBSv4EEDcAYosEFKYDACwJEIXMbcfDxP/BoAMQQRVa/BYQ/RmgagH/xbeCe2/B/sHCEEwYY8LB/nIG1V4ga3LDCRCeJjj7+8L+wGQGEJbiYMH4mwYQTChcBME1OBGZLFOnGNQEM57BwMHAwcBYwY1HecFGBBBu/EORORGhOjfApcMQqAcW/sFNBRBuQhplAhBgSTfDxhCvdyXBFBD/S2zCYP/BwJ7CwsIHwfuQExD6UKTBp8J5/8f+xMLFhtQQ/mehwGWJxcMBoZIwEaRiqf3+P/b/F19SQgALQ8QABDdEUg==', 5, 1, 0, 'BWXP205260321', '2021-03-13 14:30:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (49, 48, 'SrdTUzIxAAAD9PYECAUHCc7QAAAb9WkBAAAAgxkfjfQfAI8PXADmAAj7mQAwAIwPnwBO9H0PuABaAFYPxvRtAJQPvABHAJH7lACOAIgPvwCZ9AkPVAClALEPPfS4APYPkQAFAIT7ewDSAAgPZADY9IoPnADmAEMPifTxAH4OXwDNAWn7jwAJAQENeAAI9YoPnAAMAUAN8PQNAZ4PgADZAWT6SQAlAWIPZgAv9YEP5AA8AVgPbPRAAUgPUwCHAVf7mQBCAUQPYABH9RwPMwBHAZMPOvRNAd0PHQWqhVTju5NzfX+DZP0YDX6DynP38y7vFvYrApcJlQL4BlT7vAKuAmIOr4DtDj4BaoDulmeDcXQDbjNvboRa83gHYIMm/C4CmIOleY+GSAdaDGcEzwtkCUqG7fn4fuUAcwkuBhtoTHzaajiGdghSD76MhnBnIDYEMwGiFlTX9GoG5C7qlxD5DXcOPWZVPn/8sPWKF2ODuffP4jnynHstD970gSsSMr/+6NshniLWS44nBAL2QIpQi3WLq/gyKCA+xAJd1XYIAIIIE4f/VPgBcgoQOMKGwSr9AZoNF1n+8gQDkhAJOxEAUdEQwMP9bVVV/gXFYCLyPxAAYCcMncIrp0v/EgA6Ljj/LDTAO1XBQwnFUDTywf//V8ANxSlFA0BV/lvABsVWSXfDdgkAXk3G/8MKwP5KBQBXlXfDhhQAFmvwwPs9QzT/aFj/BwAMbh80Wf8HABZzMcDCCVwPAGRg/fcv/KfBWQ4AFnwyaMLMM0IHABaGNUtY+gFscQZLwfhETP4BkoqJwIsEwVnzAReN9FNVygBrjwE2/0ZKRM8AmnsNPURLCgBUkIWAblENAH2bwz38oFT/BgBRprJ4wuABFqfw/0SCVDEKwP9VFAAXdfD8u8D/MkT/RAXAEfRDufTAMDIENk+wCwCNu4bAB3t9/wGVwRPC/pT+w8oLAI3Chny+bRf0FsftwMBFOP3DylX/WAMAfgoG/PwBdtJ9dHjGAH0iB/8HAKXd1ldF/wGY4ob/ibRgF/QU5utE/0w6/zEL/lP+DACYLYD9NsDBeMH/w84AoxwI/lQ///7PAIUZgovCZcEMxY7z9DA9wEQJAEPzg3TBwj4MEJfFffwwhMDAwWAK1ZEE8v5BwP44CdWJCnSjwMJlBxCeCmg0wP9wCBB83m3BNHHBCxCEHDjAJKwuBxB+IGSpgArklCEJNUz+whCP0GyQw8EGEIAoZzX+xP8HEJ/vgMQ0xZ0WEBItIf7CC07CK/08RwU+E+TjOJ50jf8EmcGHBhCbQPr7OEMH5KlEHD4DEKhGSjUNEINiuhw4G0WmQwALQwEAxQtGpg==', 5, 1, 0, 'BWXP205260321', '2021-03-13 14:31:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (50, 56, 'TYtTUzIxAAAEyM0ECAUHCc7QAAAcyWkBAAAAhHUps8gvAJQPiQD2AHvHXABIAP4PrQBUyHkP4ABjAFoPRMhmAG4PvgCrAJbHIQBzAO4PTQBxyHYPRwB/ADMPu8ifAJYPLgBiAFrHsQCoAIsPnQCoyGIPhADAAKYPqsjIAIkOYgAPAF3HMADQAFYPRwDXyFMPnQDcAJcOicjcAEsP5gAbAD3HuADiAJUOWgDhyCUO8QDtAPMPVcj/AEAPngA6ACXH1gD/AEQOaAAMybQOzQAOAawOUMgRATkP4wDcAUrHbwAmATEPDAAiyXwOgwAtAeEPo8guAQEPfgD+ASHHSgBKAS0PhgBKybcPrABVAVkPlcheAaQPaxTuBxc/Zwv/7HOAWIjmW3KAoXzu+7IMUsWKDzcLSXpDgfa74/Uv/GseQ4GmMsqSrwAH5m57RUIbCuOYVQ3+DK/MYwoq//toGPU+zGIpUgyiBxZsZdlTGJINVTrs90qs3/g2CB75L/ojNA71TQj18fgDYPqsCA3K1fjw+E3hbAWa9canrHOZx3RHFNbt2VgH9TWz9JvoeQmuEAsidGwh/x7RUN1pMycQYZTWTLuS9e1c7i0eAfmjCVvexObhD6HTmA5xx+/5yRbxM799qcjo9mIldoXH3b6uKAAB94qCBXozNUoJuIqvh3qTUTOjnnt5zQtPgpdJOv0RcyEB5UIFyrkjmQQAptQTMM8BfBiAeHTPAKPQFlL9Vf8JxYolS3V+wQMAkucQxMEBhS+AwIunCQRzMBf+wExkzQCJ/AcxRwoAhfB9bQhqwhIAF0I1U8SI/kA4TA8ApUcECTL/S1XAw8IAYIV8h3MPAGyV/fs2/v///lj/BDkDyGVUd2p5FcUWZCX+wUL/NTGBVMTCAURk98BP9cAByOJnJME1BMU+b6VGBQCEcnoFfAnIjXUG/zPA80cNyG98enB3wtQAebb8/v8u/1OEwUPBAW6CdMBpBY0TyBeO3iv/RoQ4PDdG/wwAvppbwpYJwMHBYRgA1p7a+Fb/O0b/NoZAFMi7npzDwsBYWYC/BgDDoSLAhcADyK+kkMKN/sEALm5jjAwArKpJwcdDw3zABAAtbmCEzwFUq2uHhNIAsGMb/zH9ZPw6//8z+v3+/v//7AYEn7Fkb8EHAEW+aVF/BACIvv3mDwSSwWJ4wcL/BsP5C3YOAIHEZAb/wAiQZoAOAGYD4vk2/MD8/v3+Ov75NgoAqsqMxAfFigmHCwBezF4EwYBIwwYAsswiOCcPyGLOWnTBw6rBCcgu01rD/cIGxPgJwv+VMACuEZDADMfCwpbCwjrCxgnExMTBw8MEwMY3wcDEwcDCB//HC8DBwsH/wAHAxjfDwRoAgNaSlsULwMDCwMPBAf/DXsDEeF0JAFzdUwzFwY/DEABN31Roe8ChxaADxZ7siMcGAPDxOgcxAsj08TTA//46CRSGA0nCwYBswhDTzEEk+/oOEHIHwgvEx8rHxMEGw8ILyx0QzwrMB5KGC499WsLBwFXDY88RHhA9WpLNEFXcQcNywcAI1VYQ/GPBwcIFELcpNAh/BRBsKjRBBRRNMSfBwcMF1e84m/7//AMQ9flJ+cwRgT4pjAPVTknhwVJCAAtDxAAEw0RS', 5, 1, 0, 'BWXP205260364', '2021-03-13 14:32:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (51, 56, 'TBFTUzIxAAAFUlEECAUHCc7QAAAdU2kBAAAAhf83nlITABMPVgDTAGRdrwAgAIgPXwAmUhUPogAzALgPVlI5AFQORAD/AOVc0AA+AC4PbwBGUoUPvABDAFoPSVJIANQOwQCVADBdWQBRAEoObgBXUoIOQABXAIkOfVJWAEkOmwCdAFNfggBrAN8OZwBxUjcNhAB8APkPwFJ8AEcOdgC7AMJd0wCBAEIOdQCNUrgNOgCKAIIPdFKLADwPJABJAEpduACMAMANGwCQUj4PrwCgAHEN1VKjAFsNjgBqAC5f2gCxAFUPQgC6UiQOZQDAAPcO1VLLANMPYgAJALNcpADNABsMrgDUUrMOpQDaAFgNeVLfAK0OHAAmADJdMQDjAKoPSADjUpwOaQDrAGcPSFLyAJ0OLwA9AIJdagD6AJIPiQD6UgoOjQAAAUsPXlICAYsORwDPAYJfLwAhAX0PswAtU4APTAAuAbsPtFKIjqaZZg2zgm7fdHVRDpF29ACcy2iNsWkx+Rj2rCZ8gWUOnYwIDODFyJKx+s6u/ACsW/zlFWxhHRxywN5Y9H2B/ZgMtixY0HitAvH6eAB0fvhSEXktBjxvYDzDADr1HdTA12Rx4KRNmvkatH4EscP8wXQBXGgCQFaUiaWSCI9wjJS4zPxpBq2HHfuwJAgGtfr//f4OESUsAhpdLQrCBzZFUQudeRUOYOXorITvofaN/hdYSFsIHcacpQiDeXtA0P19h/Eb6PyvKm8MmH+BgYsNeNFvei674AdRh+NapYP6+MaBof+E0+gFpIdRA0d64ENs/T0OSY2os1LPWHUZJe4MsPEgQdADGRDF9mTzLcUEFS0avd1YUwMuqPBZCXr0/XPN1YCAtfN6/WfihNLg+WkFzH8o/cC8FwDm+cb6vweiqtb0lgC++Tv/bhhJMke0fyCDAQfLIRgEADcArIcMUloAaWtvws8AcFN1fHhzBAByAR8QBgBLA2nABcGQVAGfEAwqwM0AkkN8wsDCwmnKAFxG7EE8J8H/OMANUlAWZHTDbtUAm0QN/MD+MlM7wcVqCABVGmLBBHhcWgGqH4zBxAWWDlKfIQwkVcCHFAXEI33DiMGLs3HEkYQUAHojbVT/x5BrYv/EksLBAJh0ESQPAJ4yRsTHkJrAWX4PAIY22a0x//40/jvPAERsUsDAXcFZwwDXEypGwh8AuIeix5DFxInFXHIEwcTBwMOMwsBg1QCiEZGwwMR7wq+DAVLdQy1SDABiUImXx6J4wsEPxcBWZkP9/f369jn/+638BQChZTD4BAWXUjFCDABXkElnKsHBnQYAppAk+K9LCQA7WlAH//qQUAsAQVtJBUVg9QUAd11MkcIAgTrS/Pf4/cDAAJg+QcLBwwsATng41sPCxsaiC8WRfW/DecbHqQ3Fdn+U/sD7/Pr+PP76fQkAgn9Dh1IPBdV+QInCwMYDw8GQxcDCBQDoRDRRVwFujkCQD8V0ixLDwv//xMEAosfCBAAjkE/AQwkFa5FJaqDCFsW7nZ6JwJvFxMMHwsGSwMHAwmUJxeGcb8D8/P39WcAA0uFS//v9BQCqtTWShgQAhcMtbQMF2cInwgwA6g1J/GLBKikDABkMNMZXARbpBv1mxgBpvBbCBwDj9LLAVqwFABf9Bk/OAOesdsBHSkMN1eQDIjfAwP8/W8EQE1n8OA8QFxTFWvuQO2pUBhAy5QBQkgYQ0SF9wTpTBkJzKnrABRCNK4aQPQ4QyS2ABV3HklTAZQQQSfR6Y14RzDV9wFKYUwBCpkKAwv/CwRAxGfxEBBCnTbhHVxABC0MBAADORVdS', 6, 1, 0, 'BWXP205260364', '2021-03-13 14:32:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (52, 58, 'TRVTUzIxAAAEVlkECAUHCc7QAAAcV2kBAAAAhPsoslZsAJQPggC3ABRZdACCAIoPpQCcVoUPyACmAOAPbFa1AIYPKAB7AG5bnADAAJgPjQDFVnMP3ADLAGIPWlbMAHMO9gAIABdZQgDPAGEOdwDQVjUP7QDUAOsPQVbcAFcOZgAmABVbnQDjAKEOQgDhVpENygDpAPIPJ1brAEUPdAAvABVbMQDvAN0PjgD2VigOmQD0AKsOiFb0AJENZAA/ABxYtgD6AFUPsQD5VgkOjAAAAUwNQFYDASgPwgDDAVRZhgATAQMOiAAcVx4OnQAdAU8POFYhAR0OlADtAetZUQAuAZ8ODABTV+oPqABeAUEPb9Mic2MPzYkKjWsr0H1WCEMF9APaqlIUioPHjWrxTUGwB24VLgjf+D5BCGcq+UILmBAhVFQf7Xndl/dxRTCgAt3v1Oc0b9OLWAzt8B3zcJfpyWv8OB/liXv64a5cMo1/hQBw+iX0KDRdET0S4ABh1+zxreaW6C8EST4v8UYeBQB0CWHXNJipt8W3bAAJgGQTkN/ZzLDlNF3tJ6UAcRCMCilcTAQNIrboxPA9r3yCuPvZHYSJLVaICvlP0fw7GJ6dSH2ReqkWFAWZ1BD6VZyJimcBVVd8gi70bWT47k48nIJ9hpt4y2kzqT5j9pmvl3L/SePamNggPAHHUxh0BQAuRgA2wACtHiN4BgAiTsU+xFUBu1AcwQTFo1ZIwMAVABdWxsEyEVw0wlP+/sYAnQ8S/wYAcF3KXftfAbR3HEXAOlkWVh9g/TZE/gT/QhLBAwCRYAw7CwRuaAb/R0o+zQC+Jx1FwEoFAP1yApZADQCHcxCEwMSX/jbAAwDXvRr7UgHSfCBzCMUWf6vBPkYpACxEAEIC/sD9wP9V/sD7df3A/P3A/zv/xKj+//7//fw7IQQvhBBE/UrB8P7EYv/9///9/QX+xaj+/8DA/RHFFomh/j7+wMA7gT0CVl2VicJuCMVknVrB/v81BgCZmoeWwH0LABakP0f7qTz+EQC2pOHAxJY5//5P/P/tEQSdqSRL/8Iy9v36q/4DADetcQUWBEOv9EH//0M6//mqLfz5wB4ExT+rVv7/CwAsuz/A+QH+/iYGAER7epmVBgBMwQP/Bf4vUQFExXTCwlcDBGnPa8IFAGILBi5VAYjskMADxUPXMcIEALbVKe0RBLjZKf/+PTQ7/SsdBwCF45PCB7IBVmnnIMPByMMAmrE8+/j++RHFH+gGw8ZxwsHBBP/HDcURAM7sMfb9+an8/P/9wP86//pZASXtQHmLBsDEKMARAMjtN/79+av9McD+PgfFVvR/jX4EADDz+IwKVkn1NMR4wrLEwJLDBwBP9SkHwIxTAbP9U/4WwAC9q0j+HgsQEc83x6jFhMDCwAXVvw4G/x0KEBEk8sPAPMCCBxASQOWLd1IR/0xcJATVE0lMeQMQbl4JOlJGVgpDAQAAC4BS', 5, 1, 0, 'BWXP205260364', '2021-03-13 14:44:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (53, 58, 'TBtTUzIxAAAFWFsECAUHCc7QAAAdWWkBAAAAhYUzplgbAHAPggDgAOpX1gBLABMP6QBIWFoPnABPADMPYFhWAOkPlgCeAGtWrABiAG4PuABiWO8OJgBqABkPGVhvANUPkgCxAOpWSAB5AFUPhwCdWNYPtACaANsP01ieACMPXwBjANlXrwC2AD8PBgC9WDcP+wC+AHAPjVi+AFoPNQAFAD9XSADPACIOPgDXWLcPLADUAPwPmFjcAGAOxQAbAE9X0wDrAEYPYADpWGQOlgDtACwOWFjxAJgO5AA9AENXngD6AGgNSwD7WGYNfAAGAaoONFgOAQ8PjwDXAWZVbgAaAXQOJgAeWccP+wAbAZQPe1ggAeMOuwDhAVtWbgAsAXMOSgA1WWgOOgAxAU8PrVgyAW8OmwDxAetWqgA8AdwOTwBVWfEPrQBaAS4P3FhcAecPhoGSfV5fh4G/+MeDHqTqR+anboB6iYoJ2dOsitYKsf8zl5ok5XshAlmCZAKwIn+AqQKBg+gHEVNvgLaKnPu7fbLYKAJZgnqAs4C7IgtvdoS+/DOfqLuT6Wr9uuwjBc68OwT7vL+EgAkMe7vmzfkmFD8ZCFlqlFOCTv3bHrrYmAJhGhZnPOrcs4uOjQEic/JwHFpAG1+iTfy0eFijWAWm5fYWGP1QWrvjmXxt/AwEkNzAgGmIAipXeh581AJ+gdr+LATE2JAAEQDtgUz5BFEoDmn+qoWeeiqD3P219oGC2JBIWeQGvXZ+gfdqtNbbD9cPMXDAcYTaiPJ9h5JxCAHwyRcMJH+1itj+qyX2GecbRJZVg/BKIYeQg6UVnW48qXyDWohqBFsFU0gj/VJ+Hv/yDkLTj5pSgSiAxiBOWQPPIxcEABUEfz8NAJYHcMKcwMQCwAkAgghpBcFnAQ0AoAtweKJaxVAB2xGGgP9MBwUPHGddXQUAIx6M3BEApx9wawdyXSbADAB+KGm9WHGZFwDrKYlvB8DGp8GLwGXCcAQDBXQ1ZP8MAPTykHLRw/5+BQDajAz4mP8FANJKhk0RBFxNmsLAiYkE/8SYwHkFAChNocKhXQHZTxZPA8UsVATAEgEDVpxNd8YOw8BvwQwAbGBxJ4KGwgMAVgkXzF8BsWID//2CGQWlcJx4wpDAAcB7mMP/wsLEwASoFli0cgP9//+D+MWYwcDAW1cKxZlxqP79/f//RsAAiy9ofhQA/HhSZ8SZwsHDwMDCBcHEmcOYDQBFe5nCxSBowpsHAEm6V3MvCwCRkO3/5D76XQGYk/H9I8AAiMBjwlsJALdeF/iY//7/VQUAH54bpy0WAJia9OH9+mD+/cH+wPwFO/qYCQDXoyRBBCANWP2kp4nBhMMAjttmfsIKAPxrp8angpUGAI+JpWfEXgGqsX3KwuwJBS/qbf/++/o4LgBYpbhMNBMAd7gypvxGPfzCwDj/+JkzBQCsuUP2GQXSutz++vr8Pv/5p8D///7/wDnC+qf///7A/wvFw7loL8A7JhcARbfSo/7++f0vLT7AxXbB/TsEAIEDXCNQAYrDTycXwAATnUJrCgAp14Wbw9XABQAv1zcEpwZIWQP0wRIAAeVJmf/+PkcxSjsHBYrxRkE8DgAk/EOYLzvB/WUKxfr5G/79SzgNAF/9Z5jDKv7A+sHiCQVB/ivBwp+FxgCPp2HBBhB5CKz++34EEDETGqfPEPlHUTPA/zMD1RgnRMUGEGwucTorDkiNM2tP/zc7xAJI/DRc/8BAzRChb2pX/8D+BNX9Rzg6BBD9TWT1CRXeU3HA/k4rxhD4D2b/BRAWWcbAgVsRqVx3wFKHAA4bAAAAC0VS', 6, 1, 0, 'BWXP205260364', '2021-03-13 14:44:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (54, 47, 'SilTUzIxAAADam0ECAUHCc7QAAAba2kBAAAAg5cZkmpSAI4P0ACSAJxlRgB0AAIPtAB0aoIPzgCCAFwPUmqHAIAP5gBKAKZlOgCjAAAPXQCvao0P2QC+ANgPvGrLAJwPqAAeAB5l8gDhACMPTQADa48PoAACAVwPnmoOASMPegDfAR9l3AAgAScPjgAta3EPfgA3AfUPJGo5AVwPQwCKATpktABUATUOBwBWaycO4QBfAWIPUGb28w/3JgvW/2R5qIWCg8sEqwWB6d70/feq/+Z/ruvz/V6BcQ/uiIxhX4FPAGd/1vAoG54L0YOK//Z4TunUg4MQSYNrhsD6Bwvziq//MPYOBUt0MHttDnd+K+X4l9IJoe//kFmTrgObg7f3nzmFfwJVDRcvDR7BQU8b7ScvEskj3ThhURNWk+MHGfNp6i4DZoBmd16DnJ4rASA2AQLZHD9sAZ0kGsDA+wYDwSEa/8BDCcVtIGz+/sD+wFnGAM5JH/4FAMAk28D+qBEAYikD/QU+w6pT/cH3yA3FZjdmwS9bRP4HxUE8kP4y/QYAR4MGwy4MADlSA1cF/z44BwCVVhZHBBMDWVwDaEQ//wXA/Rr+EwAtbvA4Rv43/kzAWf8DxSFzesQDAEtxAAUDAyB2BsINAHW9DP2rwTb/csATxRuDnTJ7Njb/RAQFA3CHBsM+BAAXhiMFFAAdkv3ABcL9lP5L/0ZkQssAH/b7WDj//zUHBwNVof3AQP8DxTegF8ALAD6mA5ZKKHwBG7D9wP86STaVRURa/RYA0LoDqDf/wvzBNQf9w5X+wMHA/wXF3cJ0wcH/EgAXA/1rKDDA/V1UGMUVz2PEP/7A/Uc6TMOUV8CGBwDDCxzDlF0WABjZ+pP9PSpF/8D//8C9CwPG3xxUUv89zgAjtftPwP1X/88AJoP1Nf9A/gnFG/WbNDj/CQAZOvfDVkYJEKMFHDo+UXgRGwr0wDj3Kf2VRMAJEKAO3/78KYQJEJ4TIoSEwnoRHBTx/0HyJ/0hCRB+Gxf+7GUMehAdA8X/M+s7U28R4SAnwTTDEN5OLHD/CRAc7/A/RPwFEEUvcV4EE+g4JzEEEH3+NMOVDRASQN4oOf/9lx8EEEdLDDz/C3oyXMz8+/o8/MJhEXBhusLCAcecFVNCAAtDAcUACC9TAA==', 5, 1, 0, 'BWXP205260321', '2021-03-14 09:56:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (55, 66, 'StNTUzIxAAADkJIECAUHCc7QAAAbkWkBAAAAg70Ym5AzAPIPbwD6AGifvQBPAHEP9QBekOYPkABmACsPxpBrAPkPfQBEAGiftgCgAHINDwChkAQOpgCmADcO95DEAAwOSAAKAOWfTwDdAF8OFADpkBEPQADuABoOmJD1APUPswA/AAqfuwAKAXkPEQAZkRgPjQAgATUPxZA1ASEP7wCHASef5QBWAS0NtgBdkdkPAourgBIFCes6fU8DRXtqgHwVin+vf5/7K4SA7TaFPYsPDRaK8ew2eiv7gYHQbdjqAJX6FZv6RIGJfS6K1/0TCsqfyhjnCK/z0Xi4giz/3wnKmq/4uIJtaKbvle6mfh4EqgAAFmb5uXDbYKEWv/j+oAsQmvx86XLqNghu/9OrsmrrBwcMKQozDwiHeuuXu4djixE5sDcBAk8ggMAAqbFxwzEEAL/hdMJvBwBTMGBFOhADLjF3wU1lwjtrgoEByDd0wMAFwMJRwMDAwFlywABdqWzCYRMA5/6AwFD+eMI6U8KXBgP7P3B7wQkAq0NkxWrBDwC4TbHAwFH9d8D/bcHWAOPfcVXBSVrABGJnlAG6U3DAws4A+MuHwsT+wMGtwwCQLWBk/wQAM2SD7hcBA3WPlqPBw+hkdMBbCwC8gHPmcsHB/hYBx4CTU3V3wHPC/wRkaJsBe4VpwMCuasOGAAOKjH7BB3vD5nVWbQYAwkkA/FE0CwC6kHdCZcFQwRYBAp2JqcD8U8L//sJiwTiSNZUBzp8AQAvFxqHncVlcBQDOYwnBoRcBArqJWUNtwlDAe2RbFwHHwoXCfMBaeHNckxcCk9WWhMGTWgfAe/L+SQYAStyhwz2HAAPdloCGomp1/VkYAQPomgeGh+z+g2T/wMCtBQNG6gz+/v8XxAPxDJHCi8JcwQdWSsUJAJ708S44SguQtvoD/cD+Bf/9hgAD/Z7BwgbBw1LDwlrCwcE6XWucEbYIfcHDB8HCUWP/BxC+C8n+wr8FELYOeo/REP2BlsBvw8NOBnRoyQQQ1xoaWM4QkrDx/sL7ImXCEIqzYcL/wVYU1AMoMIVyxcDCkLXBU5gRwTGGxMJX/wWAyDMa//3DOAQTVzkgOw4Q6/ugw1LAxsDClsKpBBN/RyT/wAoQElioUsPFxcTBwQUPE+Vb10v+/SPtRgqA0GKwwsPIAcPBbQcQm2PX/Tvz/sJDAAtDAQDFC0bC', 4, 1, 0, 'BJ36195260254', '2021-03-16 18:59:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (56, 66, 'TXdTUzIxAAAENDsECAUHCc7QAAAcNWkBAAAAhNkdqTQ3ABcPpACAAI47kwBQAA8PkwBRNHEP0gBaAFwPqjRuABwPWwC3AG475gByAB8PVQB4NIMPngCOANwPjzSdAHMPowBoAI07hADYAEoPrQDgNEoPjADmAP4PmTTvADAPkQAxADM6RgD6AE4PAAD6NKwPiQAFAfsPpTQYATUPfQDkAUI7kgAuAUIPXgBHNUEPPgBEARYPUzRHAVcP1gCMAaE7qwBNASQPAABSNZ4PwYzKCU6ByUBgfS5zXYWX+ZLDSAsPYyvzz3xWS3oR1py6BZeH1cse6jf7BogiBtM/JGpGEO5oyJrJnqOQ9V4p7xPwlS+zcFNBZRCjFK40JwA6EZ7+vATxxFgNvPvl9Wv0PD/8/J35HgaKCz8nZ386e1950AmSzCMQpfbq+APxVTMPCDIRcQbcDtHLWB3xAgYPdH6fu3aHrYYLEd4XRT1bg2Nn9eWshwLSyP1xf3dgBqpQIyFCAQK2JBQEBK8FDDgHAJbMDDpUBwCRDBdtBQcEuBQPSjgPAI8j/lErwUtXCACNLPNwMAgAsTYTg//E9QwAPjn0PQUr+W8JAK86F8D7aA40oUGPgMHAB8DGPgGgRoZmf7sGBJxHF2T9CwBcUQty/kxWBQBSk3BtJwErX+09wPDC+Ar+//9bCQCacPXJ/v3AKwcAknFpQMDCCgCycd//UcvBwfwWAB2x/cF+Oin/R///BVkDNFh2acBpwcYA7EIjwAoAjXxDwsXxZGgVACOCJz/7BC/CK/9KwNAALbDowEvAKv/wVVH0DQCajImRTsDFUA0Aoo0WQZ1YxDoBvJCaeJEGwlb0CQC+kRr/O8DEVAwAoJIW/zr+xPRLaw8AiJy/w3q3wWRdEACgbZDH8MJ0wsL+wgVVCzSerozDnnwH//tfDQCnsB7A81HGUxYAG8PgSgVE+MnC+//+wP87wMXKcQsAsskpBUJ3tA0AjtZTwwT/gQ/+CwCT2B46/kf1/ocMAITelX9Dcv4LAGrg0zv9/8j9/v1vCACh50v1WjQKAGrojMBdyS4GAIzpQLHAADSR5jBGCQBk8ClhaMMNAJ3y8sL7aMLAlMEJAFT5M/TBTf7/FAAD+rRZwsLFw8TCB8HF9MPA/0UcENMAzcrA/cD+wf8F/vsY//9AVGJzwxBCNVHAwFIHEA0CKfZPwggQiAf4wDkMHRAZDNDAkf/ECv8s/cD+/4FYcDIRnx06wsBlBRSRHDTAlQUQuCdCdRwQ/S6eNzvAZvaDp8PBccI6RlIxEZAyQzwE1ZY2dEUZEFpC0wfBXvT//v35+/07/sXLwP/BwMN8xhBXclvAAxCbRv/+ByRZSlbBBBAfTBNDAhCrUifG3hD7YpLAMT7C/kXGwvLFwMH/YP+DAxT9WBDAUkIAzkMFNAELRVI=', 6, 1, 0, 'BJ36195260254', '2021-03-16 19:12:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `template` VALUES (57, 66, 'TWNTUzIxAAAEICcECAUHCc7QAAAcIWkBAAAAhM0e5yBVAJUPagCSAPcvdABgAG8PWQBiIA0P3gBpANgOlSBzAHcO7gC3ACQu3AB+AJkOSQCAIHYOdQCHAD0PliCMAAgO3wBWAJwvRwCVAOgPBgCeIB0PgwCkAMcPhiC9AAcPewAZAAMuVgDnAFUPvQD1IFcOoQD9APYPZSAHAdcPfgDNAUMv1QAJATIPVgASIToPXAAbAYoPdSAeAUgPMwDqAdIvxwA3AbMPTABPITkPWQBYAQoPMVofdDL/qYRifMPcrHwq+FJ6EJTOtf+eef2lheiK7UxUAUlz9QUMiRas0HmpfSUB9XPRIYSChYKS8HP4JLM4k9ELpQGkf75ZjvCj63d7mIdCpvIVwf5V/+sMOSbDAEsBwbGHAOqWY4A6ASJSNFFlMo+AofvC7R/f8aqsk9KQ8fKUDpUjnoDbAcv7GPYdK7/1OQn9etsKxdkMA+Jwm4gKCosjmoBne0N/emnz0RL+q5lX+rKDU2rnCSBCAQJTIpEkAb0cE2kExa8ioHQIAL4mEwX+Vd0JAKwuCUE4eAAg5TUewP8GxagzJjr+BQCAPLKIASBsUvTA///MAKxoCDjARgYAGlaTWMIKAJ8+eqlkaCMB51cawQnFblzXRv79VwYAo1lpVMEGAHFecATAbC4BeV/0O/46/sTdwP57BwByoXDG33oKAKBnCfDA+xcEAN5tIsA6wQMgj3J6wnjBxgDrViPBEADZe198x+L/mcL/bQ3FeYfXOjI4wMAJxXGNS2rBwG8MAFCNBwr+WMBMEwAbj5hYdpdu/8H+B8IIIJKSgMTAwjrCxeBoDQCVkwY6/PvgwUz/RxEAHpOTR8OIhWpzBMXjkwLA/wcAxpvZ/1LdDACaoQn9O0xXeg0Af6Zwdwf/emwOAIemACODwMTeXMAPAIa7xifEYGFqFwEAy2FqeODAw8NpdMGhwQ4gftr9+/vAOv5cLQFZ49r//zj7+d7+///+wAfFpOAEMV0IAFHolmDFew0Aiugc/j/D+uHBwMGMBgCS61d7wQwAe+4DPPz64VTBjAQAczZagCoBePVWeMAFTw0ghPZASnv/zQB+3E5iYBgA/Dmwx97DXMDAncUEeMVUjREQYgHWBfz/2/0xwGJnCNWKBR1EhAkQogH0wFGkCRB6C0nCiyYMMIEMRsB0S80Q1i0wYsBxCBAdDTTgw0PBBxCX3Dpj4MMHEJIaQL2CAjBZHlBLwQbVXhtswTccEBwgH11s4Dn9/f/9/Tr/xOD+/8H+wf8EBhRRJExX/RwQ2i7Te2lK/v7+/Tk1QN/BwGUEEMn+MXgjEW5JSf0d1SFLwHFnwMAz/T78+xNHwP/CYh3VKFvz/lLBXzP9PvwuGFWD/1JCAM5DBSABC0VS', 3, 1, 0, 'BJ36195260254', '2021-03-16 19:12:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `badgenumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `defaultdeptid` int(11) NULL DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Card` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Privilege` int(11) NULL DEFAULT NULL,
  `AccGroup` int(11) NULL DEFAULT NULL,
  `TimeZones` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Birthday` datetime(0) NULL DEFAULT NULL,
  `street` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ophone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `FPHONE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pager` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `minzu` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SSN` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `UTime` datetime(0) NULL DEFAULT NULL,
  `State` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `City` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SECURITYFLAGS` smallint(6) NULL DEFAULT NULL,
  `DelTag` smallint(6) NULL DEFAULT NULL,
  `RegisterOT` int(11) NULL DEFAULT NULL,
  `AutoSchPlan` int(11) NULL DEFAULT NULL,
  `MinAutoSchInterval` int(11) NULL DEFAULT NULL,
  `Image_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE,
  INDEX `userinfo_defaultdeptid`(`defaultdeptid`) USING BTREE,
  INDEX `userinfo_SN`(`SN`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, '000000002', 1, 'Fatimatus Sa\'Diah', '', '', NULL, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-12 19:03:25', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (2, '000000001', 1, 'Ika Arsianti Dewi', '', '', 14, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-13 11:46:31', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (3, '000000003', 1, 'Fitri Andiani', '', '', NULL, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-12 19:03:25', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (4, '000000004', 1, 'Teddy Munawar', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-13 14:25:52', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (5, '000000005', 1, 'Febri Suhandi', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-13 14:28:03', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (6, '000000006', 1, 'Ubayt Kurniawan', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-12 19:03:25', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (7, '000000007', 4, 'Yogyantoro', '123456', '', 14, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-12 20:09:10', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (8, '000000008', 1, 'Zuleka Endah Pujiastuti', '', '0117000006', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (9, '000000009', 1, ' Rakhmat Januardy', '', '0117010007', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (10, '000000010', 1, ' Rahmad Nurhadi', '', '0117010008', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (11, '000000011', 1, ' Ananda Karina', '', '0117070009', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (12, '000000012', 1, ' Mochammad Rila Alafi', '', '0117090010', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (13, '000000013', 1, ' Jefri', '', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (14, '000000014', 1, 'Erwin Nugraha', '', '118030012', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-12 16:08:23', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (15, '000000015', 1, ' Daraswati Zakirah', '', '0119020013', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (16, '000000016', 1, ' Budi Susilo', '', '0119010014', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (17, '000000017', 1, ' Suharsono', '', '0119010015', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (18, '000000018', 1, 'Ahmad Fauzan', '', '119020016', 14, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-12 21:41:45', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (19, '000000019', 1, 'Syarifah Nuraini', '', '119050017', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-12 16:09:43', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (20, '000000020', 1, ' Nadhea Clarasari Azharia', '', '0119000018', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (21, '000000021', 1, ' Asteria Bunga Indah', '', '0119070019', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (22, '000000022', 1, ' Nicolaas Ehrlich Riwoe', '', '0119100020', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (23, '000000023', 1, ' Ratna Purnamasari', '', '0120020021', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (24, '000000024', 1, ' Bayuadhi Indrayana', '', '0120040022', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (25, '000000025', 1, ' Chandra Regina', '', '0120060023', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (26, '000000026', 1, ' Hendri Walesa', '', '0120060024', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (27, '000000027', 1, ' Alifia Syahda', '', '0120070025', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (28, '000000028', 1, ' Dewi Puspita', '', '0120070026', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (29, '000000029', 1, ' Indah Susanti', '', '0120000027', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (30, '000000030', 1, ' Fani Sintya Pratiwi', '', '0120080028', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (31, '000000031', 1, ' Dira Arisman', '', '0120080029', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (32, '000000032', 1, 'Maulana Fadlan', '', '0120000030', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (33, '000000033', 1, ' Muchlis Ramadhan', '', '0120090031', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (34, '000000034', 1, ' Mariatul Kiftiah', '', '0100000000', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (35, '000000035', 1, ' Yugo Goutomo ', '', '0100000000', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (36, '000000036', 1, ' Roristua Pandiangan', '', '0120120032', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (37, '000000037', 1, ' Tri Puspita Sari', '', '0120120033', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (38, '000000038', 1, ' Ahmad Ghozali', '', '0120120034', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (39, '000000039', 1, ' Fertho Pasaribu', '', '0121010035', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (40, '000000040', 1, ' Nuruddin Lazuardi', '', '0100000000', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (41, '000000041', 1, ' Ebid Dilli Wanto', '', '0121020036', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (42, '000000042', 10, 'Peri Priatna', '', '', 14, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260321', NULL, '2021-03-12 20:11:06', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (43, '000000043', 10, 'Okki Rubiyantoro', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260321', NULL, '2021-03-13 10:08:24', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (44, '000000044', 10, 'Rini Aprianti', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260321', NULL, '2021-03-13 14:28:43', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (45, '000000045', 10, 'Geovani', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260321', NULL, '2021-03-13 10:05:28', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (46, '000000046', 10, 'Intan Nurrahmah', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260321', NULL, '2021-03-13 09:55:53', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (47, '000000047', 10, 'Ahmad Agung', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260321', NULL, '2021-03-14 09:56:18', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (48, '000000048', 10, 'Wawan Hendrawan', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260321', NULL, '2021-03-13 14:31:38', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (49, '000000049', 10, 'Reni Andani', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260321', NULL, '2021-03-13 14:30:37', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (50, '000000050', 10, 'Alda Eka Putri', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260321', NULL, '2021-03-13 14:26:43', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (51, '000000051', 8, 'AGUS SUSIANTO', '', '', NULL, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-12 21:44:55', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (52, '000000052', 9, 'Dede Erwan Taufik. N', '', '', NULL, NULL, '', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (53, '000000053', 9, 'Ijad Mujadid', '', '', 2, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 13:50:27', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (54, '000000054', 9, 'Nurul Rahmawati', '', '', 2, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 13:57:17', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (55, '000000055', 9, 'Suherman', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 13:52:27', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (56, '000000056', 9, 'Tia Aulia Derbian Rustini', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 14:32:08', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (57, '000000057', 9, 'Asep Rahman', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 13:53:27', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (58, '000000058', 9, 'Mulyana Agustiawan', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 14:44:03', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (59, '000000059', 9, 'Iskandar', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 14:30:17', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (60, '000000060', 9, 'Sandi Susandi', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 13:58:17', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (61, '000000061', 9, 'Dzaky Ridho Russhofwan', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 13:59:42', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (62, '000000062', 9, 'Salma Rosmalah Kurnia', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 13:54:57', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (63, '000000063', 9, 'Syiffa Hermawati', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 14:03:12', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (64, '000000064', 9, 'Bayu Mustika Hendra', '', '', 0, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BWXP205260364', NULL, '2021-03-13 14:01:32', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (65, '000000065', 4, 'Irvanda Auldrien', '654321', '', 2, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-13 11:44:31', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (66, '000000066', 4, 'Satrio Rama', '654321', '', 14, 1, '0000000100000000', NULL, NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, '2021-03-16 19:12:52', NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);
INSERT INTO `userinfo` VALUES (67, '000000067', 4, ' Bayu Setiawan', '', '', NULL, NULL, '', 'M', NULL, '', '', '', '', '', '', '', 'BJ36195260254', NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('9737d974-4eae-4287-a855-ae23db4b6199', 'admin', 'admin@anomali.co.id', 'admin', NULL, '$2y$10$RJ2l3WP7ppCqviLsWXHECOt6z5gQWQLhNqeRM7BWwUub200fD2KK6', 'WBzFaMIBp8O8xovOqUGR5qtVe2BSwuRMJ9ZjMPupr1LIhplTLgrQr6UE6R1K', '2021-03-17 07:05:14', '2021-03-17 07:05:14');
INSERT INTO `users` VALUES ('77591ea3-e1bb-4d72-9435-a5e45c741eca', 'hrd', 'hrd@anomali.co.id', 'hrd', NULL, '$2y$10$wmh5LHPf6i6lokR4UIlN9utikG6hIcj4nqUKNuCHODaD19RYRwGtK', NULL, '2021-03-17 07:05:14', '2021-03-17 07:05:14');
INSERT INTO `users` VALUES ('9327f0f8-aeb4-4f4c-bd2d-e84f0ddafdb8', 'staff', 'staff@anomali.co.id', 'staff', NULL, '$2y$10$qyR9DfCBu6Uf/U3jjDSHbuW1KOZt1qgaBPAT56wbApPliOH3eRKku', NULL, '2021-03-17 07:05:14', '2021-03-17 07:05:14');

SET FOREIGN_KEY_CHECKS = 1;
