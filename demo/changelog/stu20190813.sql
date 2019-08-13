/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : stu

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2019-08-13 16:14:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '0', '1', 'Dashboard', 'fa-bar-chart', '/', null, null, null);
INSERT INTO `admin_menu` VALUES ('2', '0', '2', 'Admin', 'fa-tasks', '', null, null, null);
INSERT INTO `admin_menu` VALUES ('3', '2', '3', 'Users', 'fa-users', 'auth/users', null, null, null);
INSERT INTO `admin_menu` VALUES ('4', '2', '4', 'Roles', 'fa-user', 'auth/roles', null, null, null);
INSERT INTO `admin_menu` VALUES ('5', '2', '5', 'Permission', 'fa-ban', 'auth/permissions', null, null, null);
INSERT INTO `admin_menu` VALUES ('6', '2', '6', 'Menu', 'fa-bars', 'auth/menu', null, null, null);
INSERT INTO `admin_menu` VALUES ('7', '2', '7', 'Operation log', 'fa-history', 'auth/logs', null, null, null);
INSERT INTO `admin_menu` VALUES ('8', '9', '0', 'Student', 'fa-bars', '/students', '*', '2019-08-09 07:26:28', '2019-08-09 15:44:26');
INSERT INTO `admin_menu` VALUES ('9', '0', '0', 'Manage', 'fa-bank', null, null, '2019-08-09 15:44:07', '2019-08-09 15:44:07');
INSERT INTO `admin_menu` VALUES ('10', '9', '0', 'StudentInfo', 'fa-bars', '/student-infos', null, '2019-08-09 15:44:56', '2019-08-09 15:44:56');
INSERT INTO `admin_menu` VALUES ('11', '9', '0', 'Classroom', 'fa-bars', '/classrooms', null, '2019-08-09 15:45:19', '2019-08-09 15:45:29');
INSERT INTO `admin_menu` VALUES ('12', '9', '0', 'Course', 'fa-bars', '/courses', null, '2019-08-09 15:46:00', '2019-08-09 15:46:00');

-- ----------------------------
-- Table structure for admin_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `admin_operation_log`;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_operation_log
-- ----------------------------
INSERT INTO `admin_operation_log` VALUES ('1', '1', 'admin', 'GET', '127.0.0.1', '[]', '2019-08-09 07:24:46', '2019-08-09 07:24:46');
INSERT INTO `admin_operation_log` VALUES ('2', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 07:25:52', '2019-08-09 07:25:52');
INSERT INTO `admin_operation_log` VALUES ('3', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"2\",\"title\":\"Student\",\"icon\":\"fa-bars\",\"uri\":\"\\/students\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\"}', '2019-08-09 07:26:28', '2019-08-09 07:26:28');
INSERT INTO `admin_operation_log` VALUES ('4', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-09 07:26:28', '2019-08-09 07:26:28');
INSERT INTO `admin_operation_log` VALUES ('5', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-09 07:26:31', '2019-08-09 07:26:31');
INSERT INTO `admin_operation_log` VALUES ('6', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 07:26:34', '2019-08-09 07:26:34');
INSERT INTO `admin_operation_log` VALUES ('7', '1', 'admin/students/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 07:26:40', '2019-08-09 07:26:40');
INSERT INTO `admin_operation_log` VALUES ('8', '1', 'admin/students/create', 'GET', '127.0.0.1', '[]', '2019-08-09 15:30:12', '2019-08-09 15:30:12');
INSERT INTO `admin_operation_log` VALUES ('9', '1', 'admin/students/create', 'GET', '127.0.0.1', '[]', '2019-08-09 15:42:50', '2019-08-09 15:42:50');
INSERT INTO `admin_operation_log` VALUES ('10', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:42:53', '2019-08-09 15:42:53');
INSERT INTO `admin_operation_log` VALUES ('11', '1', 'admin/auth/menu/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:43:29', '2019-08-09 15:43:29');
INSERT INTO `admin_operation_log` VALUES ('12', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:43:35', '2019-08-09 15:43:35');
INSERT INTO `admin_operation_log` VALUES ('13', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Manage\",\"icon\":\"fa-bank\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\"}', '2019-08-09 15:44:07', '2019-08-09 15:44:07');
INSERT INTO `admin_operation_log` VALUES ('14', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-09 15:44:07', '2019-08-09 15:44:07');
INSERT INTO `admin_operation_log` VALUES ('15', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:44:12', '2019-08-09 15:44:12');
INSERT INTO `admin_operation_log` VALUES ('16', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:44:15', '2019-08-09 15:44:15');
INSERT INTO `admin_operation_log` VALUES ('17', '1', 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:44:18', '2019-08-09 15:44:18');
INSERT INTO `admin_operation_log` VALUES ('18', '1', 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"Student\",\"icon\":\"fa-bars\",\"uri\":\"\\/students\",\"roles\":[null],\"permission\":\"*\",\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.laravel.test\\/admin\\/auth\\/menu\"}', '2019-08-09 15:44:26', '2019-08-09 15:44:26');
INSERT INTO `admin_operation_log` VALUES ('19', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-09 15:44:26', '2019-08-09 15:44:26');
INSERT INTO `admin_operation_log` VALUES ('20', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-09 15:44:28', '2019-08-09 15:44:28');
INSERT INTO `admin_operation_log` VALUES ('21', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"StudentInfo\",\"icon\":\"fa-bars\",\"uri\":\"\\/student-infos\",\"roles\":[null],\"permission\":null,\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\"}', '2019-08-09 15:44:56', '2019-08-09 15:44:56');
INSERT INTO `admin_operation_log` VALUES ('22', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-09 15:44:56', '2019-08-09 15:44:56');
INSERT INTO `admin_operation_log` VALUES ('23', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Classroom\",\"icon\":\"fa-bars\",\"uri\":\"\\/classrooms\",\"roles\":[null],\"permission\":null,\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\"}', '2019-08-09 15:45:19', '2019-08-09 15:45:19');
INSERT INTO `admin_operation_log` VALUES ('24', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-09 15:45:19', '2019-08-09 15:45:19');
INSERT INTO `admin_operation_log` VALUES ('25', '1', 'admin/auth/menu/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:45:22', '2019-08-09 15:45:22');
INSERT INTO `admin_operation_log` VALUES ('26', '1', 'admin/auth/menu/11', 'PUT', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"Classroom\",\"icon\":\"fa-bars\",\"uri\":\"\\/classrooms\",\"roles\":[null],\"permission\":null,\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.laravel.test\\/admin\\/auth\\/menu\"}', '2019-08-09 15:45:29', '2019-08-09 15:45:29');
INSERT INTO `admin_operation_log` VALUES ('27', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-09 15:45:29', '2019-08-09 15:45:29');
INSERT INTO `admin_operation_log` VALUES ('28', '1', 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"9\",\"title\":\"Course\",\"icon\":\"fa-bars\",\"uri\":\"\\/courses\",\"roles\":[null],\"permission\":null,\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\"}', '2019-08-09 15:46:00', '2019-08-09 15:46:00');
INSERT INTO `admin_operation_log` VALUES ('29', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-09 15:46:00', '2019-08-09 15:46:00');
INSERT INTO `admin_operation_log` VALUES ('30', '1', 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2019-08-09 15:46:01', '2019-08-09 15:46:01');
INSERT INTO `admin_operation_log` VALUES ('31', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:06', '2019-08-09 15:46:06');
INSERT INTO `admin_operation_log` VALUES ('32', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:08', '2019-08-09 15:46:08');
INSERT INTO `admin_operation_log` VALUES ('33', '1', 'admin/classrooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:09', '2019-08-09 15:46:09');
INSERT INTO `admin_operation_log` VALUES ('34', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:11', '2019-08-09 15:46:11');
INSERT INTO `admin_operation_log` VALUES ('35', '1', 'admin/classrooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:13', '2019-08-09 15:46:13');
INSERT INTO `admin_operation_log` VALUES ('36', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:14', '2019-08-09 15:46:14');
INSERT INTO `admin_operation_log` VALUES ('37', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:15', '2019-08-09 15:46:15');
INSERT INTO `admin_operation_log` VALUES ('38', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:34', '2019-08-09 15:46:34');
INSERT INTO `admin_operation_log` VALUES ('39', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:34', '2019-08-09 15:46:34');
INSERT INTO `admin_operation_log` VALUES ('40', '1', 'admin/classrooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:35', '2019-08-09 15:46:35');
INSERT INTO `admin_operation_log` VALUES ('41', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:36', '2019-08-09 15:46:36');
INSERT INTO `admin_operation_log` VALUES ('42', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:46:37', '2019-08-09 15:46:37');
INSERT INTO `admin_operation_log` VALUES ('43', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:47:22', '2019-08-09 15:47:22');
INSERT INTO `admin_operation_log` VALUES ('44', '1', 'admin/students/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:47:25', '2019-08-09 15:47:25');
INSERT INTO `admin_operation_log` VALUES ('45', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:47:50', '2019-08-09 15:47:50');
INSERT INTO `admin_operation_log` VALUES ('46', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 15:53:22', '2019-08-09 15:53:22');
INSERT INTO `admin_operation_log` VALUES ('47', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:57:33', '2019-08-09 15:57:33');
INSERT INTO `admin_operation_log` VALUES ('48', '1', 'admin/classrooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:57:35', '2019-08-09 15:57:35');
INSERT INTO `admin_operation_log` VALUES ('49', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 15:57:36', '2019-08-09 15:57:36');
INSERT INTO `admin_operation_log` VALUES ('50', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:21:22', '2019-08-09 16:21:22');
INSERT INTO `admin_operation_log` VALUES ('51', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:21:22', '2019-08-09 16:21:22');
INSERT INTO `admin_operation_log` VALUES ('52', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:21:23', '2019-08-09 16:21:23');
INSERT INTO `admin_operation_log` VALUES ('53', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:21:24', '2019-08-09 16:21:24');
INSERT INTO `admin_operation_log` VALUES ('54', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:24:04', '2019-08-09 16:24:04');
INSERT INTO `admin_operation_log` VALUES ('55', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:24:04', '2019-08-09 16:24:04');
INSERT INTO `admin_operation_log` VALUES ('56', '1', 'admin/classrooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:24:05', '2019-08-09 16:24:05');
INSERT INTO `admin_operation_log` VALUES ('57', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:24:05', '2019-08-09 16:24:05');
INSERT INTO `admin_operation_log` VALUES ('58', '1', 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-08-09 16:25:14', '2019-08-09 16:25:14');
INSERT INTO `admin_operation_log` VALUES ('59', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:56:14', '2019-08-09 16:56:14');
INSERT INTO `admin_operation_log` VALUES ('60', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:56:31', '2019-08-09 16:56:31');
INSERT INTO `admin_operation_log` VALUES ('61', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:57:03', '2019-08-09 16:57:03');
INSERT INTO `admin_operation_log` VALUES ('62', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:57:13', '2019-08-09 16:57:13');
INSERT INTO `admin_operation_log` VALUES ('63', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:57:23', '2019-08-09 16:57:23');
INSERT INTO `admin_operation_log` VALUES ('64', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:57:37', '2019-08-09 16:57:37');
INSERT INTO `admin_operation_log` VALUES ('65', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:58:21', '2019-08-09 16:58:21');
INSERT INTO `admin_operation_log` VALUES ('66', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:58:27', '2019-08-09 16:58:27');
INSERT INTO `admin_operation_log` VALUES ('67', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:58:38', '2019-08-09 16:58:38');
INSERT INTO `admin_operation_log` VALUES ('68', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:58:43', '2019-08-09 16:58:43');
INSERT INTO `admin_operation_log` VALUES ('69', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:59:01', '2019-08-09 16:59:01');
INSERT INTO `admin_operation_log` VALUES ('70', '1', 'admin/students/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5f20\\u4e09\",\"classroom_id\":\"1\",\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.laravel.test\\/admin\\/students\"}', '2019-08-09 16:59:03', '2019-08-09 16:59:03');
INSERT INTO `admin_operation_log` VALUES ('71', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:59:03', '2019-08-09 16:59:03');
INSERT INTO `admin_operation_log` VALUES ('72', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:59:06', '2019-08-09 16:59:06');
INSERT INTO `admin_operation_log` VALUES ('73', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:59:07', '2019-08-09 16:59:07');
INSERT INTO `admin_operation_log` VALUES ('74', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:59:11', '2019-08-09 16:59:11');
INSERT INTO `admin_operation_log` VALUES ('75', '1', 'admin/students/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5f20\\u4e09\",\"classroom_id\":\"2\",\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.laravel.test\\/admin\\/students\"}', '2019-08-09 16:59:14', '2019-08-09 16:59:14');
INSERT INTO `admin_operation_log` VALUES ('76', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:59:15', '2019-08-09 16:59:15');
INSERT INTO `admin_operation_log` VALUES ('77', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 16:59:17', '2019-08-09 16:59:17');
INSERT INTO `admin_operation_log` VALUES ('78', '1', 'admin/students/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5f20\\u4e09\",\"classroom_id\":\"1\",\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.laravel.test\\/admin\\/students\"}', '2019-08-09 16:59:19', '2019-08-09 16:59:19');
INSERT INTO `admin_operation_log` VALUES ('79', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:59:20', '2019-08-09 16:59:20');
INSERT INTO `admin_operation_log` VALUES ('80', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 16:59:21', '2019-08-09 16:59:21');
INSERT INTO `admin_operation_log` VALUES ('81', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 17:00:33', '2019-08-09 17:00:33');
INSERT INTO `admin_operation_log` VALUES ('82', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 17:00:35', '2019-08-09 17:00:35');
INSERT INTO `admin_operation_log` VALUES ('83', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:00:45', '2019-08-09 17:00:45');
INSERT INTO `admin_operation_log` VALUES ('84', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:00:52', '2019-08-09 17:00:52');
INSERT INTO `admin_operation_log` VALUES ('85', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 17:00:55', '2019-08-09 17:00:55');
INSERT INTO `admin_operation_log` VALUES ('86', '1', 'admin/students/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:00:59', '2019-08-09 17:00:59');
INSERT INTO `admin_operation_log` VALUES ('87', '1', 'admin/students/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:01:18', '2019-08-09 17:01:18');
INSERT INTO `admin_operation_log` VALUES ('88', '1', 'admin/students/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:02:32', '2019-08-09 17:02:32');
INSERT INTO `admin_operation_log` VALUES ('89', '1', 'admin/students/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:03:22', '2019-08-09 17:03:22');
INSERT INTO `admin_operation_log` VALUES ('90', '1', 'admin/students/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:03:43', '2019-08-09 17:03:43');
INSERT INTO `admin_operation_log` VALUES ('91', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:03:46', '2019-08-09 17:03:46');
INSERT INTO `admin_operation_log` VALUES ('92', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:03:49', '2019-08-09 17:03:49');
INSERT INTO `admin_operation_log` VALUES ('93', '1', 'admin/students/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:03:53', '2019-08-09 17:03:53');
INSERT INTO `admin_operation_log` VALUES ('94', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:04:06', '2019-08-09 17:04:06');
INSERT INTO `admin_operation_log` VALUES ('95', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:04:10', '2019-08-09 17:04:10');
INSERT INTO `admin_operation_log` VALUES ('96', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:09:16', '2019-08-09 17:09:16');
INSERT INTO `admin_operation_log` VALUES ('97', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:09:31', '2019-08-09 17:09:31');
INSERT INTO `admin_operation_log` VALUES ('98', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:09:48', '2019-08-09 17:09:48');
INSERT INTO `admin_operation_log` VALUES ('99', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:10:33', '2019-08-09 17:10:33');
INSERT INTO `admin_operation_log` VALUES ('100', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:10:47', '2019-08-09 17:10:47');
INSERT INTO `admin_operation_log` VALUES ('101', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:10:55', '2019-08-09 17:10:55');
INSERT INTO `admin_operation_log` VALUES ('102', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:11:11', '2019-08-09 17:11:11');
INSERT INTO `admin_operation_log` VALUES ('103', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:11:16', '2019-08-09 17:11:16');
INSERT INTO `admin_operation_log` VALUES ('104', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:11:21', '2019-08-09 17:11:21');
INSERT INTO `admin_operation_log` VALUES ('105', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:11:45', '2019-08-09 17:11:45');
INSERT INTO `admin_operation_log` VALUES ('106', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:11:51', '2019-08-09 17:11:51');
INSERT INTO `admin_operation_log` VALUES ('107', '1', 'admin/students/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5f20\\u4e09\",\"classroom_id\":\"2\",\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\"}', '2019-08-09 17:11:54', '2019-08-09 17:11:54');
INSERT INTO `admin_operation_log` VALUES ('108', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 17:11:54', '2019-08-09 17:11:54');
INSERT INTO `admin_operation_log` VALUES ('109', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:11:58', '2019-08-09 17:11:58');
INSERT INTO `admin_operation_log` VALUES ('110', '1', 'admin/students/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5f20\\u4e09\",\"classroom_id\":\"1\",\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.laravel.test\\/admin\\/students\"}', '2019-08-09 17:12:01', '2019-08-09 17:12:01');
INSERT INTO `admin_operation_log` VALUES ('111', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 17:12:01', '2019-08-09 17:12:01');
INSERT INTO `admin_operation_log` VALUES ('112', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 17:12:31', '2019-08-09 17:12:31');
INSERT INTO `admin_operation_log` VALUES ('113', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:12:33', '2019-08-09 17:12:33');
INSERT INTO `admin_operation_log` VALUES ('114', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:12:43', '2019-08-09 17:12:43');
INSERT INTO `admin_operation_log` VALUES ('115', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:13:08', '2019-08-09 17:13:08');
INSERT INTO `admin_operation_log` VALUES ('116', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:13:17', '2019-08-09 17:13:17');
INSERT INTO `admin_operation_log` VALUES ('117', '1', 'admin/students/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5f20\\u4e09\",\"classroom_id\":\"1\",\"info\":{\"age\":\"19\"},\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\"}', '2019-08-09 17:13:22', '2019-08-09 17:13:22');
INSERT INTO `admin_operation_log` VALUES ('118', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:13:22', '2019-08-09 17:13:22');
INSERT INTO `admin_operation_log` VALUES ('119', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '[]', '2019-08-09 17:14:03', '2019-08-09 17:14:03');
INSERT INTO `admin_operation_log` VALUES ('120', '1', 'admin/students/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5f20\\u4e09\",\"classroom_id\":\"1\",\"info\":{\"age\":\"19\"},\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\"}', '2019-08-09 17:14:07', '2019-08-09 17:14:07');
INSERT INTO `admin_operation_log` VALUES ('121', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 17:14:07', '2019-08-09 17:14:07');
INSERT INTO `admin_operation_log` VALUES ('122', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:14:09', '2019-08-09 17:14:09');
INSERT INTO `admin_operation_log` VALUES ('123', '1', 'admin/students/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u5f20\\u4e09\",\"classroom_id\":\"1\",\"info\":{\"age\":\"18\"},\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.laravel.test\\/admin\\/students\"}', '2019-08-09 17:14:13', '2019-08-09 17:14:13');
INSERT INTO `admin_operation_log` VALUES ('124', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 17:14:13', '2019-08-09 17:14:13');
INSERT INTO `admin_operation_log` VALUES ('125', '1', 'admin/students', 'GET', '127.0.0.1', '[]', '2019-08-09 17:14:14', '2019-08-09 17:14:14');
INSERT INTO `admin_operation_log` VALUES ('126', '1', 'admin/classrooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:16:43', '2019-08-09 17:16:43');
INSERT INTO `admin_operation_log` VALUES ('127', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:17:53', '2019-08-09 17:17:53');
INSERT INTO `admin_operation_log` VALUES ('128', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:18:54', '2019-08-09 17:18:54');
INSERT INTO `admin_operation_log` VALUES ('129', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:19:06', '2019-08-09 17:19:06');
INSERT INTO `admin_operation_log` VALUES ('130', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:19:16', '2019-08-09 17:19:16');
INSERT INTO `admin_operation_log` VALUES ('131', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:20:06', '2019-08-09 17:20:06');
INSERT INTO `admin_operation_log` VALUES ('132', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:20:22', '2019-08-09 17:20:22');
INSERT INTO `admin_operation_log` VALUES ('133', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:20:36', '2019-08-09 17:20:36');
INSERT INTO `admin_operation_log` VALUES ('134', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:20:40', '2019-08-09 17:20:40');
INSERT INTO `admin_operation_log` VALUES ('135', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:20:52', '2019-08-09 17:20:52');
INSERT INTO `admin_operation_log` VALUES ('136', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:20:59', '2019-08-09 17:20:59');
INSERT INTO `admin_operation_log` VALUES ('137', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:21:08', '2019-08-09 17:21:08');
INSERT INTO `admin_operation_log` VALUES ('138', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:21:33', '2019-08-09 17:21:33');
INSERT INTO `admin_operation_log` VALUES ('139', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:21:50', '2019-08-09 17:21:50');
INSERT INTO `admin_operation_log` VALUES ('140', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:22:03', '2019-08-09 17:22:03');
INSERT INTO `admin_operation_log` VALUES ('141', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:22:08', '2019-08-09 17:22:08');
INSERT INTO `admin_operation_log` VALUES ('142', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:24:30', '2019-08-09 17:24:30');
INSERT INTO `admin_operation_log` VALUES ('143', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:25:01', '2019-08-09 17:25:01');
INSERT INTO `admin_operation_log` VALUES ('144', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:25:08', '2019-08-09 17:25:08');
INSERT INTO `admin_operation_log` VALUES ('145', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:26:44', '2019-08-09 17:26:44');
INSERT INTO `admin_operation_log` VALUES ('146', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:27:06', '2019-08-09 17:27:06');
INSERT INTO `admin_operation_log` VALUES ('147', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:27:57', '2019-08-09 17:27:57');
INSERT INTO `admin_operation_log` VALUES ('148', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:28:21', '2019-08-09 17:28:21');
INSERT INTO `admin_operation_log` VALUES ('149', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:28:28', '2019-08-09 17:28:28');
INSERT INTO `admin_operation_log` VALUES ('150', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:29:36', '2019-08-09 17:29:36');
INSERT INTO `admin_operation_log` VALUES ('151', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:30:01', '2019-08-09 17:30:01');
INSERT INTO `admin_operation_log` VALUES ('152', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:30:32', '2019-08-09 17:30:32');
INSERT INTO `admin_operation_log` VALUES ('153', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:30:56', '2019-08-09 17:30:56');
INSERT INTO `admin_operation_log` VALUES ('154', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:31:30', '2019-08-09 17:31:30');
INSERT INTO `admin_operation_log` VALUES ('155', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:31:41', '2019-08-09 17:31:41');
INSERT INTO `admin_operation_log` VALUES ('156', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:31:59', '2019-08-09 17:31:59');
INSERT INTO `admin_operation_log` VALUES ('157', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:32:07', '2019-08-09 17:32:07');
INSERT INTO `admin_operation_log` VALUES ('158', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:32:20', '2019-08-09 17:32:20');
INSERT INTO `admin_operation_log` VALUES ('159', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:32:26', '2019-08-09 17:32:26');
INSERT INTO `admin_operation_log` VALUES ('160', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:32:31', '2019-08-09 17:32:31');
INSERT INTO `admin_operation_log` VALUES ('161', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:32:33', '2019-08-09 17:32:33');
INSERT INTO `admin_operation_log` VALUES ('162', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:33:13', '2019-08-09 17:33:13');
INSERT INTO `admin_operation_log` VALUES ('163', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:33:38', '2019-08-09 17:33:38');
INSERT INTO `admin_operation_log` VALUES ('164', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:33:44', '2019-08-09 17:33:44');
INSERT INTO `admin_operation_log` VALUES ('165', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:33:49', '2019-08-09 17:33:49');
INSERT INTO `admin_operation_log` VALUES ('166', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:34:36', '2019-08-09 17:34:36');
INSERT INTO `admin_operation_log` VALUES ('167', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:35:08', '2019-08-09 17:35:08');
INSERT INTO `admin_operation_log` VALUES ('168', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:36:57', '2019-08-09 17:36:57');
INSERT INTO `admin_operation_log` VALUES ('169', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:37:13', '2019-08-09 17:37:13');
INSERT INTO `admin_operation_log` VALUES ('170', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:37:21', '2019-08-09 17:37:21');
INSERT INTO `admin_operation_log` VALUES ('171', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:37:22', '2019-08-09 17:37:22');
INSERT INTO `admin_operation_log` VALUES ('172', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:37:30', '2019-08-09 17:37:30');
INSERT INTO `admin_operation_log` VALUES ('173', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:37:56', '2019-08-09 17:37:56');
INSERT INTO `admin_operation_log` VALUES ('174', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:38:22', '2019-08-09 17:38:22');
INSERT INTO `admin_operation_log` VALUES ('175', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:38:23', '2019-08-09 17:38:23');
INSERT INTO `admin_operation_log` VALUES ('176', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:38:29', '2019-08-09 17:38:29');
INSERT INTO `admin_operation_log` VALUES ('177', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:38:33', '2019-08-09 17:38:33');
INSERT INTO `admin_operation_log` VALUES ('178', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:38:56', '2019-08-09 17:38:56');
INSERT INTO `admin_operation_log` VALUES ('179', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:39:13', '2019-08-09 17:39:13');
INSERT INTO `admin_operation_log` VALUES ('180', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:39:19', '2019-08-09 17:39:19');
INSERT INTO `admin_operation_log` VALUES ('181', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:39:20', '2019-08-09 17:39:20');
INSERT INTO `admin_operation_log` VALUES ('182', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:39:20', '2019-08-09 17:39:20');
INSERT INTO `admin_operation_log` VALUES ('183', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:39:20', '2019-08-09 17:39:20');
INSERT INTO `admin_operation_log` VALUES ('184', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:39:55', '2019-08-09 17:39:55');
INSERT INTO `admin_operation_log` VALUES ('185', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:40:04', '2019-08-09 17:40:04');
INSERT INTO `admin_operation_log` VALUES ('186', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:40:16', '2019-08-09 17:40:16');
INSERT INTO `admin_operation_log` VALUES ('187', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:40:22', '2019-08-09 17:40:22');
INSERT INTO `admin_operation_log` VALUES ('188', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:40:37', '2019-08-09 17:40:37');
INSERT INTO `admin_operation_log` VALUES ('189', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:40:50', '2019-08-09 17:40:50');
INSERT INTO `admin_operation_log` VALUES ('190', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:43:53', '2019-08-09 17:43:53');
INSERT INTO `admin_operation_log` VALUES ('191', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:43:54', '2019-08-09 17:43:54');
INSERT INTO `admin_operation_log` VALUES ('192', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:44:07', '2019-08-09 17:44:07');
INSERT INTO `admin_operation_log` VALUES ('193', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:44:18', '2019-08-09 17:44:18');
INSERT INTO `admin_operation_log` VALUES ('194', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:44:24', '2019-08-09 17:44:24');
INSERT INTO `admin_operation_log` VALUES ('195', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:44:51', '2019-08-09 17:44:51');
INSERT INTO `admin_operation_log` VALUES ('196', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:44:52', '2019-08-09 17:44:52');
INSERT INTO `admin_operation_log` VALUES ('197', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:45:05', '2019-08-09 17:45:05');
INSERT INTO `admin_operation_log` VALUES ('198', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:45:24', '2019-08-09 17:45:24');
INSERT INTO `admin_operation_log` VALUES ('199', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:45:37', '2019-08-09 17:45:37');
INSERT INTO `admin_operation_log` VALUES ('200', '1', 'admin/classrooms/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:45:49', '2019-08-09 17:45:49');
INSERT INTO `admin_operation_log` VALUES ('201', '1', 'admin/classrooms/1', 'PUT', '127.0.0.1', '{\"name\":\"1\\u73ed\",\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.laravel.test\\/admin\\/classrooms\"}', '2019-08-09 17:45:54', '2019-08-09 17:45:54');
INSERT INTO `admin_operation_log` VALUES ('202', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:45:54', '2019-08-09 17:45:54');
INSERT INTO `admin_operation_log` VALUES ('203', '1', 'admin/classrooms/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:45:56', '2019-08-09 17:45:56');
INSERT INTO `admin_operation_log` VALUES ('204', '1', 'admin/classrooms/1', 'PUT', '127.0.0.1', '{\"name\":\"\\u4e00\\u73ed\",\"_token\":\"ILsYzfeOpFeeaWcLOWgH6TliOH3vLy9vXtztYhlT\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/demo.laravel.test\\/admin\\/classrooms\"}', '2019-08-09 17:46:02', '2019-08-09 17:46:02');
INSERT INTO `admin_operation_log` VALUES ('205', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:46:02', '2019-08-09 17:46:02');
INSERT INTO `admin_operation_log` VALUES ('206', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:46:03', '2019-08-09 17:46:03');
INSERT INTO `admin_operation_log` VALUES ('207', '1', 'admin/classrooms', 'GET', '127.0.0.1', '[]', '2019-08-09 17:46:13', '2019-08-09 17:46:13');
INSERT INTO `admin_operation_log` VALUES ('208', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:46:35', '2019-08-09 17:46:35');
INSERT INTO `admin_operation_log` VALUES ('209', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:48:52', '2019-08-09 17:48:52');
INSERT INTO `admin_operation_log` VALUES ('210', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:49:14', '2019-08-09 17:49:14');
INSERT INTO `admin_operation_log` VALUES ('211', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:49:34', '2019-08-09 17:49:34');
INSERT INTO `admin_operation_log` VALUES ('212', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:50:28', '2019-08-09 17:50:28');
INSERT INTO `admin_operation_log` VALUES ('213', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:50:36', '2019-08-09 17:50:36');
INSERT INTO `admin_operation_log` VALUES ('214', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:50:41', '2019-08-09 17:50:41');
INSERT INTO `admin_operation_log` VALUES ('215', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:50:46', '2019-08-09 17:50:46');
INSERT INTO `admin_operation_log` VALUES ('216', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '{\"students_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:51:22', '2019-08-09 17:51:22');
INSERT INTO `admin_operation_log` VALUES ('217', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"students_id\":null}', '2019-08-09 17:51:26', '2019-08-09 17:51:26');
INSERT INTO `admin_operation_log` VALUES ('218', '1', 'admin/classrooms/1', 'GET', '127.0.0.1', '{\"students_id\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:51:32', '2019-08-09 17:51:32');
INSERT INTO `admin_operation_log` VALUES ('219', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:51:35', '2019-08-09 17:51:35');
INSERT INTO `admin_operation_log` VALUES ('220', '1', 'admin/classrooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:51:40', '2019-08-09 17:51:40');
INSERT INTO `admin_operation_log` VALUES ('221', '1', 'admin/classrooms/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:51:43', '2019-08-09 17:51:43');
INSERT INTO `admin_operation_log` VALUES ('222', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:51:59', '2019-08-09 17:51:59');
INSERT INTO `admin_operation_log` VALUES ('223', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:52:17', '2019-08-09 17:52:17');
INSERT INTO `admin_operation_log` VALUES ('224', '1', 'admin/classrooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:52:28', '2019-08-09 17:52:28');
INSERT INTO `admin_operation_log` VALUES ('225', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:52:29', '2019-08-09 17:52:29');
INSERT INTO `admin_operation_log` VALUES ('226', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:53:43', '2019-08-09 17:53:43');
INSERT INTO `admin_operation_log` VALUES ('227', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2019-08-09 17:53:48', '2019-08-09 17:53:48');
INSERT INTO `admin_operation_log` VALUES ('228', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:53:52', '2019-08-09 17:53:52');
INSERT INTO `admin_operation_log` VALUES ('229', '1', 'admin/classrooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:53:52', '2019-08-09 17:53:52');
INSERT INTO `admin_operation_log` VALUES ('230', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:53:59', '2019-08-09 17:53:59');
INSERT INTO `admin_operation_log` VALUES ('231', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:54:00', '2019-08-09 17:54:00');
INSERT INTO `admin_operation_log` VALUES ('232', '1', 'admin/courses/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:54:09', '2019-08-09 17:54:09');
INSERT INTO `admin_operation_log` VALUES ('233', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:54:11', '2019-08-09 17:54:11');
INSERT INTO `admin_operation_log` VALUES ('234', '1', 'admin/courses', 'GET', '127.0.0.1', '[]', '2019-08-09 17:54:14', '2019-08-09 17:54:14');
INSERT INTO `admin_operation_log` VALUES ('235', '1', 'admin/courses/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:54:14', '2019-08-09 17:54:14');
INSERT INTO `admin_operation_log` VALUES ('236', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:54:17', '2019-08-09 17:54:17');
INSERT INTO `admin_operation_log` VALUES ('237', '1', 'admin/courses/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:54:20', '2019-08-09 17:54:20');
INSERT INTO `admin_operation_log` VALUES ('238', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:54:25', '2019-08-09 17:54:25');
INSERT INTO `admin_operation_log` VALUES ('239', '1', 'admin/students/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 17:54:34', '2019-08-09 17:54:34');
INSERT INTO `admin_operation_log` VALUES ('240', '1', 'admin/students/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:58:15', '2019-08-09 17:58:15');
INSERT INTO `admin_operation_log` VALUES ('241', '1', 'admin/students/1', 'GET', '127.0.0.1', '[]', '2019-08-09 17:59:33', '2019-08-09 17:59:33');
INSERT INTO `admin_operation_log` VALUES ('242', '1', 'admin/students/1', 'GET', '127.0.0.1', '[]', '2019-08-09 18:00:08', '2019-08-09 18:00:08');
INSERT INTO `admin_operation_log` VALUES ('243', '1', 'admin/students/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:00:27', '2019-08-09 18:00:27');
INSERT INTO `admin_operation_log` VALUES ('244', '1', 'admin/students/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:00:35', '2019-08-09 18:00:35');
INSERT INTO `admin_operation_log` VALUES ('245', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:00:43', '2019-08-09 18:00:43');
INSERT INTO `admin_operation_log` VALUES ('246', '1', 'admin/students/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:00:48', '2019-08-09 18:00:48');
INSERT INTO `admin_operation_log` VALUES ('247', '1', 'admin/students/1', 'GET', '127.0.0.1', '[]', '2019-08-09 18:27:29', '2019-08-09 18:27:29');
INSERT INTO `admin_operation_log` VALUES ('248', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:27:38', '2019-08-09 18:27:38');
INSERT INTO `admin_operation_log` VALUES ('249', '1', 'admin/student-infos', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:27:39', '2019-08-09 18:27:39');
INSERT INTO `admin_operation_log` VALUES ('250', '1', 'admin/classrooms', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:27:40', '2019-08-09 18:27:40');
INSERT INTO `admin_operation_log` VALUES ('251', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:27:40', '2019-08-09 18:27:40');
INSERT INTO `admin_operation_log` VALUES ('252', '1', 'admin/courses', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:27:41', '2019-08-09 18:27:41');
INSERT INTO `admin_operation_log` VALUES ('253', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:27:43', '2019-08-09 18:27:43');
INSERT INTO `admin_operation_log` VALUES ('254', '1', 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:28:50', '2019-08-09 18:28:50');
INSERT INTO `admin_operation_log` VALUES ('255', '1', 'admin/students', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-08-09 18:28:54', '2019-08-09 18:28:54');

-- ----------------------------
-- Table structure for admin_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`),
  UNIQUE KEY `admin_permissions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'All permission', '*', '', '*', null, null);
INSERT INTO `admin_permissions` VALUES ('2', 'Dashboard', 'dashboard', 'GET', '/', null, null);
INSERT INTO `admin_permissions` VALUES ('3', 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', null, null);
INSERT INTO `admin_permissions` VALUES ('4', 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', null, null);
INSERT INTO `admin_permissions` VALUES ('5', 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', null, null);

-- ----------------------------
-- Table structure for admin_roles
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`),
  UNIQUE KEY `admin_roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'Administrator', 'administrator', '2019-08-09 06:30:55', '2019-08-09 06:30:55');

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES ('1', '2', null, null);

-- ----------------------------
-- Table structure for admin_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permissions`;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_permissions
-- ----------------------------
INSERT INTO `admin_role_permissions` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_role_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_users`;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_users
-- ----------------------------
INSERT INTO `admin_role_users` VALUES ('1', '1', null, null);

-- ----------------------------
-- Table structure for admin_users
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$m76ORLhfdxIWmIIY2GNwwOKpJeTyZlL4xpZ/.28Of1QxbxfhDfNXS', 'Administrator', null, 'EH1VlS3u71u7S6NhWcyQnn6UNpYo5IZAaSi6fOHlP5VGcR10ErDPuDjx5AHc', '2019-08-09 06:30:55', '2019-08-09 06:30:55');

-- ----------------------------
-- Table structure for admin_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_permissions`;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '班级id',
  `name` varchar(255) NOT NULL COMMENT '班级名称',
  `create_at` int(11) NOT NULL COMMENT '创建时间',
  `update_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('1', '一班', '0', '1565343962');
INSERT INTO `classroom` VALUES ('2', '二班', '0', '0');
INSERT INTO `classroom` VALUES ('3', '三班', '0', '0');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程id',
  `name` varchar(255) NOT NULL COMMENT '课程名称',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '语文', '0', '0');
INSERT INTO `course` VALUES ('2', '数学', '0', '0');
INSERT INTO `course` VALUES ('3', '英语', '0', '0');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_01_04_173148_create_admin_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2016_06_01_000001_create_oauth_auth_codes_table', '2');
INSERT INTO `migrations` VALUES ('5', '2016_06_01_000002_create_oauth_access_tokens_table', '2');
INSERT INTO `migrations` VALUES ('6', '2016_06_01_000003_create_oauth_refresh_tokens_table', '2');
INSERT INTO `migrations` VALUES ('7', '2016_06_01_000004_create_oauth_clients_table', '2');
INSERT INTO `migrations` VALUES ('8', '2016_06_01_000005_create_oauth_personal_access_clients_table', '2');

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_access_tokens
-- ----------------------------
INSERT INTO `oauth_access_tokens` VALUES ('efa2bd4aa3a843efdd0d170ef7c7e78d5fdb45e3d590090a6c9769450a840d01d052e493bff4a29b', '1', '1', 'Test', '[]', '0', '2019-08-13 16:09:55', '2019-08-13 16:09:55', '2020-08-13 16:09:55');
INSERT INTO `oauth_access_tokens` VALUES ('a7bd80613aead1e0a1d16e860d6a27727159ee9e4f0304bd51fa93ff1e7c15c5c389117ee5505d76', '1', '1', 'Test', '[]', '0', '2019-08-13 16:10:15', '2019-08-13 16:10:15', '2020-08-13 16:10:15');

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_auth_codes
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_clients
-- ----------------------------
INSERT INTO `oauth_clients` VALUES ('1', null, 'Laravel Personal Access Client', 'UHZBoYzlGgb3wX5044DPNLZEILV1U9uObwx7Mm9y', 'http://localhost', '1', '0', '0', '2019-08-13 16:01:25', '2019-08-13 16:01:25');
INSERT INTO `oauth_clients` VALUES ('2', null, 'Laravel Password Grant Client', 'r7gGxsoR0ETDzpuL6iRumxFIcAJ8hREEavNQ6Uos', 'http://localhost', '0', '1', '0', '2019-08-13 16:01:25', '2019-08-13 16:01:25');
INSERT INTO `oauth_clients` VALUES ('3', null, 'Stu', 'u1OV7mkTfMUNTxmUtWuVi31WUulW1mEUuvczUXzk', 'http://demo.laravel.test/auth/callback', '0', '0', '0', '2019-08-13 16:05:39', '2019-08-13 16:05:39');

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_personal_access_clients
-- ----------------------------
INSERT INTO `oauth_personal_access_clients` VALUES ('1', '1', '2019-08-13 16:01:25', '2019-08-13 16:01:25');

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oauth_refresh_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生id',
  `name` varchar(255) NOT NULL COMMENT '学生名称',
  `classroom_id` int(11) NOT NULL DEFAULT '0' COMMENT '班级id',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '张三', '1', '0', '1565341921');
INSERT INTO `student` VALUES ('2', '李四', '2', '0', '0');
INSERT INTO `student` VALUES ('3', '王五', '1', '0', '0');
INSERT INTO `student` VALUES ('4', '赵六', '2', '0', '0');

-- ----------------------------
-- Table structure for student_course
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `student_id` int(11) NOT NULL COMMENT '学生id',
  `course_id` int(11) NOT NULL COMMENT '课程id',
  PRIMARY KEY (`student_id`,`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生选课表';

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES ('1', '2');
INSERT INTO `student_course` VALUES ('1', '3');
INSERT INTO `student_course` VALUES ('2', '1');
INSERT INTO `student_course` VALUES ('2', '3');
INSERT INTO `student_course` VALUES ('3', '3');

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info` (
  `student_id` int(11) NOT NULL COMMENT '学生id',
  `age` int(11) NOT NULL DEFAULT '0' COMMENT '年龄',
  `create_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_at` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生信息表';

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES ('1', '18', '0', '1565342053');
INSERT INTO `student_info` VALUES ('2', '19', '0', '0');
INSERT INTO `student_info` VALUES ('3', '18', '0', '0');
INSERT INTO `student_info` VALUES ('4', '20', '0', '0');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'lop', 'lop.1414@qq.com', null, '$2y$10$OVP.NfZl47CzNgiSwoK/BOGWFIoKdNW1/nhhXN8PV/T761uW5L.vG', null, '2019-08-13 16:09:55', '2019-08-13 16:09:55');
