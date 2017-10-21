/*
Navicat MySQL Data Transfer

Source Server         : localhost laragon
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : tesis_sensores

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-10-21 07:40:54
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
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `users` VALUES ('1', 'Alejandro Martinezz', 'lider@lider.com', '602bdc204140db016bee5374895e5568ce422fabe17e064061d80097', 'lhqwNN2et6mRhq8r3AqDBkvgMEiopo3JGPBauaLDlflhSCErUFca9cegZgg5', '2017-09-11 00:12:13', '2017-10-21 01:02:26', null);
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
INSERT INTO `zonas` VALUES ('1', 'Aula 301', null, '2017-09-26 14:31:29', '2017-10-19 02:27:21', null, '09:00:00', '22:00:00');
INSERT INTO `zonas` VALUES ('2', 'Aula 302', null, '2017-09-26 14:31:45', '2017-09-26 14:31:47', null, '07:00:00', '23:10:00');
INSERT INTO `zonas` VALUES ('3', 'Aula 303', null, '2017-10-18 20:19:51', '2017-10-19 02:38:57', null, '06:30:00', '22:30:00');
SET FOREIGN_KEY_CHECKS=1;
