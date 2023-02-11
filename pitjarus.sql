/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100422 (10.4.22-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : pitjarus

 Target Server Type    : MySQL
 Target Server Version : 100422 (10.4.22-MariaDB)
 File Encoding         : 65001

 Date: 12/02/2023 00:43:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int NOT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, 'Product A', 1);
INSERT INTO `product` VALUES (2, 'Product B', 1);
INSERT INTO `product` VALUES (3, 'Product C', 1);
INSERT INTO `product` VALUES (4, 'Product D', 2);
INSERT INTO `product` VALUES (5, 'Product E', 2);
INSERT INTO `product` VALUES (6, 'Product F', 2);

-- ----------------------------
-- Table structure for product_brand
-- ----------------------------
DROP TABLE IF EXISTS `product_brand`;
CREATE TABLE `product_brand`  (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_brand
-- ----------------------------
INSERT INTO `product_brand` VALUES (1, 'ROTI TAWAR');
INSERT INTO `product_brand` VALUES (2, 'SUSU KALENG');

-- ----------------------------
-- Table structure for report_product
-- ----------------------------
DROP TABLE IF EXISTS `report_product`;
CREATE TABLE `report_product`  (
  `report_id` int NOT NULL AUTO_INCREMENT,
  `store_id` int NOT NULL,
  `product_id` int NOT NULL,
  `compliance` int NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`report_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of report_product
-- ----------------------------
INSERT INTO `report_product` VALUES (1, 1, 1, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (2, 1, 2, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (3, 1, 3, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (4, 1, 4, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (5, 1, 5, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (6, 1, 6, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (7, 2, 1, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (8, 2, 2, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (9, 2, 3, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (10, 2, 4, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (11, 2, 5, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (12, 2, 6, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (13, 3, 1, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (14, 3, 2, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (15, 3, 3, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (16, 3, 4, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (17, 3, 5, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (18, 3, 6, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (19, 4, 1, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (20, 4, 2, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (21, 4, 3, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (22, 4, 4, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (23, 4, 5, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (24, 4, 6, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (25, 5, 1, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (26, 5, 2, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (27, 5, 3, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (28, 5, 4, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (29, 5, 5, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (30, 5, 6, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (31, 6, 1, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (32, 6, 2, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (33, 6, 3, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (34, 6, 4, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (35, 6, 5, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (36, 6, 6, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (37, 7, 1, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (38, 7, 2, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (39, 7, 3, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (40, 7, 4, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (41, 7, 5, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (42, 7, 6, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (43, 8, 1, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (44, 8, 2, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (45, 8, 3, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (46, 8, 4, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (47, 8, 5, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (48, 8, 6, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (49, 9, 1, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (50, 9, 2, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (51, 9, 3, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (52, 9, 4, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (53, 9, 5, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (54, 9, 6, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (55, 10, 1, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (56, 10, 2, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (57, 10, 3, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (58, 10, 4, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (59, 10, 5, 0, '2021-01-01');
INSERT INTO `report_product` VALUES (60, 10, 6, 1, '2021-01-01');
INSERT INTO `report_product` VALUES (61, 1, 1, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (62, 1, 2, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (63, 1, 3, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (64, 1, 4, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (65, 1, 5, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (66, 1, 6, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (67, 2, 1, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (68, 2, 2, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (69, 2, 3, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (70, 2, 4, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (71, 2, 5, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (72, 2, 6, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (73, 3, 1, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (74, 3, 2, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (75, 3, 3, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (76, 3, 4, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (77, 3, 5, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (78, 3, 6, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (79, 4, 1, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (80, 4, 2, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (81, 4, 3, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (82, 4, 4, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (83, 4, 5, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (84, 4, 6, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (85, 5, 1, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (86, 5, 2, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (87, 5, 3, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (88, 5, 4, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (89, 5, 5, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (90, 5, 6, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (91, 6, 1, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (92, 6, 2, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (93, 6, 3, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (94, 6, 4, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (95, 6, 5, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (96, 6, 6, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (97, 7, 1, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (98, 7, 2, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (99, 7, 3, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (100, 7, 4, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (101, 7, 5, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (102, 7, 6, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (103, 8, 1, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (104, 8, 2, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (105, 8, 3, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (106, 8, 4, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (107, 8, 5, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (108, 8, 6, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (109, 9, 1, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (110, 9, 2, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (111, 9, 3, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (112, 9, 4, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (113, 9, 5, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (114, 9, 6, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (115, 10, 1, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (116, 10, 2, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (117, 10, 3, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (118, 10, 4, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (119, 10, 5, 0, '2021-01-02');
INSERT INTO `report_product` VALUES (120, 10, 6, 1, '2021-01-02');
INSERT INTO `report_product` VALUES (121, 1, 1, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (122, 1, 2, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (123, 1, 3, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (124, 1, 4, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (125, 1, 5, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (126, 1, 6, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (127, 2, 1, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (128, 2, 2, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (129, 2, 3, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (130, 2, 4, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (131, 2, 5, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (132, 2, 6, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (133, 3, 1, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (134, 3, 2, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (135, 3, 3, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (136, 3, 4, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (137, 3, 5, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (138, 3, 6, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (139, 4, 1, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (140, 4, 2, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (141, 4, 3, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (142, 4, 4, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (143, 4, 5, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (144, 4, 6, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (145, 5, 1, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (146, 5, 2, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (147, 5, 3, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (148, 5, 4, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (149, 5, 5, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (150, 5, 6, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (151, 6, 1, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (152, 6, 2, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (153, 6, 3, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (154, 6, 4, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (155, 6, 5, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (156, 6, 6, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (157, 7, 1, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (158, 7, 2, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (159, 7, 3, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (160, 7, 4, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (161, 7, 5, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (162, 7, 6, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (163, 8, 1, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (164, 8, 2, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (165, 8, 3, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (166, 8, 4, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (167, 8, 5, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (168, 8, 6, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (169, 9, 1, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (170, 9, 2, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (171, 9, 3, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (172, 9, 4, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (173, 9, 5, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (174, 9, 6, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (175, 10, 1, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (176, 10, 2, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (177, 10, 3, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (178, 10, 4, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (179, 10, 5, 1, '2021-01-03');
INSERT INTO `report_product` VALUES (180, 10, 6, 0, '2021-01-03');
INSERT INTO `report_product` VALUES (181, 1, 1, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (182, 1, 2, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (183, 1, 3, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (184, 1, 4, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (185, 1, 5, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (186, 1, 6, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (187, 2, 1, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (188, 2, 2, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (189, 2, 3, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (190, 2, 4, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (191, 2, 5, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (192, 2, 6, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (193, 3, 1, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (194, 3, 2, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (195, 3, 3, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (196, 3, 4, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (197, 3, 5, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (198, 3, 6, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (199, 4, 1, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (200, 4, 2, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (201, 4, 3, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (202, 4, 4, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (203, 4, 5, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (204, 4, 6, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (205, 5, 1, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (206, 5, 2, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (207, 5, 3, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (208, 5, 4, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (209, 5, 5, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (210, 5, 6, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (211, 6, 1, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (212, 6, 2, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (213, 6, 3, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (214, 6, 4, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (215, 6, 5, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (216, 6, 6, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (217, 7, 1, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (218, 7, 2, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (219, 7, 3, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (220, 7, 4, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (221, 7, 5, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (222, 7, 6, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (223, 8, 1, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (224, 8, 2, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (225, 8, 3, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (226, 8, 4, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (227, 8, 5, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (228, 8, 6, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (229, 9, 1, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (230, 9, 2, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (231, 9, 3, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (232, 9, 4, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (233, 9, 5, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (234, 9, 6, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (235, 10, 1, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (236, 10, 2, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (237, 10, 3, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (238, 10, 4, 1, '2021-01-04');
INSERT INTO `report_product` VALUES (239, 10, 5, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (240, 10, 6, 0, '2021-01-04');
INSERT INTO `report_product` VALUES (241, 1, 1, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (242, 1, 2, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (243, 1, 3, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (244, 1, 4, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (245, 1, 5, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (246, 1, 6, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (247, 2, 1, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (248, 2, 2, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (249, 2, 3, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (250, 2, 4, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (251, 2, 5, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (252, 2, 6, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (253, 3, 1, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (254, 3, 2, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (255, 3, 3, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (256, 3, 4, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (257, 3, 5, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (258, 3, 6, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (259, 4, 1, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (260, 4, 2, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (261, 4, 3, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (262, 4, 4, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (263, 4, 5, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (264, 4, 6, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (265, 5, 1, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (266, 5, 2, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (267, 5, 3, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (268, 5, 4, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (269, 5, 5, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (270, 5, 6, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (271, 6, 1, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (272, 6, 2, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (273, 6, 3, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (274, 6, 4, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (275, 6, 5, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (276, 6, 6, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (277, 7, 1, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (278, 7, 2, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (279, 7, 3, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (280, 7, 4, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (281, 7, 5, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (282, 7, 6, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (283, 8, 1, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (284, 8, 2, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (285, 8, 3, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (286, 8, 4, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (287, 8, 5, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (288, 8, 6, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (289, 9, 1, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (290, 9, 2, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (291, 9, 3, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (292, 9, 4, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (293, 9, 5, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (294, 9, 6, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (295, 10, 1, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (296, 10, 2, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (297, 10, 3, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (298, 10, 4, 1, '2021-01-05');
INSERT INTO `report_product` VALUES (299, 10, 5, 0, '2021-01-05');
INSERT INTO `report_product` VALUES (300, 10, 6, 0, '2021-01-05');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `store_id` int NOT NULL AUTO_INCREMENT,
  `store_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` int NOT NULL,
  `area_id` int NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`store_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, 'Indomaret Djakarta', 1, 1, 1);
INSERT INTO `store` VALUES (2, 'Indomaret Jawa Barat', 1, 2, 1);
INSERT INTO `store` VALUES (3, 'Indomaret Kalimantan', 1, 3, 1);
INSERT INTO `store` VALUES (4, 'Indomaret Jawa Tengah', 1, 4, 1);
INSERT INTO `store` VALUES (5, 'Indomaret Bali', 1, 5, 1);
INSERT INTO `store` VALUES (6, 'Hypermart Djakarta', 2, 1, 1);
INSERT INTO `store` VALUES (7, 'Hypermart Jawa Barat', 2, 2, 1);
INSERT INTO `store` VALUES (8, 'Hypermart Kalimantan', 2, 3, 1);
INSERT INTO `store` VALUES (9, 'Hypermart Jawa Tengah', 2, 4, 1);
INSERT INTO `store` VALUES (10, 'Hypermart Bali', 2, 5, 1);

-- ----------------------------
-- Table structure for store_account
-- ----------------------------
DROP TABLE IF EXISTS `store_account`;
CREATE TABLE `store_account`  (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `account_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_account
-- ----------------------------
INSERT INTO `store_account` VALUES (1, 'Indomaret');
INSERT INTO `store_account` VALUES (2, 'Hypermarket');

-- ----------------------------
-- Table structure for store_area
-- ----------------------------
DROP TABLE IF EXISTS `store_area`;
CREATE TABLE `store_area`  (
  `area_id` int NOT NULL AUTO_INCREMENT,
  `area_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_area
-- ----------------------------
INSERT INTO `store_area` VALUES (1, 'DKI jakarta');
INSERT INTO `store_area` VALUES (2, 'Jawa Barat');
INSERT INTO `store_area` VALUES (3, 'Kalimantan');
INSERT INTO `store_area` VALUES (4, 'Jawa Tengah');
INSERT INTO `store_area` VALUES (5, 'Bali');

-- ----------------------------
-- View structure for pivot
-- ----------------------------
DROP VIEW IF EXISTS `pivot`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `pivot` AS (
	select tbl.*,
			case when area_name = "DKI jakarta" then percentage end as A,
			case when area_name = "Jawa Barat" then percentage end as B,
			case when area_name = "Kalimantan" then percentage end as C,
			case when area_name = "Jawa Tengah" then percentage end as D,
			case when area_name = "Bali" then percentage end as E
	from (
		select product_brand.brand_name, store_area.area_id, store_area.area_name, format(sum(compliance) / count(product_brand.brand_id) * 100,1) percentage, report_product.tanggal
		from report_product
		left join store on store.store_id = report_product.store_id
		left join store_area on store.area_id = store_area.area_id
		left join product on product.product_id = report_product.product_id
		left join product_brand on product.brand_id = product_brand.brand_id
		group by store_area.area_id, product_brand.brand_id
	) as tbl
) ;

SET FOREIGN_KEY_CHECKS = 1;
