/*
Navicat MySQL Data Transfer

Source Server         : Localhost Laragon
Source Server Version : 100121
Source Host           : localhost:3306
Source Database       : tesis_sensores

Target Server Type    : MYSQL
Target Server Version : 100121
File Encoding         : 65001

Date: 2017-10-18 17:51:28
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
INSERT INTO `arduinos` VALUES ('6', '123', '1', '2017-09-26 22:25:23', '2017-09-26 22:25:23', null);

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
INSERT INTO `users` VALUES ('1', 'Alejandro Martinez', 'lider@lider.com', '602bdc204140db016bee5374895e5568ce422fabe17e064061d80097', 'lhqwNN2et6mRhq8r3AqDBkvgMEiopo3JGPBauaLDlflhSCErUFca9cegZgg5', '2017-09-11 00:12:13', '2017-09-11 00:12:13', null);
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
INSERT INTO `zonas` VALUES ('1', 'Aula 301', null, '2017-09-26 14:31:29', '2017-09-26 14:31:31', null, '07:00:00', '22:00:00');
INSERT INTO `zonas` VALUES ('2', 'Aula 302', null, '2017-09-26 14:31:45', '2017-09-26 14:31:47', null, '07:00:00', '22:00:00');
INSERT INTO `zonas` VALUES ('3', 'Aula 303', null, '2017-10-18 20:19:51', '2017-10-18 20:19:51', null, '06:30:00', '22:30:00');
SET FOREIGN_KEY_CHECKS=1;
