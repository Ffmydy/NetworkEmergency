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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='aff_type:\r\n0:�������� \r\n1������������\r\n2�����������\r\n\r\n\r\naff_incType:\r\n0��Υ����Ϣ \r\n1�����繥��\r\n2���������\r\n3����Ϣй¶\r\n4����ȫ��в';

-- ----------------------------
-- Records of affair
-- ----------------------------
INSERT INTO `affair` VALUES ('1', '2', '0', '���ҵ���֣�ݷֹ�˾', '2019-05-01 00:00:00.000000', 'Υ����Ϣ���������');
INSERT INTO `affair` VALUES ('2', '0', '0', '�й�ƽ�����չɷ����޹�˾', '2019-05-23 00:00:00.000000', 'Υ����Ϣ��������');
INSERT INTO `affair` VALUES ('3', '0', '2', 'ʯ��ׯ�������������', '2019-08-13 00:00:00.000000', '���������������');
INSERT INTO `affair` VALUES ('4', '0', '3', '��Ѷ�ع����޹�˾', '2019-02-01 00:00:00.000000', '��Ϣй¶��������');
INSERT INTO `affair` VALUES ('5', '0', '4', '�����������������޹�˾', '2019-01-04 00:00:00.000000', '��ȫ��в��������');
INSERT INTO `affair` VALUES ('6', '1', '0', '�ɶ��н�ţ�������ֹ�˾', '2019-12-23 00:00:00.000000', 'Υ����Ϣ����������  ');
INSERT INTO `affair` VALUES ('7', '1', '3', '��������������޹�˾', '2019-07-13 00:00:00.000000', '��Ϣй¶����������  ');
INSERT INTO `affair` VALUES ('8', '1', '4', '�䰲���İ��������޹�˾', '2019-03-03 00:00:00.000000', '��ȫ��в����������  ');
INSERT INTO `affair` VALUES ('9', '1', '4', '֣����ͨ�������޹�˾', '2019-09-14 00:00:00.000000', '��ȫ��в����������  ');
INSERT INTO `affair` VALUES ('10', '1', '2', '�й����ٱ��չ�˾', '2019-06-19 00:00:00.000000', '�����������������  ');
INSERT INTO `affair` VALUES ('11', '2', '3', '�����عɼ������޹�˾', '2019-09-23 00:00:00.000000', '��Ϣй¶���������');
INSERT INTO `affair` VALUES ('12', '0', '1', '��ΪͶ�ʿع����޹�˾', '2019-04-18 00:00:00.000000', '���繥����������');
INSERT INTO `affair` VALUES ('13', '2', '1', '�����и�����ˮ����', '2019-03-25 00:00:00.000000', '���繥�����������');
INSERT INTO `affair` VALUES ('14', '2', '2', '�����������޹�˾', '2019-11-13 00:00:00.000000', '����������������');
INSERT INTO `affair` VALUES ('15', '2', '1', '������������������', '2019-10-12 00:00:00.000000', '���繥�����������');
INSERT INTO `affair` VALUES ('16', '0', '1', '���ҵ���֣�ݷֹ�˾', '2019-04-23 00:00:00.000000', '���繥����������');
INSERT INTO `affair` VALUES ('17', '1', '2', '���ҵ���֣�ݷֹ�˾', '2019-08-12 00:00:00.000000', '�����������������');
INSERT INTO `affair` VALUES ('18', '1', '2', '�й�ƽ�����չɷ����޹�˾', '2019-01-12 00:00:00.000000', '�����������������');
INSERT INTO `affair` VALUES ('19', '2', '3', '�й�ƽ�����չɷ����޹�˾', '2019-08-28 00:00:00.000000', '��Ϣй¶���������');
INSERT INTO `affair` VALUES ('20', '1', '1', 'ʯ��ׯ�������������', '2019-03-28 00:00:00.000000', '���繥������������');
INSERT INTO `affair` VALUES ('21', '2', '4', 'ʯ��ׯ�������������', '2019-04-18 00:00:00.000000', '��ȫ��в���������');
INSERT INTO `affair` VALUES ('22', '1', '1', '��Ѷ�ع����޹�˾', '2019-07-18 00:00:00.000000', '���繥������������');
INSERT INTO `affair` VALUES ('23', '2', '2', '��Ѷ�ع����޹�˾', '2019-05-18 00:00:00.000000', '����������������');
INSERT INTO `affair` VALUES ('24', '1', '2', '�����������������޹�˾', '2019-12-18 00:00:00.000000', '���繥�����������');
INSERT INTO `affair` VALUES ('25', '2', '3', '�����������������޹�˾', '2019-05-08 00:00:00.000000', '��Ϣй¶���������');
INSERT INTO `affair` VALUES ('26', '0', '3', '�ɶ��н�ţ�������ֹ�˾', '2019-07-18 00:00:00.000000', '��Ϣй¶��������');
INSERT INTO `affair` VALUES ('27', '2', '4', '�ɶ��н�ţ�������ֹ�˾', '2019-07-18 00:00:00.000000', '��ȫ��в���������');
INSERT INTO `affair` VALUES ('28', '0', '0', '��������������޹�˾', '2019-07-18 00:00:00.000000', 'Υ����Ϣ��������');
INSERT INTO `affair` VALUES ('29', '2', '2', '��������������޹�˾', '2019-07-18 00:00:00.000000', '����������������');
INSERT INTO `affair` VALUES ('30', '0', '2', '�䰲���İ��������޹�˾', '2019-08-18 00:00:00.000000', '���������������');
INSERT INTO `affair` VALUES ('31', '2', '3', '�䰲���İ��������޹�˾', '2019-07-18 00:00:00.000000', '��Ϣй¶���������');
INSERT INTO `affair` VALUES ('32', '0', '0', '֣����ͨ�������޹�˾', '2019-07-18 00:00:00.000000', 'Υ����Ϣ��������');
INSERT INTO `affair` VALUES ('33', '2', '1', '֣����ͨ�������޹�˾', '2019-01-18 00:00:00.000000', '���繥�����������');
INSERT INTO `affair` VALUES ('34', '0', '4', '�й����ٱ��չ�˾', '2019-03-18 00:00:00.000000', '��ȫ��в��������');
INSERT INTO `affair` VALUES ('35', '1', '0', '�й����ٱ��չ�˾', '2019-02-18 00:00:00.000000', 'Υ����Ϣ����������');
INSERT INTO `affair` VALUES ('36', '0', '2', '�����عɼ������޹�˾', '2019-07-18 00:00:00.000000', '���������������');
INSERT INTO `affair` VALUES ('37', '1', '4', '�����عɼ������޹�˾', '2019-08-18 00:00:00.000000', '��ȫ��в����������');
INSERT INTO `affair` VALUES ('38', '1', '3', '��ΪͶ�ʿع����޹�˾', '2019-09-28 00:00:00.000000', '��Ϣй¶����������');
INSERT INTO `affair` VALUES ('39', '2', '2', '��ΪͶ�ʿع����޹�˾', '2019-07-18 00:00:00.000000', '����������������');
INSERT INTO `affair` VALUES ('40', '0', '0', '�����и�����ˮ����', '2019-04-18 00:00:00.000000', 'Υ����Ϣ��������');
INSERT INTO `affair` VALUES ('41', '1', '3', '�����и�����ˮ����', '2019-03-28 00:00:00.000000', '��Ϣй¶����������');
INSERT INTO `affair` VALUES ('42', '0', '1', '�����������޹�˾', '2019-12-18 00:00:00.000000', '���繥����������');
INSERT INTO `affair` VALUES ('43', '1', '4', '�����������޹�˾', '2019-05-18 00:00:00.000000', '��ȫ��в����������');
INSERT INTO `affair` VALUES ('44', '0', '0', '������������������', '2019-07-08 00:00:00.000000', 'Υ����Ϣ��������');
INSERT INTO `affair` VALUES ('45', '1', '3', '������������������', '2019-03-18 00:00:00.000000', '��Ϣй¶����������');

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
INSERT INTO `log` VALUES ('7', '17', '����', '2019��12��14��20ʱ25��51��');
INSERT INTO `log` VALUES ('8', '17', '����', '2019��12��14��20ʱ26��41��');
INSERT INTO `log` VALUES ('9', '17', '����', '2019��12��14��20ʱ27��27��');
INSERT INTO `log` VALUES ('10', '17', '����', '2019��12��15��14ʱ25��52��');
INSERT INTO `log` VALUES ('11', '17', '����', '2019��12��15��14ʱ32��23��');
INSERT INTO `log` VALUES ('12', '17', '����', '2019��12��15��14ʱ33��52��');
INSERT INTO `log` VALUES ('13', '17', '����', '2019��12��15��17ʱ46��49��');
INSERT INTO `log` VALUES ('14', '17', '����', '2019��12��15��17ʱ49��19��');
INSERT INTO `log` VALUES ('15', '17', '����', '2019��12��15��17ʱ50��22��');
INSERT INTO `log` VALUES ('16', '17', '����', '2019��12��15��19ʱ59��44��');
INSERT INTO `log` VALUES ('17', '17', '����', '2019��12��15��20ʱ18��27��');
INSERT INTO `log` VALUES ('18', '17', '����', '2019��12��15��20ʱ45��38��');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='un_type	\r\n˵����\r\n0���м���λ\r\n1���м���Ͻ����λ\r\n2���ܼ����ҵ��λ\r\n3����ȫ����λ\r\n4��������ҵ					\r\n';

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES ('2', '�й�ƽ�����չɷ����޹�˾', '�㶫', '3', '������', '18623141231', '������', '13023145631');
INSERT INTO `unit` VALUES ('3', 'ʯ��ׯ�������������', '�ӱ�ʯ��ׯ', '3', '������', '18623141232', '�����', '13023145632');
INSERT INTO `unit` VALUES ('4', '��Ѷ�ع����޹�˾', '����', '2', '����', '18623141233', '����', '13023145633');
INSERT INTO `unit` VALUES ('5', '�����������������޹�˾', '������', '0', '�', '18623141234', '���', '13023145634');
INSERT INTO `unit` VALUES ('6', '�ɶ��н�ţ�������ֹ�˾', '�ɶ�', '1', '����', '18623141235', '����', '13023145635');
INSERT INTO `unit` VALUES ('7', '��������������޹�˾', '�㽭', '4', '����', '18623141236', '���', '13023145636');
INSERT INTO `unit` VALUES ('8', '�䰲���İ��������޹�˾', '�ӱ��䰲', '0', 'ֵ��', '18623141237', '��Խ', '13023145637');
INSERT INTO `unit` VALUES ('9', '֣����ͨ�������޹�˾', '����', '3', '����', '18623141238', '����', '13023145638');
INSERT INTO `unit` VALUES ('10', '�й����ٱ��չ�˾', '����', '2', '��˳', '18623141239', '��', '13023145639');
INSERT INTO `unit` VALUES ('11', '�����عɼ������޹�˾', '����', '2', '����', '18623141240', '��ϣ', '13023145640');
INSERT INTO `unit` VALUES ('12', '��ΪͶ�ʿع����޹�˾', '�㶫', '4', '������', '18623141241', '������', '13023145641');
INSERT INTO `unit` VALUES ('13', '�����и�����ˮ����', '����', '1', '����', '18623141242', '����', '13023145642');
INSERT INTO `unit` VALUES ('14', '�����������޹�˾', 'ɽ��', '4', '����', '18623141243', '����', '13023145643');
INSERT INTO `unit` VALUES ('15', '������������������', '����', '1', '����', '18623141244', '����', '13023145644');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='0:�м���λ\r\n1:�м���Ͻ����λ\r\n2:�ܼ����ҵ��λ\r\n3:��ȫ����λ\r\n4:������ҵ';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '���', '18637197681', 'D5B43BF6602DD55B3DF02BD4EA9C6A79', '1341@qq.com', '43215', '�����عɼ������޹�˾', '2', '0');
INSERT INTO `user` VALUES ('2', '�½���', '19087987990', '123', '0891834@qq.com', 'a135414sga', '������������������', '1', '0');
INSERT INTO `user` VALUES ('4', '�ŷ�', '12541351451', '123', '1431545@qq.com', 'afdq3132fga', '�����������������޹�˾', '0', '1');
INSERT INTO `user` VALUES ('5', '������', '12341455413', '123', '121341@qq.com', '12431234adf', '������������������', '1', '0');
INSERT INTO `user` VALUES ('6', 'Ϳ��', '12341234152', '123', 'aert124141@qq.com', '13425sdagq', '֣����ͨ�������޹�˾', '3', '0');
INSERT INTO `user` VALUES ('7', 'Ԭ���', '23412341341', '123', '134513451@qq.com', '3984178fhdsauj', '�����и�����ˮ����', '1', '0');
INSERT INTO `user` VALUES ('8', '��ï��', '12331534145', '123', '123417623781@qq.com', '123434gsf', 'ʯ��ׯ�������������', '3', '0');
INSERT INTO `user` VALUES ('9', '���', '13413254134', '123', '98317498@qq.com', '132412fsa', '��Ѷ�ع����޹�˾', '2', '0');
INSERT INTO `user` VALUES ('10', '���Ǿ�', '12312545451', '123', '873491873@qq.com', '124398167289', '�й����ٱ��չ�˾', '2', '0');
INSERT INTO `user` VALUES ('11', '�����', '14234235143', '123', '78721899@qq.com', '12234114151', '��Ѷ�ع����޹�˾', '2', '0');
INSERT INTO `user` VALUES ('12', '���ɺ�', '12341342311', '123', '87971234817@qq.com', '12341341234134', '֣����ͨ�������޹�˾', '3', '1');
INSERT INTO `user` VALUES ('13', 'л��', '18637197687,12809481256', '2CB406B0A093615020E47E72AA1B9FFB', '7891243751@qq.com', '34566634267', '�䰲���İ��������޹�˾', '0', '0');
INSERT INTO `user` VALUES ('14', '����', '12312414231', '792C0514E7A726C703E3694FACE00E2F', '23145@qq.com', 'afda341', '��������������޹�˾', '4', '0');
INSERT INTO `user` VALUES ('15', '����', '12323413412', '057CE2761D2EA19FD9E1F9DC57FA4079', '1341@qq.com', '43215', '�ɶ��н�ţ�������ֹ�˾', '1', '0');
INSERT INTO `user` VALUES ('17', '����', '18637197687', 'CD856976A4CE5D1D52D414724894311B', 'duyu9581@163.com', '1423511', '�й�ƽ�����չɷ����޹�˾', '3', '0');
INSERT INTO `user` VALUES ('18', '�Ʋ���', '13544564567', 'CD856976A4CE5D1D52D4147248931f1Bs', 'duyu9581@163.com', '13425sdagq', '��ΪͶ�ʿع����޹�˾', '4', '1');
INSERT INTO `user` VALUES ('19', '֣��', '13544564587', 'SD27y414E7A726C703E36948534E00E2F', '23145@qq.com', 'afdq3132fga', '��������������޹�˾', '4', '1');
INSERT INTO `user` VALUES ('20', '�', '14024862854', '123456', '873491873@qq.com', '13425sdagq', '�����������޹�˾', '4', '0');

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
