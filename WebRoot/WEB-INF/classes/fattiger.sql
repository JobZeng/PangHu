/*
Navicat MySQL Data Transfer

Source Server         : FatTiger
Source Server Version : 50096
Source Host           : localhost:3306
Source Database       : fattiger

Target Server Type    : MYSQL
Target Server Version : 50096
File Encoding         : 65001

Date: 2018-12-12 13:13:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(11) NOT NULL auto_increment,
  `shName` varchar(255) default NULL,
  `diqu` varchar(255) default NULL,
  `addressName` varchar(255) default NULL,
  `guHua` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `userId` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FKBB979BF4E374451C` (`userId`),
  CONSTRAINT `FKBB979BF4E374451C` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '1', '1', '1', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for commodity
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `imgUrl` varchar(255) default NULL,
  `canshuUrl` varchar(255) default NULL,
  `yuanjia` float default NULL,
  `xianjia` float default NULL,
  `yunfei` float default NULL,
  `miaoshu` longtext,
  `address` varchar(255) default NULL,
  `zhenshiname` varchar(255) default NULL,
  `oldOrNew` tinyint(1) default NULL,
  `date` datetime default NULL,
  `phone` varchar(255) default NULL,
  `lanMuId` int(11) default NULL,
  `userId` int(11) default NULL,
  `state` tinyint(1) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK1EDE370D903AE532` (`lanMuId`),
  KEY `FK1EDE370DE374451C` (`userId`),
  CONSTRAINT `FK1EDE370D903AE532` FOREIGN KEY (`lanMuId`) REFERENCES `lanmu` (`id`),
  CONSTRAINT `FK1EDE370DE374451C` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', 'IPhone8plus 64G', 'iPhone8plus.jpg', 'iPhone8plus.jpg', '5599', '4000', '10', '自用的，但是感觉有点大，还是习惯4.7的，全部原装，功能完好，有轻微划痕和磕碰，三网无锁机，充电次数百次以内，特价出', '山东青岛 平度市', '流星的温度11', '0', '2018-11-05 13:53:35', '13059785465', '2', '1', '1');
INSERT INTO `commodity` VALUES ('2', 'IPhonex 64G', 'iPhoneX.jpg', 'iPhoneX.jpg', '6999', '4000', '0', '国行正品，功能一切正常，无拆修，无暗病，九五新。有意私聊，可以上门自提！！！', '江苏苏州 相城区', 'xm67288972', '0', '2018-11-05 13:56:14', '158164856950', '2', '1', '1');
INSERT INTO `commodity` VALUES ('3', 'vivo NEX 8GB+128GB', 'vivoNEX.jpg', 'vivoNEX.jpg', '4498', '4000', '20', '星钻黑 移动联通电信全网通4G手机 双卡双待。手机京东买自用，一个月，打电话打了3次，主要玩吃鸡，感觉不喜欢谁要来验机子，只支持同城，外地勿扰我嫌麻烦。需要私聊	', '陕西咸阳 渭城区', '扬小逾', '0', '2018-11-05 13:59:01', '13416897521', '2', '1', '1');
INSERT INTO `commodity` VALUES ('4', '三星s9国行4+128', 'sanxingS9.jpg', 'sanxingS9.jpg', '5199', '4000', '20', '5.1日南京苏宁易购购入，成色小视频可以看出，连边膜都没撕，本人使用电子设备特别保养，一直戴套，无任何划痕，磕碰。有发票，还是喜欢苹果，出！爽快的送个原装的三星dex拓展坞与无线座充。', '安徽芜湖 镜湖区', 'dazhikanong', '0', '2018-11-05 14:02:05', '18945387626', '2', '1', '1');
INSERT INTO `commodity` VALUES ('5', 'ipad air2 64G', 'iPadAir2.jpg', 'iPadAir2.jpg', '4999', '2300', '10', 'wifi版，一共用了不到五次，几乎全新，本地当面交易			', '江苏苏州 新区', 'fabor_2018', '0', '2018-11-05 14:04:37', '12658984536', '3', '1', '1');
INSERT INTO `commodity` VALUES ('6', 'iPad mini2 16G', 'iPadmini2.jpg', 'iPadmini2.jpg', '2299', '1200', '10', '宝贝是我去年5月份在京东买的 无拆无修无暗病，本人偶尔拿来看看电影玩玩游戏 现在闲置着出售掉 买就随带钢化膜和外壳送 全套产品都在 包充电器壳子发票该有都有 要的速度与我联系！打酱油和记者勿扰 谢谢合作！', '云南昆明 官渡区', '陈杰荣5555', '0', '2018-11-05 22:13:26', '16895436846', '3', '1', '1');
INSERT INTO `commodity` VALUES ('7', '联想A3000平板电脑', 'LenovoA3000.jpg', 'LenovoA3000.jpg', '1200', '320', '15', '联想A3000平板电脑手机九成新低价出售！双卡双待，当平板看视频，当手机打电话都没问题，一千多买来的，没怎么用闲置在家，现便宜转，送平板皮套。', '江西景德镇 珠山区', 'thegirl00', '0', '2018-11-05 22:17:29', '14615896489', '3', '1', '1');
INSERT INTO `commodity` VALUES ('8', 'iPad2 16G ', 'iPad2.jpg', 'iPad2.jpg', '2988', '1000', '10', '12年朋友送的生日礼物 米有任何毛病 米有任何划痕 基本很仔细用的 而且用的很少 小票儿包装充电器都齐全 如果你买的话我还有几个漂亮的壳壳儿送你哦', '北京北京 朝阳区', '薯条不蘸酱', '0', '2018-11-05 22:22:24', '13649785632', '3', '1', '1');
INSERT INTO `commodity` VALUES ('9', '高级别康泰时rx旗舰相机', 'kangtaishi.jpg', 'kangtaishi.jpg', '6899', '3480', '10', '经测试相机功能全好 没有暗病 闪光灯也ok 镜头很新 镀膜良好 调焦光圈顺滑 珍藏 实用佳品 顺风到付 感兴趣的联系我吧', '河南郑州 金水区', '今晨676767', '0', '2018-11-05 22:27:11', '15689763546', '4', '1', '1');
INSERT INTO `commodity` VALUES ('10', 'macromax AZS 相机', 'macromax.jpg', 'macromax.jpg', '1588', '388', '20', '感兴趣的话给我留言吧！', '上海上海 闵行区', 'li2028785', '0', '2018-11-05 23:01:06', '18636436975', '4', '1', '1');
INSERT INTO `commodity` VALUES ('11', 'Rolleicord 禄来双反 V型', 'rolleicord.jpg', 'rolleicord.jpg', '7600', '3500', '15', '机身边缘有些掉漆，皮套有一侧脱线，其它都很好，镜片完美，快门精准，光圈流畅，原厂镜头盖。原厂近摄镜，带原厂塑料盒原厂遮光罩（前口略有脱漆），带原厂红色，绿色滤镜，带原厂皮盒。几十年的老货了，成色自己看图。同城优先，不包邮', '上海上海 静安区', 'rodge553553', '0', '2018-11-05 23:04:43', '154189761364', '4', '1', '1');
INSERT INTO `commodity` VALUES ('12', '索尼微单9成新', 'suoni.jpg', 'suoni.jpg', '2800', '2000', '0', '2000包邮哦', '北京 朝阳区', 'zhy_xc', '0', '2018-11-05 23:08:50', '165115894369', '4', '1', '1');
INSERT INTO `commodity` VALUES ('13', '小米手环二手', 'mihand.jpg', 'mihand.jpg', '129', '98', '10', '兼容平台: ANDROID MIUI iOS功能: 智能提醒 睡眠监测 计步 防水适用对象: android平台 苹果iOS平台无线距离: 5m及以下品牌: Xiaomi/小米', '北京', 'wfk2022612563', '0', '2018-11-06 21:39:41', '15978654693', '6', '1', '1');
INSERT INTO `commodity` VALUES ('14', 'BIDITOO FIT3超级防水手环', 'FIT3.jpg', 'FIT3.jpg', '159', '99', '10', '兼容平台: ANDROID功能: 心率监测 智能提醒 睡眠监测 计步 遥控自拍 防水颜色分类: 黑色适用对象: android平台 苹果iOS平台无线距离: 10m及以上品牌: 白迪通', '广东广州', 'huanghongjia1992', '0', '2018-11-06 21:43:03', '19413846976', '6', '1', '1');
INSERT INTO `commodity` VALUES ('15', '99新TicWatch2悦动智能手表', 'ticwatch.jpg', 'ticwatch.jpg', '899', '539', '15', '品牌: Ticwatch型号: Ticwatch表系列: 黑色 手表分类: 成人手表采购地: 中国大陆通讯类型: 不可插卡', '广东深圳', '亚马逊09', '0', '2018-11-06 21:46:27', '164189715689', '7', '1', '1');
INSERT INTO `commodity` VALUES ('16', '二手华为智能手环B2', 'huaweiB2.jpg', 'huaweiB2.jpg', '299', '220', '10', '品牌: Huawei/华为品名: 华为B2功能: 蓝牙通话 计步颜色分类: 黑色 桔色', '江西赣州', '不喝八宝粥', '0', '2018-11-06 21:53:59', '15678943685', '6', '1', '1');
INSERT INTO `commodity` VALUES ('17', '非全新AMAZFITCor米动手环', 'AMAZFITCor.jpg', 'AMAZFITCor.jpg', '299', '230', '10', '小米旗下华米amazfit cor手环，5月10日购于小米之家，仅使用10次左右，无任何划痕或损坏，所有功能均可正常使用，原价299。', '河南郑州', 'sardaukarmars', '0', '2018-11-06 21:58:39', '17516364689', '6', '1', '1');
INSERT INTO `commodity` VALUES ('22', '二手三星Gear S3智能手表', 'gearS3.jpg', 'gearS3.jpg', '1999', '1280', '20', '品牌: Samsung/三星型号: S3表系列: 国行先锋黑95新 国行经典银95新 国行先锋黑9新 国行经典银99新 国行先锋黑99新 美版先锋黑95新 美版先锋黑99新手表分类: 运动手表采购地: 中国大陆通讯类型: 不可插卡', '四川成都', '天歌boss', '0', '2018-11-06 22:03:25', '15418963469', '7', '1', '1');
INSERT INTO `commodity` VALUES ('23', '二手华为手表WATCH 2 4G/蓝牙版/pro ', 'huaweiwatch2.jpg', 'huaweiwatch2.jpg', '999', '799', '15', '品牌: Huawei/华为型号: watch2功能: 防水 遥控自拍 计步 蓝牙通话 社交娱乐 睡眠监测 智能提醒 拍照 心率监测', '江苏苏州', 'ranyuedeqi', '0', '2018-11-06 22:09:46', '15689673569', '7', '1', '1');
INSERT INTO `commodity` VALUES ('24', '二手托罗拉Motorola360智能手表', 'Motorola.jpg', 'Motorola.jpg', '699', '438', '10', '品牌: Motorola/摩托罗拉型号: 360二代功能: 心率监测 智能提醒 睡眠监测 社交娱乐 蓝牙通话 计步 遥控自拍 防水表系列: 黑色（8新））42cm无线距离: 5m(含)-10m(含)表壳材质: 铝合金连接方式: 蓝牙连接兼容平台: ANDROID iOS屏幕尺寸: 1.37英寸屏幕分辨率: 360x360像素存储容量(RAM): 4GB电池容量: 400mAh表盘形状: 圆形采购地: 中国大陆通讯类型: 不可插卡', '河南周口', '萝莉之舞', '0', '2018-11-06 22:12:45', '13689496348', '7', '1', '1');
INSERT INTO `commodity` VALUES ('25', '二手天猫精灵 X1', 'tm.jpg', 'tm.jpg', '499', '299', '10', '在家闲置很久了，八成新，拒绝讲价，拒绝同城交易', '浙江台州', '吾爱西虹市', '0', '2018-11-06 22:20:20', '15896463576', '8', '1', '1');
INSERT INTO `commodity` VALUES ('26', ' 二手小米AI音箱蓝牙音响', 'miAi.jpg', 'miAi.jpg', '299', '199', '10', '由于经常出差，在家很少用，九九成新，很介意讲价，因为已经最低价了', '上海浦东', '华为强中国强', '0', '2018-11-06 22:26:16', '1548976346', '8', '1', '1');

-- ----------------------------
-- Table structure for lanmu
-- ----------------------------
DROP TABLE IF EXISTS `lanmu`;
CREATE TABLE `lanmu` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `shangJiLanMu` varchar(255) default NULL,
  `adminName` varchar(255) default NULL,
  `date` date default NULL,
  `yijilm` varchar(255) default NULL,
  `lanmuId` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK61FAD01903AE532` (`lanmuId`),
  CONSTRAINT `FK61FAD01903AE532` FOREIGN KEY (`lanmuId`) REFERENCES `lanmu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lanmu
-- ----------------------------
INSERT INTO `lanmu` VALUES ('1', '闲置数码', null, 'admin', '2018-11-05', null, null);
INSERT INTO `lanmu` VALUES ('2', '手机', null, 'admin', '2018-11-05', null, '1');
INSERT INTO `lanmu` VALUES ('3', '平板', null, 'admihn', '2018-11-05', null, '1');
INSERT INTO `lanmu` VALUES ('4', '相机', null, 'admin', '2018-11-05', null, '1');
INSERT INTO `lanmu` VALUES ('5', '智能穿戴', null, 'admin', '2018-11-05', null, null);
INSERT INTO `lanmu` VALUES ('6', '手环', null, 'admin', '2018-11-05', null, '5');
INSERT INTO `lanmu` VALUES ('7', '手表', null, 'admin', '2018-11-05', null, '5');
INSERT INTO `lanmu` VALUES ('8', '音箱', '', 'admin', '2018-11-05', '', '5');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL auto_increment,
  `context` longtext,
  `huifuStyle` varchar(255) default NULL,
  `date` date default NULL,
  `userId` int(11) default NULL,
  `commodityId` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK9C2397E740BDBFEA` (`commodityId`),
  KEY `FK9C2397E7E374451C` (`userId`),
  CONSTRAINT `FK9C2397E740BDBFEA` FOREIGN KEY (`commodityId`) REFERENCES `commodity` (`id`),
  CONSTRAINT `FK9C2397E7E374451C` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment,
  `orderId` varchar(255) default NULL,
  `merMoney` float default NULL,
  `zhuangtai` int(11) default NULL,
  `zhifu` varchar(255) default NULL,
  `peisong` varchar(255) default NULL,
  `beizhu` varchar(255) default NULL,
  `kuaidi` varchar(255) default NULL,
  `kuaididanhao` varchar(255) default NULL,
  `createTime` date default NULL,
  `userId` int(11) default NULL,
  `commodityId` int(11) default NULL,
  `addressId` int(11) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK8D444F0540BDBFEA` (`commodityId`),
  KEY `FK8D444F05FB341CF8` (`addressId`),
  KEY `FK8D444F05E374451C` (`userId`),
  CONSTRAINT `FK8D444F0540BDBFEA` FOREIGN KEY (`commodityId`) REFERENCES `commodity` (`id`),
  CONSTRAINT `FK8D444F05E374451C` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK8D444F05FB341CF8` FOREIGN KEY (`addressId`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '201811241700080124637', '4000', '2', '在线支付', null, '顺丰快递', '顺丰', '15978934625', '2018-11-24', '1', '2', '1');
INSERT INTO `orders` VALUES ('2', '201811251713300315530', '309', '0', '在线支付', null, '', null, null, '2018-11-25', '1', '25', null);
INSERT INTO `orders` VALUES ('3', '201811251807410095520', '209', '0', '在线支付', null, '', null, null, '2018-11-25', '1', '26', null);
INSERT INTO `orders` VALUES ('4', '201811281527080445274', '309', '1', '线下支付', null, null, null, null, '2018-11-28', '1', '25', null);
INSERT INTO `orders` VALUES ('5', '201811281843440274863', '448', '1', '线下支付', null, null, null, null, '2018-11-28', '1', '24', null);
INSERT INTO `orders` VALUES ('6', '201811291346320907073', '209', '1', '线下支付', null, null, null, null, '2018-11-29', '1', '26', null);

-- ----------------------------
-- Table structure for tuijian
-- ----------------------------
DROP TABLE IF EXISTS `tuijian`;
CREATE TABLE `tuijian` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `Adminname` varchar(255) default NULL,
  `date` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuijian
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `Admin` tinyint(1) default NULL,
  `createTime` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123', '123', '张三', '13000000000', '0', '2018-11-24');
INSERT INTO `user` VALUES ('2', 'admin', 'admin', 'admin', '00000000000', '1', '2018-11-24');
INSERT INTO `user` VALUES ('3', '456', '456', 'jack', '13057218053', '0', '2018-11-24');
