/*
Navicat MySQL Data Transfer

Source Server         : my
Source Server Version : 50727
Source Host           : localhost:3306
Source Database       : network

Target Server Type    : MYSQL
Target Server Version : 50727
File Encoding         : 65001

Date: 2019-12-15 21:05:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for affair
-- ----------------------------
DROP TABLE IF EXISTS `affair`;
CREATE TABLE `affair` (
  `aff_id` int(36) DEFAULT NULL,
  `aff_incstate` int(36) DEFAULT NULL,
  `aff_incType` int(36) DEFAULT NULL,
  `aff_uniName` varchar(64) DEFAULT NULL,
  `aff_incTime` datetime(6) DEFAULT NULL,
  `aff_incDes` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='aff_type:\r\n0:待办事项 \r\n1：处理中事项\r\n2：已完成事项\r\n\r\n\r\naff_incType:\r\n0：违处信息 \r\n1：网络攻击\r\n2：恶意软件\r\n3：信息泄露\r\n4：安全威胁';

-- ----------------------------
-- Records of affair
-- ----------------------------
INSERT INTO `affair` VALUES ('1', '2', '0', '国家电网郑州分公司', '2019-05-01 00:00:00.000000', '违处信息已完成事项');
INSERT INTO `affair` VALUES ('2', '0', '0', '中国平安保险股份有限公司', '2019-05-23 00:00:00.000000', '违处信息待办事项');
INSERT INTO `affair` VALUES ('3', '0', '2', '石家庄高新区消防大队', '2019-08-13 00:00:00.000000', '恶意软件待办事项');
INSERT INTO `affair` VALUES ('4', '0', '3', '腾讯控股有限公司', '2019-02-01 00:00:00.000000', '信息泄露待办事项');
INSERT INTO `affair` VALUES ('5', '0', '4', '哈尔滨电气集团有限公司', '2019-01-04 00:00:00.000000', '安全威胁待办事项');
INSERT INTO `affair` VALUES ('6', '1', '0', '成都市金牛区电力分公司', '2019-12-23 00:00:00.000000', '违处信息处理中事项  ');
INSERT INTO `affair` VALUES ('7', '1', '3', '人民电器集团有限公司', '2019-07-13 00:00:00.000000', '信息泄露处理中事项  ');
INSERT INTO `affair` VALUES ('8', '1', '4', '武安市文安钢铁有限公司', '2019-03-03 00:00:00.000000', '安全威胁处理中事项  ');
INSERT INTO `affair` VALUES ('9', '1', '4', '郑州宇通集团有限公司', '2019-09-14 00:00:00.000000', '安全威胁处理中事项  ');
INSERT INTO `affair` VALUES ('10', '1', '2', '中国人寿保险公司', '2019-06-19 00:00:00.000000', '恶意软件处理中事项  ');
INSERT INTO `affair` VALUES ('11', '2', '3', '苏宁控股集团有限公司', '2019-09-23 00:00:00.000000', '信息泄露已完成事项');
INSERT INTO `affair` VALUES ('12', '0', '1', '华为投资控股有限公司', '2019-04-18 00:00:00.000000', '网络攻击待办事项');
INSERT INTO `affair` VALUES ('13', '2', '1', '杭州市高新区水利局', '2019-03-25 00:00:00.000000', '网络攻击已完成事项');
INSERT INTO `affair` VALUES ('14', '2', '2', '富海集团有限公司', '2019-11-13 00:00:00.000000', '恶意软件已完成事项');
INSERT INTO `affair` VALUES ('15', '2', '1', '南宁市兴鸣区环保局', '2019-10-12 00:00:00.000000', '网络攻击已完成事项');
INSERT INTO `affair` VALUES ('16', '0', '1', '国家电网郑州分公司', '2019-04-23 00:00:00.000000', '网络攻击待办事项');
INSERT INTO `affair` VALUES ('17', '1', '2', '国家电网郑州分公司', '2019-08-12 00:00:00.000000', '恶意软件处理中事项');
INSERT INTO `affair` VALUES ('18', '1', '2', '中国平安保险股份有限公司', '2019-01-12 00:00:00.000000', '恶意软件处理中事项');
INSERT INTO `affair` VALUES ('19', '2', '3', '中国平安保险股份有限公司', '2019-08-28 00:00:00.000000', '信息泄露已完成事项');
INSERT INTO `affair` VALUES ('20', '1', '1', '石家庄高新区消防大队', '2019-03-28 00:00:00.000000', '网络攻击处理中事项');
INSERT INTO `affair` VALUES ('21', '2', '4', '石家庄高新区消防大队', '2019-04-18 00:00:00.000000', '安全威胁已完成事项');
INSERT INTO `affair` VALUES ('22', '1', '1', '腾讯控股有限公司', '2019-07-18 00:00:00.000000', '网络攻击处理中事项');
INSERT INTO `affair` VALUES ('23', '2', '2', '腾讯控股有限公司', '2019-05-18 00:00:00.000000', '恶意软件已完成事项');
INSERT INTO `affair` VALUES ('24', '1', '2', '哈尔滨电气集团有限公司', '2019-12-18 00:00:00.000000', '网络攻击已完成事项');
INSERT INTO `affair` VALUES ('25', '2', '3', '哈尔滨电气集团有限公司', '2019-05-08 00:00:00.000000', '信息泄露已完成事项');
INSERT INTO `affair` VALUES ('26', '0', '3', '成都市金牛区电力分公司', '2019-07-18 00:00:00.000000', '信息泄露待办事项');
INSERT INTO `affair` VALUES ('27', '2', '4', '成都市金牛区电力分公司', '2019-07-18 00:00:00.000000', '安全威胁已完成事项');
INSERT INTO `affair` VALUES ('28', '0', '0', '人民电器集团有限公司', '2019-07-18 00:00:00.000000', '违处信息待办事项');
INSERT INTO `affair` VALUES ('29', '2', '2', '人民电器集团有限公司', '2019-07-18 00:00:00.000000', '恶意软件已完成事项');
INSERT INTO `affair` VALUES ('30', '0', '2', '武安市文安钢铁有限公司', '2019-08-18 00:00:00.000000', '恶意软件待办事项');
INSERT INTO `affair` VALUES ('31', '2', '3', '武安市文安钢铁有限公司', '2019-07-18 00:00:00.000000', '信息泄露已完成事项');
INSERT INTO `affair` VALUES ('32', '0', '0', '郑州宇通集团有限公司', '2019-07-18 00:00:00.000000', '违处信息待办事项');
INSERT INTO `affair` VALUES ('33', '2', '1', '郑州宇通集团有限公司', '2019-01-18 00:00:00.000000', '网络攻击已完成事项');
INSERT INTO `affair` VALUES ('34', '0', '4', '中国人寿保险公司', '2019-03-18 00:00:00.000000', '安全威胁待办事项');
INSERT INTO `affair` VALUES ('35', '1', '0', '中国人寿保险公司', '2019-02-18 00:00:00.000000', '违处信息处理中事项');
INSERT INTO `affair` VALUES ('36', '0', '2', '苏宁控股集团有限公司', '2019-07-18 00:00:00.000000', '恶意软件待办事项');
INSERT INTO `affair` VALUES ('37', '1', '4', '苏宁控股集团有限公司', '2019-08-18 00:00:00.000000', '安全威胁处理中事项');
INSERT INTO `affair` VALUES ('38', '1', '3', '华为投资控股有限公司', '2019-09-28 00:00:00.000000', '信息泄露处理中事项');
INSERT INTO `affair` VALUES ('39', '2', '2', '华为投资控股有限公司', '2019-07-18 00:00:00.000000', '恶意软件已完成事项');
INSERT INTO `affair` VALUES ('40', '0', '0', '杭州市高新区水利局', '2019-04-18 00:00:00.000000', '违处信息待办事项');
INSERT INTO `affair` VALUES ('41', '1', '3', '杭州市高新区水利局', '2019-03-28 00:00:00.000000', '信息泄露处理中事项');
INSERT INTO `affair` VALUES ('42', '0', '1', '富海集团有限公司', '2019-12-18 00:00:00.000000', '网络攻击待办事项');
INSERT INTO `affair` VALUES ('43', '1', '4', '富海集团有限公司', '2019-05-18 00:00:00.000000', '安全威胁处理中事项');
INSERT INTO `affair` VALUES ('44', '0', '0', '南宁市兴鸣区环保局', '2019-07-08 00:00:00.000000', '违处信息待办事项');
INSERT INTO `affair` VALUES ('45', '1', '3', '南宁市兴鸣区环保局', '2019-03-18 00:00:00.000000', '信息泄露处理中事项');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `log_id` int(36) NOT NULL AUTO_INCREMENT,
  `user_id` int(36) DEFAULT NULL,
  `user_name` varchar(64) DEFAULT '',
  `log_time` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('7', '17', '杜玉', '2019年12月14日20时25分51秒');
INSERT INTO `log` VALUES ('8', '17', '杜玉', '2019年12月14日20时26分41秒');
INSERT INTO `log` VALUES ('9', '17', '杜玉', '2019年12月14日20时27分27秒');
INSERT INTO `log` VALUES ('10', '17', '杜玉', '2019年12月15日14时25分52秒');
INSERT INTO `log` VALUES ('11', '17', '杜玉', '2019年12月15日14时32分23秒');
INSERT INTO `log` VALUES ('12', '17', '杜玉', '2019年12月15日14时33分52秒');
INSERT INTO `log` VALUES ('13', '17', '杜玉', '2019年12月15日17时46分49秒');
INSERT INTO `log` VALUES ('14', '17', '杜玉', '2019年12月15日17时49分19秒');
INSERT INTO `log` VALUES ('15', '17', '杜玉', '2019年12月15日17时50分22秒');
INSERT INTO `log` VALUES ('16', '17', '杜玉', '2019年12月15日19时59分44秒');
INSERT INTO `log` VALUES ('17', '17', '杜玉', '2019年12月15日20时18分27秒');
INSERT INTO `log` VALUES ('18', '17', '杜玉', '2019年12月15日20时45分38秒');

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit` (
  `unit_id` int(36) NOT NULL AUTO_INCREMENT,
  `unit_name` varchar(36) DEFAULT NULL,
  `unit_address` varchar(36) DEFAULT NULL,
  `unit_type` int(36) DEFAULT NULL,
  `unit_header` varchar(36) DEFAULT NULL,
  `unit_heTele` varchar(11) DEFAULT NULL,
  `unit_InSeAdmin` varchar(36) DEFAULT NULL,
  `unit_AdTele` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`unit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='un_type	\r\n说明：\r\n0：市级单位\r\n1：市级各辖区单位\r\n2：受监管企业单位\r\n3：安全服务单位\r\n4：涉事企业					\r\n';

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('2', '中国平安保险股份有限公司', '广东', '3', '张三加', '18623141231', '王五肃', '13023145631');
INSERT INTO `unit` VALUES ('3', '石家庄高新区消防大队', '河北石家庄', '3', '吴树合', '18623141232', '王曙光', '13023145632');
INSERT INTO `unit` VALUES ('4', '腾讯控股有限公司', '深圳', '2', '马化腾', '18623141233', '吉梁', '13023145633');
INSERT INTO `unit` VALUES ('5', '哈尔滨电气集团有限公司', '哈尔滨', '0', '李航', '18623141234', '秋柯', '13023145634');
INSERT INTO `unit` VALUES ('6', '成都市金牛区电力分公司', '成都', '1', '舒民', '18623141235', '吉杰', '13023145635');
INSERT INTO `unit` VALUES ('7', '人民电器集团有限公司', '浙江', '4', '王敏', '18623141236', '马克', '13023145636');
INSERT INTO `unit` VALUES ('8', '武安市文安钢铁有限公司', '河北武安', '0', '值宣', '18623141237', '赵越', '13023145637');
INSERT INTO `unit` VALUES ('9', '郑州宇通集团有限公司', '河南', '3', '宇田', '18623141238', '张天', '13023145638');
INSERT INTO `unit` VALUES ('10', '中国人寿保险公司', '北京', '2', '李顺', '18623141239', '简旦', '13023145639');
INSERT INTO `unit` VALUES ('11', '苏宁控股集团有限公司', '江苏', '2', '徐天', '18623141240', '李希', '13023145640');
INSERT INTO `unit` VALUES ('12', '华为投资控股有限公司', '广东', '4', '任正非', '18623141241', '蒙晚舟', '13023145641');
INSERT INTO `unit` VALUES ('13', '杭州市高新区水利局', '江苏', '1', '王琦', '18623141242', '刑天', '13023145642');
INSERT INTO `unit` VALUES ('14', '富海集团有限公司', '山东', '4', '丁鸣', '18623141243', '杜玉', '13023145643');
INSERT INTO `unit` VALUES ('15', '南宁市兴鸣区环保局', '广西', '1', '黄林', '18623141244', '林涛', '13023145644');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(36) DEFAULT NULL,
  `user_tele` varchar(50) DEFAULT NULL,
  `user_password` varchar(50) DEFAULT NULL,
  `user_email` varchar(36) DEFAULT NULL,
  `user_wechat` varchar(64) DEFAULT NULL,
  `user_unit` varchar(64) DEFAULT NULL,
  `user_untype` int(2) DEFAULT NULL,
  `user_state` int(2) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='0:市级单位\r\n1:市级各辖区单位\r\n2:受监管企业单位\r\n3:安全服务单位\r\n4:涉事企业';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '张楠', '18637197681', 'D5B43BF6602DD55B3DF02BD4EA9C6A79', '1341@qq.com', '43215', '苏宁控股集团有限公司', '2', '0');
INSERT INTO `user` VALUES ('2', '陈剑云', '19087987990', '123', '0891834@qq.com', 'a135414sga', '南宁市兴鸣区环保局', '1', '0');
INSERT INTO `user` VALUES ('4', '张丰', '12541351451', '123', '1431545@qq.com', 'afdq3132fga', '哈尔滨电气集团有限公司', '0', '1');
INSERT INTO `user` VALUES ('5', '刘子玉', '12341455413', '123', '121341@qq.com', '12431234adf', '南宁市兴鸣区环保局', '1', '0');
INSERT INTO `user` VALUES ('6', '涂杰', '12341234152', '123', 'aert124141@qq.com', '13425sdagq', '郑州宇通集团有限公司', '3', '0');
INSERT INTO `user` VALUES ('7', '袁宇杰', '23412341341', '123', '134513451@qq.com', '3984178fhdsauj', '杭州市高新区水利局', '1', '0');
INSERT INTO `user` VALUES ('8', '周茂武', '12331534145', '123', '123417623781@qq.com', '123434gsf', '石家庄高新区消防大队', '3', '0');
INSERT INTO `user` VALUES ('9', '杨郝', '13413254134', '123', '98317498@qq.com', '132412fsa', '腾讯控股有限公司', '2', '0');
INSERT INTO `user` VALUES ('10', '李亚军', '12312545451', '123', '873491873@qq.com', '124398167289', '中国人寿保险公司', '2', '0');
INSERT INTO `user` VALUES ('11', '李金阳', '14234235143', '123', '78721899@qq.com', '12234114151', '腾讯控股有限公司', '2', '0');
INSERT INTO `user` VALUES ('12', '王松浩', '12341342311', '123', '87971234817@qq.com', '12341341234134', '郑州宇通集团有限公司', '3', '1');
INSERT INTO `user` VALUES ('13', '谢明', '18637197687,12809481256', '2CB406B0A093615020E47E72AA1B9FFB', '7891243751@qq.com', '34566634267', '武安市文安钢铁有限公司', '0', '0');
INSERT INTO `user` VALUES ('14', '李锐化', '12312414231', '792C0514E7A726C703E3694FACE00E2F', '23145@qq.com', 'afda341', '人民电器集团有限公司', '4', '0');
INSERT INTO `user` VALUES ('15', '诸亮', '12323413412', '057CE2761D2EA19FD9E1F9DC57FA4079', '1341@qq.com', '43215', '成都市金牛区电力分公司', '1', '0');
INSERT INTO `user` VALUES ('17', '杜玉', '18637197687', 'CD856976A4CE5D1D52D414724894311B', 'duyu9581@163.com', '1423511', '中国平安保险股份有限公司', '3', '0');
INSERT INTO `user` VALUES ('18', '唐昌华', '13544564567', 'CD856976A4CE5D1D52D4147248931f1Bs', 'duyu9581@163.com', '13425sdagq', '华为投资控股有限公司', '4', '1');
INSERT INTO `user` VALUES ('19', '郑川', '13544564587', 'SD27y414E7A726C703E36948534E00E2F', '23145@qq.com', 'afdq3132fga', '人民电器集团有限公司', '4', '1');
INSERT INTO `user` VALUES ('20', '李健', '14024862854', '123456', '873491873@qq.com', '13425sdagq', '富海集团有限公司', '4', '0');

-- ----------------------------
-- View structure for aff_incstate_number0
-- ----------------------------
DROP VIEW IF EXISTS `aff_incstate_number0`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aff_incstate_number0` AS select `a`.`aff_incType` AS `type`,count(0) AS `num` from (select `network`.`affair`.`aff_incType` AS `aff_incType` from `network`.`affair` where (`network`.`affair`.`aff_incstate` = 0)) `a` group by `a`.`aff_incType` ;

-- ----------------------------
-- View structure for aff_incstate_number1
-- ----------------------------
DROP VIEW IF EXISTS `aff_incstate_number1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aff_incstate_number1` AS select `a`.`aff_incType` AS `type`,count(0) AS `num` from (select `network`.`affair`.`aff_incType` AS `aff_incType` from `network`.`affair` where (`network`.`affair`.`aff_incstate` = 1)) `a` group by `a`.`aff_incType` ;

-- ----------------------------
-- View structure for aff_incstate_number2
-- ----------------------------
DROP VIEW IF EXISTS `aff_incstate_number2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aff_incstate_number2` AS select `a`.`aff_incType` AS `type`,count(0) AS `num` from (select `network`.`affair`.`aff_incType` AS `aff_incType` from `network`.`affair` where (`network`.`affair`.`aff_incstate` = 2)) `a` group by `a`.`aff_incType` ;

-- ----------------------------
-- View structure for arealevel_unit
-- ----------------------------
DROP VIEW IF EXISTS `arealevel_unit`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `arealevel_unit` AS select `unit`.`unit_id` AS `unit_id`,`unit`.`unit_name` AS `unit_name`,`unit`.`unit_address` AS `unit_address`,`unit`.`unit_type` AS `unit_type`,`unit`.`unit_header` AS `unit_header`,`unit`.`unit_heTele` AS `unit_heTele`,`unit`.`unit_InSeAdmin` AS `unit_InSeAdmin`,`unit`.`unit_AdTele` AS `unit_AdTele` from `unit` where (`unit`.`unit_type` = 1) ;

-- ----------------------------
-- View structure for arealevel_user
-- ----------------------------
DROP VIEW IF EXISTS `arealevel_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `arealevel_user` AS select `user`.`user_id` AS `user_id`,`user`.`user_name` AS `user_name`,`user`.`user_tele` AS `user_tele`,`user`.`user_password` AS `user_password`,`user`.`user_email` AS `user_email`,`user`.`user_wechat` AS `user_wechat`,`user`.`user_unit` AS `user_unit`,`user`.`user_untype` AS `user_untype`,`user`.`user_state` AS `user_state` from `user` where (`user`.`user_untype` = 1) ;

-- ----------------------------
-- View structure for citylevel_unit
-- ----------------------------
DROP VIEW IF EXISTS `citylevel_unit`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `citylevel_unit` AS select `unit`.`unit_id` AS `unit_id`,`unit`.`unit_name` AS `unit_name`,`unit`.`unit_address` AS `unit_address`,`unit`.`unit_type` AS `unit_type`,`unit`.`unit_header` AS `unit_header`,`unit`.`unit_heTele` AS `unit_heTele`,`unit`.`unit_InSeAdmin` AS `unit_InSeAdmin`,`unit`.`unit_AdTele` AS `unit_AdTele` from `unit` where (`unit`.`unit_type` = 0) ;

-- ----------------------------
-- View structure for citylevel_user
-- ----------------------------
DROP VIEW IF EXISTS `citylevel_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `citylevel_user` AS select `user`.`user_id` AS `user_id`,`user`.`user_name` AS `user_name`,`user`.`user_tele` AS `user_tele`,`user`.`user_password` AS `user_password`,`user`.`user_email` AS `user_email`,`user`.`user_wechat` AS `user_wechat`,`user`.`user_unit` AS `user_unit`,`user`.`user_untype` AS `user_untype`,`user`.`user_state` AS `user_state` from `user` where (`user`.`user_untype` = 0) ;

-- ----------------------------
-- View structure for deal_affair
-- ----------------------------
DROP VIEW IF EXISTS `deal_affair`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `deal_affair` AS select `affair`.`aff_id` AS `aff_id`,`affair`.`aff_incstate` AS `aff_incstate`,`affair`.`aff_incType` AS `aff_incType`,`affair`.`aff_uniName` AS `aff_uniName`,`affair`.`aff_incTime` AS `aff_incTime`,`affair`.`aff_incDes` AS `aff_incDes` from `affair` where (`affair`.`aff_incstate` = 1) ;

-- ----------------------------
-- View structure for done_affair
-- ----------------------------
DROP VIEW IF EXISTS `done_affair`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `done_affair` AS select `affair`.`aff_id` AS `aff_id`,`affair`.`aff_incstate` AS `aff_incstate`,`affair`.`aff_incType` AS `aff_incType`,`affair`.`aff_uniName` AS `aff_uniName`,`affair`.`aff_incTime` AS `aff_incTime`,`affair`.`aff_incDes` AS `aff_incDes` from `affair` where (`affair`.`aff_incstate` = 2) ;

-- ----------------------------
-- View structure for firmlevel_unit
-- ----------------------------
DROP VIEW IF EXISTS `firmlevel_unit`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `firmlevel_unit` AS select `unit`.`unit_id` AS `unit_id`,`unit`.`unit_name` AS `unit_name`,`unit`.`unit_address` AS `unit_address`,`unit`.`unit_type` AS `unit_type`,`unit`.`unit_header` AS `unit_header`,`unit`.`unit_heTele` AS `unit_heTele`,`unit`.`unit_InSeAdmin` AS `unit_InSeAdmin`,`unit`.`unit_AdTele` AS `unit_AdTele` from `unit` where (`unit`.`unit_type` = 2) ;

-- ----------------------------
-- View structure for firmlevel_user
-- ----------------------------
DROP VIEW IF EXISTS `firmlevel_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `firmlevel_user` AS select `user`.`user_id` AS `user_id`,`user`.`user_name` AS `user_name`,`user`.`user_tele` AS `user_tele`,`user`.`user_password` AS `user_password`,`user`.`user_email` AS `user_email`,`user`.`user_wechat` AS `user_wechat`,`user`.`user_unit` AS `user_unit`,`user`.`user_untype` AS `user_untype`,`user`.`user_state` AS `user_state` from `user` where (`user`.`user_untype` = 2) ;

-- ----------------------------
-- View structure for state_statistics
-- ----------------------------
DROP VIEW IF EXISTS `state_statistics`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `state_statistics` AS select `affair`.`aff_incstate` AS `state`,count(0) AS `num` from `affair` group by `affair`.`aff_incstate` ;

-- ----------------------------
-- View structure for thirdparty_unit
-- ----------------------------
DROP VIEW IF EXISTS `thirdparty_unit`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `thirdparty_unit` AS select `unit`.`unit_id` AS `unit_id`,`unit`.`unit_name` AS `unit_name`,`unit`.`unit_address` AS `unit_address`,`unit`.`unit_type` AS `unit_type`,`unit`.`unit_header` AS `unit_header`,`unit`.`unit_heTele` AS `unit_heTele`,`unit`.`unit_InSeAdmin` AS `unit_InSeAdmin`,`unit`.`unit_AdTele` AS `unit_AdTele` from `unit` where (`unit`.`unit_type` = 3) ;

-- ----------------------------
-- View structure for thirdparty_user
-- ----------------------------
DROP VIEW IF EXISTS `thirdparty_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `thirdparty_user` AS select `user`.`user_id` AS `user_id`,`user`.`user_name` AS `user_name`,`user`.`user_tele` AS `user_tele`,`user`.`user_password` AS `user_password`,`user`.`user_email` AS `user_email`,`user`.`user_wechat` AS `user_wechat`,`user`.`user_unit` AS `user_unit`,`user`.`user_untype` AS `user_untype`,`user`.`user_state` AS `user_state` from `user` where (`user`.`user_untype` = 3) ;

-- ----------------------------
-- View structure for todo_affair
-- ----------------------------
DROP VIEW IF EXISTS `todo_affair`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `todo_affair` AS select `affair`.`aff_id` AS `aff_id`,`affair`.`aff_incstate` AS `aff_incstate`,`affair`.`aff_incType` AS `aff_incType`,`affair`.`aff_uniName` AS `aff_uniName`,`affair`.`aff_incTime` AS `aff_incTime`,`affair`.`aff_incDes` AS `aff_incDes` from `affair` where (`affair`.`aff_incstate` = 0) ;

-- ----------------------------
-- View structure for type_statistics
-- ----------------------------
DROP VIEW IF EXISTS `type_statistics`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `type_statistics` AS select `affair`.`aff_incType` AS `type`,count(0) AS `num` from `affair` group by `affair`.`aff_incType` ;
