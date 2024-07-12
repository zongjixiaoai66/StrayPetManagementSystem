/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t182`;
CREATE DATABASE IF NOT EXISTS `t182` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t182`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='送货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(2, 3, '收货人2', '17703786902', '地址2', 1, '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(3, 1, '收货人3', '17703786903', '地址3', 2, '2022-03-12 07:42:51', '2022-03-12 08:32:22', '2022-03-12 07:42:51'),
	(4, 2, '收货人4', '17703786904', '地址4', 1, '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(5, 1, '收货人5', '17703786905', '地址5', 1, '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '所属用户',
  `chongwuyongpin_id` int DEFAULT NULL COMMENT '商品',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='购物车';

DELETE FROM `cart`;

DROP TABLE IF EXISTS `chongwu`;
CREATE TABLE IF NOT EXISTS `chongwu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwu_name` varchar(200) DEFAULT NULL COMMENT '宠物名称  Search111 ',
  `chongwu_photo` varchar(200) DEFAULT NULL COMMENT '宠物照片',
  `chongwu_types` int DEFAULT NULL COMMENT '宠物类型 Search111',
  `chongwu_status_types` int DEFAULT NULL COMMENT '认领状态 Search111',
  `chongwu_content` text COMMENT '宠物简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='流浪宠物';

DELETE FROM `chongwu`;
INSERT INTO `chongwu` (`id`, `chongwu_name`, `chongwu_photo`, `chongwu_types`, `chongwu_status_types`, `chongwu_content`, `create_time`) VALUES
	(1, '宠物名称1', 'http://localhost:8080/liulangcongwuguanli/upload/chongwu1.jpg', 1, 1, '宠物简介1', '2022-03-12 07:42:51'),
	(2, '宠物名称2', 'http://localhost:8080/liulangcongwuguanli/upload/chongwu2.jpg', 2, 2, '宠物简介2', '2022-03-12 07:42:51'),
	(3, '宠物名称3', 'http://localhost:8080/liulangcongwuguanli/upload/chongwu3.jpg', 1, 2, '宠物简介3', '2022-03-12 07:42:51'),
	(4, '宠物名称4', 'http://localhost:8080/liulangcongwuguanli/upload/chongwu4.jpg', 1, 2, '宠物简介4', '2022-03-12 07:42:51'),
	(5, '宠物名称5', 'http://localhost:8080/liulangcongwuguanli/upload/chongwu5.jpg', 2, 2, '宠物简介5', '2022-03-12 07:42:51');

DROP TABLE IF EXISTS `chongwuyongpin`;
CREATE TABLE IF NOT EXISTS `chongwuyongpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwuyongpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `chongwuyongpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `chongwuyongpin_types` int DEFAULT NULL COMMENT '商品类型 Search111',
  `chongwuyongpin_price` int DEFAULT NULL COMMENT '购买获得积分 ',
  `chongwuyongpin_kucun_number` int DEFAULT NULL COMMENT '商品库存',
  `chongwuyongpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `chongwuyongpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `chongwuyongpin_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `chongwuyongpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `chongwuyongpin_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='商品';

DELETE FROM `chongwuyongpin`;
INSERT INTO `chongwuyongpin` (`id`, `chongwuyongpin_name`, `chongwuyongpin_photo`, `chongwuyongpin_types`, `chongwuyongpin_price`, `chongwuyongpin_kucun_number`, `chongwuyongpin_old_money`, `chongwuyongpin_new_money`, `chongwuyongpin_clicknum`, `shangxia_types`, `chongwuyongpin_delete`, `chongwuyongpin_content`, `create_time`) VALUES
	(1, '商品名称1', 'http://localhost:8080/liulangcongwuguanli/upload/chongwuyongpin1.jpg', 3, 363, 101, 925.98, 355.97, 210, 1, 1, '商品简介1', '2022-03-12 07:42:51'),
	(2, '商品名称2', 'http://localhost:8080/liulangcongwuguanli/upload/chongwuyongpin2.jpg', 3, 151, 102, 524.31, 347.14, 484, 1, 1, '商品简介2', '2022-03-12 07:42:51'),
	(3, '商品名称3', 'http://localhost:8080/liulangcongwuguanli/upload/chongwuyongpin3.jpg', 3, 130, 103, 858.18, 477.07, 278, 1, 1, '商品简介3', '2022-03-12 07:42:51'),
	(4, '商品名称4', 'http://localhost:8080/liulangcongwuguanli/upload/chongwuyongpin4.jpg', 3, 440, 103, 880.41, 200.71, 463, 1, 1, '商品简介4', '2022-03-12 07:42:51'),
	(5, '商品名称5', 'http://localhost:8080/liulangcongwuguanli/upload/chongwuyongpin5.jpg', 3, 390, 100, 541.13, 304.02, 190, 1, 1, '商品简介5', '2022-03-12 07:42:51');

DROP TABLE IF EXISTS `chongwuyongpin_commentback`;
CREATE TABLE IF NOT EXISTS `chongwuyongpin_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `chongwuyongpin_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='商品评价';

DELETE FROM `chongwuyongpin_commentback`;
INSERT INTO `chongwuyongpin_commentback` (`id`, `chongwuyongpin_id`, `yonghu_id`, `chongwuyongpin_commentback_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '回复信息1', '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(2, 2, 2, '评价内容2', '回复信息2', '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(3, 3, 2, '评价内容3', '回复信息3', '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(4, 4, 3, '评价内容4', '回复信息4', '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(5, 5, 2, '评价内容5', '回复信息5', '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(6, 5, 1, '评价内容', NULL, '2022-03-12 08:37:53', NULL, '2022-03-12 08:37:53');

DROP TABLE IF EXISTS `chongwuyongpin_order`;
CREATE TABLE IF NOT EXISTS `chongwuyongpin_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongwuyongpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `address_id` int DEFAULT NULL COMMENT '送货地址 ',
  `chongwuyongpin_id` int DEFAULT NULL COMMENT '商品',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '购买数量',
  `chongwuyongpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `chongwuyongpin_order_types` int DEFAULT NULL COMMENT '订单类型',
  `chongwuyongpin_order_payment_types` int DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='商品订单';

DELETE FROM `chongwuyongpin_order`;
INSERT INTO `chongwuyongpin_order` (`id`, `chongwuyongpin_order_uuid_number`, `address_id`, `chongwuyongpin_id`, `yonghu_id`, `buy_number`, `chongwuyongpin_order_true_price`, `chongwuyongpin_order_types`, `chongwuyongpin_order_payment_types`, `insert_time`, `create_time`) VALUES
	(1, '1647073963029', 3, 5, 1, 5, 1520.10, 1, 1, '2022-03-12 08:32:43', '2022-03-12 08:32:43'),
	(2, '1715672177204', 3, 4, 1, 1, 200.71, 3, 1, '2024-05-14 07:36:17', '2024-05-14 07:36:17');

DROP TABLE IF EXISTS `chongwu_lingyang`;
CREATE TABLE IF NOT EXISTS `chongwu_lingyang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongwu_id` int DEFAULT NULL COMMENT '宠物',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `chongwu_text` text COMMENT '申请理由',
  `chongwu_lingyang_yesno_types` int DEFAULT NULL COMMENT '审核状态',
  `chongwu_lingyang_yesno_text` text COMMENT '审核原因',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='流浪宠物领养';

DELETE FROM `chongwu_lingyang`;
INSERT INTO `chongwu_lingyang` (`id`, `chongwu_id`, `yonghu_id`, `chongwu_text`, `chongwu_lingyang_yesno_types`, `chongwu_lingyang_yesno_text`, `create_time`) VALUES
	(7, 3, 1, '申请11111111', 2, '通过', '2022-03-12 08:31:24');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/liulangcongwuguanli/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/liulangcongwuguanli/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/liulangcongwuguanli/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-12 07:42:40'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-12 07:42:40'),
	(3, 'liulangdongwujiuzhu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2022-03-12 07:42:40'),
	(4, 'liulangdongwujiuzhu_collection_types', '收藏表类型', 2, '赞', NULL, NULL, '2022-03-12 07:42:40'),
	(5, 'liulangdongwujiuzhu_collection_types', '收藏表类型', 3, '踩', NULL, NULL, '2022-03-12 07:42:40'),
	(6, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2022-03-12 07:42:40'),
	(7, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2022-03-12 07:42:40'),
	(8, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2022-03-12 07:42:40'),
	(9, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2022-03-12 07:42:40'),
	(10, 'chongwuyongpin_types', '商品类型', 1, '商品类型1', NULL, NULL, '2022-03-12 07:42:40'),
	(11, 'chongwuyongpin_types', '商品类型', 2, '商品类型2', NULL, NULL, '2022-03-12 07:42:40'),
	(12, 'chongwuyongpin_types', '商品类型', 3, '商品类型3', NULL, NULL, '2022-03-12 07:42:40'),
	(13, 'chongwuyongpin_order_types', '订单类型', 1, '已评价', NULL, NULL, '2022-03-12 07:42:41'),
	(14, 'chongwuyongpin_order_types', '订单类型', 2, '退款', NULL, NULL, '2022-03-12 07:42:41'),
	(15, 'chongwuyongpin_order_types', '订单类型', 3, '已支付', NULL, NULL, '2022-03-12 07:42:41'),
	(16, 'chongwuyongpin_order_types', '订单类型', 4, '已发货', NULL, NULL, '2022-03-12 07:42:41'),
	(17, 'chongwuyongpin_order_types', '订单类型', 5, '已收货', NULL, NULL, '2022-03-12 07:42:41'),
	(18, 'chongwuyongpin_order_payment_types', '订单支付类型', 1, '现金', NULL, NULL, '2022-03-12 07:42:41'),
	(19, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-12 07:42:41'),
	(20, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-12 07:42:41'),
	(21, 'chongwu_types', '宠物类型', 1, '宠物类型1', NULL, NULL, '2022-03-12 07:42:41'),
	(22, 'chongwu_types', '宠物类型', 2, '宠物类型2', NULL, NULL, '2022-03-12 07:42:41'),
	(23, 'chongwu_types', '宠物类型', 3, '宠物类型3', NULL, NULL, '2022-03-12 07:42:41'),
	(24, 'chongwu_status_types', '认领状态', 1, '未认领', NULL, NULL, '2022-03-12 07:42:41'),
	(25, 'chongwu_status_types', '认领状态', 2, '已认领', NULL, NULL, '2022-03-12 07:42:41'),
	(26, 'chongwu_lingyang_yesno_types', '认领状态', 1, '审核中', NULL, NULL, '2022-03-12 07:42:41'),
	(27, 'chongwu_lingyang_yesno_types', '认领状态', 2, '通过', NULL, NULL, '2022-03-12 07:42:41'),
	(28, 'chongwu_lingyang_yesno_types', '认领状态', 3, '拒绝', NULL, NULL, '2022-03-12 07:42:41');

DROP TABLE IF EXISTS `liulangdongwujiuzhu`;
CREATE TABLE IF NOT EXISTS `liulangdongwujiuzhu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `liulangdongwujiuzhu_name` varchar(200) DEFAULT NULL COMMENT '救助标题  Search111 ',
  `liulangdongwujiuzhu_photo` varchar(200) DEFAULT NULL COMMENT '现场图片',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `liulangdongwujiuzhu_clicknum` int DEFAULT NULL COMMENT '点击次数 ',
  `liulangdongwujiuzhu_content` text COMMENT '救助过程简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='流浪动物救助';

DELETE FROM `liulangdongwujiuzhu`;
INSERT INTO `liulangdongwujiuzhu` (`id`, `liulangdongwujiuzhu_name`, `liulangdongwujiuzhu_photo`, `zan_number`, `cai_number`, `liulangdongwujiuzhu_clicknum`, `liulangdongwujiuzhu_content`, `create_time`) VALUES
	(1, '救助标题1', 'http://localhost:8080/liulangcongwuguanli/upload/1647072622563.jpeg', 357, 50, 156, '<p>救助过程简介1</p>', '2022-03-12 07:42:51'),
	(2, '救助标题2', 'http://localhost:8080/liulangcongwuguanli/upload/1647072615545.jpeg', 158, 453, 161, '<p>救助过程简介2</p>', '2022-03-12 07:42:51'),
	(3, '救助标题3', 'http://localhost:8080/liulangcongwuguanli/upload/1647072606102.jpeg', 290, 11, 129, '<p>救助过程简介3</p>', '2022-03-12 07:42:51'),
	(4, '救助标题4', 'http://localhost:8080/liulangcongwuguanli/upload/1647072598846.jpeg', 331, 47, 317, '<p>救助过程简介4</p>', '2022-03-12 07:42:51'),
	(5, '救助标题5', 'http://localhost:8080/liulangcongwuguanli/upload/1647072591236.jpeg', 240, 26, 135, '<p>救助过程简介5</p>', '2022-03-12 07:42:51');

DROP TABLE IF EXISTS `liulangdongwujiuzhu_collection`;
CREATE TABLE IF NOT EXISTS `liulangdongwujiuzhu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liulangdongwujiuzhu_id` int DEFAULT NULL COMMENT '流浪动物救助',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liulangdongwujiuzhu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='流浪动物救助收藏';

DELETE FROM `liulangdongwujiuzhu_collection`;
INSERT INTO `liulangdongwujiuzhu_collection` (`id`, `liulangdongwujiuzhu_id`, `yonghu_id`, `liulangdongwujiuzhu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 2, 1, '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(2, 2, 3, 1, '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(4, 4, 2, 1, '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(5, 5, 2, 1, '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(6, 5, 1, 2, '2022-03-12 08:31:33', '2022-03-12 08:31:33'),
	(7, 1, 1, 2, '2024-05-14 07:35:58', '2024-05-14 07:35:58'),
	(8, 1, 1, 1, '2024-05-14 07:35:59', '2024-05-14 07:35:59');

DROP TABLE IF EXISTS `liulangdongwujiuzhu_liuyan`;
CREATE TABLE IF NOT EXISTS `liulangdongwujiuzhu_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `liulangdongwujiuzhu_id` int DEFAULT NULL COMMENT '流浪动物救助',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liulangdongwujiuzhu_liuyan_text` text COMMENT '留言内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='流浪动物救助留言';

DELETE FROM `liulangdongwujiuzhu_liuyan`;
INSERT INTO `liulangdongwujiuzhu_liuyan` (`id`, `liulangdongwujiuzhu_id`, `yonghu_id`, `liulangdongwujiuzhu_liuyan_text`, `reply_text`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '回复信息1', '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(2, 2, 3, '留言内容2', '回复信息2', '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(3, 3, 1, '留言内容3', '回复信息3', '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(4, 4, 1, '留言内容4', '回复信息4', '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(5, 5, 2, '留言内容5', '回复信息5', '2022-03-12 07:42:51', '2022-03-12 07:42:51', '2022-03-12 07:42:51'),
	(6, 5, 1, '厉害厉害', '12122', '2022-03-12 08:31:42', '2022-03-12 08:37:16', '2022-03-12 08:31:42');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int NOT NULL COMMENT '公告类型 Search111',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `news_content`, `create_time`) VALUES
	(1, '公告标题1', 'http://localhost:8080/liulangcongwuguanli/upload/news1.jpg', 1, '公告详情1', '2022-03-12 07:42:51'),
	(2, '公告标题2', 'http://localhost:8080/liulangcongwuguanli/upload/news2.jpg', 2, '公告详情2', '2022-03-12 07:42:51'),
	(3, '公告标题3', 'http://localhost:8080/liulangcongwuguanli/upload/news3.jpg', 1, '公告详情3', '2022-03-12 07:42:51'),
	(4, '公告标题4', 'http://localhost:8080/liulangcongwuguanli/upload/news4.jpg', 2, '公告详情4', '2022-03-12 07:42:51'),
	(5, '公告标题5', 'http://localhost:8080/liulangcongwuguanli/upload/news5.jpg', 2, '公告详情5', '2022-03-12 07:42:51');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'yl8erly7opahui9sorz4ina5ftcmjtry', '2022-03-12 07:55:52', '2024-05-14 08:34:04'),
	(2, 1, 'a1', 'yonghu', '用户', 'n7sinvo9eber0yin5e5mrn34f63dcrbn', '2022-03-12 08:15:20', '2024-05-14 08:35:36');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/liulangcongwuguanli/upload/yonghu1.jpg', 2, '1@qq.com', 54635.25, '2022-03-12 07:42:51'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/liulangcongwuguanli/upload/yonghu2.jpg', 2, '2@qq.com', 27.93, '2022-03-12 07:42:51'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/liulangcongwuguanli/upload/yonghu3.jpg', 2, '3@qq.com', 859.04, '2022-03-12 07:42:51');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
