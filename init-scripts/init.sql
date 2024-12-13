/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50722
Source Host           : 127.0.0.1:3306
Source Database       : hotel

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2024-12-13 16:54:18
*/
SET NAMES utf8mb4;

-- ----------------------------
-- Table structure for `bed_type`
-- ----------------------------
DROP TABLE IF EXISTS `bed_type`;
CREATE TABLE `bed_type` (
  `id` varchar(255) NOT NULL COMMENT '床的类型id',
  `name` varchar(255) DEFAULT NULL,
  `specification` varchar(255) DEFAULT NULL COMMENT '规格',
  `max_load` int(11) DEFAULT NULL COMMENT '最大容量单位(人)',
  `hardness` varchar(255) DEFAULT NULL COMMENT '硬度(0:超软,1:偏软,2:适中,3:偏硬,4:硬',
  `is_deleted` int(11) DEFAULT '0',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `hotel_id` varchar(255) DEFAULT NULL COMMENT '酒店id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of bed_type
-- ----------------------------
INSERT INTO `bed_type` VALUES ('1463782587402104833', '单人床', '1.5m*2m', '2', '2', '0', '2', '2021-11-25 16:12:19', '2', '2022-04-04 12:11:24', '1');
INSERT INTO `bed_type` VALUES ('1463783220809097218', '双人床', '2m*2.2m', '2', '2', '0', '2', '2021-11-25 16:14:50', '2', '2021-11-25 16:15:44', '1');
INSERT INTO `bed_type` VALUES ('1463783378351349762', '加长大床', '1.8m*2.5m', '2', '2', '0', '2', '2021-11-25 16:15:28', '2', '2021-11-25 16:15:51', '1');
INSERT INTO `bed_type` VALUES ('1463784134370451458', '大床', '1.8m*2m', '2', '2', '0', '2', '2021-11-25 16:18:28', null, null, '1');
INSERT INTO `bed_type` VALUES ('1463784371470262273', '硬床', '1.8m*2m', '2', '4', '0', '2', '2021-11-25 16:19:25', null, null, '1');
INSERT INTO `bed_type` VALUES ('1463784475451252738', '软床', '1.8m*2m', '2', '0', '0', '2', '2021-11-25 16:19:49', null, null, '1');
INSERT INTO `bed_type` VALUES ('1463785200809992194', '婴儿床', '0.7m*1m', '1', '2', '1', '2', '2021-11-25 16:22:42', null, null, '1');
INSERT INTO `bed_type` VALUES ('1510832582558785537', 'lbz床', '1.5*8.3', '3', '0', '1', '2', '2022-04-04 12:12:12', null, null, '1');
INSERT INTO `bed_type` VALUES ('1512337849993699330', '李秉臻的练功房', '2222', '1', '1', '1', '2', '2022-04-08 15:53:36', null, null, '1');
INSERT INTO `bed_type` VALUES ('1514825693559549954', '大床', '2m*2.5m', '2', '2', '0', '1514824727326126081', '2022-04-14 03:58:09', null, null, '1514824528872632321');
INSERT INTO `bed_type` VALUES ('1514830093904605186', '双层床', '1.2m*0.9m', '2', '4', '0', '1514824727326126081', '2022-04-14 23:46:15', null, null, '1514824528872632321');
INSERT INTO `bed_type` VALUES ('1537836053241589761', '超软大床', '2m*2.5m', '2', '0', '1', '2', '2022-06-11 03:31:02', null, null, '1');

-- ----------------------------
-- Table structure for `collection`
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `id` varchar(255) NOT NULL COMMENT '主键',
  `hotel_id` varchar(255) DEFAULT NULL COMMENT '酒店id',
  `uid` varchar(255) DEFAULT NULL COMMENT '用户id',
  `status` int(11) DEFAULT '1' COMMENT '是否收藏(0:否,1:是)',
  `is_deleted` int(11) DEFAULT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('1534162034688598018', '1517750987140382721', '10086', '1', null, null, null, null, null);
INSERT INTO `collection` VALUES ('1534162070747029506', '1', '10086', '1', null, null, null, null, null);
INSERT INTO `collection` VALUES ('1733001664525225986', '1', '1515667345886957569', '0', null, null, null, null, null);
INSERT INTO `collection` VALUES ('1734414488048685057', '1', '1', '1', null, null, null, null, null);

-- ----------------------------
-- Table structure for `dept`
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` varchar(255) NOT NULL COMMENT '部门id',
  `name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `p_id` varchar(255) DEFAULT '0',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `status` varchar(255) DEFAULT '1' COMMENT '状态:0,停用,1正常',
  `role` varchar(255) DEFAULT NULL COMMENT '部门角色',
  `is_deleted` int(11) DEFAULT '0',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '管理员', '0', null, '1', 'admin', '0', '1', null, '1', '2021-11-04 10:18:02');
INSERT INTO `dept` VALUES ('10', '普通成员', '0', null, '1', 'member', '0', null, null, null, null);
INSERT INTO `dept` VALUES ('2', '海洋王国国际度假酒店', '0', null, '1', 'hotel_admin', '0', '1', null, '1', '2024-12-11 17:56:05');
INSERT INTO `dept` VALUES ('3', '海洋王国国际度假酒店-前台', '2', null, '1', 'hotel_member', '0', '1', null, '1', '2024-12-11 17:56:17');
INSERT INTO `dept` VALUES ('4', '海洋王国国际度假酒店-维修部', '2', null, '1', 'hotel_member', '0', '1', null, '1', '2024-12-11 17:56:23');

-- ----------------------------
-- Table structure for `discounts`
-- ----------------------------
DROP TABLE IF EXISTS `discounts`;
CREATE TABLE `discounts` (
  `id` varchar(255) NOT NULL COMMENT '折扣id',
  `name` varchar(255) DEFAULT NULL COMMENT '折扣名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `type` int(11) DEFAULT NULL COMMENT '折扣类型(0:全局个人折扣;1:酒店内个人折扣;)',
  `discounts_type` int(11) DEFAULT NULL COMMENT '折扣方式(0:立减;1:折扣)',
  `discounts` double(11,2) DEFAULT NULL COMMENT '折扣幅度',
  `effect_type` int(11) DEFAULT NULL COMMENT '生效条件类型(0:满足xx天,1:满减;2:无门槛)',
  `effect_condition` double(11,2) DEFAULT NULL COMMENT '生效条件(天数/钱数)',
  `exclusive_type` int(11) DEFAULT NULL COMMENT '互斥性(0:不互斥;1:与所有优惠券互斥;2与指定优惠券互斥)',
  `exclusive_range` varchar(255) DEFAULT NULL COMMENT '互斥范围',
  `validity_time` datetime DEFAULT NULL COMMENT '有效期',
  `hotel_id` varchar(255) DEFAULT NULL COMMENT '酒店id',
  `is_deleted` int(11) DEFAULT '0',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of discounts
-- ----------------------------
INSERT INTO `discounts` VALUES ('1729804472058589186', '满100减50', '满100减50', '1', '0', '50.00', '1', '100.00', '0', null, '2024-12-30 18:12:32', '1', '0', '1514824727326126081', '2023-11-29 18:08:19', '1514824727326126081', '2023-11-29 18:12:43');
INSERT INTO `discounts` VALUES ('1734832997811515393', '满2天减10', '满2天减10', '1', '0', '10.00', '0', '2.00', '0', null, '2024-12-16 00:00:00', '1', '0', '1514824727326126081', '2023-12-13 15:09:53', '1514824727326126081', '2023-11-29 18:12:43');

-- ----------------------------
-- Table structure for `hotel`
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `id` varchar(255) NOT NULL COMMENT '酒店id',
  `name` varchar(255) DEFAULT NULL COMMENT '酒店名称',
  `dept_id` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL COMMENT '酒店地址',
  `parking_lot` varchar(255) DEFAULT NULL COMMENT '酒店停车场',
  `longitude` varchar(255) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(255) DEFAULT NULL COMMENT '纬度',
  `introduce` longtext,
  `facilities` longtext COMMENT '设施',
  `other_policy` longtext COMMENT '其他政策',
  `sort` int(11) DEFAULT '500',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面',
  `badge` varchar(255) DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES ('1', '海洋王国国际度假酒店', '2', '广东省', '广州市', '广东省广州市大学城北(地铁站)', '地上停车场', '110.346828', '21.268933', '<p style=\"text-align: left; line-height: 2;\"><strong>OneOneTwo国际度假酒店拥有着绿水青山的地理环境</strong></p>\n<p style=\"text-align: left; line-height: 2;\">拥有着自行车、摩托车和小车车位</p>\n<p style=\"text-align: left; line-height: 2;\">价值几十万的电车带你游遍校园</p>\n<p style=\"text-align: left; line-height: 2;\">超市、饭堂、自习室一应俱全</p>\n<p style=\"text-align: left; line-height: 2;\">独栋独揽一区，清净无打扰</p>\n<p style=\"text-align: left; line-height: 2;\"><strong><span style=\"color: #ff0000;\">你还等什么？快来抢先入住吧！！！</span></strong></p>', '<p style=\"text-align: left;\">? 停车场</p>\n<p style=\"text-align: left;\"><strong>有<span style=\"text-decoration: underline;\">免费</span>停车场</strong></p>\n<p style=\"text-align: left; padding-left: 40px;\">酒店附近提供私人停车场,无需预订</p>\n<p style=\"text-align: left; padding-left: 40px;\">步行约100-200米到达酒店大堂</p>\n<p style=\"text-align: left; padding-left: 40px;\">共60个车位(车位信息仅供参考,具体以实际为准)</p>\n<p style=\"text-align: left;\"><strong>无充电车位</strong></p>\n<p style=\"text-align: left;\">&nbsp;</p>\n<p style=\"text-align: left;\">⛲ 网络</p>\n<p style=\"text-align: left;\">公用区WIFI免费</p>\n<p style=\"text-align: left;\">&nbsp;</p>\n<p style=\"text-align: left;\">? 淋浴设施</p>\n<p style=\"text-align: left;\">有花洒 | 24小时热水直供 | 一次性洗浴用具</p>', '<p style=\"text-align: left;\">⏰ &nbsp;入离时间</p>\n<p style=\"text-align: left;\">入住时间: 14:00以后&nbsp;&nbsp; &nbsp; &nbsp;离店时间:12:00以前</p>\n<p style=\"text-align: left;\">&nbsp;</p>\n<p style=\"text-align: left;\">? 儿童及加床</p>\n<p style=\"text-align: left;\">酒店允许携带儿童入住。</p>\n<p style=\"text-align: left;\">1岁及以上客人按成人收费。</p>\n<p style=\"text-align: left;\"><strong>床铺</strong></p>\n<p style=\"text-align: left;\">每间客房最多容纳1名1岁以下儿童，和成人共用现有床铺。</p>\n<p style=\"text-align: left;\">&nbsp;</p>\n<p style=\"text-align: left;\">? 宠物</p>\n<p style=\"text-align: left;\">不可携带宠物</p>\n<p style=\"text-align: left;\">&nbsp;</p>\n<p style=\"text-align: left;\">? 早餐</p>\n<p style=\"text-align: left;\">酒店不提供早餐</p>\n<p style=\"text-align: left;\">&nbsp;</p>\n<p style=\"text-align: left;\">? 年龄限制</p>\n<p style=\"text-align: left;\">入住办理人需年满18岁</p>', '1', 'http://s5jrdijlc.hn-bkt.clouddn.com/hotel_cover_1702373496665', '年度最受欢迎酒店,五星级酒店', '0', null, null, '1', '2024-12-11 17:55:54');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(255) NOT NULL COMMENT '菜单id',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `p_id` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT '0' COMMENT '显示排序',
  `path` varchar(255) DEFAULT NULL COMMENT '路由地址',
  `visible` varchar(255) DEFAULT '1' COMMENT '是否显示(0:没有,1:显示)',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `level` int(11) DEFAULT NULL COMMENT '等级',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', 'main', '0', '0', '', '1', null, '1', '2021-11-01 15:13:58', '1', '2022-03-18 12:48:30', '0', '1', 'el-icon-house');
INSERT INTO `menu` VALUES ('10', 'menuManage', '9', '0', 'menuManage', '1', null, '1', '2021-11-01 15:13:58', '1', '2021-11-25 11:07:00', '0', '2', 'el-icon-menu');
INSERT INTO `menu` VALUES ('11', 'roomType', '2', '100', 'roomType', '1', null, '1', '2021-11-23 17:05:00', '1', '2022-03-18 12:49:32', '0', '2', 'el-icon-s-grid');
INSERT INTO `menu` VALUES ('12', 'bedType', '2', '100', 'bedType', '1', null, '1', '2021-11-23 17:06:03', '1', '2022-03-18 12:49:39', '0', '2', 'el-icon-moon-night');
INSERT INTO `menu` VALUES ('13', 'discountManage', '2', '100', 'discountManage', '1', null, '1', '2021-11-23 17:07:04', '1', '2022-03-18 12:49:53', '0', '2', 'el-icon-s-marketing');
INSERT INTO `menu` VALUES ('14', 'logManage', '9', '2000', 'logManage', '1', null, '1', '2022-03-30 10:53:06', '1', '2022-04-16 01:01:08', '0', '1', 'el-icon-tickets');
INSERT INTO `menu` VALUES ('2', 'hotelManage', '0', '1000', '', '1', null, '1', '2021-11-01 15:13:58', '1', '2022-03-18 12:48:56', '0', '1', 'el-icon-office-building');
INSERT INTO `menu` VALUES ('3', 'hotel', '2', '0', 'hotel', '1', null, '1', '2021-11-01 15:13:58', '1', '2022-03-18 12:49:08', '0', '2', 'el-icon-tickets');
INSERT INTO `menu` VALUES ('4', 'myHotel', '2', '0', 'myHotel', '1', null, '1', '2021-11-01 15:13:58', '1', '2022-03-18 12:49:18', '0', '2', 'el-icon-school');
INSERT INTO `menu` VALUES ('5', 'roomManage', '2', '1', 'roomManage', '1', null, '1', '2021-11-01 15:13:58', '1', '2022-03-18 12:49:24', '0', '2', 'el-icon-s-home');
INSERT INTO `menu` VALUES ('6', 'department', '0', '100', 'department', '1', null, '1', '2021-11-01 15:13:58', '1', '2022-03-18 12:48:42', '0', '1', 'el-icon-s-check');
INSERT INTO `menu` VALUES ('7', 'userManage', '0', '3000', 'userManage', '1', null, '1', '2021-11-01 15:13:58', '1', '2022-04-16 11:00:50', '0', '1', 'el-icon-s-custom');
INSERT INTO `menu` VALUES ('8', 'orderManage', '0', '2000', 'orderManage', '1', null, '1', '2021-11-01 15:13:58', '1', '2022-03-18 12:50:01', '0', '1', 'el-icon-s-order');
INSERT INTO `menu` VALUES ('9', 'systemManage', '0', '10000', '', '1', null, '1', '2021-11-01 15:13:58', '1', '2022-04-13 20:36:08', '0', '1', 'el-icon-setting');

-- ----------------------------
-- Table structure for `menu_dept`
-- ----------------------------
DROP TABLE IF EXISTS `menu_dept`;
CREATE TABLE `menu_dept` (
  `id` varchar(255) NOT NULL,
  `menu_id` varchar(255) DEFAULT NULL COMMENT '菜单幅id',
  `dept_id` varchar(255) DEFAULT NULL COMMENT '菜单部门id',
  `role` varchar(255) DEFAULT NULL COMMENT '角色',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of menu_dept
-- ----------------------------
INSERT INTO `menu_dept` VALUES ('1463705751263440897', '10', null, 'admin', '1', '2021-11-25 11:07:00', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681121957289986', '1', null, 'admin', '1', '2022-01-08 07:41:08', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681121999233026', '1', null, 'hotel_admin', '1', '2022-01-30 19:08:48', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681122041176066', '1', null, 'hotel_member', '1', '2022-02-07 09:41:23', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681171433299970', '6', null, 'admin', '1', '2022-01-27 16:48:38', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681232514949122', '2', null, 'admin', '1', '2022-02-11 02:52:08', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681232552697858', '2', null, 'hotel_admin', '1', '2022-03-04 07:35:28', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681232594640898', '2', null, 'hotel_member', '1', '2022-02-05 10:47:01', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681283173752833', '3', null, 'admin', '1', '2022-02-26 21:09:14', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681322600210433', '4', null, 'hotel_admin', '1', '2022-02-21 08:34:28', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681349569585153', '5', null, 'hotel_admin', '1', '2022-03-14 22:54:49', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681349611528193', '5', null, 'hotel_member', '1', '2022-02-19 00:16:31', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681382599729154', '11', null, 'hotel_admin', '1', '2022-01-14 03:41:38', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681413528526849', '12', null, 'hotel_admin', '1', '2022-02-08 08:00:45', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681473112809473', '13', null, 'hotel_admin', '1', '2022-02-15 02:14:33', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681505555750913', '8', null, 'admin', '1', '2022-01-15 08:18:32', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1504681505597693953', '8', null, 'hotel_admin', '1', '2022-02-22 18:43:39', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1514220892555612161', '9', null, 'admin', '1', '2022-04-13 20:36:08', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1514220892593360898', '9', null, 'hotel_admin', '1', '2022-04-13 20:36:08', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1514220892635303938', '9', null, 'hotel_member', '1', '2022-04-13 20:36:08', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1515012355027652610', '14', null, 'hotel_admin', '1', '2022-04-16 01:01:08', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1515012355065401345', '14', null, 'admin', '1', '2022-04-16 01:01:08', null, null, '0');
INSERT INTO `menu_dept` VALUES ('1515163274239299586', '7', null, 'admin', '1', '2022-04-16 11:00:50', null, null, '0');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL,
  `hotel_id` varchar(255) DEFAULT NULL COMMENT '酒店id',
  `room_id` varchar(255) DEFAULT NULL COMMENT '房间id',
  `room_name` varchar(255) DEFAULT NULL COMMENT '房间名',
  `tenant_name` varchar(255) DEFAULT NULL COMMENT '租客姓名',
  `id_card` varchar(255) DEFAULT NULL COMMENT '身份证',
  `phone` varchar(255) DEFAULT NULL COMMENT '租客电话',
  `comment_id` varchar(255) DEFAULT NULL COMMENT '评论id',
  `room_type` varchar(255) DEFAULT NULL COMMENT '房间类型',
  `days` int(11) DEFAULT NULL COMMENT '天数',
  `discount` varchar(255) DEFAULT NULL COMMENT '折扣类型',
  `pay` varchar(255) DEFAULT NULL COMMENT '原价',
  `last_pay` varchar(255) DEFAULT NULL COMMENT '实付价格',
  `check_in_time` datetime DEFAULT NULL COMMENT '预计入住时间',
  `check_out_time` datetime DEFAULT NULL COMMENT '实际退房时间',
  `estimated_check_in` datetime DEFAULT NULL,
  `estimated_check_out` datetime DEFAULT NULL COMMENT '预计退房时间',
  `status` varchar(255) DEFAULT '0' COMMENT '状态:0为未支付,1为已支付,2为已关闭,3入住中,4已完成',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `province` varchar(255) DEFAULT NULL COMMENT '省份',
  `way` int(11) DEFAULT NULL COMMENT '方式(1到店,2网单)',
  `pay_way` int(11) DEFAULT NULL COMMENT '支付方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1734743619311435777', '1', '1', '301', '张三', '12324', '13800138000', null, '1463891142348148737', '8', null, '1424.0', '1424.0', '2023-12-13 09:14:43', '2023-12-13 09:14:51', '2023-12-13 14:00:00', '2023-12-21 14:00:00', '4', '1462682129010855938', '2023-12-13 09:14:43', '1462682129010855938', '2023-12-13 09:14:51', '0', '北京市', null, null);
INSERT INTO `orders` VALUES ('1734745382722666497', '1', '1', '301', '张三', '12324', '13800138000', null, '1463891142348148737', '8', null, '1424.0', '1424.0', '2023-12-13 09:21:44', '2023-12-13 14:15:40', '2023-12-13 14:00:00', '2023-12-21 14:00:00', '4', '1462682129010855938', '2023-12-13 09:21:44', '1462682129010855938', '2023-12-13 14:15:40', '0', '上海市', null, null);
INSERT INTO `orders` VALUES ('1734818529949921281', '1', '1', '301', '张三', '12324', '13800138000', null, '1463891142348148737', '4', null, '712.0', '712.0', '2023-12-13 14:12:23', '2023-12-13 14:14:00', '2023-12-13 14:00:00', '2023-12-17 14:00:00', '4', '1462682129010855938', '2023-12-13 14:12:24', '1462682129010855938', '2023-12-13 14:14:00', '0', '天津市', null, null);
INSERT INTO `orders` VALUES ('1734819409419972610', '1', '1000000', '202', '张三', '12324', '13800138000', null, '1463890996549947394', '2', null, '476.0', '476.0', '2023-12-13 14:15:53', '2023-12-13 14:16:40', '2023-12-13 14:00:00', '2023-12-15 14:00:00', '4', '1462682129010855938', '2023-12-13 14:15:53', '1462682129010855938', '2023-12-13 14:16:40', '0', '北京市', null, null);
INSERT INTO `orders` VALUES ('1734819643831234562', '1', '10000002', '203', '张三', '12324', '13800138000', null, '1463764265293885441', '1', null, '132.0', '132.0', '2023-12-13 14:16:49', null, '2023-12-13 14:00:00', '2023-12-14 14:00:00', '3', '1462682129010855938', '2023-12-13 14:16:49', null, null, '0', '北京市', null, null);
INSERT INTO `orders` VALUES ('1734833177046708225', '1', '1000000', '202', '张三', '12324', '13800138000', null, '1463890996549947394', '2', null, '476.0', '476.0', '2023-12-13 15:10:36', null, '2023-12-13 14:00:00', '2023-12-15 14:00:00', '3', '2', '2023-12-13 15:10:36', null, null, '0', '北京市', null, null);
INSERT INTO `orders` VALUES ('1739115512818778113', '1', '10000003', '204', '张三', '12324', '13800138000', null, '1463764265293885441', '0', null, '264.0', '304.0', '2023-12-25 10:47:04', '2023-12-27 14:05:44', '2023-12-25 14:00:00', '2023-12-27 14:00:00', '4', '2', '2023-12-25 10:47:04', '2', '2023-12-27 14:05:44', '0', '上海市', null, null);
INSERT INTO `orders` VALUES ('1739177883503403010', '1', '1', '301', '李四', '12324', '13800138000', null, '1463891142348148737', '1', '', '178.0', '178.0', '2023-12-25 14:54:54', '2023-12-25 15:35:13', '2023-12-25 14:00:00', '2023-12-26 14:00:00', '4', '2', '2023-12-25 14:54:54', '2', '2023-12-25 15:35:13', '0', '重庆市', null, null);
INSERT INTO `orders` VALUES ('1739188115579207682', '1', '1', '301', '李四', '243324', '3425435531', null, '1463891142348148737', '1', '', '178.0', '178.0', '2023-12-25 15:35:34', '2023-12-25 15:36:32', '2023-12-25 14:00:00', '2023-12-26 14:00:00', '4', '2', '2023-12-25 15:35:34', '2', '2023-12-25 15:36:32', '0', '上海市', null, null);
INSERT INTO `orders` VALUES ('1739188430810570754', '1', '1', '301', '李四', '431243124', '432143124', null, '1463891142348148737', '1', '', '178.0', '178.0', '2023-12-25 15:36:49', '2023-12-25 15:39:09', '2023-12-25 14:00:00', '2023-12-26 14:00:00', '4', '2', '2023-12-25 15:36:49', '2', '2023-12-25 15:39:09', '0', '上海市', null, null);
INSERT INTO `orders` VALUES ('1739189068407693313', '1', '1', '301', '李四', '34215', '54325235', null, '1463891142348148737', '1', '', '356.0', '356.0', '2023-12-25 15:39:21', '2023-12-27 14:05:41', '2023-12-25 14:00:00', '2023-12-26 14:00:00', '4', '2', '2023-12-25 15:39:21', '2', '2023-12-27 14:05:41', '0', '上海市', null, null);
INSERT INTO `orders` VALUES ('1739890229662109697', '1', '2', '302', '王五', '3434', '23424', null, '1463764265293885441', '1', '1729804472058589186', '132.0', '82.0', '2023-12-27 14:05:31', '2023-12-27 14:05:37', '2023-12-27 14:00:00', '2023-12-28 14:00:00', '4', '2', '2023-12-27 14:05:31', '2', '2023-12-27 14:05:37', '0', '上海市', null, null);
INSERT INTO `orders` VALUES ('1864583507887443969', '1', '10000002', '203', '李四', '123213', '3424234', null, '1463764265293885441', '2', '1729804472058589186,1734832997811515393', '264.0', '204.0', '2024-12-05 16:12:05', null, '2024-12-05 14:00:00', '2024-12-07 14:00:00', '3', '2', '2024-12-05 16:12:05', null, null, '0', '上海市', null, null);

-- ----------------------------
-- Table structure for `order_comment`
-- ----------------------------
DROP TABLE IF EXISTS `order_comment`;
CREATE TABLE `order_comment` (
  `id` varchar(255) NOT NULL,
  `hotel_id` varchar(255) DEFAULT NULL COMMENT '酒店id',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `attachment` varchar(255) DEFAULT NULL COMMENT '附件',
  `likes` int(11) DEFAULT NULL COMMENT '点赞数',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `score` double DEFAULT NULL COMMENT '评分',
  `is_deleted` int(11) DEFAULT '0',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of order_comment
-- ----------------------------
INSERT INTO `order_comment` VALUES ('1526849113105227778', '1', '不错不错,下次继续来!!!', 'http://hotelsystem.top/head_1654609764117', null, null, '4.3', '0', '5', '2022-05-21 16:56:11', null, null);
INSERT INTO `order_comment` VALUES ('1526849523857612802', '1', '单人房居然在电梯正对面,隔音还不好,270°环绕声', 'http://hotelsystem.top/head_1654609809710', null, null, '2.5', '0', '7', '2022-05-18 16:57:49', null, null);
INSERT INTO `order_comment` VALUES ('1526849523857612803', '1', '还挺不错的,前台小姐姐也很礼貌', 'http://hotelsystem.top/head_1654609809710', null, null, '3.8', '0', '3', '2022-05-12 16:57:49', null, null);

-- ----------------------------
-- Table structure for `room`
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` varchar(255) NOT NULL COMMENT '房间id',
  `name` varchar(255) DEFAULT NULL COMMENT '房间名称',
  `type` varchar(255) DEFAULT NULL COMMENT '房间类型',
  `status` int(11) DEFAULT NULL COMMENT '0未用,1已用,2已预订,3暂定,4待消毒',
  `floor` varchar(255) DEFAULT NULL COMMENT '楼层',
  `direction` varchar(255) DEFAULT NULL COMMENT '方向',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `is_deleted` int(11) DEFAULT '0',
  `hotel_id` varchar(255) DEFAULT NULL COMMENT '酒店id',
  `order_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('0', '614', '1463764265293885441', '0', '6', '南', '2', '2023-12-13 09:41:16', null, null, '0', '1', null);
INSERT INTO `room` VALUES ('1', '301', '1463891142348148737', '1', '3', '南', null, null, '2', '2024-12-05 16:11:31', '0', '1', '1734819643831234562');
INSERT INTO `room` VALUES ('1000000', '202', '1463890996549947394', '1', '2', '南', '2', '2022-04-19 19:17:13', '2', '2023-12-13 15:10:36', '0', '1', '1734833177046708225');
INSERT INTO `room` VALUES ('100000001', '613', '1463891142348148737', '0', '6', '南', '2', '2022-04-19 19:20:55', '2', '2022-04-25 09:26:50', '0', '1', null);
INSERT INTO `room` VALUES ('10000002', '203', '1463764265293885441', '1', '2', '南', '2', '2022-04-19 19:55:37', '2', '2024-12-05 16:12:05', '0', '1', '1864583507887443969');
INSERT INTO `room` VALUES ('10000003', '204', '1463764265293885441', '0', '2', '南', '2', '2022-04-19 19:55:37', '2', '2023-12-27 14:05:46', '0', '1', null);
INSERT INTO `room` VALUES ('11', '401', '1463890996549947394', '0', '4', '东南', null, null, '1517765876793790466', '2022-04-24 15:57:53', '0', '1', '1518137132537892865');
INSERT INTO `room` VALUES ('12', '402', '1463890996549947394', '0', '4', '南', null, null, '2', '2022-03-26 10:02:00', '0', '1', null);
INSERT INTO `room` VALUES ('13', '403', '1463890996549947394', '0', '4', '南', null, null, '2', '2022-04-24 21:09:15', '0', '1', null);
INSERT INTO `room` VALUES ('14', '404', '1463764265293885441', '0', '4', '南', null, null, '2', '2022-04-24 09:12:19', '0', '1', null);
INSERT INTO `room` VALUES ('15', '405', '1463764265293885441', '0', '4', '南', null, null, '2', '2022-04-25 08:37:37', '0', '1', null);
INSERT INTO `room` VALUES ('16', '406', '1463764265293885441', '0', '4', '南', null, null, '2', '2022-04-24 21:22:38', '0', '1', null);
INSERT INTO `room` VALUES ('17', '407', '1463891142348148737', '0', '4', '南', null, null, '2', '2022-04-24 23:34:14', '0', '1', null);
INSERT INTO `room` VALUES ('18', '408', '1463891142348148737', '0', '4', '南', null, null, '2', '2022-04-24 23:35:02', '0', '1', null);
INSERT INTO `room` VALUES ('19', '409', '1463891142348148737', '0', '4', '南', null, null, '1506500989933383681', '2022-04-10 15:54:44', '0', '1', null);
INSERT INTO `room` VALUES ('2', '302', '1463764265293885441', '0', '3', '南', null, null, '2', '2023-12-27 14:05:39', '0', '1', null);
INSERT INTO `room` VALUES ('20', '410', '1463890996549947394', '0', '4', '南', null, null, '2', '2022-04-08 15:52:56', '0', '1', null);
INSERT INTO `room` VALUES ('21', '501', '1470613302300102658', '0', '5', '', '', null, '1506500989933383681', '2022-04-15 22:46:41', '0', '1', null);
INSERT INTO `room` VALUES ('22', '502', '1470613302300102658', '0', '5', '', '', null, '2', '2022-03-26 09:15:31', '0', '1', null);
INSERT INTO `room` VALUES ('23', '310', '1470613446756126722', '0', '3', '', '', null, '', null, '0', '1', null);
INSERT INTO `room` VALUES ('24', '503', '1470613302300102658', '0', '5', null, null, null, '2', '2022-04-25 08:38:51', '0', '1', null);
INSERT INTO `room` VALUES ('3', '303', '1463890996549947394', '0', '3', null, null, null, '2', '2022-04-07 14:51:50', '0', '1', null);
INSERT INTO `room` VALUES ('4', '304', '1463890996549947394', '0', '3', null, null, null, '1511183700426006530', '2022-04-05 11:29:19', '0', '1', null);
INSERT INTO `room` VALUES ('5', '305', '1463764265293885441', '0', '3', null, null, null, '2', '2022-04-13 15:15:25', '0', '1', null);
INSERT INTO `room` VALUES ('6', '306', '1463890996549947394', '0', '3', null, null, null, '2', '2022-04-23 16:34:30', '0', '1', null);
INSERT INTO `room` VALUES ('7', '307', '1463891142348148737', '0', '3', null, null, null, null, null, '0', '1', null);
INSERT INTO `room` VALUES ('8', '308', '1463891142348148737', '0', '3', null, null, null, '2', '2022-03-26 09:33:42', '0', '1', null);
INSERT INTO `room` VALUES ('9', '309', '1463891142348148737', '0', '3', null, null, null, '2', '2022-03-26 10:37:35', '0', '1', null);

-- ----------------------------
-- Table structure for `room_meter`
-- ----------------------------
DROP TABLE IF EXISTS `room_meter`;
CREATE TABLE `room_meter` (
  `id` varchar(255) NOT NULL COMMENT '设备id',
  `room_id` varchar(255) NOT NULL COMMENT '房间id',
  `hotel_id` varchar(255) NOT NULL COMMENT '酒店id',
  `type` tinyint(4) NOT NULL COMMENT '设备类型',
  `arrear_type` tinyint(4) NOT NULL COMMENT '通断类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of room_meter
-- ----------------------------
INSERT INTO `room_meter` VALUES ('1', '1000000', '1', '0', '0');
INSERT INTO `room_meter` VALUES ('2', '1000000', '1', '1', '0');
INSERT INTO `room_meter` VALUES ('3', '1000000', '1', '2', '0');
INSERT INTO `room_meter` VALUES ('4', '1000000', '1', '3', '0');

-- ----------------------------
-- Table structure for `room_type`
-- ----------------------------
DROP TABLE IF EXISTS `room_type`;
CREATE TABLE `room_type` (
  `id` varchar(255) NOT NULL COMMENT '房间类型id',
  `name` varchar(255) DEFAULT NULL COMMENT '房间类型名称',
  `hotel_id` varchar(255) DEFAULT NULL COMMENT '酒店副id',
  `bed_type` varchar(255) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL COMMENT '床位',
  `max_load` int(11) DEFAULT NULL COMMENT '最大容量',
  `have_window` int(11) DEFAULT NULL COMMENT '是否有窗(0:没有,1:有)',
  `network` int(11) DEFAULT NULL COMMENT '网络情况(0:没有,1:有)',
  `have_breakfast` int(11) DEFAULT NULL COMMENT '早餐情况((0:没有,1:有))',
  `media` varchar(255) DEFAULT NULL COMMENT '媒体情况',
  `rushroom_supporting` varchar(255) DEFAULT NULL COMMENT '浴室配套',
  `food_related` varchar(255) DEFAULT NULL COMMENT '食品相关配套',
  `other_fee` int(11) DEFAULT NULL COMMENT '其他费用',
  `cover` varchar(255) DEFAULT NULL COMMENT '封面图',
  `fee` double(11,2) DEFAULT NULL COMMENT '费用',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `is_deleted` int(11) DEFAULT '0' COMMENT '是否删除:0没有,1:已删除',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of room_type
-- ----------------------------
INSERT INTO `room_type` VALUES ('1463764265293885441', '单人房', '1', '1463782587402104833', '4', '2', '1', '1', '1', null, null, null, null, null, '132.00', '0', '0', '2', '2021-11-25 14:59:31', '2', '2022-04-24 01:02:58');
INSERT INTO `room_type` VALUES ('1463890996549947394', '双人房', '1', '1463782587402104833', '2', '2', '1', '1', '0', null, null, null, null, null, '238.00', '0', '0', '2', '2021-11-25 23:23:06', '2', '2022-04-24 01:03:23');
INSERT INTO `room_type` VALUES ('1463891142348148737', '豪华大床房', '1', '1463784134370451458', '1', '2', '1', '1', '0', null, null, null, null, null, '178.00', '0', '0', '2', '2021-11-25 23:23:41', '2', '2022-04-24 01:03:29');
INSERT INTO `room_type` VALUES ('1470613302300102658', '总统套房', '1', '1463783378351349762', '3', '6', '1', '1', '1', null, null, null, null, null, '1377.00', '0', '0', '2', '2021-12-14 12:35:09', '2', '2022-04-24 01:03:36');
INSERT INTO `room_type` VALUES ('1470613446756126722', '经济房', '1', '1463782587402104833', '1', '1', '0', '1', '0', null, null, null, null, null, '99.00', '0', '0', '2', '2021-12-14 12:35:43', '2', '2022-04-24 01:03:41');
INSERT INTO `room_type` VALUES ('1506974294247272450', '家庭房', '1', '1463783220809097218,1463782587402104833', '2', '3', '1', '1', '0', null, null, null, null, null, '298.00', '0', '1', '2', '2022-03-24 20:40:45', '2', '2022-03-24 20:41:01');
INSERT INTO `room_type` VALUES ('1510183737420193793', '666', '1', '1463782587402104833', '1', '1', '0', '0', '0', null, null, null, null, null, '111.00', '1', '1', '2', '2022-04-02 17:13:56', null, null);
INSERT INTO `room_type` VALUES ('1514825773867888641', '大床房', '1514824528872632321', '1514825693559549954', '1', '2', '1', '1', '1', null, null, null, null, null, '299.00', '0', '0', '1514824727326126081', '2022-04-17 03:51:44', '1514824727326126081', '2022-06-07 21:21:46');
INSERT INTO `room_type` VALUES ('1514830217871454210', '青年房', '1514824528872632321', '1514830093904605186', '2', '2', '0', '1', '0', null, null, null, null, null, '59.00', '0', '0', '1514824727326126081', '2022-04-15 17:11:29', '1514824727326126081', '2022-06-07 21:21:58');

-- ----------------------------
-- Table structure for `sys_logs`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs` (
  `id` varchar(255) NOT NULL,
  `sketch` text COMMENT '简讯',
  `detail` text COMMENT '详情',
  `type` int(11) DEFAULT NULL COMMENT '（0:普通日志，1:数据修改，2:系统修改，3:出错日志，4:警告日志）',
  `role_level` int(11) DEFAULT NULL COMMENT '日志权限等级（0:仅管理员，1:酒店管理员和0，2:酒店员工和1）',
  `hotel_id` varchar(255) DEFAULT NULL COMMENT '酒店id',
  `is_deleted` int(11) DEFAULT '0',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_params`
-- ----------------------------
DROP TABLE IF EXISTS `sys_params`;
CREATE TABLE `sys_params` (
  `id` varchar(30) NOT NULL COMMENT 'id',
  `value` varchar(255) NOT NULL COMMENT '值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_params
-- ----------------------------
INSERT INTO `sys_params` VALUES ('database_version', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `heads` longtext COMMENT '头像',
  `phone` varchar(20) DEFAULT NULL COMMENT '手机号',
  `dept` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `review_status` int(11) DEFAULT NULL COMMENT '(0未审核,1已通过,2未通过)',
  `is_deleted` int(11) DEFAULT '0',
  `create_by` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `chat_online` varchar(255) DEFAULT NULL COMMENT '在线聊天',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '管理员', 's5jrdijlc.hn-bkt.clouddn.com/head_1702373616843', '10086', '1', '$2a$10$/NiK2dwvA6RiyZVM41czpeHgEDzxtuWrj/Z.H.1ZCGUbDTyGjTFb2', null, '1', '0', null, null, '1', '2023-12-12 17:33:38', null, null);
INSERT INTO `user` VALUES ('1462682129010855938', 'hotel_member', '海洋王国国际度假酒店成员', 's5jrdijlc.hn-bkt.clouddn.com/head_1702373616843', '13012345678', '3', '$2a$10$JpRVn0U4P/ng3/ptS/lpneOz/416tXA993qT72K3vTItdTIJxNTle', null, null, '0', null, '2021-11-22 15:19:30', '1', '2024-12-11 17:56:44', null, null);
INSERT INTO `user` VALUES ('2', 'hotel_admin', '酒店管理', 's5jrdijlc.hn-bkt.clouddn.com/head_1702373616843', '13500097092', '2', '$2a$10$/NiK2dwvA6RiyZVM41czpeHgEDzxtuWrj/Z.H.1ZCGUbDTyGjTFb2', null, '1', '0', null, null, '2', '2024-12-11 15:43:52', null, null);

-- ----------------------------
-- Table structure for `wallet`
-- ----------------------------
DROP TABLE IF EXISTS `wallet`;
CREATE TABLE `wallet` (
  `id` varchar(255) NOT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `balance` double DEFAULT '100000',
  `is_deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of wallet
-- ----------------------------
