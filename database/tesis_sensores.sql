/*
Navicat MySQL Data Transfer

Source Server         : localhost laragon
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : tesis_sensores

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-11-06 22:13:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for arduinos
-- ----------------------------
DROP TABLE IF EXISTS `arduinos`;
CREATE TABLE `arduinos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac` varchar(45) NOT NULL,
  `zonas_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_arduinos_zonas1_idx` (`zonas_id`),
  CONSTRAINT `fk_arduinos_zonas1` FOREIGN KEY (`zonas_id`) REFERENCES `zonas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of arduinos
-- ----------------------------
INSERT INTO `arduinos` VALUES ('1', '123456789', '1', '2017-09-26 15:30:32', '2017-09-26 15:30:34', null);
INSERT INTO `arduinos` VALUES ('2', '987654321', '2', '2017-09-26 15:30:49', '2017-09-27 16:00:11', null);
INSERT INTO `arduinos` VALUES ('6', '123', '1', '2017-09-26 22:25:23', '2017-10-19 02:38:52', null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2016_09_04_000000_create_roles_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_09_04_100000_create_role_user_table', '1');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for registro
-- ----------------------------
DROP TABLE IF EXISTS `registro`;
CREATE TABLE `registro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac` varchar(45) NOT NULL,
  `zona` varchar(45) NOT NULL,
  `alert` tinyint(4) DEFAULT '0',
  `luz` int(11) DEFAULT NULL,
  `sonido` int(11) DEFAULT NULL,
  `movimiento` varchar(45) DEFAULT NULL,
  `temperatura` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=569 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of registro
-- ----------------------------
INSERT INTO `registro` VALUES ('1', '1', 'Aula 301', '0', '400', '50', 'SI', '20', '2017-10-20 16:21:04', '2017-10-20 16:21:04', null);
INSERT INTO `registro` VALUES ('2', '1', 'Aula 301', '1', '400', '50', 'SI', '20', '2017-10-20 16:22:23', '2017-10-20 16:22:23', null);
INSERT INTO `registro` VALUES ('3', '1', 'Aula 301', '0', '78', '99', 'SI', '24', '2017-10-20 16:27:10', '2017-10-20 16:27:10', null);
INSERT INTO `registro` VALUES ('4', '1', 'Aula 301', '0', '126', '40', 'SI', '27', '2017-10-20 16:27:10', '2017-10-20 16:27:10', null);
INSERT INTO `registro` VALUES ('5', '1', 'Aula 301', '0', '165', '61', 'SI', '24', '2017-10-20 16:27:12', '2017-10-20 16:27:12', null);
INSERT INTO `registro` VALUES ('6', '1', 'Aula 301', '0', '190', '28', 'SI', '15', '2017-10-20 16:27:16', '2017-10-20 16:27:16', null);
INSERT INTO `registro` VALUES ('7', '1', 'Aula 301', '0', '123', '99', 'NO', '24', '2017-10-20 16:27:51', '2017-10-20 16:27:51', null);
INSERT INTO `registro` VALUES ('8', '1', 'Aula 301', '0', '72', '95', 'SI', '21', '2017-10-20 16:27:52', '2017-10-20 16:27:52', null);
INSERT INTO `registro` VALUES ('9', '1', 'Aula 301', '0', '74', '75', 'SI', '30', '2017-10-20 16:27:54', '2017-10-20 16:27:54', null);
INSERT INTO `registro` VALUES ('10', '1', 'Aula 301', '0', '148', '72', 'SI', '19', '2017-10-20 16:27:55', '2017-10-20 16:27:55', null);
INSERT INTO `registro` VALUES ('11', '1', 'Aula 301', '0', '47', '84', 'NO', '20', '2017-10-20 16:27:58', '2017-10-20 16:27:58', null);
INSERT INTO `registro` VALUES ('12', '1', 'Aula 301', '0', '97', '60', 'SI', '21', '2017-10-20 16:28:04', '2017-10-20 16:28:04', null);
INSERT INTO `registro` VALUES ('13', '1', 'Aula 301', '0', '28', '84', 'NO', '17', '2017-10-20 16:28:07', '2017-10-20 16:28:07', null);
INSERT INTO `registro` VALUES ('14', '1', 'Aula 301', '0', '17', '72', 'SI', '23', '2017-10-20 16:28:09', '2017-10-20 16:28:09', null);
INSERT INTO `registro` VALUES ('15', '1', 'Aula 301', '0', '10', '75', 'NO', '26', '2017-10-20 16:28:10', '2017-10-20 16:28:10', null);
INSERT INTO `registro` VALUES ('16', '1', 'Aula 301', '0', '90', '32', 'NO', '26', '2017-10-20 16:28:10', '2017-10-20 16:28:10', null);
INSERT INTO `registro` VALUES ('17', '6', 'Aula 301', '0', '180', '43', 'SI', '24', '2017-10-20 16:28:23', '2017-10-20 16:28:23', null);
INSERT INTO `registro` VALUES ('18', '6', 'Aula 301', '0', '130', '80', 'NO', '20', '2017-10-20 16:28:24', '2017-10-20 16:28:24', null);
INSERT INTO `registro` VALUES ('19', '6', 'Aula 301', '0', '188', '62', 'NO', '26', '2017-10-20 16:28:25', '2017-10-20 16:28:25', null);
INSERT INTO `registro` VALUES ('20', '6', 'Aula 301', '0', '6', '71', 'NO', '24', '2017-10-20 16:28:26', '2017-10-20 16:28:26', null);
INSERT INTO `registro` VALUES ('21', '6', 'Aula 301', '0', '106', '67', 'SI', '30', '2017-10-20 16:28:28', '2017-10-20 16:28:28', null);
INSERT INTO `registro` VALUES ('22', '6', 'Aula 301', '0', '16', '29', 'SI', '22', '2017-10-20 16:28:30', '2017-10-20 16:28:30', null);
INSERT INTO `registro` VALUES ('23', '6', 'Aula 301', '0', '91', '27', 'NO', '20', '2017-10-20 16:28:32', '2017-10-20 16:28:32', null);
INSERT INTO `registro` VALUES ('24', '6', 'Aula 301', '0', '85', '51', 'SI', '20', '2017-10-20 16:28:33', '2017-10-20 16:28:33', null);
INSERT INTO `registro` VALUES ('25', '6', 'Aula 301', '0', '25', '84', 'SI', '30', '2017-10-20 16:28:35', '2017-10-20 16:28:35', null);
INSERT INTO `registro` VALUES ('26', '6', 'Aula 301', '0', '43', '34', 'NO', '21', '2017-10-20 16:28:36', '2017-10-20 16:28:36', null);
INSERT INTO `registro` VALUES ('27', '6', 'Aula 301', '0', '112', '72', 'NO', '24', '2017-10-20 16:28:38', '2017-10-20 16:28:38', null);
INSERT INTO `registro` VALUES ('28', '6', 'Aula 301', '0', '67', '32', 'NO', '30', '2017-10-20 16:28:43', '2017-10-20 16:28:43', null);
INSERT INTO `registro` VALUES ('29', '6', 'Aula 301', '0', '96', '20', 'SI', '15', '2017-10-20 16:28:45', '2017-10-20 16:28:45', null);
INSERT INTO `registro` VALUES ('30', '6', 'Aula 301', '0', '84', '94', 'NO', '19', '2017-10-20 16:28:46', '2017-10-20 16:28:46', null);
INSERT INTO `registro` VALUES ('31', '6', 'Aula 301', '0', '120', '89', 'SI', '17', '2017-10-20 16:28:47', '2017-10-20 16:28:47', null);
INSERT INTO `registro` VALUES ('32', '6', 'Aula 301', '0', '184', '30', 'NO', '25', '2017-10-20 16:28:48', '2017-10-20 16:28:48', null);
INSERT INTO `registro` VALUES ('33', '6', 'Aula 301', '0', '157', '82', 'SI', '28', '2017-10-20 16:28:49', '2017-10-20 16:28:49', null);
INSERT INTO `registro` VALUES ('34', '6', 'Aula 301', '0', '38', '45', 'SI', '29', '2017-10-20 16:28:52', '2017-10-20 16:28:52', null);
INSERT INTO `registro` VALUES ('35', '6', 'Aula 301', '0', '108', '59', 'NO', '21', '2017-10-20 16:28:54', '2017-10-20 16:28:54', null);
INSERT INTO `registro` VALUES ('36', '6', 'Aula 301', '0', '178', '58', 'NO', '20', '2017-10-20 16:28:55', '2017-10-20 16:28:55', null);
INSERT INTO `registro` VALUES ('37', '6', 'Aula 301', '0', '109', '20', 'SI', '15', '2017-10-20 16:28:56', '2017-10-20 16:28:56', null);
INSERT INTO `registro` VALUES ('38', '6', 'Aula 301', '0', '14', '93', 'NO', '25', '2017-10-20 16:28:57', '2017-10-20 16:28:57', null);
INSERT INTO `registro` VALUES ('39', '6', 'Aula 301', '0', '97', '85', 'SI', '25', '2017-10-20 16:28:58', '2017-10-20 16:28:58', null);
INSERT INTO `registro` VALUES ('40', '6', 'Aula 301', '0', '147', '92', 'SI', '30', '2017-10-20 16:28:59', '2017-10-20 16:28:59', null);
INSERT INTO `registro` VALUES ('41', '6', 'Aula 301', '0', '65', '50', 'NO', '27', '2017-10-20 16:29:03', '2017-10-20 16:29:03', null);
INSERT INTO `registro` VALUES ('42', '6', 'Aula 301', '1', '33', '76', 'NO', '18', '2017-10-20 16:29:45', '2017-10-20 16:29:45', null);
INSERT INTO `registro` VALUES ('43', '6', 'Aula 301', '0', '192', '23', 'SI', '19', '2017-10-20 16:29:46', '2017-10-20 16:29:46', null);
INSERT INTO `registro` VALUES ('44', '6', 'Aula 301', '1', '105', '83', 'SI', '26', '2017-10-20 16:29:47', '2017-10-20 16:29:47', null);
INSERT INTO `registro` VALUES ('45', '6', 'Aula 301', '1', '14', '90', 'SI', '17', '2017-10-20 16:29:48', '2017-10-20 16:29:48', null);
INSERT INTO `registro` VALUES ('46', '6', 'Aula 301', '0', '71', '44', 'SI', '25', '2017-10-20 16:29:49', '2017-10-20 16:29:49', null);
INSERT INTO `registro` VALUES ('47', '2', 'Aula 302', '0', '92', '60', 'NO', '15', '2017-10-20 16:30:10', '2017-10-20 16:30:10', null);
INSERT INTO `registro` VALUES ('48', '2', 'Aula 302', '1', '6', '87', 'NO', '30', '2017-10-20 16:30:10', '2017-10-20 16:30:10', null);
INSERT INTO `registro` VALUES ('49', '2', 'Aula 302', '1', '32', '80', 'NO', '23', '2017-10-20 16:30:11', '2017-10-20 16:30:11', null);
INSERT INTO `registro` VALUES ('50', '2', 'Aula 302', '1', '24', '97', 'SI', '22', '2017-10-20 16:30:11', '2017-10-20 16:30:11', null);
INSERT INTO `registro` VALUES ('51', '2', 'Aula 302', '0', '174', '67', 'SI', '22', '2017-10-20 16:30:12', '2017-10-20 16:30:12', null);
INSERT INTO `registro` VALUES ('52', '2', 'Aula 302', '0', '75', '20', 'NO', '28', '2017-10-20 16:30:13', '2017-10-20 16:30:13', null);
INSERT INTO `registro` VALUES ('53', '2', 'Aula 302', '1', '169', '91', 'NO', '29', '2017-10-20 16:30:13', '2017-10-20 16:30:13', null);
INSERT INTO `registro` VALUES ('54', '2', 'Aula 302', '0', '23', '60', 'SI', '25', '2017-10-20 16:30:14', '2017-10-20 16:30:14', null);
INSERT INTO `registro` VALUES ('55', '2', 'Aula 302', '1', '179', '88', 'SI', '20', '2017-10-20 16:30:14', '2017-10-20 16:30:14', null);
INSERT INTO `registro` VALUES ('56', '2', 'Aula 302', '0', '160', '86', 'SI', '24', '2017-10-20 16:30:15', '2017-10-20 16:30:15', null);
INSERT INTO `registro` VALUES ('57', '2', 'Aula 302', '0', '146', '74', 'SI', '29', '2017-10-20 16:30:15', '2017-10-20 16:30:15', null);
INSERT INTO `registro` VALUES ('58', '2', 'Aula 302', '1', '27', '27', 'NO', '18', '2017-10-20 16:30:16', '2017-10-20 16:30:16', null);
INSERT INTO `registro` VALUES ('59', '2', 'Aula 302', '1', '103', '28', 'NO', '25', '2017-10-20 16:30:16', '2017-10-20 16:30:16', null);
INSERT INTO `registro` VALUES ('60', '2', 'Aula 302', '1', '110', '64', 'NO', '27', '2017-10-20 16:30:17', '2017-10-20 16:30:17', null);
INSERT INTO `registro` VALUES ('61', '2', 'Aula 302', '0', '141', '95', 'SI', '15', '2017-10-20 16:30:17', '2017-10-20 16:30:17', null);
INSERT INTO `registro` VALUES ('62', '2', 'Aula 302', '0', '101', '37', 'NO', '24', '2017-10-20 16:30:18', '2017-10-20 16:30:18', null);
INSERT INTO `registro` VALUES ('63', '2', 'Aula 302', '0', '28', '35', 'NO', '23', '2017-10-20 16:30:18', '2017-10-20 16:30:18', null);
INSERT INTO `registro` VALUES ('64', '2', 'Aula 302', '1', '144', '66', 'SI', '18', '2017-10-20 16:30:19', '2017-10-20 16:30:19', null);
INSERT INTO `registro` VALUES ('65', '2', 'Aula 302', '1', '129', '47', 'NO', '24', '2017-10-20 16:30:19', '2017-10-20 16:30:19', null);
INSERT INTO `registro` VALUES ('66', '2', 'Aula 302', '1', '56', '88', 'SI', '25', '2017-10-20 16:30:20', '2017-10-20 16:30:20', null);
INSERT INTO `registro` VALUES ('67', '2', 'Aula 302', '0', '150', '52', 'NO', '21', '2017-10-20 16:30:20', '2017-10-20 16:30:20', null);
INSERT INTO `registro` VALUES ('68', '2', 'Aula 302', '0', '61', '80', 'SI', '25', '2017-10-20 16:30:21', '2017-10-20 16:30:21', null);
INSERT INTO `registro` VALUES ('69', '2', 'Aula 302', '1', '191', '61', 'SI', '24', '2017-10-20 16:30:21', '2017-10-20 16:30:21', null);
INSERT INTO `registro` VALUES ('70', '2', 'Aula 302', '0', '123', '68', 'NO', '20', '2017-10-20 16:30:22', '2017-10-20 16:30:22', null);
INSERT INTO `registro` VALUES ('71', '2', 'Aula 302', '0', '87', '99', 'SI', '20', '2017-10-20 16:30:22', '2017-10-20 16:30:22', null);
INSERT INTO `registro` VALUES ('72', '2', 'Aula 302', '1', '5', '55', 'NO', '23', '2017-10-20 16:30:23', '2017-10-20 16:30:23', null);
INSERT INTO `registro` VALUES ('73', '2', 'Aula 302', '0', '139', '34', 'SI', '23', '2017-10-20 16:30:23', '2017-10-20 16:30:23', null);
INSERT INTO `registro` VALUES ('74', '2', 'Aula 302', '0', '108', '46', 'NO', '17', '2017-10-20 16:30:24', '2017-10-20 16:30:24', null);
INSERT INTO `registro` VALUES ('75', '2', 'Aula 302', '0', '6', '78', 'NO', '16', '2017-10-20 16:30:24', '2017-10-20 16:30:24', null);
INSERT INTO `registro` VALUES ('76', '2', 'Aula 302', '1', '86', '97', 'NO', '24', '2017-10-20 16:30:25', '2017-10-20 16:30:25', null);
INSERT INTO `registro` VALUES ('77', '2', 'Aula 302', '1', '16', '63', 'NO', '15', '2017-10-20 16:30:25', '2017-10-20 16:30:25', null);
INSERT INTO `registro` VALUES ('78', '2', 'Aula 302', '1', '121', '55', 'SI', '27', '2017-10-20 16:30:26', '2017-10-20 16:30:26', null);
INSERT INTO `registro` VALUES ('79', '2', 'Aula 302', '1', '70', '60', 'NO', '29', '2017-10-20 16:30:26', '2017-10-20 16:30:26', null);
INSERT INTO `registro` VALUES ('80', '2', 'Aula 302', '1', '4', '47', 'SI', '17', '2017-10-20 16:30:27', '2017-10-20 16:30:27', null);
INSERT INTO `registro` VALUES ('81', '2', 'Aula 302', '1', '61', '82', 'SI', '24', '2017-10-20 16:30:27', '2017-10-20 16:30:27', null);
INSERT INTO `registro` VALUES ('82', '1', 'Aula 301', '0', '50', '59', 'NO', '21', '2017-10-20 16:30:33', '2017-10-20 16:30:33', null);
INSERT INTO `registro` VALUES ('83', '1', 'Aula 301', '1', '34', '56', 'NO', '16', '2017-10-20 16:30:33', '2017-10-20 16:30:33', null);
INSERT INTO `registro` VALUES ('84', '1', 'Aula 301', '1', '71', '33', 'NO', '25', '2017-10-20 16:30:34', '2017-10-20 16:30:34', null);
INSERT INTO `registro` VALUES ('85', '1', 'Aula 301', '0', '174', '50', 'SI', '20', '2017-10-20 16:30:35', '2017-10-20 16:30:35', null);
INSERT INTO `registro` VALUES ('86', '1', 'Aula 301', '0', '165', '43', 'NO', '24', '2017-10-20 16:30:35', '2017-10-20 16:30:35', null);
INSERT INTO `registro` VALUES ('87', '1', 'Aula 301', '1', '179', '72', 'SI', '24', '2017-10-20 16:30:36', '2017-10-20 16:30:36', null);
INSERT INTO `registro` VALUES ('88', '1', 'Aula 301', '0', '77', '88', 'SI', '21', '2017-10-20 16:30:37', '2017-10-20 16:30:37', null);
INSERT INTO `registro` VALUES ('89', '1', 'Aula 301', '0', '2', '46', 'NO', '16', '2017-10-20 16:30:37', '2017-10-20 16:30:37', null);
INSERT INTO `registro` VALUES ('90', '1', 'Aula 301', '0', '146', '40', 'SI', '27', '2017-10-20 16:30:38', '2017-10-20 16:30:38', null);
INSERT INTO `registro` VALUES ('91', '1', 'Aula 301', '1', '1', '61', 'SI', '15', '2017-10-20 16:30:38', '2017-10-20 16:30:38', null);
INSERT INTO `registro` VALUES ('92', '1', 'Aula 301', '1', '52', '72', 'NO', '24', '2017-10-20 16:30:39', '2017-10-20 16:30:39', null);
INSERT INTO `registro` VALUES ('93', '1', 'Aula 301', '1', '82', '92', 'SI', '15', '2017-10-20 16:30:40', '2017-10-20 16:30:40', null);
INSERT INTO `registro` VALUES ('94', '1', 'Aula 301', '1', '158', '40', 'SI', '27', '2017-10-20 16:30:40', '2017-10-20 16:30:40', null);
INSERT INTO `registro` VALUES ('95', '1', 'Aula 301', '0', '46', '45', 'NO', '18', '2017-10-20 16:30:41', '2017-10-20 16:30:41', null);
INSERT INTO `registro` VALUES ('96', '1', 'Aula 301', '1', '99', '33', 'SI', '30', '2017-10-20 16:30:42', '2017-10-20 16:30:42', null);
INSERT INTO `registro` VALUES ('97', '1', 'Aula 301', '0', '120', '84', 'NO', '15', '2017-10-20 16:30:42', '2017-10-20 16:30:42', null);
INSERT INTO `registro` VALUES ('98', '1', 'Aula 301', '1', '185', '43', 'NO', '24', '2017-10-20 16:30:43', '2017-10-20 16:30:43', null);
INSERT INTO `registro` VALUES ('99', '1', 'Aula 301', '0', '79', '40', 'NO', '23', '2017-10-20 16:30:43', '2017-10-20 16:30:43', null);
INSERT INTO `registro` VALUES ('100', '1', 'Aula 301', '1', '171', '67', 'SI', '25', '2017-10-20 16:30:44', '2017-10-20 16:30:44', null);
INSERT INTO `registro` VALUES ('101', '1', 'Aula 301', '1', '14', '49', 'NO', '17', '2017-10-20 16:30:45', '2017-10-20 16:30:45', null);
INSERT INTO `registro` VALUES ('102', '1', 'Aula 301', '1', '72', '53', 'NO', '19', '2017-10-20 16:30:45', '2017-10-20 16:30:45', null);
INSERT INTO `registro` VALUES ('103', '2', 'Aula 302', '0', '26', '45', 'NO', '26', '2017-10-20 16:30:52', '2017-10-20 16:30:52', null);
INSERT INTO `registro` VALUES ('104', '2', 'Aula 302', '1', '33', '66', 'NO', '28', '2017-10-20 16:30:52', '2017-10-20 16:30:52', null);
INSERT INTO `registro` VALUES ('105', '2', 'Aula 302', '1', '17', '78', 'NO', '23', '2017-10-20 16:30:53', '2017-10-20 16:30:53', null);
INSERT INTO `registro` VALUES ('106', '2', 'Aula 302', '1', '7', '85', 'SI', '27', '2017-10-20 16:30:54', '2017-10-20 16:30:54', null);
INSERT INTO `registro` VALUES ('107', '2', 'Aula 302', '1', '82', '26', 'NO', '25', '2017-10-19 16:30:54', '2017-10-20 16:30:54', null);
INSERT INTO `registro` VALUES ('108', '2', 'Aula 302', '1', '135', '88', 'SI', '28', '2017-10-18 16:30:55', '2017-10-20 16:30:55', null);
INSERT INTO `registro` VALUES ('109', '2', 'Aula 302', '1', '77', '37', 'NO', '21', '2017-10-18 16:30:56', '2017-10-20 16:30:56', null);
INSERT INTO `registro` VALUES ('110', '2', 'Aula 302', '0', '9', '93', 'NO', '19', '2017-10-17 16:30:56', '2017-10-20 16:30:56', null);
INSERT INTO `registro` VALUES ('111', '2', 'Aula 302', '0', '118', '50', 'NO', '18', '2017-10-17 16:25:57', '2017-10-20 16:30:57', null);
INSERT INTO `registro` VALUES ('112', '2', 'Aula 302', '1', '25', '67', 'SI', '19', '2017-10-17 16:20:58', '2017-10-20 16:30:58', null);
INSERT INTO `registro` VALUES ('113', '2', 'Aula 302', '1', '30', '38', 'SI', '18', '2017-10-17 16:20:59', '2017-10-20 16:30:59', null);
INSERT INTO `registro` VALUES ('114', '2', 'Aula 302', '0', '110', '95', 'NO', '19', '2017-10-20 16:30:59', '2017-10-20 16:30:59', null);
INSERT INTO `registro` VALUES ('115', '2', 'Aula 302', '0', '169', '83', 'NO', '22', '2017-10-20 16:31:00', '2017-10-20 16:31:00', null);
INSERT INTO `registro` VALUES ('116', '6', 'Aula 301', '0', '73', '69', 'NO', '19', '2017-10-20 16:31:06', '2017-10-20 16:31:06', null);
INSERT INTO `registro` VALUES ('117', '6', 'Aula 301', '1', '195', '49', 'SI', '28', '2017-10-20 16:31:07', '2017-10-20 16:31:07', null);
INSERT INTO `registro` VALUES ('118', '6', 'Aula 301', '1', '141', '53', 'SI', '25', '2017-10-20 16:31:08', '2017-10-20 16:31:08', null);
INSERT INTO `registro` VALUES ('119', '6', 'Aula 301', '1', '8', '21', 'NO', '29', '2017-10-20 16:31:08', '2017-10-20 16:31:08', null);
INSERT INTO `registro` VALUES ('120', '6', 'Aula 301', '1', '59', '96', 'NO', '16', '2017-10-20 16:31:09', '2017-10-20 16:31:09', null);
INSERT INTO `registro` VALUES ('121', '6', 'Aula 301', '0', '38', '29', 'NO', '16', '2017-10-20 16:31:09', '2017-10-20 16:31:09', null);
INSERT INTO `registro` VALUES ('122', '6', 'Aula 301', '1', '192', '72', 'NO', '30', '2017-10-20 16:31:10', '2017-10-20 16:31:10', null);
INSERT INTO `registro` VALUES ('123', '6', 'Aula 301', '1', '4', '63', 'SI', '17', '2017-10-20 16:31:11', '2017-10-20 16:31:11', null);
INSERT INTO `registro` VALUES ('124', '6', 'Aula 301', '0', '162', '93', 'NO', '23', '2017-10-20 16:31:11', '2017-10-20 16:31:11', null);
INSERT INTO `registro` VALUES ('125', '6', 'Aula 301', '1', '49', '37', 'SI', '19', '2017-10-20 16:31:12', '2017-10-20 16:31:12', null);
INSERT INTO `registro` VALUES ('126', '6', 'Aula 301', '0', '127', '64', 'SI', '28', '2017-10-20 16:31:12', '2017-10-20 16:31:12', null);
INSERT INTO `registro` VALUES ('127', '6', 'Aula 301', '1', '29', '47', 'SI', '28', '2017-10-20 16:31:13', '2017-10-20 16:31:13', null);
INSERT INTO `registro` VALUES ('128', '6', 'Aula 301', '0', '197', '99', 'SI', '29', '2017-10-20 16:31:13', '2017-10-20 16:31:13', null);
INSERT INTO `registro` VALUES ('129', '6', 'Aula 301', '1', '142', '96', 'SI', '27', '2017-10-20 16:31:14', '2017-10-20 16:31:14', null);
INSERT INTO `registro` VALUES ('130', '6', 'Aula 301', '0', '152', '100', 'NO', '25', '2017-10-20 16:31:15', '2017-10-20 16:31:15', null);
INSERT INTO `registro` VALUES ('131', '6', 'Aula 301', '1', '172', '42', 'SI', '16', '2017-10-20 16:31:15', '2017-10-20 16:31:15', null);
INSERT INTO `registro` VALUES ('132', '6', 'Aula 301', '1', '86', '95', 'SI', '26', '2017-10-20 16:31:16', '2017-10-20 16:31:16', null);
INSERT INTO `registro` VALUES ('133', '6', 'Aula 301', '1', '99', '88', 'SI', '24', '2017-10-20 16:31:16', '2017-10-20 16:31:16', null);
INSERT INTO `registro` VALUES ('134', '6', 'Aula 301', '1', '72', '20', 'SI', '26', '2017-10-20 16:31:17', '2017-10-20 16:31:17', null);
INSERT INTO `registro` VALUES ('135', '6', 'Aula 301', '0', '76', '37', 'SI', '16', '2017-10-20 16:31:17', '2017-10-20 16:31:17', null);
INSERT INTO `registro` VALUES ('136', '6', 'Aula 301', '1', '400', '50', 'SI', '20', '2017-10-20 22:15:30', '2017-10-20 22:15:30', null);
INSERT INTO `registro` VALUES ('137', '6', 'Aula 301', '1', '400', '50', 'SI', '20', '2017-10-20 22:15:43', '2017-10-20 22:15:43', null);
INSERT INTO `registro` VALUES ('138', '6', 'Aula 301', '1', '400', '50', 'SI', '20', '2017-10-20 22:16:04', '2017-10-20 22:16:04', null);
INSERT INTO `registro` VALUES ('139', '1', 'Aula 301', '0', '68', '0', 'SI', '29', '2017-11-05 16:33:27', '2017-11-05 16:33:27', null);
INSERT INTO `registro` VALUES ('140', '1', 'Aula 301', '0', '65', '63', 'NO', '28', '2017-11-05 16:33:34', '2017-11-05 16:33:34', null);
INSERT INTO `registro` VALUES ('141', '1', 'Aula 301', '0', '0', '56', 'NO', '28', '2017-11-05 16:33:42', '2017-11-05 16:33:42', null);
INSERT INTO `registro` VALUES ('142', '1', 'Aula 301', '0', '67', '62', 'NO', '28', '2017-11-05 16:33:50', '2017-11-05 16:33:50', null);
INSERT INTO `registro` VALUES ('143', '1', 'Aula 301', '0', '68', '0', 'NO', '29', '2017-11-05 16:33:57', '2017-11-05 16:33:57', null);
INSERT INTO `registro` VALUES ('144', '1', 'Aula 301', '0', '68', '59', 'NO', '28', '2017-11-05 16:34:04', '2017-11-05 16:34:04', null);
INSERT INTO `registro` VALUES ('145', '1', 'Aula 301', '0', '63', '0', 'SI', '28', '2017-11-05 16:34:11', '2017-11-05 16:34:11', null);
INSERT INTO `registro` VALUES ('146', '1', 'Aula 301', '0', '67', '0', 'SI', '28', '2017-11-05 16:34:19', '2017-11-05 16:34:19', null);
INSERT INTO `registro` VALUES ('147', '1', 'Aula 301', '0', '70', '58', 'NO', '29', '2017-11-05 16:34:26', '2017-11-05 16:34:26', null);
INSERT INTO `registro` VALUES ('148', '1', 'Aula 301', '0', '69', '65', 'NO', '28', '2017-11-05 16:34:34', '2017-11-05 16:34:34', null);
INSERT INTO `registro` VALUES ('149', '1', 'Aula 301', '0', '69', '62', 'NO', '29', '2017-11-05 16:34:41', '2017-11-05 16:34:41', null);
INSERT INTO `registro` VALUES ('150', '1', 'Aula 301', '0', '70', '60', 'NO', '29', '2017-11-05 16:34:48', '2017-11-05 16:34:48', null);
INSERT INTO `registro` VALUES ('151', '1', 'Aula 301', '0', '70', '50', 'NO', '29', '2017-11-05 16:35:28', '2017-11-05 16:35:28', null);
INSERT INTO `registro` VALUES ('152', '1', 'Aula 301', '0', '70', '62', 'NO', '29', '2017-11-05 16:35:35', '2017-11-05 16:35:35', null);
INSERT INTO `registro` VALUES ('153', '1', 'Aula 301', '0', '70', '60', 'NO', '28', '2017-11-05 16:35:43', '2017-11-05 16:35:43', null);
INSERT INTO `registro` VALUES ('154', '1', 'Aula 301', '0', '57', '58', 'NO', '29', '2017-11-05 16:35:50', '2017-11-05 16:35:50', null);
INSERT INTO `registro` VALUES ('155', '1', 'Aula 301', '0', '62', '70', 'SI', '29', '2017-11-05 16:35:57', '2017-11-05 16:35:57', null);
INSERT INTO `registro` VALUES ('156', '1', 'Aula 301', '0', '69', '53', 'SI', '29', '2017-11-05 16:36:05', '2017-11-05 16:36:05', null);
INSERT INTO `registro` VALUES ('157', '1', 'Aula 301', '0', '70', '60', 'NO', '29', '2017-11-05 16:36:12', '2017-11-05 16:36:12', null);
INSERT INTO `registro` VALUES ('158', '1', 'Aula 301', '0', '67', '61', 'NO', '29', '2017-11-05 16:36:20', '2017-11-05 16:36:20', null);
INSERT INTO `registro` VALUES ('159', '1', 'Aula 301', '0', '68', '75', 'SI', '28', '2017-11-05 16:36:35', '2017-11-05 16:36:35', null);
INSERT INTO `registro` VALUES ('160', '1', 'Aula 301', '0', '71', '50', 'NO', '29', '2017-11-05 16:36:42', '2017-11-05 16:36:42', null);
INSERT INTO `registro` VALUES ('161', '1', 'Aula 301', '0', '67', '50', 'NO', '29', '2017-11-05 16:36:49', '2017-11-05 16:36:49', null);
INSERT INTO `registro` VALUES ('162', '1', 'Aula 301', '0', '70', '66', 'NO', '28', '2017-11-05 16:37:16', '2017-11-05 16:37:16', null);
INSERT INTO `registro` VALUES ('163', '1', 'Aula 301', '0', '67', '58', 'NO', '28', '2017-11-05 16:37:23', '2017-11-05 16:37:23', null);
INSERT INTO `registro` VALUES ('164', '1', 'Aula 301', '0', '69', '61', 'SI', '28', '2017-11-05 16:37:31', '2017-11-05 16:37:31', null);
INSERT INTO `registro` VALUES ('165', '1', 'Aula 301', '0', '70', '60', 'NO', '28', '2017-11-05 16:37:38', '2017-11-05 16:37:38', null);
INSERT INTO `registro` VALUES ('166', '1', 'Aula 301', '0', '70', '53', 'NO', '28', '2017-11-05 16:37:46', '2017-11-05 16:37:46', null);
INSERT INTO `registro` VALUES ('167', '1', 'Aula 301', '0', '70', '61', 'SI', '28', '2017-11-05 16:37:53', '2017-11-05 16:37:53', null);
INSERT INTO `registro` VALUES ('168', '1', 'Aula 301', '0', '70', '65', 'NO', '28', '2017-11-05 16:38:01', '2017-11-05 16:38:01', null);
INSERT INTO `registro` VALUES ('169', '1', 'Aula 301', '0', '70', '66', 'SI', '28', '2017-11-05 16:38:08', '2017-11-05 16:38:08', null);
INSERT INTO `registro` VALUES ('170', '1', 'Aula 301', '0', '67', '61', 'NO', '28', '2017-11-05 16:38:30', '2017-11-05 16:38:30', null);
INSERT INTO `registro` VALUES ('171', '1', 'Aula 301', '0', '66', '60', 'NO', '28', '2017-11-05 16:38:37', '2017-11-05 16:38:37', null);
INSERT INTO `registro` VALUES ('172', '1', 'Aula 301', '0', '57', '56', 'NO', '28', '2017-11-05 16:38:52', '2017-11-05 16:38:52', null);
INSERT INTO `registro` VALUES ('173', '1', 'Aula 301', '0', '56', '63', 'SI', '28', '2017-11-05 16:38:59', '2017-11-05 16:38:59', null);
INSERT INTO `registro` VALUES ('174', '1', 'Aula 301', '0', '57', '60', 'NO', '28', '2017-11-05 16:39:06', '2017-11-05 16:39:06', null);
INSERT INTO `registro` VALUES ('175', '1', 'Aula 301', '0', '56', '50', 'NO', '28', '2017-11-05 16:39:14', '2017-11-05 16:39:14', null);
INSERT INTO `registro` VALUES ('176', '1', 'Aula 301', '0', '56', '62', 'SI', '28', '2017-11-05 16:39:22', '2017-11-05 16:39:22', null);
INSERT INTO `registro` VALUES ('177', '1', 'Aula 301', '0', '55', '60', 'NO', '28', '2017-11-05 16:39:37', '2017-11-05 16:39:37', null);
INSERT INTO `registro` VALUES ('178', '1', 'Aula 301', '0', '55', '56', 'NO', '28', '2017-11-05 16:39:44', '2017-11-05 16:39:44', null);
INSERT INTO `registro` VALUES ('179', '1', 'Aula 301', '0', '57', '61', 'NO', '28', '2017-11-05 16:39:51', '2017-11-05 16:39:51', null);
INSERT INTO `registro` VALUES ('180', '1', 'Aula 301', '0', '55', '50', 'SI', '28', '2017-11-05 16:40:05', '2017-11-05 16:40:05', null);
INSERT INTO `registro` VALUES ('181', '1', 'Aula 301', '0', '58', '64', 'SI', '28', '2017-11-05 16:40:13', '2017-11-05 16:40:13', null);
INSERT INTO `registro` VALUES ('182', '1', 'Aula 301', '0', '58', '62', 'NO', '28', '2017-11-05 16:40:36', '2017-11-05 16:40:36', null);
INSERT INTO `registro` VALUES ('183', '1', 'Aula 301', '0', '57', '61', 'NO', '28', '2017-11-05 16:40:50', '2017-11-05 16:40:50', null);
INSERT INTO `registro` VALUES ('184', '1', 'Aula 301', '0', '55', '56', 'NO', '28', '2017-11-05 16:40:58', '2017-11-05 16:40:58', null);
INSERT INTO `registro` VALUES ('185', '1', 'Aula 301', '0', '55', '60', 'SI', '28', '2017-11-05 16:41:05', '2017-11-05 16:41:05', null);
INSERT INTO `registro` VALUES ('186', '1', 'Aula 301', '0', '64', '56', 'NO', '28', '2017-11-05 16:41:19', '2017-11-05 16:41:19', null);
INSERT INTO `registro` VALUES ('187', '1', 'Aula 301', '0', '65', '60', 'NO', '28', '2017-11-05 16:41:27', '2017-11-05 16:41:27', null);
INSERT INTO `registro` VALUES ('188', '1', 'Aula 301', '0', '63', '66', 'NO', '28', '2017-11-05 16:41:34', '2017-11-05 16:41:34', null);
INSERT INTO `registro` VALUES ('189', '1', 'Aula 301', '0', '57', '60', 'SI', '28', '2017-11-05 16:41:42', '2017-11-05 16:41:42', null);
INSERT INTO `registro` VALUES ('190', '1', 'Aula 301', '0', '57', '58', 'SI', '28', '2017-11-05 16:41:57', '2017-11-05 16:41:57', null);
INSERT INTO `registro` VALUES ('191', '1', 'Aula 301', '0', '70', '54', 'NO', '28', '2017-11-05 16:42:11', '2017-11-05 16:42:11', null);
INSERT INTO `registro` VALUES ('192', '1', 'Aula 301', '0', '73', '54', 'NO', '28', '2017-11-05 16:42:19', '2017-11-05 16:42:19', null);
INSERT INTO `registro` VALUES ('193', '1', 'Aula 301', '0', '73', '62', 'NO', '29', '2017-11-05 16:42:27', '2017-11-05 16:42:27', null);
INSERT INTO `registro` VALUES ('194', '1', 'Aula 301', '0', '66', '60', 'NO', '28', '2017-11-05 16:42:34', '2017-11-05 16:42:34', null);
INSERT INTO `registro` VALUES ('195', '1', 'Aula 301', '0', '69', '61', 'SI', '28', '2017-11-05 16:42:42', '2017-11-05 16:42:42', null);
INSERT INTO `registro` VALUES ('196', '1', 'Aula 301', '0', '62', '50', 'SI', '28', '2017-11-05 16:42:50', '2017-11-05 16:42:50', null);
INSERT INTO `registro` VALUES ('197', '1', 'Aula 301', '0', '61', '63', 'NO', '28', '2017-11-05 16:42:57', '2017-11-05 16:42:57', null);
INSERT INTO `registro` VALUES ('198', '1', 'Aula 301', '0', '58', '63', 'NO', '28', '2017-11-05 16:43:04', '2017-11-05 16:43:04', null);
INSERT INTO `registro` VALUES ('199', '1', 'Aula 301', '0', '70', '62', 'NO', '28', '2017-11-05 16:43:12', '2017-11-05 16:43:12', null);
INSERT INTO `registro` VALUES ('200', '1', 'Aula 301', '0', '70', '53', 'NO', '28', '2017-11-05 16:43:19', '2017-11-05 16:43:19', null);
INSERT INTO `registro` VALUES ('201', '1', 'Aula 301', '0', '70', '50', 'NO', '28', '2017-11-05 16:43:34', '2017-11-05 16:43:34', null);
INSERT INTO `registro` VALUES ('202', '1', 'Aula 301', '0', '69', '62', 'NO', '28', '2017-11-05 16:43:41', '2017-11-05 16:43:41', null);
INSERT INTO `registro` VALUES ('203', '1', 'Aula 301', '0', '69', '62', 'NO', '29', '2017-11-05 16:43:56', '2017-11-05 16:43:56', null);
INSERT INTO `registro` VALUES ('204', '1', 'Aula 301', '0', '70', '50', 'SI', '29', '2017-11-05 16:44:03', '2017-11-05 16:44:03', null);
INSERT INTO `registro` VALUES ('205', '1', 'Aula 301', '0', '65', '60', 'NO', '29', '2017-11-05 16:44:10', '2017-11-05 16:44:10', null);
INSERT INTO `registro` VALUES ('206', '1', 'Aula 301', '0', '64', '60', 'SI', '29', '2017-11-05 16:44:18', '2017-11-05 16:44:18', null);
INSERT INTO `registro` VALUES ('207', '1', 'Aula 301', '0', '64', '65', 'SI', '28', '2017-11-05 16:44:25', '2017-11-05 16:44:25', null);
INSERT INTO `registro` VALUES ('208', '1', 'Aula 301', '0', '64', '61', 'NO', '28', '2017-11-05 16:44:32', '2017-11-05 16:44:32', null);
INSERT INTO `registro` VALUES ('209', '1', 'Aula 301', '0', '68', '67', 'SI', '29', '2017-11-05 16:44:40', '2017-11-05 16:44:40', null);
INSERT INTO `registro` VALUES ('210', '1', 'Aula 301', '0', '58', '64', 'NO', '28', '2017-11-05 16:44:47', '2017-11-05 16:44:47', null);
INSERT INTO `registro` VALUES ('211', '1', 'Aula 301', '0', '63', '62', 'SI', '28', '2017-11-05 16:44:54', '2017-11-05 16:44:54', null);
INSERT INTO `registro` VALUES ('212', '1', 'Aula 301', '0', '67', '60', 'SI', '28', '2017-11-05 16:45:02', '2017-11-05 16:45:02', null);
INSERT INTO `registro` VALUES ('213', '1', 'Aula 301', '0', '65', '60', 'SI', '29', '2017-11-05 16:45:09', '2017-11-05 16:45:09', null);
INSERT INTO `registro` VALUES ('214', '1', 'Aula 301', '0', '66', '61', 'NO', '29', '2017-11-05 16:45:17', '2017-11-05 16:45:17', null);
INSERT INTO `registro` VALUES ('215', '1', 'Aula 301', '0', '66', '60', 'SI', '29', '2017-11-05 16:45:24', '2017-11-05 16:45:24', null);
INSERT INTO `registro` VALUES ('216', '1', 'Aula 301', '0', '65', '58', 'NO', '29', '2017-11-05 16:45:31', '2017-11-05 16:45:31', null);
INSERT INTO `registro` VALUES ('217', '1', 'Aula 301', '0', '63', '60', 'NO', '29', '2017-11-05 16:45:39', '2017-11-05 16:45:39', null);
INSERT INTO `registro` VALUES ('218', '1', 'Aula 301', '0', '63', '60', 'SI', '29', '2017-11-05 16:45:46', '2017-11-05 16:45:46', null);
INSERT INTO `registro` VALUES ('219', '1', 'Aula 301', '0', '64', '62', 'NO', '29', '2017-11-05 16:45:54', '2017-11-05 16:45:54', null);
INSERT INTO `registro` VALUES ('220', '1', 'Aula 301', '0', '64', '60', 'NO', '29', '2017-11-05 16:46:02', '2017-11-05 16:46:02', null);
INSERT INTO `registro` VALUES ('221', '1', 'Aula 301', '0', '65', '61', 'NO', '29', '2017-11-05 16:46:09', '2017-11-05 16:46:09', null);
INSERT INTO `registro` VALUES ('222', '1', 'Aula 301', '0', '62', '58', 'NO', '29', '2017-11-05 16:46:16', '2017-11-05 16:46:16', null);
INSERT INTO `registro` VALUES ('223', '1', 'Aula 301', '0', '62', '62', 'NO', '29', '2017-11-05 16:46:23', '2017-11-05 16:46:23', null);
INSERT INTO `registro` VALUES ('224', '1', 'Aula 301', '0', '58', '57', 'NO', '29', '2017-11-05 16:46:31', '2017-11-05 16:46:31', null);
INSERT INTO `registro` VALUES ('225', '1', 'Aula 301', '0', '60', '64', 'NO', '29', '2017-11-05 16:46:38', '2017-11-05 16:46:38', null);
INSERT INTO `registro` VALUES ('226', '1', 'Aula 301', '0', '63', '66', 'NO', '29', '2017-11-05 16:46:46', '2017-11-05 16:46:46', null);
INSERT INTO `registro` VALUES ('227', '1', 'Aula 301', '0', '61', '62', 'SI', '29', '2017-11-05 16:46:53', '2017-11-05 16:46:53', null);
INSERT INTO `registro` VALUES ('228', '1', 'Aula 301', '0', '59', '59', 'NO', '29', '2017-11-05 16:47:00', '2017-11-05 16:47:00', null);
INSERT INTO `registro` VALUES ('229', '1', 'Aula 301', '0', '59', '63', 'NO', '29', '2017-11-05 16:47:07', '2017-11-05 16:47:07', null);
INSERT INTO `registro` VALUES ('230', '1', 'Aula 301', '0', '37', '63', 'SI', '29', '2017-11-05 16:47:15', '2017-11-05 16:47:15', null);
INSERT INTO `registro` VALUES ('231', '1', 'Aula 301', '0', '58', '60', 'NO', '29', '2017-11-05 16:47:22', '2017-11-05 16:47:22', null);
INSERT INTO `registro` VALUES ('232', '1', 'Aula 301', '0', '57', '60', 'NO', '29', '2017-11-05 16:47:29', '2017-11-05 16:47:29', null);
INSERT INTO `registro` VALUES ('233', '1', 'Aula 301', '0', '58', '56', 'NO', '29', '2017-11-05 16:47:37', '2017-11-05 16:47:37', null);
INSERT INTO `registro` VALUES ('234', '1', 'Aula 301', '0', '58', '66', 'NO', '29', '2017-11-05 16:47:44', '2017-11-05 16:47:44', null);
INSERT INTO `registro` VALUES ('235', '1', 'Aula 301', '0', '60', '59', 'NO', '29', '2017-11-05 16:47:59', '2017-11-05 16:47:59', null);
INSERT INTO `registro` VALUES ('236', '1', 'Aula 301', '0', '61', '53', 'NO', '29', '2017-11-05 16:48:06', '2017-11-05 16:48:06', null);
INSERT INTO `registro` VALUES ('237', '1', 'Aula 301', '0', '65', '56', 'SI', '29', '2017-11-05 16:48:14', '2017-11-05 16:48:14', null);
INSERT INTO `registro` VALUES ('238', '1', 'Aula 301', '0', '50', '60', 'NO', '28', '2017-11-05 16:48:21', '2017-11-05 16:48:21', null);
INSERT INTO `registro` VALUES ('239', '1', 'Aula 301', '0', '55', '63', 'SI', '29', '2017-11-05 16:48:30', '2017-11-05 16:48:30', null);
INSERT INTO `registro` VALUES ('240', '1', 'Aula 301', '0', '55', '57', 'NO', '29', '2017-11-05 16:48:37', '2017-11-05 16:48:37', null);
INSERT INTO `registro` VALUES ('241', '1', 'Aula 301', '0', '48', '63', 'NO', '29', '2017-11-05 16:48:45', '2017-11-05 16:48:45', null);
INSERT INTO `registro` VALUES ('242', '1', 'Aula 301', '0', '48', '61', 'NO', '29', '2017-11-05 16:48:52', '2017-11-05 16:48:52', null);
INSERT INTO `registro` VALUES ('243', '1', 'Aula 301', '1', '55', '61', 'NO', '29', '2017-11-05 16:49:04', '2017-11-05 16:49:04', null);
INSERT INTO `registro` VALUES ('244', '1', 'Aula 301', '1', '48', '60', 'NO', '29', '2017-11-05 16:49:12', '2017-11-05 16:49:12', null);
INSERT INTO `registro` VALUES ('245', '1', 'Aula 301', '1', '58', '61', 'SI', '28', '2017-11-05 16:49:20', '2017-11-05 16:49:20', null);
INSERT INTO `registro` VALUES ('246', '1', 'Aula 301', '1', '48', '63', 'NO', '29', '2017-11-05 16:49:28', '2017-11-05 16:49:28', null);
INSERT INTO `registro` VALUES ('247', '1', 'Aula 301', '1', '58', '63', 'SI', '29', '2017-11-05 16:49:36', '2017-11-05 16:49:36', null);
INSERT INTO `registro` VALUES ('248', '1', 'Aula 301', '1', '57', '56', 'NO', '29', '2017-11-05 16:49:44', '2017-11-05 16:49:44', null);
INSERT INTO `registro` VALUES ('249', '1', 'Aula 301', '0', '55', '63', 'NO', '29', '2017-11-05 16:49:51', '2017-11-05 16:49:51', null);
INSERT INTO `registro` VALUES ('250', '1', 'Aula 301', '0', '49', '62', 'NO', '28', '2017-11-05 16:49:59', '2017-11-05 16:49:59', null);
INSERT INTO `registro` VALUES ('251', '1', 'Aula 301', '0', '50', '62', 'NO', '29', '2017-11-05 16:50:06', '2017-11-05 16:50:06', null);
INSERT INTO `registro` VALUES ('252', '1', 'Aula 301', '0', '58', '60', 'NO', '29', '2017-11-05 16:50:14', '2017-11-05 16:50:14', null);
INSERT INTO `registro` VALUES ('253', '1', 'Aula 301', '0', '58', '59', 'SI', '29', '2017-11-05 16:50:21', '2017-11-05 16:50:21', null);
INSERT INTO `registro` VALUES ('254', '1', 'Aula 301', '0', '59', '62', 'SI', '29', '2017-11-05 16:50:29', '2017-11-05 16:50:29', null);
INSERT INTO `registro` VALUES ('255', '1', 'Aula 301', '0', '57', '60', 'NO', '29', '2017-11-05 16:50:36', '2017-11-05 16:50:36', null);
INSERT INTO `registro` VALUES ('256', '1', 'Aula 301', '0', '56', '64', 'NO', '29', '2017-11-05 16:50:43', '2017-11-05 16:50:43', null);
INSERT INTO `registro` VALUES ('257', '1', 'Aula 301', '0', '56', '64', 'NO', '29', '2017-11-05 16:50:58', '2017-11-05 16:50:58', null);
INSERT INTO `registro` VALUES ('258', '1', 'Aula 301', '0', '56', '56', 'NO', '29', '2017-11-05 16:51:06', '2017-11-05 16:51:06', null);
INSERT INTO `registro` VALUES ('259', '1', 'Aula 301', '0', '56', '61', 'SI', '28', '2017-11-05 16:51:20', '2017-11-05 16:51:20', null);
INSERT INTO `registro` VALUES ('260', '1', 'Aula 301', '0', '0', '63', 'SI', '29', '2017-11-05 16:51:28', '2017-11-05 16:51:28', null);
INSERT INTO `registro` VALUES ('261', '1', 'Aula 301', '0', '41', '60', 'NO', '28', '2017-11-05 16:51:35', '2017-11-05 16:51:35', null);
INSERT INTO `registro` VALUES ('262', '1', 'Aula 301', '0', '30', '50', 'SI', '29', '2017-11-05 16:51:49', '2017-11-05 16:51:49', null);
INSERT INTO `registro` VALUES ('263', '1', 'Aula 301', '0', '55', '60', 'NO', '29', '2017-11-05 16:51:56', '2017-11-05 16:51:56', null);
INSERT INTO `registro` VALUES ('264', '1', 'Aula 301', '0', '45', '64', 'NO', '29', '2017-11-05 16:52:04', '2017-11-05 16:52:04', null);
INSERT INTO `registro` VALUES ('265', '1', 'Aula 301', '0', '54', '54', 'NO', '28', '2017-11-05 16:52:33', '2017-11-05 16:52:33', null);
INSERT INTO `registro` VALUES ('266', '1', 'Aula 301', '0', '53', '56', 'NO', '28', '2017-11-05 16:52:40', '2017-11-05 16:52:40', null);
INSERT INTO `registro` VALUES ('267', '1', 'Aula 301', '0', '55', '66', 'NO', '29', '2017-11-05 16:52:47', '2017-11-05 16:52:47', null);
INSERT INTO `registro` VALUES ('268', '1', 'Aula 301', '0', '55', '60', 'NO', '28', '2017-11-05 16:53:02', '2017-11-05 16:53:02', null);
INSERT INTO `registro` VALUES ('269', '1', 'Aula 301', '0', '53', '61', 'NO', '28', '2017-11-05 16:53:16', '2017-11-05 16:53:16', null);
INSERT INTO `registro` VALUES ('270', '1', 'Aula 301', '0', '55', '56', 'SI', '28', '2017-11-05 16:53:23', '2017-11-05 16:53:23', null);
INSERT INTO `registro` VALUES ('271', '1', 'Aula 301', '0', '63', '62', 'NO', '28', '2017-11-05 16:53:31', '2017-11-05 16:53:31', null);
INSERT INTO `registro` VALUES ('272', '1', 'Aula 301', '0', '57', '61', 'NO', '28', '2017-11-05 16:53:45', '2017-11-05 16:53:45', null);
INSERT INTO `registro` VALUES ('273', '1', 'Aula 301', '0', '56', '64', 'NO', '28', '2017-11-05 16:53:53', '2017-11-05 16:53:53', null);
INSERT INTO `registro` VALUES ('274', '1', 'Aula 301', '0', '62', '56', 'SI', '28', '2017-11-05 16:54:00', '2017-11-05 16:54:00', null);
INSERT INTO `registro` VALUES ('275', '1', 'Aula 301', '0', '62', '59', 'NO', '28', '2017-11-05 16:54:08', '2017-11-05 16:54:08', null);
INSERT INTO `registro` VALUES ('276', '1', 'Aula 301', '0', '64', '63', 'NO', '28', '2017-11-05 16:54:15', '2017-11-05 16:54:15', null);
INSERT INTO `registro` VALUES ('277', '1', 'Aula 301', '0', '57', '61', 'NO', '28', '2017-11-05 16:54:23', '2017-11-05 16:54:23', null);
INSERT INTO `registro` VALUES ('278', '1', 'Aula 301', '0', '53', '59', 'SI', '28', '2017-11-05 16:54:30', '2017-11-05 16:54:30', null);
INSERT INTO `registro` VALUES ('279', '1', 'Aula 301', '0', '2682', '56', 'NO', '28', '2017-11-05 16:54:37', '2017-11-05 16:54:37', null);
INSERT INTO `registro` VALUES ('280', '1', 'Aula 301', '0', '126', '60', 'NO', '29', '2017-11-05 16:54:52', '2017-11-05 16:54:52', null);
INSERT INTO `registro` VALUES ('281', '1', 'Aula 301', '0', '228', '50', 'NO', '28', '2017-11-05 16:54:59', '2017-11-05 16:54:59', null);
INSERT INTO `registro` VALUES ('282', '1', 'Aula 301', '0', '52', '50', 'NO', '28', '2017-11-05 16:55:06', '2017-11-05 16:55:06', null);
INSERT INTO `registro` VALUES ('283', '1', 'Aula 301', '0', '42', '61', 'NO', '28', '2017-11-05 16:55:14', '2017-11-05 16:55:14', null);
INSERT INTO `registro` VALUES ('284', '1', 'Aula 301', '0', '55', '50', 'SI', '28', '2017-11-05 16:55:21', '2017-11-05 16:55:21', null);
INSERT INTO `registro` VALUES ('285', '1', 'Aula 301', '0', '57', '57', 'SI', '28', '2017-11-05 16:55:28', '2017-11-05 16:55:28', null);
INSERT INTO `registro` VALUES ('286', '1', 'Aula 301', '0', '58', '64', 'NO', '28', '2017-11-05 16:55:43', '2017-11-05 16:55:43', null);
INSERT INTO `registro` VALUES ('287', '1', 'Aula 301', '0', '58', '64', 'NO', '28', '2017-11-05 16:55:51', '2017-11-05 16:55:51', null);
INSERT INTO `registro` VALUES ('288', '1', 'Aula 301', '0', '53', '56', 'NO', '28', '2017-11-05 16:55:58', '2017-11-05 16:55:58', null);
INSERT INTO `registro` VALUES ('289', '1', 'Aula 301', '0', '52', '67', 'NO', '28', '2017-11-05 16:56:06', '2017-11-05 16:56:06', null);
INSERT INTO `registro` VALUES ('290', '1', 'Aula 301', '0', '53', '64', 'NO', '28', '2017-11-05 16:56:20', '2017-11-05 16:56:20', null);
INSERT INTO `registro` VALUES ('291', '1', 'Aula 301', '0', '52', '63', 'SI', '28', '2017-11-05 16:56:27', '2017-11-05 16:56:27', null);
INSERT INTO `registro` VALUES ('292', '1', 'Aula 301', '0', '58', '59', 'NO', '28', '2017-11-05 16:56:42', '2017-11-05 16:56:42', null);
INSERT INTO `registro` VALUES ('293', '1', 'Aula 301', '0', '59', '59', 'NO', '28', '2017-11-05 16:56:49', '2017-11-05 16:56:49', null);
INSERT INTO `registro` VALUES ('294', '1', 'Aula 301', '0', '56', '60', 'SI', '28', '2017-11-05 16:56:56', '2017-11-05 16:56:56', null);
INSERT INTO `registro` VALUES ('295', '1', 'Aula 301', '0', '50', '64', 'NO', '28', '2017-11-05 16:57:04', '2017-11-05 16:57:04', null);
INSERT INTO `registro` VALUES ('296', '1', 'Aula 301', '0', '50', '59', 'NO', '28', '2017-11-05 16:57:11', '2017-11-05 16:57:11', null);
INSERT INTO `registro` VALUES ('297', '1', 'Aula 301', '0', '51', '61', 'NO', '28', '2017-11-05 16:57:19', '2017-11-05 16:57:19', null);
INSERT INTO `registro` VALUES ('298', '1', 'Aula 301', '0', '52', '53', 'NO', '28', '2017-11-05 16:57:27', '2017-11-05 16:57:27', null);
INSERT INTO `registro` VALUES ('299', '1', 'Aula 301', '0', '53', '60', 'NO', '28', '2017-11-05 16:57:34', '2017-11-05 16:57:34', null);
INSERT INTO `registro` VALUES ('300', '1', 'Aula 301', '0', '54', '50', 'NO', '28', '2017-11-05 16:57:42', '2017-11-05 16:57:42', null);
INSERT INTO `registro` VALUES ('301', '1', 'Aula 301', '0', '54', '60', 'SI', '28', '2017-11-05 16:57:50', '2017-11-05 16:57:50', null);
INSERT INTO `registro` VALUES ('302', '1', 'Aula 301', '0', '57', '57', 'NO', '28', '2017-11-05 16:58:04', '2017-11-05 16:58:04', null);
INSERT INTO `registro` VALUES ('303', '1', 'Aula 301', '0', '56', '56', 'NO', '28', '2017-11-05 16:58:12', '2017-11-05 16:58:12', null);
INSERT INTO `registro` VALUES ('304', '1', 'Aula 301', '0', '55', '50', 'NO', '28', '2017-11-05 16:58:20', '2017-11-05 16:58:20', null);
INSERT INTO `registro` VALUES ('305', '1', 'Aula 301', '0', '55', '56', 'NO', '28', '2017-11-05 16:58:27', '2017-11-05 16:58:27', null);
INSERT INTO `registro` VALUES ('306', '1', 'Aula 301', '0', '55', '64', 'SI', '28', '2017-11-05 16:58:34', '2017-11-05 16:58:34', null);
INSERT INTO `registro` VALUES ('307', '1', 'Aula 301', '0', '59', '56', 'NO', '28', '2017-11-05 16:58:42', '2017-11-05 16:58:42', null);
INSERT INTO `registro` VALUES ('308', '1', 'Aula 301', '0', '55', '60', 'NO', '28', '2017-11-05 16:58:49', '2017-11-05 16:58:49', null);
INSERT INTO `registro` VALUES ('309', '1', 'Aula 301', '0', '55', '66', 'NO', '28', '2017-11-05 16:58:56', '2017-11-05 16:58:56', null);
INSERT INTO `registro` VALUES ('310', '1', 'Aula 301', '0', '55', '66', 'NO', '28', '2017-11-05 16:59:03', '2017-11-05 16:59:03', null);
INSERT INTO `registro` VALUES ('311', '1', 'Aula 301', '0', '54', '62', 'NO', '28', '2017-11-05 16:59:10', '2017-11-05 16:59:10', null);
INSERT INTO `registro` VALUES ('312', '1', 'Aula 301', '0', '59', '54', 'NO', '28', '2017-11-05 16:59:26', '2017-11-05 16:59:26', null);
INSERT INTO `registro` VALUES ('313', '1', 'Aula 301', '0', '54', '58', 'SI', '28', '2017-11-05 16:59:33', '2017-11-05 16:59:33', null);
INSERT INTO `registro` VALUES ('314', '1', 'Aula 301', '0', '58', '58', 'NO', '28', '2017-11-05 16:59:40', '2017-11-05 16:59:40', null);
INSERT INTO `registro` VALUES ('315', '1', 'Aula 301', '0', '50', '56', 'NO', '28', '2017-11-05 16:59:48', '2017-11-05 16:59:48', null);
INSERT INTO `registro` VALUES ('316', '1', 'Aula 301', '0', '79', '54', 'NO', '28', '2017-11-05 17:00:02', '2017-11-05 17:00:02', null);
INSERT INTO `registro` VALUES ('317', '1', 'Aula 301', '0', '60', '65', 'NO', '28', '2017-11-05 17:00:09', '2017-11-05 17:00:09', null);
INSERT INTO `registro` VALUES ('318', '1', 'Aula 301', '0', '59', '63', 'NO', '28', '2017-11-05 17:00:16', '2017-11-05 17:00:16', null);
INSERT INTO `registro` VALUES ('319', '1', 'Aula 301', '0', '60', '63', 'NO', '28', '2017-11-05 17:00:25', '2017-11-05 17:00:25', null);
INSERT INTO `registro` VALUES ('320', '1', 'Aula 301', '0', '57', '59', 'NO', '28', '2017-11-05 17:00:33', '2017-11-05 17:00:33', null);
INSERT INTO `registro` VALUES ('321', '1', 'Aula 301', '0', '58', '62', 'NO', '28', '2017-11-05 17:00:40', '2017-11-05 17:00:40', null);
INSERT INTO `registro` VALUES ('322', '1', 'Aula 301', '0', '60', '63', 'NO', '28', '2017-11-05 17:00:47', '2017-11-05 17:00:47', null);
INSERT INTO `registro` VALUES ('323', '1', 'Aula 301', '0', '59', '53', 'NO', '28', '2017-11-05 17:00:55', '2017-11-05 17:00:55', null);
INSERT INTO `registro` VALUES ('324', '1', 'Aula 301', '0', '59', '56', 'NO', '28', '2017-11-05 17:01:02', '2017-11-05 17:01:02', null);
INSERT INTO `registro` VALUES ('325', '1', 'Aula 301', '0', '58', '56', 'NO', '28', '2017-11-05 17:01:09', '2017-11-05 17:01:09', null);
INSERT INTO `registro` VALUES ('326', '1', 'Aula 301', '0', '55', '64', 'NO', '28', '2017-11-05 17:01:17', '2017-11-05 17:01:17', null);
INSERT INTO `registro` VALUES ('327', '1', 'Aula 301', '0', '55', '60', 'NO', '28', '2017-11-05 17:01:24', '2017-11-05 17:01:24', null);
INSERT INTO `registro` VALUES ('328', '1', 'Aula 301', '0', '55', '58', 'NO', '28', '2017-11-05 17:01:46', '2017-11-05 17:01:46', null);
INSERT INTO `registro` VALUES ('329', '1', 'Aula 301', '0', '55', '59', 'NO', '28', '2017-11-05 17:01:53', '2017-11-05 17:01:53', null);
INSERT INTO `registro` VALUES ('330', '1', 'Aula 301', '0', '40', '53', 'NO', '28', '2017-11-05 17:02:01', '2017-11-05 17:02:01', null);
INSERT INTO `registro` VALUES ('331', '1', 'Aula 301', '0', '50', '63', 'NO', '28', '2017-11-05 17:02:08', '2017-11-05 17:02:08', null);
INSERT INTO `registro` VALUES ('332', '1', 'Aula 301', '0', '49', '58', 'NO', '28', '2017-11-05 17:02:22', '2017-11-05 17:02:22', null);
INSERT INTO `registro` VALUES ('333', '1', 'Aula 301', '0', '47', '53', 'NO', '28', '2017-11-05 17:02:30', '2017-11-05 17:02:30', null);
INSERT INTO `registro` VALUES ('334', '1', 'Aula 301', '0', '46', '63', 'SI', '28', '2017-11-05 17:02:37', '2017-11-05 17:02:37', null);
INSERT INTO `registro` VALUES ('335', '1', 'Aula 301', '0', '49', '58', 'NO', '28', '2017-11-05 17:02:45', '2017-11-05 17:02:45', null);
INSERT INTO `registro` VALUES ('336', '1', 'Aula 301', '0', '50', '63', 'NO', '28', '2017-11-05 17:02:52', '2017-11-05 17:02:52', null);
INSERT INTO `registro` VALUES ('337', '1', 'Aula 301', '0', '50', '58', 'NO', '28', '2017-11-05 17:02:59', '2017-11-05 17:02:59', null);
INSERT INTO `registro` VALUES ('338', '1', 'Aula 301', '0', '50', '59', 'NO', '28', '2017-11-05 17:03:07', '2017-11-05 17:03:07', null);
INSERT INTO `registro` VALUES ('339', '1', 'Aula 301', '0', '49', '59', 'NO', '28', '2017-11-05 17:03:14', '2017-11-05 17:03:14', null);
INSERT INTO `registro` VALUES ('340', '1', 'Aula 301', '0', '49', '64', 'NO', '28', '2017-11-05 17:03:21', '2017-11-05 17:03:21', null);
INSERT INTO `registro` VALUES ('341', '1', 'Aula 301', '0', '50', '66', 'SI', '28', '2017-11-05 17:03:28', '2017-11-05 17:03:28', null);
INSERT INTO `registro` VALUES ('342', '1', 'Aula 301', '0', '49', '63', 'NO', '28', '2017-11-05 17:03:36', '2017-11-05 17:03:36', null);
INSERT INTO `registro` VALUES ('343', '1', 'Aula 301', '0', '49', '62', 'NO', '28', '2017-11-05 17:03:43', '2017-11-05 17:03:43', null);
INSERT INTO `registro` VALUES ('344', '1', 'Aula 301', '0', '49', '56', 'SI', '28', '2017-11-05 17:03:51', '2017-11-05 17:03:51', null);
INSERT INTO `registro` VALUES ('345', '1', 'Aula 301', '0', '49', '62', 'NO', '28', '2017-11-05 17:04:12', '2017-11-05 17:04:12', null);
INSERT INTO `registro` VALUES ('346', '1', 'Aula 301', '0', '49', '61', 'NO', '28', '2017-11-05 17:04:20', '2017-11-05 17:04:20', null);
INSERT INTO `registro` VALUES ('347', '1', 'Aula 301', '0', '50', '60', 'SI', '28', '2017-11-05 17:04:27', '2017-11-05 17:04:27', null);
INSERT INTO `registro` VALUES ('348', '1', 'Aula 301', '0', '48', '61', 'SI', '28', '2017-11-05 17:04:35', '2017-11-05 17:04:35', null);
INSERT INTO `registro` VALUES ('349', '1', 'Aula 301', '0', '48', '66', 'NO', '28', '2017-11-05 17:04:42', '2017-11-05 17:04:42', null);
INSERT INTO `registro` VALUES ('350', '1', 'Aula 301', '0', '48', '63', 'NO', '28', '2017-11-05 17:05:04', '2017-11-05 17:05:04', null);
INSERT INTO `registro` VALUES ('351', '1', 'Aula 301', '0', '48', '60', 'NO', '28', '2017-11-05 17:05:12', '2017-11-05 17:05:12', null);
INSERT INTO `registro` VALUES ('352', '1', 'Aula 301', '0', '50', '65', 'NO', '28', '2017-11-05 17:05:26', '2017-11-05 17:05:26', null);
INSERT INTO `registro` VALUES ('353', '1', 'Aula 301', '0', '53', '54', 'SI', '28', '2017-11-05 17:05:33', '2017-11-05 17:05:33', null);
INSERT INTO `registro` VALUES ('354', '1', 'Aula 301', '0', '52', '62', 'NO', '28', '2017-11-05 17:05:41', '2017-11-05 17:05:41', null);
INSERT INTO `registro` VALUES ('355', '1', 'Aula 301', '0', '53', '59', 'NO', '28', '2017-11-05 17:05:49', '2017-11-05 17:05:49', null);
INSERT INTO `registro` VALUES ('356', '1', 'Aula 301', '0', '50', '65', 'SI', '28', '2017-11-05 17:05:57', '2017-11-05 17:05:57', null);
INSERT INTO `registro` VALUES ('357', '1', 'Aula 301', '0', '53', '53', 'NO', '28', '2017-11-05 17:06:05', '2017-11-05 17:06:05', null);
INSERT INTO `registro` VALUES ('358', '1', 'Aula 301', '0', '51', '56', 'NO', '28', '2017-11-05 17:06:12', '2017-11-05 17:06:12', null);
INSERT INTO `registro` VALUES ('359', '1', 'Aula 301', '0', '49', '59', 'NO', '28', '2017-11-05 17:06:20', '2017-11-05 17:06:20', null);
INSERT INTO `registro` VALUES ('360', '1', 'Aula 301', '0', '49', '66', 'NO', '28', '2017-11-05 17:06:27', '2017-11-05 17:06:27', null);
INSERT INTO `registro` VALUES ('361', '1', 'Aula 301', '0', '49', '64', 'NO', '28', '2017-11-05 17:06:34', '2017-11-05 17:06:34', null);
INSERT INTO `registro` VALUES ('362', '1', 'Aula 301', '0', '50', '66', 'NO', '28', '2017-11-05 17:07:03', '2017-11-05 17:07:03', null);
INSERT INTO `registro` VALUES ('363', '1', 'Aula 301', '0', '50', '62', 'NO', '28', '2017-11-05 17:07:10', '2017-11-05 17:07:10', null);
INSERT INTO `registro` VALUES ('364', '1', 'Aula 301', '0', '45', '56', 'NO', '28', '2017-11-05 17:07:31', '2017-11-05 17:07:31', null);
INSERT INTO `registro` VALUES ('365', '1', 'Aula 301', '0', '0', '54', 'SI', '28', '2017-11-05 17:33:36', '2017-11-05 17:33:36', null);
INSERT INTO `registro` VALUES ('366', '1', 'Aula 301', '0', '0', '53', 'NO', '28', '2017-11-05 17:34:12', '2017-11-05 17:34:12', null);
INSERT INTO `registro` VALUES ('367', '1', 'Aula 301', '0', '29', '50', 'NO', '28', '2017-11-05 17:34:26', '2017-11-05 17:34:26', null);
INSERT INTO `registro` VALUES ('368', '1', 'Aula 301', '0', '3', '59', 'NO', '28', '2017-11-05 17:34:48', '2017-11-05 17:34:48', null);
INSERT INTO `registro` VALUES ('369', '1', 'Aula 301', '0', '2', '63', 'NO', '28', '2017-11-05 17:34:55', '2017-11-05 17:34:55', null);
INSERT INTO `registro` VALUES ('370', '1', 'Aula 301', '0', '2', '50', 'SI', '28', '2017-11-05 17:35:03', '2017-11-05 17:35:03', null);
INSERT INTO `registro` VALUES ('371', '1', 'Aula 301', '0', '2', '65', 'NO', '28', '2017-11-05 17:35:10', '2017-11-05 17:35:10', null);
INSERT INTO `registro` VALUES ('372', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:35:24', '2017-11-05 17:35:24', null);
INSERT INTO `registro` VALUES ('373', '1', 'Aula 301', '0', '2', '63', 'NO', '28', '2017-11-05 17:35:32', '2017-11-05 17:35:32', null);
INSERT INTO `registro` VALUES ('374', '1', 'Aula 301', '0', '4', '63', 'NO', '28', '2017-11-05 17:35:39', '2017-11-05 17:35:39', null);
INSERT INTO `registro` VALUES ('375', '1', 'Aula 301', '0', '4', '63', 'NO', '28', '2017-11-05 17:35:47', '2017-11-05 17:35:47', null);
INSERT INTO `registro` VALUES ('376', '1', 'Aula 301', '0', '4', '61', 'NO', '28', '2017-11-05 17:35:54', '2017-11-05 17:35:54', null);
INSERT INTO `registro` VALUES ('377', '1', 'Aula 301', '0', '2', '61', 'NO', '28', '2017-11-05 17:36:01', '2017-11-05 17:36:01', null);
INSERT INTO `registro` VALUES ('378', '1', 'Aula 301', '0', '2', '56', 'NO', '28', '2017-11-05 17:36:09', '2017-11-05 17:36:09', null);
INSERT INTO `registro` VALUES ('379', '1', 'Aula 301', '0', '4', '62', 'SI', '28', '2017-11-05 17:36:17', '2017-11-05 17:36:17', null);
INSERT INTO `registro` VALUES ('380', '1', 'Aula 301', '0', '2', '59', 'NO', '28', '2017-11-05 17:36:24', '2017-11-05 17:36:24', null);
INSERT INTO `registro` VALUES ('381', '1', 'Aula 301', '0', '4', '54', 'NO', '28', '2017-11-05 17:37:01', '2017-11-05 17:37:01', null);
INSERT INTO `registro` VALUES ('382', '1', 'Aula 301', '0', '4', '67', 'SI', '28', '2017-11-05 17:37:15', '2017-11-05 17:37:15', null);
INSERT INTO `registro` VALUES ('383', '1', 'Aula 301', '0', '5', '60', 'NO', '28', '2017-11-05 17:37:22', '2017-11-05 17:37:22', null);
INSERT INTO `registro` VALUES ('384', '1', 'Aula 301', '0', '4', '60', 'NO', '28', '2017-11-05 17:37:31', '2017-11-05 17:37:31', null);
INSERT INTO `registro` VALUES ('385', '1', 'Aula 301', '0', '3', '64', 'NO', '28', '2017-11-05 17:37:38', '2017-11-05 17:37:38', null);
INSERT INTO `registro` VALUES ('386', '1', 'Aula 301', '0', '3', '59', 'NO', '28', '2017-11-05 17:38:00', '2017-11-05 17:38:00', null);
INSERT INTO `registro` VALUES ('387', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:38:07', '2017-11-05 17:38:07', null);
INSERT INTO `registro` VALUES ('388', '1', 'Aula 301', '0', '4', '59', 'SI', '28', '2017-11-05 17:38:15', '2017-11-05 17:38:15', null);
INSERT INTO `registro` VALUES ('389', '1', 'Aula 301', '0', '4', '54', 'NO', '28', '2017-11-05 17:38:22', '2017-11-05 17:38:22', null);
INSERT INTO `registro` VALUES ('390', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:38:30', '2017-11-05 17:38:30', null);
INSERT INTO `registro` VALUES ('391', '1', 'Aula 301', '0', '3', '61', 'NO', '28', '2017-11-05 17:38:37', '2017-11-05 17:38:37', null);
INSERT INTO `registro` VALUES ('392', '1', 'Aula 301', '0', '5', '62', 'SI', '28', '2017-11-05 17:38:45', '2017-11-05 17:38:45', null);
INSERT INTO `registro` VALUES ('393', '1', 'Aula 301', '0', '4', '59', 'SI', '28', '2017-11-05 17:38:52', '2017-11-05 17:38:52', null);
INSERT INTO `registro` VALUES ('394', '1', 'Aula 301', '0', '5', '66', 'NO', '28', '2017-11-05 17:39:00', '2017-11-05 17:39:00', null);
INSERT INTO `registro` VALUES ('395', '1', 'Aula 301', '0', '3', '60', 'NO', '28', '2017-11-05 17:39:09', '2017-11-05 17:39:09', null);
INSERT INTO `registro` VALUES ('396', '1', 'Aula 301', '0', '5', '62', 'SI', '28', '2017-11-05 17:39:17', '2017-11-05 17:39:17', null);
INSERT INTO `registro` VALUES ('397', '1', 'Aula 301', '0', '4', '65', 'NO', '28', '2017-11-05 17:39:25', '2017-11-05 17:39:25', null);
INSERT INTO `registro` VALUES ('398', '1', 'Aula 301', '0', '5', '62', 'NO', '28', '2017-11-05 17:39:32', '2017-11-05 17:39:32', null);
INSERT INTO `registro` VALUES ('399', '1', 'Aula 301', '0', '5', '56', 'NO', '28', '2017-11-05 17:39:40', '2017-11-05 17:39:40', null);
INSERT INTO `registro` VALUES ('400', '1', 'Aula 301', '0', '5', '65', 'NO', '28', '2017-11-05 17:40:02', '2017-11-05 17:40:02', null);
INSERT INTO `registro` VALUES ('401', '1', 'Aula 301', '0', '5', '56', 'NO', '28', '2017-11-05 17:40:10', '2017-11-05 17:40:10', null);
INSERT INTO `registro` VALUES ('402', '1', 'Aula 301', '0', '5', '60', 'NO', '28', '2017-11-05 17:40:18', '2017-11-05 17:40:18', null);
INSERT INTO `registro` VALUES ('403', '1', 'Aula 301', '0', '5', '62', 'NO', '28', '2017-11-05 17:40:26', '2017-11-05 17:40:26', null);
INSERT INTO `registro` VALUES ('404', '1', 'Aula 301', '0', '4', '64', 'SI', '28', '2017-11-05 17:40:41', '2017-11-05 17:40:41', null);
INSERT INTO `registro` VALUES ('405', '1', 'Aula 301', '0', '4', '65', 'NO', '28', '2017-11-05 17:40:49', '2017-11-05 17:40:49', null);
INSERT INTO `registro` VALUES ('406', '1', 'Aula 301', '0', '4', '62', 'NO', '28', '2017-11-05 17:40:56', '2017-11-05 17:40:56', null);
INSERT INTO `registro` VALUES ('407', '1', 'Aula 301', '0', '4', '60', 'NO', '28', '2017-11-05 17:41:13', '2017-11-05 17:41:13', null);
INSERT INTO `registro` VALUES ('408', '1', 'Aula 301', '0', '5', '67', 'SI', '28', '2017-11-05 17:41:21', '2017-11-05 17:41:21', null);
INSERT INTO `registro` VALUES ('409', '1', 'Aula 301', '0', '4', '61', 'NO', '28', '2017-11-05 17:41:29', '2017-11-05 17:41:29', null);
INSERT INTO `registro` VALUES ('410', '1', 'Aula 301', '0', '4', '56', 'NO', '28', '2017-11-05 17:41:36', '2017-11-05 17:41:36', null);
INSERT INTO `registro` VALUES ('411', '1', 'Aula 301', '0', '4', '58', 'NO', '28', '2017-11-05 17:41:44', '2017-11-05 17:41:44', null);
INSERT INTO `registro` VALUES ('412', '1', 'Aula 301', '0', '3', '66', 'NO', '28', '2017-11-05 17:41:52', '2017-11-05 17:41:52', null);
INSERT INTO `registro` VALUES ('413', '1', 'Aula 301', '0', '3', '58', 'NO', '28', '2017-11-05 17:41:59', '2017-11-05 17:41:59', null);
INSERT INTO `registro` VALUES ('414', '1', 'Aula 301', '0', '4', '0', 'SI', '28', '2017-11-05 17:42:58', '2017-11-05 17:42:58', null);
INSERT INTO `registro` VALUES ('415', '1', 'Aula 301', '0', '4', '0', 'NO', '28', '2017-11-05 17:43:05', '2017-11-05 17:43:05', null);
INSERT INTO `registro` VALUES ('416', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:43:13', '2017-11-05 17:43:13', null);
INSERT INTO `registro` VALUES ('417', '1', 'Aula 301', '0', '3', '60', 'NO', '28', '2017-11-05 17:43:20', '2017-11-05 17:43:20', null);
INSERT INTO `registro` VALUES ('418', '1', 'Aula 301', '0', '3', '60', 'NO', '28', '2017-11-05 17:43:28', '2017-11-05 17:43:28', null);
INSERT INTO `registro` VALUES ('419', '1', 'Aula 301', '0', '3', '56', 'NO', '28', '2017-11-05 17:43:35', '2017-11-05 17:43:35', null);
INSERT INTO `registro` VALUES ('420', '1', 'Aula 301', '0', '0', '0', 'NO', '28', '2017-11-05 17:43:42', '2017-11-05 17:43:42', null);
INSERT INTO `registro` VALUES ('421', '1', 'Aula 301', '0', '5', '66', 'NO', '28', '2017-11-05 17:43:49', '2017-11-05 17:43:49', null);
INSERT INTO `registro` VALUES ('422', '1', 'Aula 301', '0', '4', '62', 'NO', '28', '2017-11-05 17:43:57', '2017-11-05 17:43:57', null);
INSERT INTO `registro` VALUES ('423', '1', 'Aula 301', '0', '1', '61', 'NO', '28', '2017-11-05 17:44:04', '2017-11-05 17:44:04', null);
INSERT INTO `registro` VALUES ('424', '1', 'Aula 301', '0', '1', '60', 'NO', '28', '2017-11-05 17:44:12', '2017-11-05 17:44:12', null);
INSERT INTO `registro` VALUES ('425', '1', 'Aula 301', '0', '1', '66', 'SI', '28', '2017-11-05 17:44:19', '2017-11-05 17:44:19', null);
INSERT INTO `registro` VALUES ('426', '1', 'Aula 301', '0', '54612', '62', 'NO', '28', '2017-11-05 17:44:27', '2017-11-05 17:44:27', null);
INSERT INTO `registro` VALUES ('427', '1', 'Aula 301', '0', '54612', '62', 'NO', '28', '2017-11-05 17:44:34', '2017-11-05 17:44:34', null);
INSERT INTO `registro` VALUES ('428', '1', 'Aula 301', '0', '54612', '65', 'NO', '28', '2017-11-05 17:44:42', '2017-11-05 17:44:42', null);
INSERT INTO `registro` VALUES ('429', '1', 'Aula 301', '0', '54612', '63', 'NO', '28', '2017-11-05 17:44:49', '2017-11-05 17:44:49', null);
INSERT INTO `registro` VALUES ('430', '1', 'Aula 301', '0', '54612', '59', 'NO', '28', '2017-11-05 17:44:57', '2017-11-05 17:44:57', null);
INSERT INTO `registro` VALUES ('431', '1', 'Aula 301', '0', '54612', '53', 'SI', '28', '2017-11-05 17:45:04', '2017-11-05 17:45:04', null);
INSERT INTO `registro` VALUES ('432', '1', 'Aula 301', '0', '54612', '64', 'NO', '28', '2017-11-05 17:45:12', '2017-11-05 17:45:12', null);
INSERT INTO `registro` VALUES ('433', '1', 'Aula 301', '0', '0', '60', 'SI', '28', '2017-11-05 17:45:19', '2017-11-05 17:45:19', null);
INSERT INTO `registro` VALUES ('434', '1', 'Aula 301', '0', '0', '62', 'NO', '28', '2017-11-05 17:45:27', '2017-11-05 17:45:27', null);
INSERT INTO `registro` VALUES ('435', '1', 'Aula 301', '0', '0', '61', 'NO', '28', '2017-11-05 17:45:34', '2017-11-05 17:45:34', null);
INSERT INTO `registro` VALUES ('436', '1', 'Aula 301', '0', '0', '63', 'NO', '28', '2017-11-05 17:45:41', '2017-11-05 17:45:41', null);
INSERT INTO `registro` VALUES ('437', '1', 'Aula 301', '0', '24', '63', 'NO', '28', '2017-11-05 17:45:51', '2017-11-05 17:45:51', null);
INSERT INTO `registro` VALUES ('438', '1', 'Aula 301', '0', '1', '63', 'NO', '28', '2017-11-05 17:45:58', '2017-11-05 17:45:58', null);
INSERT INTO `registro` VALUES ('439', '1', 'Aula 301', '0', '28', '61', 'NO', '28', '2017-11-05 17:46:06', '2017-11-05 17:46:06', null);
INSERT INTO `registro` VALUES ('440', '1', 'Aula 301', '0', '30', '63', 'SI', '28', '2017-11-05 17:46:13', '2017-11-05 17:46:13', null);
INSERT INTO `registro` VALUES ('441', '1', 'Aula 301', '0', '2', '63', 'NO', '28', '2017-11-05 17:46:20', '2017-11-05 17:46:20', null);
INSERT INTO `registro` VALUES ('442', '1', 'Aula 301', '0', '2', '53', 'NO', '28', '2017-11-05 17:46:27', '2017-11-05 17:46:27', null);
INSERT INTO `registro` VALUES ('443', '1', 'Aula 301', '0', '3', '64', 'NO', '28', '2017-11-05 17:46:34', '2017-11-05 17:46:34', null);
INSERT INTO `registro` VALUES ('444', '1', 'Aula 301', '0', '3', '62', 'SI', '28', '2017-11-05 17:46:42', '2017-11-05 17:46:42', null);
INSERT INTO `registro` VALUES ('445', '1', 'Aula 301', '0', '3', '65', 'NO', '28', '2017-11-05 17:46:49', '2017-11-05 17:46:49', null);
INSERT INTO `registro` VALUES ('446', '1', 'Aula 301', '0', '3', '60', 'NO', '28', '2017-11-05 17:46:57', '2017-11-05 17:46:57', null);
INSERT INTO `registro` VALUES ('447', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:47:06', '2017-11-05 17:47:06', null);
INSERT INTO `registro` VALUES ('448', '1', 'Aula 301', '0', '3', '50', 'NO', '28', '2017-11-05 17:47:14', '2017-11-05 17:47:14', null);
INSERT INTO `registro` VALUES ('449', '1', 'Aula 301', '0', '3', '62', 'NO', '28', '2017-11-05 17:47:21', '2017-11-05 17:47:21', null);
INSERT INTO `registro` VALUES ('450', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:47:28', '2017-11-05 17:47:28', null);
INSERT INTO `registro` VALUES ('451', '1', 'Aula 301', '0', '3', '61', 'NO', '28', '2017-11-05 17:47:36', '2017-11-05 17:47:36', null);
INSERT INTO `registro` VALUES ('452', '1', 'Aula 301', '0', '3', '66', 'NO', '28', '2017-11-05 17:47:43', '2017-11-05 17:47:43', null);
INSERT INTO `registro` VALUES ('453', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:47:51', '2017-11-05 17:47:51', null);
INSERT INTO `registro` VALUES ('454', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:47:59', '2017-11-05 17:47:59', null);
INSERT INTO `registro` VALUES ('455', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:48:08', '2017-11-05 17:48:08', null);
INSERT INTO `registro` VALUES ('456', '1', 'Aula 301', '0', '3', '60', 'NO', '28', '2017-11-05 17:48:16', '2017-11-05 17:48:16', null);
INSERT INTO `registro` VALUES ('457', '1', 'Aula 301', '0', '3', '66', 'NO', '28', '2017-11-05 17:48:23', '2017-11-05 17:48:23', null);
INSERT INTO `registro` VALUES ('458', '1', 'Aula 301', '0', '3', '56', 'NO', '28', '2017-11-05 17:48:31', '2017-11-05 17:48:31', null);
INSERT INTO `registro` VALUES ('459', '1', 'Aula 301', '0', '3', '64', 'NO', '28', '2017-11-05 17:48:38', '2017-11-05 17:48:38', null);
INSERT INTO `registro` VALUES ('460', '1', 'Aula 301', '0', '3', '64', 'NO', '28', '2017-11-05 17:48:45', '2017-11-05 17:48:45', null);
INSERT INTO `registro` VALUES ('461', '1', 'Aula 301', '0', '3', '64', 'NO', '28', '2017-11-05 17:48:53', '2017-11-05 17:48:53', null);
INSERT INTO `registro` VALUES ('462', '1', 'Aula 301', '0', '3', '50', 'NO', '28', '2017-11-05 17:49:00', '2017-11-05 17:49:00', null);
INSERT INTO `registro` VALUES ('463', '1', 'Aula 301', '0', '3', '50', 'NO', '28', '2017-11-05 17:49:08', '2017-11-05 17:49:08', null);
INSERT INTO `registro` VALUES ('464', '1', 'Aula 301', '0', '3', '64', 'NO', '28', '2017-11-05 17:49:15', '2017-11-05 17:49:15', null);
INSERT INTO `registro` VALUES ('465', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:49:23', '2017-11-05 17:49:23', null);
INSERT INTO `registro` VALUES ('466', '1', 'Aula 301', '0', '3', '61', 'NO', '28', '2017-11-05 17:49:30', '2017-11-05 17:49:30', null);
INSERT INTO `registro` VALUES ('467', '1', 'Aula 301', '0', '3', '62', 'NO', '28', '2017-11-05 17:49:38', '2017-11-05 17:49:38', null);
INSERT INTO `registro` VALUES ('468', '1', 'Aula 301', '0', '3', '56', 'NO', '28', '2017-11-05 17:49:45', '2017-11-05 17:49:45', null);
INSERT INTO `registro` VALUES ('469', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:49:53', '2017-11-05 17:49:53', null);
INSERT INTO `registro` VALUES ('470', '1', 'Aula 301', '0', '3', '62', 'NO', '28', '2017-11-05 17:50:01', '2017-11-05 17:50:01', null);
INSERT INTO `registro` VALUES ('471', '1', 'Aula 301', '0', '3', '68', 'NO', '28', '2017-11-05 17:50:08', '2017-11-05 17:50:08', null);
INSERT INTO `registro` VALUES ('472', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:50:16', '2017-11-05 17:50:16', null);
INSERT INTO `registro` VALUES ('473', '1', 'Aula 301', '0', '3', '58', 'NO', '28', '2017-11-05 17:50:25', '2017-11-05 17:50:25', null);
INSERT INTO `registro` VALUES ('474', '1', 'Aula 301', '0', '3', '65', 'NO', '28', '2017-11-05 17:50:32', '2017-11-05 17:50:32', null);
INSERT INTO `registro` VALUES ('475', '1', 'Aula 301', '0', '3', '54', 'NO', '28', '2017-11-05 17:50:40', '2017-11-05 17:50:40', null);
INSERT INTO `registro` VALUES ('476', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:50:48', '2017-11-05 17:50:48', null);
INSERT INTO `registro` VALUES ('477', '1', 'Aula 301', '0', '3', '67', 'NO', '28', '2017-11-05 17:50:55', '2017-11-05 17:50:55', null);
INSERT INTO `registro` VALUES ('478', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:51:03', '2017-11-05 17:51:03', null);
INSERT INTO `registro` VALUES ('479', '1', 'Aula 301', '0', '0', '61', 'NO', '28', '2017-11-05 17:51:11', '2017-11-05 17:51:11', null);
INSERT INTO `registro` VALUES ('480', '1', 'Aula 301', '0', '1', '61', 'NO', '28', '2017-11-05 17:51:18', '2017-11-05 17:51:18', null);
INSERT INTO `registro` VALUES ('481', '1', 'Aula 301', '0', '3', '57', 'SI', '28', '2017-11-05 17:51:26', '2017-11-05 17:51:26', null);
INSERT INTO `registro` VALUES ('482', '1', 'Aula 301', '0', '3', '62', 'NO', '28', '2017-11-05 17:51:34', '2017-11-05 17:51:34', null);
INSERT INTO `registro` VALUES ('483', '1', 'Aula 301', '0', '3', '62', 'NO', '28', '2017-11-05 17:51:41', '2017-11-05 17:51:41', null);
INSERT INTO `registro` VALUES ('484', '1', 'Aula 301', '0', '3', '54', 'NO', '28', '2017-11-05 17:51:54', '2017-11-05 17:51:54', null);
INSERT INTO `registro` VALUES ('485', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:52:01', '2017-11-05 17:52:01', null);
INSERT INTO `registro` VALUES ('486', '1', 'Aula 301', '0', '3', '62', 'NO', '28', '2017-11-05 17:52:08', '2017-11-05 17:52:08', null);
INSERT INTO `registro` VALUES ('487', '1', 'Aula 301', '0', '3', '64', 'NO', '28', '2017-11-05 17:52:16', '2017-11-05 17:52:16', null);
INSERT INTO `registro` VALUES ('488', '1', 'Aula 301', '0', '3', '65', 'NO', '28', '2017-11-05 17:52:23', '2017-11-05 17:52:23', null);
INSERT INTO `registro` VALUES ('489', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:52:34', '2017-11-05 17:52:34', null);
INSERT INTO `registro` VALUES ('490', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:52:56', '2017-11-05 17:52:56', null);
INSERT INTO `registro` VALUES ('491', '1', 'Aula 301', '0', '3', '65', 'NO', '28', '2017-11-05 17:53:03', '2017-11-05 17:53:03', null);
INSERT INTO `registro` VALUES ('492', '1', 'Aula 301', '0', '3', '53', 'NO', '28', '2017-11-05 17:53:10', '2017-11-05 17:53:10', null);
INSERT INTO `registro` VALUES ('493', '1', 'Aula 301', '0', '3', '53', 'NO', '28', '2017-11-05 17:53:21', '2017-11-05 17:53:21', null);
INSERT INTO `registro` VALUES ('494', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:53:28', '2017-11-05 17:53:28', null);
INSERT INTO `registro` VALUES ('495', '1', 'Aula 301', '0', '3', '59', 'NO', '28', '2017-11-05 17:53:36', '2017-11-05 17:53:36', null);
INSERT INTO `registro` VALUES ('496', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:53:43', '2017-11-05 17:53:43', null);
INSERT INTO `registro` VALUES ('497', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:53:50', '2017-11-05 17:53:50', null);
INSERT INTO `registro` VALUES ('498', '1', 'Aula 301', '0', '3', '56', 'NO', '28', '2017-11-05 17:53:57', '2017-11-05 17:53:57', null);
INSERT INTO `registro` VALUES ('499', '1', 'Aula 301', '0', '3', '58', 'NO', '28', '2017-11-05 17:54:05', '2017-11-05 17:54:05', null);
INSERT INTO `registro` VALUES ('500', '1', 'Aula 301', '0', '2', '60', 'NO', '28', '2017-11-05 17:54:12', '2017-11-05 17:54:12', null);
INSERT INTO `registro` VALUES ('501', '1', 'Aula 301', '0', '0', '63', 'SI', '28', '2017-11-05 17:54:19', '2017-11-05 17:54:19', null);
INSERT INTO `registro` VALUES ('502', '1', 'Aula 301', '0', '3', '56', 'NO', '28', '2017-11-05 17:54:27', '2017-11-05 17:54:27', null);
INSERT INTO `registro` VALUES ('503', '1', 'Aula 301', '0', '2', '62', 'NO', '28', '2017-11-05 17:54:34', '2017-11-05 17:54:34', null);
INSERT INTO `registro` VALUES ('504', '1', 'Aula 301', '0', '2', '66', 'NO', '28', '2017-11-05 17:54:42', '2017-11-05 17:54:42', null);
INSERT INTO `registro` VALUES ('505', '1', 'Aula 301', '0', '2', '54', 'NO', '28', '2017-11-05 17:54:49', '2017-11-05 17:54:49', null);
INSERT INTO `registro` VALUES ('506', '1', 'Aula 301', '0', '2', '54', 'SI', '28', '2017-11-05 17:54:57', '2017-11-05 17:54:57', null);
INSERT INTO `registro` VALUES ('507', '1', 'Aula 301', '0', '3', '62', 'NO', '28', '2017-11-05 17:55:04', '2017-11-05 17:55:04', null);
INSERT INTO `registro` VALUES ('508', '1', 'Aula 301', '0', '3', '62', 'NO', '28', '2017-11-05 17:55:11', '2017-11-05 17:55:11', null);
INSERT INTO `registro` VALUES ('509', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:55:19', '2017-11-05 17:55:19', null);
INSERT INTO `registro` VALUES ('510', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:55:26', '2017-11-05 17:55:26', null);
INSERT INTO `registro` VALUES ('511', '1', 'Aula 301', '0', '3', '53', 'NO', '28', '2017-11-05 17:55:33', '2017-11-05 17:55:33', null);
INSERT INTO `registro` VALUES ('512', '1', 'Aula 301', '0', '3', '59', 'NO', '28', '2017-11-05 17:55:41', '2017-11-05 17:55:41', null);
INSERT INTO `registro` VALUES ('513', '1', 'Aula 301', '0', '3', '65', 'NO', '28', '2017-11-05 17:55:49', '2017-11-05 17:55:49', null);
INSERT INTO `registro` VALUES ('514', '1', 'Aula 301', '0', '3', '67', 'NO', '28', '2017-11-05 17:55:56', '2017-11-05 17:55:56', null);
INSERT INTO `registro` VALUES ('515', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:56:04', '2017-11-05 17:56:04', null);
INSERT INTO `registro` VALUES ('516', '1', 'Aula 301', '0', '3', '56', 'NO', '28', '2017-11-05 17:56:11', '2017-11-05 17:56:11', null);
INSERT INTO `registro` VALUES ('517', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:56:19', '2017-11-05 17:56:19', null);
INSERT INTO `registro` VALUES ('518', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:56:26', '2017-11-05 17:56:26', null);
INSERT INTO `registro` VALUES ('519', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:56:34', '2017-11-05 17:56:34', null);
INSERT INTO `registro` VALUES ('520', '1', 'Aula 301', '0', '3', '61', 'NO', '28', '2017-11-05 17:56:42', '2017-11-05 17:56:42', null);
INSERT INTO `registro` VALUES ('521', '1', 'Aula 301', '0', '3', '0', 'SI', '28', '2017-11-05 17:56:50', '2017-11-05 17:56:50', null);
INSERT INTO `registro` VALUES ('522', '1', 'Aula 301', '0', '3', '50', 'NO', '28', '2017-11-05 17:56:58', '2017-11-05 17:56:58', null);
INSERT INTO `registro` VALUES ('523', '1', 'Aula 301', '0', '3', '71', 'NO', '28', '2017-11-05 17:57:05', '2017-11-05 17:57:05', null);
INSERT INTO `registro` VALUES ('524', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:57:12', '2017-11-05 17:57:12', null);
INSERT INTO `registro` VALUES ('525', '1', 'Aula 301', '0', '3', '58', 'NO', '28', '2017-11-05 17:57:20', '2017-11-05 17:57:20', null);
INSERT INTO `registro` VALUES ('526', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:57:27', '2017-11-05 17:57:27', null);
INSERT INTO `registro` VALUES ('527', '1', 'Aula 301', '0', '3', '65', 'NO', '28', '2017-11-05 17:57:35', '2017-11-05 17:57:35', null);
INSERT INTO `registro` VALUES ('528', '1', 'Aula 301', '0', '3', '60', 'NO', '28', '2017-11-05 17:57:42', '2017-11-05 17:57:42', null);
INSERT INTO `registro` VALUES ('529', '1', 'Aula 301', '0', '3', '61', 'NO', '28', '2017-11-05 17:57:49', '2017-11-05 17:57:49', null);
INSERT INTO `registro` VALUES ('530', '1', 'Aula 301', '0', '3', '59', 'NO', '28', '2017-11-05 17:57:57', '2017-11-05 17:57:57', null);
INSERT INTO `registro` VALUES ('531', '1', 'Aula 301', '0', '3', '64', 'NO', '28', '2017-11-05 17:58:04', '2017-11-05 17:58:04', null);
INSERT INTO `registro` VALUES ('532', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:58:11', '2017-11-05 17:58:11', null);
INSERT INTO `registro` VALUES ('533', '1', 'Aula 301', '0', '3', '67', 'NO', '28', '2017-11-05 17:58:18', '2017-11-05 17:58:18', null);
INSERT INTO `registro` VALUES ('534', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 17:58:26', '2017-11-05 17:58:26', null);
INSERT INTO `registro` VALUES ('535', '1', 'Aula 301', '0', '3', '50', 'NO', '28', '2017-11-05 17:58:34', '2017-11-05 17:58:34', null);
INSERT INTO `registro` VALUES ('536', '1', 'Aula 301', '0', '2', '61', 'SI', '28', '2017-11-05 17:58:41', '2017-11-05 17:58:41', null);
INSERT INTO `registro` VALUES ('537', '1', 'Aula 301', '0', '2', '64', 'NO', '28', '2017-11-05 17:58:49', '2017-11-05 17:58:49', null);
INSERT INTO `registro` VALUES ('538', '1', 'Aula 301', '0', '2', '0', 'NO', '28', '2017-11-05 17:58:56', '2017-11-05 17:58:56', null);
INSERT INTO `registro` VALUES ('539', '1', 'Aula 301', '0', '2', '68', 'SI', '28', '2017-11-05 17:59:04', '2017-11-05 17:59:04', null);
INSERT INTO `registro` VALUES ('540', '1', 'Aula 301', '0', '2', '62', 'NO', '28', '2017-11-05 17:59:11', '2017-11-05 17:59:11', null);
INSERT INTO `registro` VALUES ('541', '1', 'Aula 301', '0', '2', '56', 'SI', '28', '2017-11-05 17:59:19', '2017-11-05 17:59:19', null);
INSERT INTO `registro` VALUES ('542', '1', 'Aula 301', '0', '2', '65', 'SI', '28', '2017-11-05 17:59:28', '2017-11-05 17:59:28', null);
INSERT INTO `registro` VALUES ('543', '1', 'Aula 301', '0', '2', '64', 'NO', '28', '2017-11-05 17:59:36', '2017-11-05 17:59:36', null);
INSERT INTO `registro` VALUES ('544', '1', 'Aula 301', '0', '3', '65', 'SI', '28', '2017-11-05 17:59:43', '2017-11-05 17:59:43', null);
INSERT INTO `registro` VALUES ('545', '1', 'Aula 301', '0', '3', '0', 'NO', '28', '2017-11-05 17:59:50', '2017-11-05 17:59:50', null);
INSERT INTO `registro` VALUES ('546', '1', 'Aula 301', '0', '3', '66', 'NO', '28', '2017-11-05 17:59:59', '2017-11-05 17:59:59', null);
INSERT INTO `registro` VALUES ('547', '1', 'Aula 301', '0', '2', '60', 'NO', '28', '2017-11-05 18:00:06', '2017-11-05 18:00:06', null);
INSERT INTO `registro` VALUES ('548', '1', 'Aula 301', '0', '3', '57', 'NO', '28', '2017-11-05 18:00:14', '2017-11-05 18:00:14', null);
INSERT INTO `registro` VALUES ('549', '1', 'Aula 301', '0', '1', '64', 'SI', '28', '2017-11-05 18:00:22', '2017-11-05 18:00:22', null);
INSERT INTO `registro` VALUES ('550', '1', 'Aula 301', '0', '3', '0', 'SI', '28', '2017-11-05 18:00:29', '2017-11-05 18:00:29', null);
INSERT INTO `registro` VALUES ('551', '1', 'Aula 301', '0', '3', '63', 'NO', '28', '2017-11-05 18:00:36', '2017-11-05 18:00:36', null);
INSERT INTO `registro` VALUES ('552', '1', 'Aula 301', '0', '3', '62', 'SI', '28', '2017-11-05 18:00:44', '2017-11-05 18:00:44', null);
INSERT INTO `registro` VALUES ('553', '1', 'Aula 301', '0', '2', '0', 'SI', '28', '2017-11-05 18:00:51', '2017-11-05 18:00:51', null);
INSERT INTO `registro` VALUES ('554', '1', 'Aula 301', '0', '3', '0', 'SI', '28', '2017-11-05 18:00:59', '2017-11-05 18:00:59', null);
INSERT INTO `registro` VALUES ('555', '1', 'Aula 301', '0', '2', '58', 'NO', '28', '2017-11-05 18:01:06', '2017-11-05 18:01:06', null);
INSERT INTO `registro` VALUES ('556', '1', 'Aula 301', '0', '2', '61', 'NO', '28', '2017-11-05 18:01:14', '2017-11-05 18:01:14', null);
INSERT INTO `registro` VALUES ('557', '1', 'Aula 301', '0', '2', '63', 'NO', '28', '2017-11-05 18:01:21', '2017-11-05 18:01:21', null);
INSERT INTO `registro` VALUES ('558', '1', 'Aula 301', '0', '2', '50', 'NO', '28', '2017-11-05 18:01:28', '2017-11-05 18:01:28', null);
INSERT INTO `registro` VALUES ('559', '1', 'Aula 301', '0', '2', '65', 'NO', '28', '2017-11-05 18:01:35', '2017-11-05 18:01:35', null);
INSERT INTO `registro` VALUES ('560', '1', 'Aula 301', '0', '2', '60', 'NO', '28', '2017-11-05 18:01:43', '2017-11-05 18:01:43', null);
INSERT INTO `registro` VALUES ('561', '1', 'Aula 301', '0', '2', '65', 'NO', '28', '2017-11-05 18:01:51', '2017-11-05 18:01:51', null);
INSERT INTO `registro` VALUES ('562', '1', 'Aula 301', '0', '2', '0', 'NO', '28', '2017-11-05 18:01:58', '2017-11-05 18:01:58', null);
INSERT INTO `registro` VALUES ('563', '1', 'Aula 301', '0', '2', '59', 'NO', '28', '2017-11-05 18:02:05', '2017-11-05 18:02:05', null);
INSERT INTO `registro` VALUES ('564', '1', 'Aula 301', '0', '2', '64', 'SI', '28', '2017-11-05 18:02:12', '2017-11-05 18:02:12', null);
INSERT INTO `registro` VALUES ('565', '1', 'Aula 301', '0', '1', '62', 'NO', '28', '2017-11-05 18:02:20', '2017-11-05 18:02:20', null);
INSERT INTO `registro` VALUES ('566', '1', 'Aula 301', '0', '3', '59', 'SI', '29', '2017-11-05 18:02:28', '2017-11-05 18:02:28', null);
INSERT INTO `registro` VALUES ('567', '1', 'Aula 301', '0', '2', '60', 'NO', '28', '2017-11-05 18:02:36', '2017-11-05 18:02:36', null);
INSERT INTO `registro` VALUES ('568', '1', 'Aula 301', '0', '0', '61', 'NO', '28', '2017-11-05 18:02:44', '2017-11-05 18:02:44', null);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Administrador', 'admin', 'Encargado de administrar el Sistema', 'default', '2017-09-10 23:46:29', '2017-09-10 23:46:29');
INSERT INTO `roles` VALUES ('2', 'Usuario Normal', 'user', 'Encargado del monitoreo de los sensores', 'default', '2017-09-10 23:46:46', '2017-09-10 23:46:46');
INSERT INTO `roles` VALUES ('3', 'Super Administrador', 'super-admin', 'Encargado de todo el Sistema', 'default', '2017-09-24 09:50:48', '2017-09-24 09:50:48');

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_user_role_id_index` (`role_id`),
  KEY `role_user_user_id_index` (`user_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------
INSERT INTO `role_user` VALUES ('1', '1', '1', '2017-09-11 00:12:13', '2017-09-11 00:12:13');
INSERT INTO `role_user` VALUES ('5', '3', '5', '2017-09-24 16:48:56', '2017-09-24 16:48:56');
INSERT INTO `role_user` VALUES ('8', '2', '4', '2017-09-27 14:17:55', '2017-09-27 14:17:55');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Alejandro Martinezz', 'lider@lider.com', '602bdc204140db016bee5374895e5568ce422fabe17e064061d80097', 'NGR9upXTqMzsolrU4oBLQJB9Ta5uyKE9GLvVjqOKo4p7cdMuAeTDzQs1tnrK', '2017-09-11 00:12:13', '2017-10-21 01:02:26', null);
INSERT INTO `users` VALUES ('4', 'Edwin Chapuel', 'ed.ch@gmail.com', '602bdc204140db016bee5374895e5568ce422fabe17e064061d80097', 'P5v3O2aAJ7liDRC9jVRzP3TeoYbWr3ly5kznXcX4HoUWzfiGWzVsF1fmeVMI', '2017-09-24 12:47:32', '2017-09-24 14:51:14', null);
INSERT INTO `users` VALUES ('5', 'Super Admin', 'admin@admin.com', '602bdc204140db016bee5374895e5568ce422fabe17e064061d80097', 'paIZFxv0APivINtHGoD0EsTncq5bP67DwzaYZFWLKooL2DBfo34Wp6AJLKvH', null, null, null);

-- ----------------------------
-- Table structure for zonas
-- ----------------------------
DROP TABLE IF EXISTS `zonas`;
CREATE TABLE `zonas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_fin` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of zonas
-- ----------------------------
INSERT INTO `zonas` VALUES ('1', 'Aula 301', null, '2017-09-26 14:31:29', '2017-11-05 16:49:48', null, '07:00:00', '22:00:00');
INSERT INTO `zonas` VALUES ('2', 'Aula 302', null, '2017-09-26 14:31:45', '2017-09-26 14:31:47', null, '07:00:00', '23:10:00');
INSERT INTO `zonas` VALUES ('3', 'Aula 303', null, '2017-10-18 20:19:51', '2017-10-19 02:38:57', null, '06:30:00', '22:30:00');
SET FOREIGN_KEY_CHECKS=1;
