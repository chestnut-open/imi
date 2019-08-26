/*
 Navicat Premium Data Transfer

 Source Server         : ME
 Source Server Type    : MySQL
 Source Server Version : 80013
 Source Host           : localhost:3306
 Source Schema         : imi

 Target Server Type    : MySQL
 Target Server Version : 80013
 File Encoding         : 65001

 Date: 26/08/2019 16:55:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_banner`;
CREATE TABLE `t_banner`  (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图id',
  `product_id` int(11) NOT NULL COMMENT '产品id',
  PRIMARY KEY (`banner_id`) USING BTREE,
  INDEX `fk_banner_product_id`(`product_id`) USING BTREE,
  CONSTRAINT `fk_banner_product_id` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '轮播图表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_banner
-- ----------------------------
INSERT INTO `t_banner` VALUES (1, 19);
INSERT INTO `t_banner` VALUES (2, 20);
INSERT INTO `t_banner` VALUES (3, 21);
INSERT INTO `t_banner` VALUES (4, 22);

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category`  (
  `category_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `category_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名',
  PRIMARY KEY (`category_id`) USING BTREE,
  UNIQUE INDEX `category_name`(`category_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES (8, '健康 儿童');
INSERT INTO `t_category` VALUES (5, '出行 穿戴');
INSERT INTO `t_category` VALUES (4, '家电 插线板');
INSERT INTO `t_category` VALUES (1, '手机 电话卡');
INSERT INTO `t_category` VALUES (6, '智能 路由器');
INSERT INTO `t_category` VALUES (10, '生活 箱包');
INSERT INTO `t_category` VALUES (7, '电源 配件');
INSERT INTO `t_category` VALUES (2, '电视 盒子');
INSERT INTO `t_category` VALUES (3, '笔记本 平板');
INSERT INTO `t_category` VALUES (9, '耳机 音箱');

-- ----------------------------
-- Table structure for t_category_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_category_menu`;
CREATE TABLE `t_category_menu`  (
  `category_menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一级分类ID',
  `category_id` int(11) NOT NULL COMMENT '分类ID',
  `category_menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '一级分类名',
  `category_menu_status` int(11) NULL DEFAULT 1 COMMENT '一级分类属性：0产品  1分类【默认1】',
  PRIMARY KEY (`category_menu_id`) USING BTREE,
  UNIQUE INDEX `category_menu_name`(`category_menu_name`) USING BTREE,
  INDEX `fk_category_menu_category_id`(`category_id`) USING BTREE,
  CONSTRAINT `fk_category_menu_category_id` FOREIGN KEY (`category_id`) REFERENCES `t_category` (`category_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '一级分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_category_menu
-- ----------------------------
INSERT INTO `t_category_menu` VALUES (1, 1, '小米CC9', 0);
INSERT INTO `t_category_menu` VALUES (2, 1, '小米8 青春版', 0);
INSERT INTO `t_category_menu` VALUES (3, 1, 'Redmin K20 Pro', 0);
INSERT INTO `t_category_menu` VALUES (4, 2, '米家激光投影电视', 0);
INSERT INTO `t_category_menu` VALUES (5, 2, '小米电视4A 50英寸', 0);
INSERT INTO `t_category_menu` VALUES (6, 2, '小米电视4C 43英寸', 0);
INSERT INTO `t_category_menu` VALUES (7, 3, '小米笔记本 15.6\"', 0);
INSERT INTO `t_category_menu` VALUES (8, 3, '键盘', 0);
INSERT INTO `t_category_menu` VALUES (9, 3, '小米笔记本 13.3\"', 0);
INSERT INTO `t_category_menu` VALUES (10, 4, '米家立式空调', 0);
INSERT INTO `t_category_menu` VALUES (11, 4, '扫地机器人', 0);
INSERT INTO `t_category_menu` VALUES (12, 4, '电水壶', 0);
INSERT INTO `t_category_menu` VALUES (13, 5, '手环手表', 1);
INSERT INTO `t_category_menu` VALUES (14, 5, '智能后视镜', 1);
INSERT INTO `t_category_menu` VALUES (15, 5, 'VR', 1);
INSERT INTO `t_category_menu` VALUES (16, 6, '打印机', 1);
INSERT INTO `t_category_menu` VALUES (17, 6, '照相机', 1);
INSERT INTO `t_category_menu` VALUES (18, 6, '路由器', 0);
INSERT INTO `t_category_menu` VALUES (19, 7, '移动电源', 1);
INSERT INTO `t_category_menu` VALUES (20, 7, '手机壳', 1);
INSERT INTO `t_category_menu` VALUES (21, 7, '数据线', 1);
INSERT INTO `t_category_menu` VALUES (22, 8, '洗手机', 1);
INSERT INTO `t_category_menu` VALUES (23, 8, '体脂称', 1);
INSERT INTO `t_category_menu` VALUES (24, 8, '米兔拉杆箱', 1);
INSERT INTO `t_category_menu` VALUES (25, 9, '小米小爱音箱Play版', 0);
INSERT INTO `t_category_menu` VALUES (26, 9, '小米AI音箱', 1);
INSERT INTO `t_category_menu` VALUES (27, 9, '线控耳机', 1);
INSERT INTO `t_category_menu` VALUES (28, 10, '双肩包', 1);
INSERT INTO `t_category_menu` VALUES (29, 10, '床垫', 1);
INSERT INTO `t_category_menu` VALUES (30, 10, '伞', 1);
INSERT INTO `t_category_menu` VALUES (31, 2, '小米壁画电视 65英寸', 0);
INSERT INTO `t_category_menu` VALUES (32, 2, '小米全面屏电视E55A', 0);
INSERT INTO `t_category_menu` VALUES (33, 3, 'RedmiBook 14 独显版', 0);
INSERT INTO `t_category_menu` VALUES (34, 4, '米家空调', 0);
INSERT INTO `t_category_menu` VALUES (35, 6, '摄像机', 1);
INSERT INTO `t_category_menu` VALUES (36, 1, 'Redmi Node7', 0);
INSERT INTO `t_category_menu` VALUES (37, 1, 'Redmi 7', 0);
INSERT INTO `t_category_menu` VALUES (38, 2, '小米电视4C 32英寸', 0);
INSERT INTO `t_category_menu` VALUES (39, 4, '米家互联网洗烘一体机10kg', 0);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `product_id` int(11) NOT NULL COMMENT '商品id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `comment_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '好评' COMMENT '评论内容【默认好评】',
  `comment_create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '评论创建时间',
  `comemnt_is_delete` int(11) NULL DEFAULT 0 COMMENT '删除评论：1是  0否【默认0】',
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `fk_comment_product_id`(`product_id`) USING BTREE,
  INDEX `fk_comment_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `fk_comment_product_id` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_comment_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user_login` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, 1, 1, '杠杠的，个人感觉和外观小米9都没有差别了，超级爱，从红米3s\r\n		到小米5x到小米8和现在的cc9雷总能否发点啥福利', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (2, 1, 2, '确实不错，今天拍了一下，之前用过小米5x，现在小米cc9支持小米。', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (3, 2, 1, '手机超级好，骁龙855处理器，8+256，空间特别大，照相特别好，相机很强大，我特别喜欢这部手机，还是全面屏，升降式摄像头，棒棒哒！音质也不错呦。', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (4, 2, 3, '不错不错，永远相信美好的事情即将发生.', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (5, 4, 3, '外形大方，画面清晰.', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (6, 5, 1, '电脑是非常漂亮，轻薄全金属机身，档次很高，反应速度也不错，充电速度，续航非常满意.', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (7, 5, 4, '一直是小米忠实粉丝，电脑买给女儿学习用，宝贝非常喜欢，太值~', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (8, 5, 5, '运行稳定，学生很喜欢，拿到就试了一下然后才来评价的，支持小米支持国产机。', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (9, 6, 1, '物流很快，制冷效果很棒，米家这功能也是太便利了。', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (10, 7, 3, '链接非常稳定，比第一代小米路由器HD好很多，现在家里已经无死角的Wifi链接，很满意', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (11, 7, 4, '非常好，连接很简单 搭配家里的百兆光纤用起来刷刷刷的', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (12, 8, 4, '摄像头很好，在外面随时能看到家里的情况，安心，还可以语音通话，有异常情况就会提示，很好，安心。', '2019-08-26 16:55:02', 0);
INSERT INTO `t_comment` VALUES (13, 8, 5, '已经安装好了，使用中，太捧了，小米摄像头就是好，还有人物追踪。超喜欢。', '2019-08-26 16:55:02', 0);

-- ----------------------------
-- Table structure for t_navigation
-- ----------------------------
DROP TABLE IF EXISTS `t_navigation`;
CREATE TABLE `t_navigation`  (
  `navigation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '导航ID',
  `navigation_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '导航名称',
  PRIMARY KEY (`navigation_id`) USING BTREE,
  UNIQUE INDEX `navigation_name`(`navigation_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '导航表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_navigation
-- ----------------------------
INSERT INTO `t_navigation` VALUES (2, 'Redmi 红米');
INSERT INTO `t_navigation` VALUES (5, '家电');
INSERT INTO `t_navigation` VALUES (1, '小米手机');
INSERT INTO `t_navigation` VALUES (7, '智能硬件');
INSERT INTO `t_navigation` VALUES (8, '服务');
INSERT INTO `t_navigation` VALUES (3, '电视');
INSERT INTO `t_navigation` VALUES (9, '社区');
INSERT INTO `t_navigation` VALUES (4, '笔记本');
INSERT INTO `t_navigation` VALUES (6, '路由器');

-- ----------------------------
-- Table structure for t_navigation_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_navigation_menu`;
CREATE TABLE `t_navigation_menu`  (
  `navigation_menu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '一级导航ID',
  `navigation_id` int(11) NOT NULL COMMENT '导航ID',
  PRIMARY KEY (`navigation_menu_id`) USING BTREE,
  INDEX `fk_navigation_menu_navigation_id`(`navigation_id`) USING BTREE,
  CONSTRAINT `fk_navigation_menu_navigation_id` FOREIGN KEY (`navigation_id`) REFERENCES `t_navigation` (`navigation_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '一级导航表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_navigation_menu
-- ----------------------------
INSERT INTO `t_navigation_menu` VALUES (4, 1);
INSERT INTO `t_navigation_menu` VALUES (5, 1);
INSERT INTO `t_navigation_menu` VALUES (6, 1);
INSERT INTO `t_navigation_menu` VALUES (7, 1);
INSERT INTO `t_navigation_menu` VALUES (8, 1);
INSERT INTO `t_navigation_menu` VALUES (9, 1);
INSERT INTO `t_navigation_menu` VALUES (10, 2);
INSERT INTO `t_navigation_menu` VALUES (11, 2);
INSERT INTO `t_navigation_menu` VALUES (12, 2);
INSERT INTO `t_navigation_menu` VALUES (13, 2);
INSERT INTO `t_navigation_menu` VALUES (14, 2);
INSERT INTO `t_navigation_menu` VALUES (15, 2);
INSERT INTO `t_navigation_menu` VALUES (16, 3);
INSERT INTO `t_navigation_menu` VALUES (17, 3);
INSERT INTO `t_navigation_menu` VALUES (18, 3);
INSERT INTO `t_navigation_menu` VALUES (19, 3);
INSERT INTO `t_navigation_menu` VALUES (20, 3);
INSERT INTO `t_navigation_menu` VALUES (21, 3);
INSERT INTO `t_navigation_menu` VALUES (22, 4);
INSERT INTO `t_navigation_menu` VALUES (23, 4);
INSERT INTO `t_navigation_menu` VALUES (24, 4);
INSERT INTO `t_navigation_menu` VALUES (25, 4);
INSERT INTO `t_navigation_menu` VALUES (26, 4);
INSERT INTO `t_navigation_menu` VALUES (27, 4);
INSERT INTO `t_navigation_menu` VALUES (28, 5);
INSERT INTO `t_navigation_menu` VALUES (29, 5);
INSERT INTO `t_navigation_menu` VALUES (30, 5);
INSERT INTO `t_navigation_menu` VALUES (31, 5);
INSERT INTO `t_navigation_menu` VALUES (32, 5);
INSERT INTO `t_navigation_menu` VALUES (33, 5);
INSERT INTO `t_navigation_menu` VALUES (34, 6);
INSERT INTO `t_navigation_menu` VALUES (35, 6);
INSERT INTO `t_navigation_menu` VALUES (36, 6);
INSERT INTO `t_navigation_menu` VALUES (37, 6);
INSERT INTO `t_navigation_menu` VALUES (38, 6);
INSERT INTO `t_navigation_menu` VALUES (39, 6);
INSERT INTO `t_navigation_menu` VALUES (40, 7);
INSERT INTO `t_navigation_menu` VALUES (41, 7);
INSERT INTO `t_navigation_menu` VALUES (42, 7);
INSERT INTO `t_navigation_menu` VALUES (43, 7);
INSERT INTO `t_navigation_menu` VALUES (44, 7);
INSERT INTO `t_navigation_menu` VALUES (45, 7);

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `order_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `order_price` decimal(10, 2) NOT NULL COMMENT '实际支付价格',
  `order_is_pay` int(4) NOT NULL DEFAULT 0 COMMENT '支付状态：1支付  0未支付【默认0】',
  `order_pay_time` timestamp(0) NULL DEFAULT NULL COMMENT '支付时间',
  `order_is_ship` int(4) NOT NULL DEFAULT 0 COMMENT '发货状态：1已发货  0未发货【默认0】',
  `order_ship_time` timestamp(0) NULL DEFAULT NULL COMMENT '发货时间',
  `order_is_receipt` int(4) NOT NULL DEFAULT 0 COMMENT '收货状态：1已收货  0为未收货【默认0】',
  `order_receipt_time` timestamp(0) NULL DEFAULT NULL COMMENT '收货时间',
  `order_status` int(11) NULL DEFAULT 1 COMMENT '订单状态：1正常  0删除【默认1】',
  `order_number` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单号【未实现】',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (1, 1, 15797.00, 1, '2019-08-16 16:49:48', 1, '2019-08-20 16:52:16', 1, '2019-08-25 16:52:46', 1, NULL);
INSERT INTO `t_order` VALUES (2, 2, 597.00, 1, '2019-08-25 16:49:53', 0, NULL, 0, NULL, 1, NULL);
INSERT INTO `t_order` VALUES (3, 3, 8598.00, 0, '2019-08-26 16:49:57', 0, NULL, 0, NULL, 1, NULL);

-- ----------------------------
-- Table structure for t_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_order_detail`;
CREATE TABLE `t_order_detail`  (
  `order_detail_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '订单详情表id【相当于属性值id】',
  `order_id` int(11) NOT NULL COMMENT '订单id【相当于属性id】',
  `productcar_id` int(11) NOT NULL COMMENT '购物车id【相当于属性值】',
  `order_detail_status` int(11) NULL DEFAULT 1 COMMENT '状态：1正常  0删除【默认1】',
  PRIMARY KEY (`order_detail_id`) USING BTREE,
  INDEX `fk_order_detail_productcar_id`(`productcar_id`) USING BTREE,
  INDEX `fk_order_detail_order_id`(`order_id`) USING BTREE,
  CONSTRAINT `fk_order_detail_order_id` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_order_detail_productcar_id` FOREIGN KEY (`productcar_id`) REFERENCES `t_productcar` (`productcar_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order_detail
-- ----------------------------
INSERT INTO `t_order_detail` VALUES (1, 1, 1, 1);
INSERT INTO `t_order_detail` VALUES (2, 1, 4, 1);
INSERT INTO `t_order_detail` VALUES (3, 2, 3, 1);
INSERT INTO `t_order_detail` VALUES (4, 3, 2, 1);

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product`  (
  `product_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `category_menu_id` int(11) NOT NULL COMMENT '一级分类ID',
  `navigation_menu_id` int(11) NULL DEFAULT NULL COMMENT '一级导航ID',
  `product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品名字',
  `product_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品描述',
  `product_company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '小米自营' COMMENT '产品供应商【默认小米自营】',
  `product_old_price` decimal(10, 2) NOT NULL COMMENT '旧的商品价格',
  `product_new_price` decimal(10, 2) NOT NULL COMMENT '新的商品价格',
  `product_create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `product_status` int(11) NULL DEFAULT 1 COMMENT '商品状态：1-在售 2-下架 3-删除【默认1】',
  PRIMARY KEY (`product_id`) USING BTREE,
  INDEX `fk_product_category_menu_id`(`category_menu_id`) USING BTREE,
  UNIQUE INDEX `navigation_menu_id`(`navigation_menu_id`) USING BTREE,
  CONSTRAINT `fk_product_category_menu_id` FOREIGN KEY (`category_menu_id`) REFERENCES `t_category_menu` (`category_menu_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_navigation_menu_id` FOREIGN KEY (`navigation_menu_id`) REFERENCES `t_navigation_menu` (`navigation_menu_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品详情表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product
-- ----------------------------
INSERT INTO `t_product` VALUES (1, 1, 4, '小米CC9', '前置3200万自拍 / 索尼4800万超广角三摄 / 多色炫彩轻薄机身 / 6.39英寸三星 AMOLED水滴屏 /4030mAh大电量 / 骁龙710处理器 / 屏幕指纹 / NFC功能 / 红外遥控功能 / Game Turbo2.0游戏加速', '小米自营', 1799.00, 1799.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (2, 3, 10, 'Redmi K20 Pro', '骁龙855旗舰处理器 / 索尼4800万超广角三摄 / 前置2000万升降式相机 / 6.39\"AMOLED全面屏 / 4000mAh超长续航 / 8层石墨立体散热 / 第七代屏下指纹解锁 / 多功能NFC', '小米自营', 2799.00, 2499.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (3, 31, 16, '小米壁画电视 65英寸', '壁画外观 / 全面屏设计 / 4K HDR精良画质 / 2GB+32GB大内存 / 四核处理器 / 13.9mm纤薄机身 / 支持远场语音 / 内置小爱同学 / 首次安装免费', '小米自营', 6999.00, 6999.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (4, 32, 17, '小米全面屏电视E55A', '全面屏设计 / 4K超高清+HDR / 纤薄机身 / 2GB+8GB大内存 / 64位四核处理器 / 内置小爱同学', '小米自营', 6999.00, 6999.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (5, 33, 22, 'RedmiBook 14 独显版', '性能增强版酷睿™处理器 / GeForce ®MX250独显，全力升级 / 14寸超窄边框全高清屏幕 / 轻薄便携长续航 / 支持Modern Standby，小米手环疾速解锁', '小米自营', 4299.00, 4299.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (6, 34, 28, '米家互联网空调C1（一级能效）', '1.5匹 / 自清洁 / 全直流变频 / 高效制冷热 / 静音设计 / 全屋互联 / 售后无忧 / 官网购买，免预约安装，签收后服务人员主动联系', '小米自营', 2799.00, 2299.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (7, 18, 34, '小米路由器Mesh（两只装）', '多通道高速混合传输 / 高通4核CPU / 4颗独立信号放大器 / 256MB超大内存 / 千兆电力线 / 不分子母 / 专为小米智能家居优化', '小米自营', 999.00, 999.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (8, 35, 40, '小米米家智能摄像机云台版', '1080P高清画质 ／ 360度云台全景视角 ／ 红外夜视 ／ 双向语音 / AI 增强移动侦测 / H.265 编码 / 倒置安装', '小米自营', 199.00, 189.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (9, 13, NULL, '米家石英表', '计步抬腕可见／自动校对时间／智能振动提醒／不锈钢表壳／进口真皮表带／三色可选', '小米自营', 349.00, 349.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (10, 19, NULL, '小米充电宝高配版 10000mAh 布朗熊限量版', '支持USB-C充电 / 高密度锂聚合物电池 / 双向快充', '小米自营', 169.00, 169.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (11, 25, NULL, '小米小爱音箱 Play', '智能设备控制 / 人工智能语音对话 / 就近唤醒 / 趣味闹钟 / 孩子的超级故事王', '小米自营', 169.00, 99.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (12, 28, NULL, '小米简约休闲双肩包', '490g 极致轻便 / 创新防水侧袋 / 20L 大容量 / 冰感面料', '小米自营', 99.00, 99.00, '2019-08-26 14:17:28', 1);
INSERT INTO `t_product` VALUES (19, 36, 14, 'Redmi Note 7', '4800万拍照千元机 / “满血版”骁龙660处理器 / 品质“小金刚”，18个月超长质保 / 4000mAh 大电量 / 6.3\" 水滴全面屏 / USB-C 接口，方便耐用 / 支持快充 4 协议', '小米自营', 999.00, 999.00, '2019-08-26 14:43:59', 1);
INSERT INTO `t_product` VALUES (20, 37, 15, 'Redmi 7', '「3GB+32GB、4GB+64GB，直降100，到手价低至699元」4000mAh大电量 / 骁龙632八核处理器 / 6.26\"水滴全面屏，德国莱茵 TÜV 认证护眼屏 / 18个月超长质保，康宁第五代大猩猩玻璃盖板 / 支持大字体、大音量模式，收音机、红外遥控功能 / 1200万AI双摄，1.25μm大像素相机', '小米自营', 699.00, 699.00, '2019-08-26 14:47:54', 1);
INSERT INTO `t_product` VALUES (21, 38, NULL, '小米电视4C 32英寸', '人工智能系统 | 64位处理器 | 1GB+4GB 内存', '小米自营', 699.00, 699.00, '2019-08-26 14:50:36', 1);
INSERT INTO `t_product` VALUES (22, 39, NULL, '米家互联网洗烘一体机10kg', '「超值抢购，到手价仅1899元」国标最高A+级洗净能力 / 21种洗烘模式 / 智能空气洗 / 烘干除菌率达99.9%+ / 高温筒自洁 / 一级能效，省水省电', '小米自营', 2299.00, 1899.00, '2019-08-26 14:56:11', 1);

-- ----------------------------
-- Table structure for t_product_image
-- ----------------------------
DROP TABLE IF EXISTS `t_product_image`;
CREATE TABLE `t_product_image`  (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品图片id',
  `prodcut_id` int(11) NOT NULL COMMENT '商品id',
  `product_image_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'imi_single' COMMENT '商品图片类型：\r\nimi_mall首页图片  \r\nimi_single商品图片  \r\nimi_detail商品介绍页图片\r\n【默认imi_single】',
  `product_image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品图片文件名',
  `product_image_is_delete` int(11) NULL DEFAULT 0 COMMENT '删除图片：1是 0否【默认0】',
  PRIMARY KEY (`product_image_id`) USING BTREE,
  INDEX `fk_product_image_prodcut_id`(`prodcut_id`) USING BTREE,
  UNIQUE INDEX `product_image_url`(`product_image_url`) USING BTREE,
  CONSTRAINT `fk_product_image_prodcut_id` FOREIGN KEY (`prodcut_id`) REFERENCES `t_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product_image
-- ----------------------------
INSERT INTO `t_product_image` VALUES (1, 1, 'imi_single', 'pms_1562056101.jpg', 0);
INSERT INTO `t_product_image` VALUES (2, 1, 'imi_single', 'pms_1562056102.jpg', 0);
INSERT INTO `t_product_image` VALUES (3, 2, 'imi_single', 'pms_1558857751.jpg', 0);
INSERT INTO `t_product_image` VALUES (4, 3, 'imi_single', 'pms_1555935541.jpg', 0);
INSERT INTO `t_product_image` VALUES (5, 4, 'imi_single', 'pms_1562138481.jpg', 0);
INSERT INTO `t_product_image` VALUES (6, 4, 'imi_single', 'pms_1562138482.jpg', 0);
INSERT INTO `t_product_image` VALUES (7, 5, 'imi_single', 'pms_1559024531.jpg', 0);
INSERT INTO `t_product_image` VALUES (8, 5, 'imi_single', 'pms_1559024532.jpg', 0);
INSERT INTO `t_product_image` VALUES (9, 6, 'imi_single', 'pms_1554108361.jpg', 0);
INSERT INTO `t_product_image` VALUES (10, 7, 'imi_single', 'pms_1557490451.jpg', 0);
INSERT INTO `t_product_image` VALUES (11, 7, 'imi_single', 'pms_1552986532.jpg', 0);
INSERT INTO `t_product_image` VALUES (12, 8, 'imi_single', 'pms_1526540241.jpg', 0);
INSERT INTO `t_product_image` VALUES (13, 8, 'imi_single', 'pms_1526540192.jpg', 0);
INSERT INTO `t_product_image` VALUES (14, 9, 'imi_single', 'pms_1531448941.jpg', 0);
INSERT INTO `t_product_image` VALUES (15, 10, 'imi_single', 'pms_1564544931.jpg', 0);
INSERT INTO `t_product_image` VALUES (16, 10, 'imi_single', 'pms_1564544932.jpg', 0);
INSERT INTO `t_product_image` VALUES (17, 11, 'imi_single', 'pms_1560230031.jpg', 0);
INSERT INTO `t_product_image` VALUES (18, 11, 'imi_single', 'pms_1560230032.jpg', 0);
INSERT INTO `t_product_image` VALUES (19, 12, 'imi_single', 'pms_1565167271.jpg', 0);
INSERT INTO `t_product_image` VALUES (20, 12, 'imi_single', 'pms_1565167272.jpg', 0);
INSERT INTO `t_product_image` VALUES (21, 12, 'imi_single', 'pms_1565167273.jpg', 0);

-- ----------------------------
-- Table structure for t_product_property
-- ----------------------------
DROP TABLE IF EXISTS `t_product_property`;
CREATE TABLE `t_product_property`  (
  `product_property_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品属性id',
  `product_property_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品属性名',
  `product_property_is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除：1是  0否【默认0】',
  PRIMARY KEY (`product_property_id`) USING BTREE,
  UNIQUE INDEX `product_property_name`(`product_property_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product_property
-- ----------------------------
INSERT INTO `t_product_property` VALUES (1, '处理器', 0);
INSERT INTO `t_product_property` VALUES (2, '屏幕', 0);
INSERT INTO `t_product_property` VALUES (3, '前置相机', 0);
INSERT INTO `t_product_property` VALUES (4, '后置相机', 0);
INSERT INTO `t_product_property` VALUES (5, '识别方式', 0);
INSERT INTO `t_product_property` VALUES (6, '充电与电池', 0);
INSERT INTO `t_product_property` VALUES (7, '多功能NFC', 0);
INSERT INTO `t_product_property` VALUES (8, '操作系统', 0);
INSERT INTO `t_product_property` VALUES (9, '外观尺寸', 0);
INSERT INTO `t_product_property` VALUES (10, '按键与解锁', 0);
INSERT INTO `t_product_property` VALUES (11, '定位功能', 0);
INSERT INTO `t_product_property` VALUES (12, '传感器', 0);
INSERT INTO `t_product_property` VALUES (13, '视频播放', 0);
INSERT INTO `t_product_property` VALUES (14, '音频播放', 0);
INSERT INTO `t_product_property` VALUES (15, '包装清单', 0);
INSERT INTO `t_product_property` VALUES (16, '内存与容量', 0);
INSERT INTO `t_product_property` VALUES (17, '网络与制式', 0);
INSERT INTO `t_product_property` VALUES (18, '多媒体播放', 0);
INSERT INTO `t_product_property` VALUES (19, '显示参数', 0);
INSERT INTO `t_product_property` VALUES (20, '无线配置', 0);
INSERT INTO `t_product_property` VALUES (21, '接口及数量', 0);
INSERT INTO `t_product_property` VALUES (22, '影音播放性能', 0);
INSERT INTO `t_product_property` VALUES (23, '扬声器', 0);
INSERT INTO `t_product_property` VALUES (24, '壁挂尺寸', 0);
INSERT INTO `t_product_property` VALUES (25, '电源和操作环境', 0);
INSERT INTO `t_product_property` VALUES (26, '内置APP', 0);
INSERT INTO `t_product_property` VALUES (27, '智能互联功能', 0);
INSERT INTO `t_product_property` VALUES (28, '显卡及视频输出', 0);
INSERT INTO `t_product_property` VALUES (29, '摄像头', 0);
INSERT INTO `t_product_property` VALUES (30, '键盘触控板', 0);
INSERT INTO `t_product_property` VALUES (31, '保修信息', 0);
INSERT INTO `t_product_property` VALUES (32, '型号', 0);
INSERT INTO `t_product_property` VALUES (33, '颜色', 0);
INSERT INTO `t_product_property` VALUES (34, '类别', 0);
INSERT INTO `t_product_property` VALUES (35, '制冷类型', 0);
INSERT INTO `t_product_property` VALUES (36, '最大功率', 0);
INSERT INTO `t_product_property` VALUES (37, '工作环境温度', 0);
INSERT INTO `t_product_property` VALUES (38, '工作环境湿度', 0);
INSERT INTO `t_product_property` VALUES (39, '存储温度', 0);
INSERT INTO `t_product_property` VALUES (40, '存储湿度', 0);
INSERT INTO `t_product_property` VALUES (41, '镜头角度', 0);
INSERT INTO `t_product_property` VALUES (42, '焦距', 0);

-- ----------------------------
-- Table structure for t_product_property_value
-- ----------------------------
DROP TABLE IF EXISTS `t_product_property_value`;
CREATE TABLE `t_product_property_value`  (
  `product_property_value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品属性值id',
  `product_property_id` int(11) NOT NULL COMMENT '商品属性id',
  `product_id` int(11) NOT NULL COMMENT '商品id',
  `product_property_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品属性值',
  `product_property_value_is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除：1是  0否【默认0】',
  PRIMARY KEY (`product_property_value_id`) USING BTREE,
  INDEX `fk_product_property_value_product_property_id`(`product_property_id`) USING BTREE,
  INDEX `fk_product_property_value_product_id`(`product_id`) USING BTREE,
  CONSTRAINT `fk_product_property_value_product_property_id` FOREIGN KEY (`product_property_id`) REFERENCES `t_product_property` (`product_property_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_property_value_product_id` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product_property_value
-- ----------------------------
INSERT INTO `t_product_property_value` VALUES (1, 1, 1, '骁龙710 八核处理器,最高主频 2.2GHz,内存6GB+128GB', 0);
INSERT INTO `t_product_property_value` VALUES (2, 2, 1, '6.39英寸,三星 AMOLED 屏幕', 0);
INSERT INTO `t_product_property_value` VALUES (3, 3, 1, '3200万 超高清自拍', 0);
INSERT INTO `t_product_property_value` VALUES (4, 4, 1, '48MP 超高清AI三摄', 0);
INSERT INTO `t_product_property_value` VALUES (5, 5, 1, '第七代光感屏幕指纹识别,人脸识别', 0);
INSERT INTO `t_product_property_value` VALUES (6, 6, 1, '4030mAh* 超长续航,内置锂离子聚合物电池，不可拆卸', 0);
INSERT INTO `t_product_property_value` VALUES (7, 7, 1, '支持读卡器模式、点对点模式、卡模拟模式', 0);
INSERT INTO `t_product_property_value` VALUES (8, 8, 1, 'MIUI 10*,Game Turbo 2.0', 0);
INSERT INTO `t_product_property_value` VALUES (9, 9, 1, '高度：156.8mm ,宽度：74.5mm ,厚度：8.67mm.重量：179g', 0);
INSERT INTO `t_product_property_value` VALUES (10, 10, 1, '红外遥控,双面充电接口', 0);
INSERT INTO `t_product_property_value` VALUES (11, 11, 1, 'GPS,北斗,无线网络,数据网络', 0);
INSERT INTO `t_product_property_value` VALUES (12, 12, 1, '距离传感器,陀螺仪加速度感应器', 0);
INSERT INTO `t_product_property_value` VALUES (13, 13, 1, 'MP4,XVID,MP3,AAC', 0);
INSERT INTO `t_product_property_value` VALUES (14, 14, 1, '支持PCM、AAC/AAC+/eAAC+、MP3、AMR-NB/WB、FLAC、WAV等音频格式', 0);
INSERT INTO `t_product_property_value` VALUES (15, 15, 1, '手机主机 / 电源适配器 / USB Type-C 数据线 / 高透软胶保护壳 / 插针 / 三包凭证 / 入门指南', 0);
INSERT INTO `t_product_property_value` VALUES (16, 1, 2, '高通骁龙 855 处理器', 0);
INSERT INTO `t_product_property_value` VALUES (17, 8, 2, 'MIUI 10', 0);
INSERT INTO `t_product_property_value` VALUES (18, 16, 2, '8GB + 256GB', 0);
INSERT INTO `t_product_property_value` VALUES (19, 2, 2, '6.39英寸（对角线）,三星 AMOLED 全面屏', 0);
INSERT INTO `t_product_property_value` VALUES (20, 4, 2, '索尼 4800万 全焦段三摄', 0);
INSERT INTO `t_product_property_value` VALUES (21, 3, 2, '2000万美颜相机', 0);
INSERT INTO `t_product_property_value` VALUES (22, 5, 2, '第七代屏幕指纹识别', 0);
INSERT INTO `t_product_property_value` VALUES (23, 6, 2, '4000mAh（typ）*/3900mAh（min)', 0);
INSERT INTO `t_product_property_value` VALUES (24, 17, 2, '全网通 5.0,支持双卡不限运营商，均可4G驻网①', 0);
INSERT INTO `t_product_property_value` VALUES (25, 7, 2, '在小米钱包开通后，通过双击电源键使用小米公交、MiPay、小米门卡等功能.', 0);
INSERT INTO `t_product_property_value` VALUES (26, 9, 2, '高度：156.7mm,宽度：74.3mm,厚度：8.8mm *,重量：191g', 0);
INSERT INTO `t_product_property_value` VALUES (27, 10, 2, '红外遥控,双面充电接口', 0);
INSERT INTO `t_product_property_value` VALUES (28, 11, 2, '双频双天线GPS,A-GPS辅助定位 | 电子罗盘 | 无线网络 | 数据网络', 0);
INSERT INTO `t_product_property_value` VALUES (29, 14, 2, '1217 Xmax 0.4mm大振幅超线性扬声器', 0);
INSERT INTO `t_product_property_value` VALUES (30, 18, 2, 'MP4 | M4V | MKV | XVID | WAV | AAC | MP3 | AMR | FLAC | APE', 0);
INSERT INTO `t_product_property_value` VALUES (31, 13, 2, '支持新一代视频编解码技术、HEVC、H.264、MPEG4、VC-1、VP8、VP9等视频格式', 0);
INSERT INTO `t_product_property_value` VALUES (32, 12, 2, '距离传感器 | 屏下环境光传感器 | 加速度传感器 | 陀螺仪 | 电子罗盘 | 摄像头激光对焦传感器', 0);
INSERT INTO `t_product_property_value` VALUES (33, 15, 2, '手机主机 / 电源适配器 / 极简手机保护套 / USB Type-C 数据线 / 插针 / 入门指南 / 三包凭证', 0);
INSERT INTO `t_product_property_value` VALUES (34, 19, 4, '分辨率：3840 × 2160,可视角度：178°', 0);
INSERT INTO `t_product_property_value` VALUES (35, 1, 4, 'CPU：Cortex A53 四核 up to 1.5GHz,GPU：Mali-450 750MHz,内存：2GB', 0);
INSERT INTO `t_product_property_value` VALUES (36, 20, 4, 'WiFi：双频 2.4GHz、5GHz,支持蓝牙,红外', 0);
INSERT INTO `t_product_property_value` VALUES (37, 21, 4, 'HDMI：3个（含一个ARC）,AV：1个,USB：2个,模拟信号DTMB：1个', 0);
INSERT INTO `t_product_property_value` VALUES (38, 22, 4, '内置播放器： 内置 Mi-Player 播放器支持 RM、FLV、MOV、AVI、MKV、TS、MP4 等主流格式', 0);
INSERT INTO `t_product_property_value` VALUES (39, 23, 4, '2 × 8W', 0);
INSERT INTO `t_product_property_value` VALUES (40, 9, 4, '长1233mm,高716.6cm,裸机不含底座重12.7kg', 0);
INSERT INTO `t_product_property_value` VALUES (41, 24, 4, '支持壁挂，如有需要请拨打4001005678', 0);
INSERT INTO `t_product_property_value` VALUES (42, 25, 4, '电压：220V~ 50/60Hz,能效：3级,工作温度：0℃～40℃', 0);
INSERT INTO `t_product_property_value` VALUES (43, 8, 4, 'patchWall', 0);
INSERT INTO `t_product_property_value` VALUES (44, 26, 4, '日历,游戏中心,高清播放器,天气,应用商店,电视管家', 0);
INSERT INTO `t_product_property_value` VALUES (45, 27, 4, '小米路由器,米家摄像头,小米空气净化器,小秘手环,小米净水器', 0);
INSERT INTO `t_product_property_value` VALUES (46, 15, 4, '屏幕：1个,支架：2个,安装说明：1份,遥控器：蓝牙语音遥控器（含电池）,螺丝包：1个', 0);
INSERT INTO `t_product_property_value` VALUES (47, 1, 5, '第八代英特尔? 酷睿? i7-8565U,四核八线程处理器,8GB DDR4 2400MHz 内存', 0);
INSERT INTO `t_product_property_value` VALUES (48, 28, 5, 'NVIDIA? GeForce? MX250 独立显卡,2GB GDDR5 显存', 0);
INSERT INTO `t_product_property_value` VALUES (49, 19, 5, '14\" FHD 全高清屏幕，分辨率 1920 x 1080，5.75mm 边框1，81.2% 屏占比', 0);
INSERT INTO `t_product_property_value` VALUES (50, 20, 5, '支持 802.11ac 网络协议，支持 2.4GHz、5GHz 双频，兼容802.11 a/b/g/n，最高理论网速达433Mbps', 0);
INSERT INTO `t_product_property_value` VALUES (51, 29, 5, '本型号未配备摄像头', 0);
INSERT INTO `t_product_property_value` VALUES (52, 23, 5, '声卡：Realtek ALC256M,扬声器：2×1.5W', 0);
INSERT INTO `t_product_property_value` VALUES (53, 21, 5, 'USB 3.0 接口 x 2，5Gb/s 传输速度，支持数据传输', 0);
INSERT INTO `t_product_property_value` VALUES (54, 9, 5, '323mm*228mm*17.95mm,约 1.5kg(含电池，具体重量依据产品出货配置为准)', 0);
INSERT INTO `t_product_property_value` VALUES (55, 10, 5, '全尺寸键盘，19mm 大键距，1.3mm键程,107mm*65mm，PTP触控板', 0);
INSERT INTO `t_product_property_value` VALUES (56, 25, 5, '46瓦时(Min)电池容量3，65W电源适配器', 0);
INSERT INTO `t_product_property_value` VALUES (57, 8, 5, '预装Windows 10 家庭版,正版 Office 家庭和学生版', 0);
INSERT INTO `t_product_property_value` VALUES (58, 31, 5, '整机保修1年，主要零部件2年6', 0);
INSERT INTO `t_product_property_value` VALUES (59, 15, 5, '笔记本电脑主机 x 1；电源适配器 x 1；电源线 x 1；入门指南（三包凭证）x 1', 0);
INSERT INTO `t_product_property_value` VALUES (60, 9, 6, '外机:长795mm,高550mm,宽300mm; 内机:长800mm,高303mm,宽196mm', 0);
INSERT INTO `t_product_property_value` VALUES (61, 32, 6, 'KFR-35GW/V1C1', 0);
INSERT INTO `t_product_property_value` VALUES (62, 33, 6, '白色', 0);
INSERT INTO `t_product_property_value` VALUES (63, 34, 6, '壁挂式', 0);
INSERT INTO `t_product_property_value` VALUES (64, 35, 6, '冷暖', 0);
INSERT INTO `t_product_property_value` VALUES (65, 36, 6, '3040W', 0);
INSERT INTO `t_product_property_value` VALUES (66, 9, 7, '长宽高（单个）:120mm×80mm×181mm', 0);
INSERT INTO `t_product_property_value` VALUES (67, 1, 7, '高通IPQ4019 四核 717MHz', 0);
INSERT INTO `t_product_property_value` VALUES (68, 16, 7, '128MB', 0);
INSERT INTO `t_product_property_value` VALUES (69, 31, 7, '整机保修1年', 0);
INSERT INTO `t_product_property_value` VALUES (70, 8, 7, '基于 OpenWRT 深度定制的智能路由器操作系统MiWiFi ROM 支持 Web、Android、iOS', 0);
INSERT INTO `t_product_property_value` VALUES (71, 37, 7, '0 ~ 40℃', 0);
INSERT INTO `t_product_property_value` VALUES (72, 38, 7, '10% ~ 90%RH（不凝结）', 0);
INSERT INTO `t_product_property_value` VALUES (73, 39, 7, '-40 ~ 70℃', 0);
INSERT INTO `t_product_property_value` VALUES (74, 40, 7, '5% ~ 90%RH（不凝结）', 0);
INSERT INTO `t_product_property_value` VALUES (75, 9, 8, '长宽高（单个）:118 x 78 x 78mm  重量:239g', 0);
INSERT INTO `t_product_property_value` VALUES (76, 25, 8, '5V--1A', 0);
INSERT INTO `t_product_property_value` VALUES (77, 41, 8, '110°', 0);
INSERT INTO `t_product_property_value` VALUES (78, 19, 8, '1080p', 0);
INSERT INTO `t_product_property_value` VALUES (79, 42, 8, '3.9mm', 0);
INSERT INTO `t_product_property_value` VALUES (80, 37, 8, '-10℃ ~ 50℃', 0);
INSERT INTO `t_product_property_value` VALUES (81, 20, 8, 'Wi-Fi IEEE 802.11 b/g/n 2.4 GHz', 0);
INSERT INTO `t_product_property_value` VALUES (82, 16, 8, 'MicroSD 卡（支持最小 16 GB，最大 64 GB，Class10及以上的存储卡。）', 0);
INSERT INTO `t_product_property_value` VALUES (83, 15, 8, '小米米家智能摄像机云台版 x 1、说明书 x 1、电源适配 x 1、挂墙配件包 x 1', 0);

-- ----------------------------
-- Table structure for t_product_stock
-- ----------------------------
DROP TABLE IF EXISTS `t_product_stock`;
CREATE TABLE `t_product_stock`  (
  `product_stock_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品库存id',
  `product_id` int(11) NOT NULL COMMENT '商品 ID',
  `product_stock_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '商品产地',
  `product_stock_num` int(11) NOT NULL COMMENT '商品库存数量',
  `product_stock_is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除：1是  0否【默认0】',
  PRIMARY KEY (`product_stock_id`) USING BTREE,
  INDEX `fk_product_stock_product_id`(`product_id`) USING BTREE,
  CONSTRAINT `fk_product_stock_product_id` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '商品库存表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product_stock
-- ----------------------------
INSERT INTO `t_product_stock` VALUES (1, 1, '广东惠州', 50, 0);
INSERT INTO `t_product_stock` VALUES (2, 1, '广东东莞', 50, 0);
INSERT INTO `t_product_stock` VALUES (3, 2, '广东顺德', 30, 0);
INSERT INTO `t_product_stock` VALUES (4, 3, '广东深圳', 30, 0);
INSERT INTO `t_product_stock` VALUES (5, 4, '广东佛山', 50, 0);
INSERT INTO `t_product_stock` VALUES (6, 5, '广东广州', 60, 0);
INSERT INTO `t_product_stock` VALUES (7, 5, '广东潮汕', 60, 0);
INSERT INTO `t_product_stock` VALUES (8, 6, '广东河源', 70, 0);
INSERT INTO `t_product_stock` VALUES (9, 6, '广东阳江', 70, 0);
INSERT INTO `t_product_stock` VALUES (10, 7, '广东潮汕', 70, 0);
INSERT INTO `t_product_stock` VALUES (11, 8, '广东韶关', 20, 0);

-- ----------------------------
-- Table structure for t_productcar
-- ----------------------------
DROP TABLE IF EXISTS `t_productcar`;
CREATE TABLE `t_productcar`  (
  `productcar_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物车id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `product_id` int(11) NOT NULL COMMENT '商品id',
  `productcar_num` int(11) NULL DEFAULT 1 COMMENT '商品数量',
  `productcar_create_date` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '商品创建时间',
  `productcar_status` int(4) NULL DEFAULT 0 COMMENT '状态：1为选中  0为未选【默认0】',
  `productcar_is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除：1是  0否【默认0】',
  PRIMARY KEY (`productcar_id`) USING BTREE,
  INDEX `fk_productcar_user_id`(`user_id`) USING BTREE,
  INDEX `fk_productcar_product_id`(`product_id`) USING BTREE,
  CONSTRAINT `fk_productcar_product_id` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_productcar_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user_login` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_productcar
-- ----------------------------
INSERT INTO `t_productcar` VALUES (1, 1, 1, 1, '2019-08-26 15:20:17', 1, 0);
INSERT INTO `t_productcar` VALUES (2, 3, 5, 2, '2019-08-26 15:20:55', 1, 0);
INSERT INTO `t_productcar` VALUES (3, 2, 8, 3, '2019-08-26 15:21:15', 1, 0);
INSERT INTO `t_productcar` VALUES (4, 1, 4, 2, '2019-08-26 15:22:04', 1, 0);
INSERT INTO `t_productcar` VALUES (5, 2, 9, 4, '2019-08-26 15:27:11', 0, 0);
INSERT INTO `t_productcar` VALUES (6, 1, 3, 1, '2019-08-26 15:27:36', 0, 0);
INSERT INTO `t_productcar` VALUES (7, 4, 6, 1, '2019-08-26 15:48:06', 0, 0);

-- ----------------------------
-- Table structure for t_user_addr
-- ----------------------------
DROP TABLE IF EXISTS `t_user_addr`;
CREATE TABLE `t_user_addr`  (
  `user_addr_id` int(32) NOT NULL AUTO_INCREMENT COMMENT '地址表主键',
  `user_inf_id` int(32) NOT NULL COMMENT '用户信息id',
  `user_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收货地址',
  `user_addr_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收件人名称',
  `user_addr_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '收件人手机',
  `user_addr_area_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '邮政编码',
  `user_addr_is_default` int(4) NULL DEFAULT 0 COMMENT '是否默认地址：1是  0否【默认0】',
  `uesr_addr_is_delete` int(4) NULL DEFAULT 0 COMMENT '是否删除：1是  0否【默认0】',
  PRIMARY KEY (`user_addr_id`) USING BTREE,
  INDEX `fk_user_addr_user_inf_id`(`user_inf_id`) USING BTREE,
  CONSTRAINT `fk_user_addr_user_inf_id` FOREIGN KEY (`user_inf_id`) REFERENCES `t_usre_inf` (`user_inf_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_addr
-- ----------------------------
INSERT INTO `t_user_addr` VALUES (1, 1, '广东惠州', '惠州吴彦祖', '13600001904', '517300', 1, 1);
INSERT INTO `t_user_addr` VALUES (2, 1, '广东东莞', '东莞大张伟', '13600001902', '517300', 0, 1);
INSERT INTO `t_user_addr` VALUES (3, 2, '广东广州', '广州三叔公', '13600001903', '517301', 1, 1);
INSERT INTO `t_user_addr` VALUES (4, 2, '广东潮汕', '潮汕李现', '13600001901', '617302', 0, 1);
INSERT INTO `t_user_addr` VALUES (5, 3, '广东佛山', '佛山房辉哄', '13600001900', '517300', 1, 1);
INSERT INTO `t_user_addr` VALUES (6, 3, '广东顺德', '顺德彩许昆', '13600001908', '517299', 0, 1);
INSERT INTO `t_user_addr` VALUES (7, 4, '广东韶关', '韶关山鸡哥', '13600001909', '517302', 1, 1);
INSERT INTO `t_user_addr` VALUES (8, 5, '广东河源', '河源杜兰特', '13600001809', '517299', 1, 1);
INSERT INTO `t_user_addr` VALUES (9, 5, '广东阳江', '阳江五五开', '13600001911', '517322', 0, 1);
INSERT INTO `t_user_addr` VALUES (10, 5, '广东深圳', '深圳白胡子', '13600001920', '517301', 0, 1);

-- ----------------------------
-- Table structure for t_user_login
-- ----------------------------
DROP TABLE IF EXISTS `t_user_login`;
CREATE TABLE `t_user_login`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户账号ID',
  `username` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码',
  `user_create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '注册时间',
  `user_login_status` int(11) NOT NULL DEFAULT 1 COMMENT '状态码：1为正常  0为未激活【默认1】',
  `user_identity` int(11) NULL DEFAULT 1 COMMENT '用户身份：1为正常用户  0为管理员【默认1】',
  `user_is_delete` int(11) NULL DEFAULT 0 COMMENT '是否删除：1是  0否【默认0】',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_login
-- ----------------------------
INSERT INTO `t_user_login` VALUES (1, '1904', '123456', '2019-08-24 20:49:36', 1, 1, 0);
INSERT INTO `t_user_login` VALUES (2, '1905', '123456', '2019-08-24 20:47:58', 1, 1, 0);
INSERT INTO `t_user_login` VALUES (3, '1906', '123456', '2019-08-24 20:48:32', 1, 1, 0);
INSERT INTO `t_user_login` VALUES (4, '1907', '123456', '2019-08-24 20:49:14', 1, 1, 0);
INSERT INTO `t_user_login` VALUES (5, '1908', '123456', '2019-08-24 20:49:26', 1, 1, 0);

-- ----------------------------
-- Table structure for t_usre_inf
-- ----------------------------
DROP TABLE IF EXISTS `t_usre_inf`;
CREATE TABLE `t_usre_inf`  (
  `user_inf_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户信息id',
  `user_id` int(11) NOT NULL COMMENT '用户账号id',
  `user_inf_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户真实名称',
  `user_inf_sex` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户性别',
  `user_inf_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户邮箱',
  `user_inf_phone` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户手机',
  `user_inf_status` int(11) NULL DEFAULT 1 COMMENT '用户信息状态：1为正常  0为不可用【默认1】',
  PRIMARY KEY (`user_inf_id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  UNIQUE INDEX `user_inf_email`(`user_inf_email`) USING BTREE,
  UNIQUE INDEX `user_inf_phone`(`user_inf_phone`) USING BTREE,
  CONSTRAINT `fk_user_inf_user_id` FOREIGN KEY (`user_id`) REFERENCES `t_user_login` (`user_id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_usre_inf
-- ----------------------------
INSERT INTO `t_usre_inf` VALUES (1, 1, '贝贝', '男', '123@qq.com', '13600001906', 1);
INSERT INTO `t_usre_inf` VALUES (2, 2, '京京', '女', '234@qq.com', '13600001907', 1);
INSERT INTO `t_usre_inf` VALUES (3, 3, '欢欢', '女', '345@qq.com', '13600001908', 1);
INSERT INTO `t_usre_inf` VALUES (4, 4, '迎迎', '女', '456@qq.com', '13600001909', 1);
INSERT INTO `t_usre_inf` VALUES (5, 5, '妮妮', '女', '567@qq.com', '13600001910', 1);

SET FOREIGN_KEY_CHECKS = 1;
