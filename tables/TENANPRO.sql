/*
Navicat MySQL Data Transfer

Source Server         : 172.17.128.26 mycat 测试
Source Server Version : 50629
Source Host           : 172.17.128.26:8066
Source Database       : TENANPRO

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2020-12-17 09:45:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for pmt_pcy_bl_activity
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_activity`;
CREATE TABLE `pmt_pcy_bl_activity` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `activity_num_id` bigint(20) DEFAULT '0' COMMENT '活动编号',
  `activity_name` varchar(100) DEFAULT ' ' COMMENT '活动名称',
  `status_num_id` bigint(20) DEFAULT '0' COMMENT '状态',
  `activity_memo` varchar(250) DEFAULT ' ' COMMENT '活动描述',
  `join_times` int(11) DEFAULT '0' COMMENT '可参与次数',
  `activity_class_num_id` int(11) DEFAULT '0' COMMENT '活动分类',
  `begin_day` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '起始日期',
  `end_day` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '截止日期',
  `begin_tm` varchar(10) DEFAULT ' ' COMMENT '起始时间',
  `end_tm` varchar(10) DEFAULT ' ' COMMENT '截止时间',
  `description` varchar(100) DEFAULT ' ' COMMENT '描述',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `div_num_id` bigint(20) DEFAULT '0' COMMENT '事业部',
  `mm_status` tinyint(4) DEFAULT '0' COMMENT '是否是MM促销：0：否；1：是',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_activity_1` (`activity_num_id`) USING BTREE,
  KEY `idx_pmt_pcy_bl_activity_01` (`activity_num_id`,`tenant_num_id`,`data_sign`) USING BTREE,
  KEY `idx_pmt_pcy_bl_activity_02` (`activity_num_id`,`tenant_num_id`,`data_sign`,`activity_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_area_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_area_dtl`;
CREATE TABLE `pmt_pcy_bl_area_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '编号',
  `mg_unit_num_id` bigint(20) DEFAULT '0' COMMENT '适用分公司列表',
  `prv_num_id` bigint(20) DEFAULT '0' COMMENT '省份',
  `city_num_id` bigint(20) DEFAULT '0' COMMENT '城市',
  `city_area_num_id` bigint(20) DEFAULT '0' COMMENT '县(区)',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `mg_unit_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_area_dtl` (`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_cdepreciate_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_cdepreciate_dtl`;
CREATE TABLE `pmt_pcy_bl_cdepreciate_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) DEFAULT '0' COMMENT '条件组号',
  `dimension_type` varchar(61) NOT NULL DEFAULT ' ' COMMENT '维度',
  `dimension_value` varchar(30) NOT NULL DEFAULT ' ' COMMENT '维度值',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `discount` decimal(12,4) DEFAULT '0.0000' COMMENT '条件商品折扣',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '条件商品折后价',
  `depreciate_quota` decimal(12,2) DEFAULT '0.00' COMMENT '降价多少',
  `discount_again` tinyint(4) DEFAULT '0' COMMENT '优惠基准',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `dimension_content` varchar(100) DEFAULT ' ' COMMENT '维度内容',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_cdepreciate_dtl_1` (`reserved_no`) USING BTREE,
  KEY `ix_pmt_pcy_bl_cdepreciate_dtl_2` (`item_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_cortunit_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_cortunit_dtl`;
CREATE TABLE `pmt_pcy_bl_cortunit_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `unit_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '适用客户列表',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `enable_sign` tinyint(4) DEFAULT NULL,
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`reserved_no`,`unit_num_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_cortunit_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_customer_group_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_customer_group_dtl`;
CREATE TABLE `pmt_pcy_bl_customer_group_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '促销政策编号',
  `customer_group_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '客户分组的编号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `exclude_sign` tinyint(4) DEFAULT '0' COMMENT '排除标识 0:不排除 1: 排除',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  KEY `ux_pmt_pcy_bl_customer_group_dtl` (`tenant_num_id`,`data_sign`,`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='促销政策适用客户分组明细表';

-- ----------------------------
-- Table structure for pmt_pcy_bl_depreciate_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_depreciate_dtl`;
CREATE TABLE `pmt_pcy_bl_depreciate_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `dimension_type` varchar(61) NOT NULL DEFAULT ' ' COMMENT '维度',
  `dimension_value` varchar(30) NOT NULL DEFAULT ' ' COMMENT '维度值',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `sku` varchar(30) NOT NULL DEFAULT ' ' COMMENT 'SKU编号',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '折后价',
  `discount` decimal(12,4) DEFAULT '0.0000' COMMENT '折扣',
  `depreciate_quota` decimal(12,2) DEFAULT '0.00' COMMENT '降价多少',
  `discount_again` tinyint(4) DEFAULT '0' COMMENT '折上折',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `dimension_content` varchar(100) DEFAULT ' ' COMMENT '维度内容',
  PRIMARY KEY (`reserved_no`,`dimension_type`,`dimension_value`,`item_num_id`,`sku`,`levelgroup_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_depreciate_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_dis_freight_free_fltr_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_dis_freight_free_fltr_dtl`;
CREATE TABLE `pmt_pcy_bl_dis_freight_free_fltr_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `andor_sign` tinyint(4) DEFAULT '0' COMMENT '并且或者',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_pmt_pcy_bl_exceptfltr_dtl` (`reserved_no`,`levelfltr_id`,`levelgroup_id`,`tenant_num_id`,`data_sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_dis_freight_free_fltr_sub_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_dis_freight_free_fltr_sub_dtl`;
CREATE TABLE `pmt_pcy_bl_dis_freight_free_fltr_sub_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `dimension_type` varchar(61) NOT NULL DEFAULT ' ' COMMENT '维度',
  `dimension_value` varchar(30) NOT NULL DEFAULT ' ' COMMENT '维度值',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `dimension_content` varchar(100) DEFAULT ' ' COMMENT '维度内容',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_pmt_pcy_bl_except_sub_dtl` (`reserved_no`,`levelgroup_id`,`levelfltr_id`,`dimension_type`,`dimension_value`,`item_num_id`,`tenant_num_id`,`data_sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_bl_ecshop_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_ecshop_dtl`;
CREATE TABLE `pmt_pcy_bl_ecshop_dtl` (
  `series` bigint(20) NOT NULL,
  `tenant_num_id` int(11) DEFAULT NULL,
  `data_sign` tinyint(4) DEFAULT NULL,
  `reserved_no` bigint(20) DEFAULT NULL,
  `ec_shop_num_id` bigint(20) DEFAULT NULL,
  `enable_sign` tinyint(4) DEFAULT NULL,
  `create_dtme` datetime DEFAULT NULL,
  `last_updtme` datetime DEFAULT NULL,
  `create_user_id` bigint(20) DEFAULT NULL,
  `last_update_user_id` bigint(20) DEFAULT NULL,
  `cancelsign` char(1) DEFAULT NULL,
  `insertdata` char(1) DEFAULT NULL,
  `updatedata` char(1) DEFAULT NULL,
  `senddata` char(1) DEFAULT NULL,
  `ec_shop_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`series`),
  KEY `ix_PMT_PCY_BL_ECSHOP_DTL` (`ec_shop_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_ec_goods_price
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_ec_goods_price`;
CREATE TABLE `pmt_pcy_bl_ec_goods_price` (
  `series` bigint(20) NOT NULL DEFAULT '0',
  `tenant_num_id` bigint(20) DEFAULT '0',
  `data_sign` tinyint(4) DEFAULT NULL,
  `reserved_no` bigint(20) DEFAULT '0',
  `dimension_type` varchar(61) DEFAULT ' ',
  `dimension_value` varchar(30) DEFAULT '0',
  `item_num_id` bigint(20) DEFAULT '0' COMMENT '商品主键',
  `sku` varchar(30) DEFAULT ' ',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '一口价',
  `discount` decimal(12,4) DEFAULT '0.0000' COMMENT '折扣',
  `depreciate_quota` decimal(12,2) DEFAULT '0.00' COMMENT '减价',
  `discount_again` tinyint(4) DEFAULT '0' COMMENT '优惠基准',
  `ec_shop_num_id` bigint(20) DEFAULT '0' COMMENT '适用电商店铺',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` bigint(20) DEFAULT '0',
  `last_update_user_id` bigint(20) DEFAULT '0',
  `cancelsign` char(1) DEFAULT 'N',
  `insertdata` char(1) DEFAULT 'Y',
  `updatedata` char(1) DEFAULT 'N',
  `senddata` char(1) DEFAULT 'N',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_ec_goods_price_1` (`reserved_no`) USING BTREE,
  KEY `ix_pmt_pcy_bl_ec_goods_price_2` (`item_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_exceptfltr_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_exceptfltr_dtl`;
CREATE TABLE `pmt_pcy_bl_exceptfltr_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `andor_sign` tinyint(4) DEFAULT '0' COMMENT '并且或者',
  PRIMARY KEY (`reserved_no`,`levelfltr_id`,`levelgroup_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_exceptfltr_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_exceptfltr_sub_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_exceptfltr_sub_dtl`;
CREATE TABLE `pmt_pcy_bl_exceptfltr_sub_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `dimension_type` varchar(61) NOT NULL DEFAULT ' ' COMMENT '维度',
  `dimension_value` varchar(30) NOT NULL DEFAULT ' ' COMMENT '维度值',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `dimension_content` varchar(100) DEFAULT ' ' COMMENT '维度内容',
  PRIMARY KEY (`reserved_no`,`levelgroup_id`,`levelfltr_id`,`dimension_type`,`dimension_value`,`item_num_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_except_sub_dtl` (`series`) USING BTREE,
  KEY `idx_pmt_pcy_bl_levelfltr_sub_dtl_02` (`reserved_no`,`tenant_num_id`,`data_sign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_freight_free_area
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_freight_free_area`;
CREATE TABLE `pmt_pcy_bl_freight_free_area` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '编号',
  `prv_num_id` bigint(20) DEFAULT '0' COMMENT '省份',
  `city_num_id` bigint(20) DEFAULT '0' COMMENT '城市',
  `city_area_num_id` bigint(20) DEFAULT '0' COMMENT '县(区)',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_pmt_pcy_bl_area_dtl` (`reserved_no`,`tenant_num_id`,`data_sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_bl_giftfreight_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_giftfreight_dtl`;
CREATE TABLE `pmt_pcy_bl_giftfreight_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `description` varchar(100) DEFAULT ' ' COMMENT '描述',
  `free_other_flag` int(11) NOT NULL DEFAULT '0' COMMENT '1 不可随单免运费 2 允许随单免运费',
  `free_type_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '免费规则 1-全免 2-指定金额 3-免首重 4-免续重 ',
  `free_value` decimal(18,4) DEFAULT '0.0000' COMMENT '免邮金额',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_pmt_pcy_bl_giftgroup_dtl` (`reserved_no`,`levelgroup_id`,`tenant_num_id`,`data_sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_bl_giftgroup_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_giftgroup_dtl`;
CREATE TABLE `pmt_pcy_bl_giftgroup_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `gift_group_id` int(11) NOT NULL DEFAULT '0' COMMENT '政策分组',
  `description` varchar(100) DEFAULT ' ' COMMENT '描述',
  `type_num_id` bigint(20) DEFAULT '0' COMMENT '类型',
  `just_one` tinyint(4) DEFAULT '0' COMMENT '组的任选',
  `gift_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '数量',
  `dtl_just_one` tinyint(4) DEFAULT '0' COMMENT '明细任选',
  `limited_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '赠品限量',
  `gift_type` tinyint(4) DEFAULT '0' COMMENT '赠送分类',
  `share_rule` smallint(6) DEFAULT '0' COMMENT '分摊规则',
  `group_enable` tinyint(4) DEFAULT '0' COMMENT '组生效',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `ANDOR_SIGN` tinyint(4) DEFAULT NULL,
  `third_gift_type` tinyint(4) DEFAULT '1' COMMENT '第三方平台赠品类型: 1.在售, 2.本品 3.非在售',
  PRIMARY KEY (`reserved_no`,`levelgroup_id`,`gift_group_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_giftgroup_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_giftgroup_sub_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_giftgroup_sub_dtl`;
CREATE TABLE `pmt_pcy_bl_giftgroup_sub_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `gift_group_id` int(11) NOT NULL DEFAULT '0' COMMENT '政策分组',
  `dimension_type` varchar(61) NOT NULL DEFAULT ' ' COMMENT '维度',
  `dimension_value` varchar(30) NOT NULL DEFAULT ' ' COMMENT '维度值',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '折后价',
  `discount` decimal(12,4) DEFAULT '0.0000' COMMENT '折扣',
  `qty` decimal(12,4) DEFAULT '0.0000' COMMENT '数量',
  `cost_price` decimal(12,2) DEFAULT '0.00' COMMENT '赠品成本价',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `dimension_content` varchar(100) DEFAULT ' ' COMMENT '维度内容',
  `gift_daily_limit_stock_qty` decimal(12,4) DEFAULT '0.0000' COMMENT '当日活动赠品库存',
  PRIMARY KEY (`reserved_no`,`levelgroup_id`,`gift_group_id`,`dimension_type`,`dimension_value`,`item_num_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_giftgr_sub_dtl` (`series`) USING BTREE,
  KEY `ix_pmt_pcy_bl_giftgroup_sub_dtl` (`item_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_giftticket_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_giftticket_dtl`;
CREATE TABLE `pmt_pcy_bl_giftticket_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `description` varchar(100) DEFAULT ' ' COMMENT '描述',
  `type_num_id` bigint(20) DEFAULT '1' COMMENT '1下单付款即返 2确认收货即返 3生日返券 4收货几日后',
  `days` tinyint(4) DEFAULT '0' COMMENT '延后日期',
  `just_one` tinyint(4) DEFAULT '0' COMMENT '组的任选',
  `gift_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '数量',
  `dtl_just_one` tinyint(4) DEFAULT '0' COMMENT '明细任选',
  `limited_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '赠品限量',
  `gift_type` tinyint(4) DEFAULT '0' COMMENT '赠送分类',
  `share_rule` smallint(6) DEFAULT '0' COMMENT '分摊规则',
  `group_enable` tinyint(4) DEFAULT '0' COMMENT '组生效',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `gift_group_id` int(11) DEFAULT '0',
  PRIMARY KEY (`reserved_no`,`levelgroup_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_giftgroup_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_giftticket_sub_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_giftticket_sub_dtl`;
CREATE TABLE `pmt_pcy_bl_giftticket_sub_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序列号',
  `tenant_num_id` int(8) DEFAULT '0' COMMENT '租户号',
  `data_sign` tinyint(1) DEFAULT '0' COMMENT '正式测试',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '政策号',
  `levelgroup_id` int(8) DEFAULT '0' COMMENT '分档号',
  `ticketid` varchar(50) DEFAULT '' COMMENT '卡卷规则',
  `qty` int(8) DEFAULT '0' COMMENT '数量',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` int(8) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` int(8) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'n' COMMENT '禁用',
  `gift_group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_giftticket_sub_dtl_1` (`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_hdr
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_hdr`;
CREATE TABLE `pmt_pcy_bl_hdr` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `begin_day` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '起始日期',
  `end_day` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '截止日期',
  `begin_tm` varchar(10) DEFAULT ' ' COMMENT '起始时间',
  `end_tm` varchar(10) DEFAULT ' ' COMMENT '截止时间',
  `description` varchar(400) DEFAULT ' ' COMMENT '描述',
  `type_num_id` bigint(20) DEFAULT '0' COMMENT '类型',
  `channel_num_id` bigint(20) DEFAULT '0' COMMENT '渠道类型',
  `status_num_id` bigint(20) DEFAULT '0' COMMENT '状态',
  `vip_birth_gift` tinyint(4) DEFAULT '0' COMMENT '会员生日礼',
  `vip_active_gift` tinyint(4) DEFAULT '0' COMMENT '会员激活礼',
  `may_teg_reserved_no` varchar(100) DEFAULT ' ' COMMENT '可同行执行政策编号',
  `except_teg_reserved_no` varchar(100) DEFAULT ' ' COMMENT '执行时要排除政策编号',
  `may_teg_type_num_id` varchar(100) DEFAULT '0' COMMENT '可同时执行政策类型',
  `except_teg_type_num_id` varchar(100) DEFAULT '0' COMMENT '执行时要排除政策类型',
  `policy_own_num_id` bigint(20) DEFAULT '0' COMMENT '发起汇总公司',
  `policy_cort_num_id` bigint(20) DEFAULT '0' COMMENT '发起公司',
  `relation_cort_num_id` bigint(20) DEFAULT '0' COMMENT '关联公司',
  `policy_cort_rate` decimal(18,6) DEFAULT '0.000000' COMMENT '发起公司承担比例',
  `relation_cort_rate` decimal(18,6) DEFAULT '0.000000' COMMENT '关联公司承担比例',
  `pcy_customer_url` varchar(1000) DEFAULT ' ' COMMENT '海报',
  `pcy_sales_url` varchar(1000) DEFAULT ' ' COMMENT '销售技巧',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `div_num_id` bigint(20) DEFAULT '0' COMMENT '事业部',
  `ticketid` varchar(50) DEFAULT '' COMMENT '微信券ID',
  `pmt_selling_point` varchar(100) DEFAULT NULL COMMENT '标签',
  `loc_pty_num_id` int(8) DEFAULT '0',
  `cycle_type` tinyint(2) DEFAULT '0' COMMENT '0-普通促销 1-周循环 2-月循环',
  `cycle_week` varchar(200) DEFAULT '' COMMENT '每周几',
  `cycle_month` varchar(200) DEFAULT '',
  `cycle_time` varchar(200) DEFAULT '' COMMENT '时间段',
  `rule_description` varchar(1000) DEFAULT '' COMMENT '规则描述',
  `grade` int(11) DEFAULT '0' COMMENT '一级类别 数值较小者优先',
  `pmt_name` varchar(255) DEFAULT NULL,
  `activity_num_id` bigint(20) DEFAULT NULL,
  `member_lable_num_id` bigint(20) DEFAULT NULL,
  `apply_plat` varchar(255) DEFAULT NULL COMMENT '1:wap端， 2 :APP端， 3 :小程序端,  4:PC端''''， 5:饿了么，6：京东到家，7：美团外卖，8：饿百 9:POS',
  `detail_details_show` bigint(20) DEFAULT NULL,
  `reserved_id` varchar(50) NOT NULL DEFAULT '0' COMMENT '原始编号',
  `settlement_type_string` varchar(16) DEFAULT '0' COMMENT '0不限 1正柜 2花车柜',
  `is_input_product` tinyint(2) DEFAULT '0' COMMENT '商品是否导入',
  `is_resolve_tickets` bigint(20) DEFAULT '0' COMMENT '现金券是否需要分摊至相关商品的trade_price 1是 0否',
  `space_type_num_id` bigint(20) DEFAULT '0' COMMENT '空间类型:1门店 2分公司 3分公司+门店 4分公司-门店 5分公司+门店-门店',
  `view_type_num_id` bigint(20) DEFAULT '0' COMMENT '页面类型',
  `levelgroup_type` varchar(8) DEFAULT '100' COMMENT '分档类型 第一位：数量金额',
  `vip_grade_string` varchar(200) DEFAULT '' COMMENT '会员等级',
  `sub_unit_num_id` bigint(20) DEFAULT '0' COMMENT '总店',
  `redis_sign` char(1) DEFAULT 'N' COMMENT '是否载入redis，Y表示已经载入，N表示未载入',
  `label_count` bigint(15) DEFAULT '0' COMMENT 'item_label表的数据总量',
  `is_all_product` tinyint(2) DEFAULT '0' COMMENT '是否全场商品参与',
  `cycle_time_sign` tinyint(2) DEFAULT '0' COMMENT '是否启用时间段 1:启用 0:不启用',
  `buy_limit_type` tinyint(2) DEFAULT '0' COMMENT '是否启用用户限购 0: 不限制 1:全部 2:门店新客',
  `buy_limit_per_person_per_day` decimal(18,4) DEFAULT '0.0000' COMMENT '每人每日限购件数',
  `buy_limit_per_order` decimal(18,4) DEFAULT '0.0000' COMMENT '每单限购件数',
  `buy_limit_per_person` decimal(18,4) DEFAULT '0.0000' COMMENT '活动期间单用户总限购数量',
  `show_category` varchar(20) DEFAULT '' COMMENT '饿百店铺页活动商品的分类名称，不超过8个字，只对品类满减生效',
  `promotion_show_rule` varchar(200) DEFAULT '' COMMENT '优惠规则(饿百),(京东广告语)',
  `buy_limit_per_activity` decimal(18,4) DEFAULT '0.0000' COMMENT '活动总限购数量',
  `audit_user_id` bigint(11) DEFAULT '0' COMMENT '审核人',
  `daily_limit_stock_qty` decimal(18,2) DEFAULT '0.00' COMMENT '每日活动库存',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_hdr` (`reserved_no`) USING BTREE,
  KEY `idx_pmt_pcy_bl_hdr_02` (`activity_num_id`,`tenant_num_id`,`data_sign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_levelfltr_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_levelfltr_dtl`;
CREATE TABLE `pmt_pcy_bl_levelfltr_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `begin_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '起始数量',
  `begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '起始金额',
  `end_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '截止数量',
  `end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '截止金额',
  `andor_sign` tinyint(4) DEFAULT '0' COMMENT '并且或者',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `begin_discount` decimal(12,4) DEFAULT NULL,
  `fltr_amount` decimal(12,4) DEFAULT NULL,
  `fltr_qty` decimal(18,4) DEFAULT NULL,
  `end_discount` decimal(12,4) DEFAULT NULL,
  PRIMARY KEY (`reserved_no`,`levelfltr_id`,`levelgroup_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_levelfltr_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_levelfltr_sub_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_levelfltr_sub_dtl`;
CREATE TABLE `pmt_pcy_bl_levelfltr_sub_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `dimension_type` varchar(61) NOT NULL DEFAULT ' ' COMMENT '维度',
  `dimension_value` varchar(30) NOT NULL DEFAULT ' ' COMMENT '维度值',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `discount` decimal(12,4) DEFAULT '0.0000' COMMENT '条件商品折扣',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '条件商品折后价',
  `depreciate_quota` decimal(12,2) DEFAULT '0.00' COMMENT '降价多少',
  `qty` decimal(18,4) DEFAULT '0.0000' COMMENT '限定达到条件量',
  `amount` decimal(18,2) DEFAULT '0.00' COMMENT '限定达到条件额',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `discount_again` tinyint(4) DEFAULT '0' COMMENT '优惠基准',
  `dimension_content` varchar(100) DEFAULT ' ' COMMENT '维度内容',
  PRIMARY KEY (`reserved_no`,`levelgroup_id`,`levelfltr_id`,`dimension_type`,`dimension_value`,`item_num_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_level_sub_dtl` (`series`) USING BTREE,
  KEY `ix_pmt_pcy_bl_levelfltr_sub_dtl_1` (`item_num_id`) USING BTREE,
  KEY `idx_pmt_pcy_bl_levelfltr_sub_dtl_02` (`reserved_no`,`tenant_num_id`,`data_sign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_level_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_level_dtl`;
CREATE TABLE `pmt_pcy_bl_level_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `level_description` varchar(100) DEFAULT ' ' COMMENT '描述',
  `standard_price_sign` tinyint(4) DEFAULT '0' COMMENT '正价商品',
  `begin_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '起始数量',
  `begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '起始金额',
  `end_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '截止数量',
  `end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '截止金额',
  `multiple_sign` int(10) DEFAULT '0' COMMENT '翻倍执行',
  `times` bigint(20) DEFAULT '0' COMMENT '次数',
  `pack_price` decimal(18,2) DEFAULT '0.00' COMMENT '打包价',
  `decrease_amount` decimal(18,2) DEFAULT '0.00' COMMENT '立减金额',
  `just_one` tinyint(4) DEFAULT '0' COMMENT '仅执行一档',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `fitler_qty_matching` tinyint(4) DEFAULT '0' COMMENT '条件组数量配比',
  `item_sgin` tinyint(4) DEFAULT '0' COMMENT '条件到具体商品',
  `discount_again` tinyint(4) DEFAULT '2' COMMENT '优惠基准',
  `cycle_week` varchar(200) DEFAULT '' COMMENT '每周几',
  `cycle_type` tinyint(2) DEFAULT '0' COMMENT '0-普通促销 1-周循环 2-月循环',
  `cycle_month` varchar(200) DEFAULT '',
  `discount` decimal(12,2) DEFAULT '0.00' COMMENT '折扣',
  `status_num_id` bigint(20) DEFAULT '0' COMMENT '状态',
  `except_andor_sign` tinyint(4) DEFAULT NULL,
  `gift_andor_sign` tinyint(4) DEFAULT NULL,
  `decrease_max_amount` decimal(12,2) DEFAULT '0.00' COMMENT '满额折扣优惠上限',
  `group_begin_discount` decimal(12,2) DEFAULT '0.00' COMMENT '起始折扣',
  `group_end_discount` decimal(12,2) DEFAULT '0.00' COMMENT '截止折扣',
  `andor_sign` tinyint(4) DEFAULT NULL,
  `discount_number` decimal(18,0) DEFAULT '0' COMMENT '折的件数N',
  `levelfltr_count` tinyint(4) DEFAULT NULL,
  `gift_rate` decimal(12,2) DEFAULT NULL,
  `gift_price_rate` decimal(12,2) DEFAULT NULL,
  `summary_level` tinyint(1) DEFAULT '0' COMMENT '0-同组 1-同sku 2-同Spu 3-同价位',
  `cycle_time` varchar(200) DEFAULT '' COMMENT '时间段',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '折后价',
  `nth_pcy_rule` tinyint(4) DEFAULT '1' COMMENT '第N件优惠类型 1:低价打折 2:同品打折',
  `cycle_time_sign` tinyint(4) DEFAULT '0' COMMENT '是否启用时间段 1:启用 0:不启用',
  PRIMARY KEY (`reserved_no`,`levelgroup_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_level_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_ornsub_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_ornsub_dtl`;
CREATE TABLE `pmt_pcy_bl_ornsub_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `orn_sub_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '适用子渠道类型',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`reserved_no`,`orn_sub_num_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_ornsub_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_orn_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_orn_dtl`;
CREATE TABLE `pmt_pcy_bl_orn_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT NULL,
  `data_sign` tinyint(4) DEFAULT NULL,
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '编号',
  `orn_num_id` bigint(20) DEFAULT '0' COMMENT '适用渠道',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新用户',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '删除',
  `insertdata` char(1) DEFAULT 'Y' COMMENT '新增',
  `updatedata` char(1) DEFAULT 'N' COMMENT '更新',
  `senddata` char(1) DEFAULT 'N' COMMENT '通讯',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_orn_dtl_1` (`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_settlement_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_settlement_dtl`;
CREATE TABLE `pmt_pcy_bl_settlement_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '编号',
  `settlement_type_id` bigint(20) DEFAULT '0' COMMENT '适用结算模式',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_settlement_dtl_1` (`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_subunittype_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_subunittype_dtl`;
CREATE TABLE `pmt_pcy_bl_subunittype_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `sub_unit_type_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '适用门店类型',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`reserved_no`,`sub_unit_type_num_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_subunittype_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_subunit_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_subunit_dtl`;
CREATE TABLE `pmt_pcy_bl_subunit_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `sub_unit_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '适用门店列表',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `enable_sign` tinyint(4) DEFAULT NULL,
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `sub_unit_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`reserved_no`,`sub_unit_num_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_subunit_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_ticket_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_ticket_dtl`;
CREATE TABLE `pmt_pcy_bl_ticket_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `ticket_type_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '券的类型',
  `ticket_begin` varchar(30) NOT NULL DEFAULT ' ' COMMENT '券的起始号',
  `ticket_end` varchar(30) DEFAULT ' ' COMMENT '券的截止号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`reserved_no`,`ticket_type_num_id`,`ticket_begin`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_ticket_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_ticket_hdr
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_ticket_hdr`;
CREATE TABLE `pmt_pcy_bl_ticket_hdr` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '编号',
  `description` varchar(100) DEFAULT ' ' COMMENT '描述',
  `type_num_id` bigint(20) DEFAULT '0' COMMENT '类型',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新用户',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '删除',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_ticket_hdr_1` (`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_ticket_item_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_ticket_item_dtl`;
CREATE TABLE `pmt_pcy_bl_ticket_item_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '编号',
  `item_num_id` bigint(20) DEFAULT '0' COMMENT '商品编号',
  `dimension_type` varchar(61) DEFAULT ' ' COMMENT '维度',
  `dimension_value` varchar(30) DEFAULT ' ' COMMENT '维度值',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新用户',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '删除',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_ticket_item_dtl_1` (`reserved_no`,`item_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_ticket_serials
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_ticket_serials`;
CREATE TABLE `pmt_pcy_bl_ticket_serials` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '编号',
  `serials_no` varchar(100) DEFAULT ' ' COMMENT '券编号',
  `status_sign` tinyint(4) DEFAULT '0' COMMENT '是否生效',
  `usr_num_id` bigint(20) DEFAULT '0' COMMENT '用户编号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新用户',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '删除',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_bl_ticket_serials_1` (`reserved_no`,`serials_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_vip_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_vip_dtl`;
CREATE TABLE `pmt_pcy_bl_vip_dtl` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `vip_type_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '适用会员类型',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `levelgroup_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '分档组号',
  PRIMARY KEY (`reserved_no`,`vip_type_num_id`,`levelgroup_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_pcy_bl_vip_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_bl_vip_level_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_bl_vip_level_dtl`;
CREATE TABLE `pmt_pcy_bl_vip_level_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `vip_type_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '参与计算适用会员类型',
  `div_num_id` int(2) DEFAULT '0' COMMENT '参与计算商品部类',
  `pty3_num_id` bigint(20) DEFAULT NULL,
  `begin_starndard_discount` decimal(8,2) DEFAULT '0.00' COMMENT '参与计算标准折扣起始值',
  `end_starndard_discount` decimal(8,2) DEFAULT '0.00' COMMENT '参与计算标准折扣结束值',
  `begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '合计参与计算起始金额',
  `end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '合计参与计算截止金额',
  `limit_type` tinyint(4) DEFAULT '0' COMMENT '限制类型（0不限制 1参与折后金额上限,2优惠金额上限）',
  `limit_value` decimal(18,4) DEFAULT '0.0000' COMMENT '上限值',
  `discount_again` tinyint(4) DEFAULT '0' COMMENT '优惠折扣基准（1零售价,2折后价折上折）',
  `vip_discount` decimal(8,2) DEFAULT '0.00' COMMENT 'vip优惠折扣率',
  `vip_decrease_amount` decimal(18,2) DEFAULT '0.00' COMMENT 'vip优惠立减金额',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ix_pmt_pcy_bl_vip_level_dtl1` (`reserved_no`,`vip_type_num_id`,`div_num_id`,`pty3_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_dimension_set
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_dimension_set`;
CREATE TABLE `pmt_pcy_dimension_set` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `dimension_type` varchar(60) DEFAULT ' ' COMMENT '维度编号',
  `dimension_name` varchar(100) DEFAULT ' ' COMMENT '维度描述',
  `dimension_editor` varchar(20) DEFAULT ' ' COMMENT '维度编辑器',
  `dimension_resource` varchar(100) DEFAULT ' ' COMMENT '编辑器资源',
  `dimension_table` varchar(100) DEFAULT ' ' COMMENT '维度对应过滤表',
  `dimension_field` varchar(100) DEFAULT '' COMMENT '维度对应过滤字段',
  `params_name` varchar(100) DEFAULT ' ' COMMENT '编辑器过滤参数',
  `params_value` varchar(100) DEFAULT ' ' COMMENT '编辑器参数值',
  `create_date_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '删除',
  `insertdata` char(1) DEFAULT 'Y' COMMENT '新增',
  `updatedata` char(1) DEFAULT 'N' COMMENT '更新',
  `OBJECT_NAME` varchar(100) DEFAULT NULL,
  `dimension_group` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_freight_free_area_lable
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_freight_free_area_lable`;
CREATE TABLE `pmt_pcy_freight_free_area_lable` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '编号',
  `prv_num_id` bigint(20) DEFAULT '0' COMMENT '省份',
  `city_num_id` bigint(20) DEFAULT '0' COMMENT '城市',
  `city_area_num_id` bigint(20) DEFAULT '0' COMMENT '县(区)',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  KEY `ix_scrm_tmp_media_campaign` (`reserved_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_giftfreight_lable
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_giftfreight_lable`;
CREATE TABLE `pmt_pcy_giftfreight_lable` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `description` varchar(100) DEFAULT ' ' COMMENT '描述',
  `free_other_flag` int(11) NOT NULL DEFAULT '0' COMMENT '1 不可随单免运费 2 允许随单免运费',
  `free_type_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '免费规则 1-全免 2-指定金额 3-免首重 4-免续重 ',
  `free_value` decimal(18,4) DEFAULT '0.0000' COMMENT '免邮金额',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  KEY `ix_scrm_tmp_media_campaign` (`reserved_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_giftticket_lable
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_giftticket_lable`;
CREATE TABLE `pmt_pcy_giftticket_lable` (
  `series` bigint(20) DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式 1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `description` varchar(100) DEFAULT ' ' COMMENT '描述',
  `type_num_id` bigint(20) DEFAULT '1' COMMENT '1下单付款即返 2确认收货即返 3生日返券 4收货几日后',
  `days` tinyint(4) DEFAULT '0' COMMENT '延后日期',
  `just_one` tinyint(4) DEFAULT '0' COMMENT '组的任选',
  `gift_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '数量',
  `dtl_just_one` tinyint(4) DEFAULT '0' COMMENT '明细任选',
  `limited_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '赠品限量',
  `gift_type` tinyint(4) DEFAULT '0' COMMENT '赠送分类',
  `ticketid` varchar(50) NOT NULL DEFAULT '' COMMENT '卡卷规则',
  `qty` int(8) DEFAULT '0' COMMENT '数量',
  `share_rule` smallint(6) DEFAULT '0' COMMENT '分摊规则',
  `group_enable` tinyint(4) DEFAULT '0' COMMENT '组生效',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `gift_group_id` int(11) DEFAULT '0' COMMENT '分组号',
  PRIMARY KEY (`tenant_num_id`,`data_sign`,`reserved_no`,`levelgroup_id`,`ticketid`),
  UNIQUE KEY `ux_pmt_pcy_bl_giftgroup_dt` (`reserved_no`,`levelgroup_id`,`ticketid`,`tenant_num_id`,`data_sign`) USING BTREE,
  KEY `ux_pmt_pcy_bl_giftgroup_dtl` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_gift_inv_tsc
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_gift_inv_tsc`;
CREATE TABLE `pmt_pcy_gift_inv_tsc` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `tml_num_id` bigint(20) DEFAULT '0' COMMENT '终端订单号',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) DEFAULT '0' COMMENT '分档组号',
  `gift_group_id` int(11) DEFAULT '0' COMMENT '政策分组',
  `item_num_id` bigint(20) DEFAULT '0' COMMENT '商品编号',
  `qty` decimal(18,4) DEFAULT '0.0000' COMMENT '赠品数量',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `dimension_value` varchar(30) DEFAULT '' COMMENT '维度值',
  PRIMARY KEY (`series`),
  KEY `ux_pmt_pcy_gift_inv_tsc` (`tml_num_id`,`reserved_no`,`levelgroup_id`,`item_num_id`,`data_sign`,`tenant_num_id`,`gift_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_gift_item_lable
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_gift_item_lable`;
CREATE TABLE `pmt_pcy_gift_item_lable` (
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `type_num_id` smallint(6) DEFAULT '0' COMMENT '类型:0：必须送；1：赠完为止；2：限量赠送(配置工具选项:1赠送、2优惠价换购、3积分换购)',
  `description` varchar(200) DEFAULT '1' COMMENT '赠品组描述',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '赠品商品编码',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP,
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '折后价',
  `gift_qty` decimal(18,4) DEFAULT '1.0000' COMMENT '数量(分组)(每个商品锁这么多数量：无交互）',
  `dtl_just_one` tinyint(4) DEFAULT '1' COMMENT '1-明细任选,0-不任选',
  `limited_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '赠品限量',
  `gift_type` tinyint(4) DEFAULT '0' COMMENT '0：必须送；1：赠完为止；2：限量赠送',
  `qty` decimal(12,4) DEFAULT '1.0000' COMMENT '数量(明细)(所有商品公用这么多数量：无交互）',
  `gift_group_id` int(11) NOT NULL DEFAULT '0' COMMENT '赠品分组',
  `discount` decimal(12,4) DEFAULT '1.0000' COMMENT '折扣',
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `dimension_type` varchar(61) DEFAULT '0' COMMENT '维度',
  `dimension_value` varchar(30) DEFAULT '0' COMMENT '维度值',
  `is_gift_lock` tinyint(4) DEFAULT '0' COMMENT '0-赠品不锁库 1-赠品锁库',
  `group_enable` tinyint(4) DEFAULT '0' COMMENT '组生效 1生效(倍数系数为明细种类上限) 0不生效(组数量为明细种类上限)',
  `gift_priority` bigint(20) DEFAULT '1' COMMENT '数值较小者优先',
  `gift_rate` decimal(12,4) DEFAULT '0.0000',
  `gift_price_rate` decimal(12,4) DEFAULT '0.0000',
  `chargenumid` tinyint(4) DEFAULT '1' COMMENT '1赠送2加价兑换',
  `cost_price` decimal(12,2) DEFAULT '0.00' COMMENT '赠品成本',
  `charge_num_id` tinyint(4) DEFAULT '1' COMMENT '1赠送2加价兑换',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '测试标识  0: 正式  1：测试',
  `item_name` varchar(100) DEFAULT ' ' COMMENT '中文全称',
  `barcode` varchar(20) DEFAULT ' ' COMMENT '商品条码',
  `itemid` varchar(60) DEFAULT ' ',
  `gift_daily_limit_stock_qty` decimal(12,4) DEFAULT '0.0000' COMMENT '当日活动赠品库存',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_pmt_pcy_gift_item_lable_1` (`reserved_no`,`item_num_id`,`levelgroup_id`,`gift_group_id`,`tenant_num_id`,`data_sign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_gift_item_lable_back
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_gift_item_lable_back`;
CREATE TABLE `pmt_pcy_gift_item_lable_back` (
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `type_num_id` smallint(6) DEFAULT '0' COMMENT '类型:0：必须送；1：赠完为止；2：限量赠送(配置工具选项:1赠送、2优惠价换购、3积分换购)',
  `description` varchar(200) DEFAULT '1' COMMENT '赠品组描述',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '赠品商品编码',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP,
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '折后价',
  `gift_qty` decimal(18,4) DEFAULT '1.0000' COMMENT '数量(分组)(每个商品锁这么多数量：无交互）',
  `dtl_just_one` tinyint(4) DEFAULT '1' COMMENT '1-明细任选,0-不任选',
  `limited_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '赠品限量',
  `gift_type` tinyint(4) DEFAULT '0' COMMENT '0：必须送；1：赠完为止；2：限量赠送',
  `qty` decimal(12,4) DEFAULT '1.0000' COMMENT '数量(明细)(所有商品公用这么多数量：无交互）',
  `gift_group_id` int(11) NOT NULL DEFAULT '0' COMMENT '赠品分组',
  `discount` decimal(12,4) DEFAULT '1.0000' COMMENT '折扣',
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `dimension_type` varchar(61) DEFAULT '0' COMMENT '维度',
  `dimension_value` varchar(30) DEFAULT '0' COMMENT '维度值',
  `is_gift_lock` tinyint(4) DEFAULT '0' COMMENT '0-赠品不锁库 1-赠品锁库',
  `group_enable` tinyint(4) DEFAULT '0' COMMENT '组生效 1生效(倍数系数为明细种类上限) 0不生效(组数量为明细种类上限)',
  `gift_priority` bigint(20) DEFAULT '1' COMMENT '数值较小者优先',
  `gift_rate` decimal(12,4) DEFAULT '0.0000',
  `gift_price_rate` decimal(12,4) DEFAULT '0.0000',
  `chargenumid` tinyint(4) DEFAULT '1' COMMENT '1赠送2加价兑换',
  `cost_price` decimal(12,2) DEFAULT '0.00' COMMENT '赠品成本',
  `charge_num_id` tinyint(4) DEFAULT '1' COMMENT '1赠送2加价兑换',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '测试标识  0: 正式  1：测试',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_pmt_pcy_gift_item_lable_back_1` (`reserved_no`,`item_num_id`,`levelgroup_id`,`gift_group_id`,`tenant_num_id`,`data_sign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_grade
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_grade`;
CREATE TABLE `pmt_pcy_grade` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式? 1：测试',
  `grade` int(11) NOT NULL DEFAULT '0' COMMENT '促销级别编码',
  `grade_name` varchar(500) NOT NULL DEFAULT ' ' COMMENT '促销级别名称',
  `descript` varchar(500) DEFAULT ' ' COMMENT '参数描述',
  `is_repeat_enjoy` int(11) NOT NULL COMMENT '是否叠加享受 1是 0否',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` bigint(20) DEFAULT '0',
  `last_update_user_id` bigint(20) DEFAULT '0',
  `cancelsign` char(1) DEFAULT '',
  `insertdata` char(1) DEFAULT '',
  `updatedata` char(1) DEFAULT '',
  PRIMARY KEY (`series`) USING BTREE,
  UNIQUE KEY `ux_pmt_pcy_grade` (`grade`,`tenant_num_id`,`data_sign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_grade_config
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_grade_config`;
CREATE TABLE `pmt_pcy_grade_config` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式? 1：测试',
  `pmt_type_num_id` int(11) DEFAULT '0' COMMENT '促销类型',
  `grade` int(11) DEFAULT '0' COMMENT '促销优先级 数值较小者优先',
  `descript` varchar(500) DEFAULT ' ' COMMENT '参数描述',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` bigint(20) DEFAULT '0',
  `last_update_user_id` bigint(20) DEFAULT '0',
  `cancelsign` char(1) DEFAULT '',
  `insertdata` char(1) DEFAULT '',
  `updatedata` char(1) DEFAULT '',
  `platform_ids` varchar(50) DEFAULT '' COMMENT '适用平台,多个平台用英文逗号分隔',
  `front_show_sign` tinyint(2) DEFAULT '0' COMMENT '前台是否展示 0否 1是',
  `no_parameter_corner` varchar(255) DEFAULT NULL COMMENT '不带参角标',
  `parameter_corner` varchar(255) DEFAULT NULL COMMENT '带参角标',
  `corner_description` varchar(255) DEFAULT NULL COMMENT '角标详情',
  `corner_priority_level` int(11) DEFAULT '0' COMMENT '优先级',
  `corner_show_sign` tinyint(2) DEFAULT '0' COMMENT '0:不展示 1:展示',
  `view_num_id` int(11) DEFAULT '0' COMMENT '视图编号',
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_item
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_item`;
CREATE TABLE `pmt_pcy_item` (
  `series` bigint(20) NOT NULL DEFAULT '0',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL COMMENT '促销单号',
  `item_num_id` bigint(20) NOT NULL COMMENT '商品编号',
  `lable_series` varchar(600) NOT NULL COMMENT '促销基本信息对应的series',
  `item_name` varchar(100) DEFAULT '' COMMENT '中文全称',
  `barcode` varchar(20) DEFAULT '' COMMENT '商品条码',
  `itemid` varchar(60) DEFAULT '',
  `sub_discount_again` tinyint(4) DEFAULT '1' COMMENT '打折基准',
  `sub_pmt_type_num_id` int(11) DEFAULT '0' COMMENT '折扣方式  1-打折(0,+OO),2-减价(0,+OO),3-指定价格(0,+OO)',
  `sub_pmt_value` decimal(18,4) DEFAULT '0.0000' COMMENT '折扣值',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`series`),
  UNIQUE KEY `pk_pmt_pcy_item` (`series`) USING BTREE,
  UNIQUE KEY `pk_pmt_pcy_item2` (`tenant_num_id`,`data_sign`,`item_num_id`,`lable_series`) USING BTREE,
  KEY `idx_reserved_no` (`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_item_dis_freight_free_lable
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_item_dis_freight_free_lable`;
CREATE TABLE `pmt_pcy_item_dis_freight_free_lable` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_item_dis_freight_free_lable` (`reserved_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_item_lable
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_item_lable`;
CREATE TABLE `pmt_pcy_item_lable` (
  `reserved_no` bigint(20) NOT NULL COMMENT '促销单号',
  `type_num_id` int(11) DEFAULT NULL COMMENT '促销分类',
  `begin_day` datetime DEFAULT NULL COMMENT '开始日期',
  `end_day` datetime DEFAULT NULL COMMENT '截止日期',
  `begin_tm` varchar(10) DEFAULT ' ' COMMENT '开如时间',
  `end_tm` varchar(10) DEFAULT ' ' COMMENT '截止时间',
  `description` varchar(400) DEFAULT ' ' COMMENT '促销描述',
  `mg_unit_num_id` bigint(20) NOT NULL COMMENT '分公司编号',
  `item_num_id` bigint(20) NOT NULL COMMENT '商品编号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `levelfltr_count` int(11) DEFAULT '1' COMMENT '符合促销要几组条件',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '折后价',
  `sub_unit_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '门店编号',
  `fltr_begin_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '条件起始数量',
  `fltr_end_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '条件截止数量',
  `fltr_begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '条件起始金额',
  `fltr_end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '条件截止金额',
  `group_begin_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起始数量',
  `group_end_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '分组截止数量',
  `group_begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起始金额',
  `group_end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组截止金额',
  `group_pack_price` decimal(18,2) DEFAULT '0.00' COMMENT '分组打包价',
  `group_discount_again` tinyint(4) DEFAULT '2' COMMENT '优惠基准',
  `group_discount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组折扣',
  `group_decrease_amount` decimal(18,2) DEFAULT '0.00' COMMENT '分组立减金额',
  `group_fitler_qty_matching` tinyint(4) DEFAULT '0' COMMENT '条件组数量配比',
  `group_just_one` tinyint(4) DEFAULT '1' COMMENT '1：仅执行一档，0：全执行',
  `batch_no` bigint(20) DEFAULT '0' COMMENT '标签批次',
  `sub_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '限定达到条件量',
  `sub_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '限定达到条件额',
  `level_description` varchar(100) DEFAULT '0' COMMENT '分档描述',
  `style_num_id` bigint(20) DEFAULT '0' COMMENT '款式编号',
  `sub_pmt_type_num_id` int(11) DEFAULT '0' COMMENT '折扣方式  1-打折(0,+OO),2-减价(0,+OO),3-指定价格(0,+OO)',
  `sub_pmt_value` decimal(18,4) DEFAULT '0.0000' COMMENT '折扣值',
  `div_num_id` bigint(20) DEFAULT NULL COMMENT '事业部',
  `cancelsign` char(1) NOT NULL DEFAULT 'N',
  `ticketid` varchar(50) DEFAULT '0' COMMENT '卡券规则ID',
  `group_standard_price_sign` tinyint(4) DEFAULT '0' COMMENT '是否正价参与1 是 0 否',
  `group_multiple_sign` bigint(20) DEFAULT '1' COMMENT '最大翻倍次数',
  `series` bigint(20) NOT NULL DEFAULT '0',
  `sub_discount_again` tinyint(4) DEFAULT '1' COMMENT '打折基准',
  `levelgroup_count` int(11) DEFAULT '1' COMMENT '分档数量',
  `pcy_poster_url` varchar(200) DEFAULT ' ' COMMENT '海报',
  `fltr_qty` bigint(20) DEFAULT '0' COMMENT '分组起订量',
  `fltr_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起订金额',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `ec_shop_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '电商门店',
  `scope_num_id` int(11) DEFAULT '0' COMMENT '促销范围 1-全国 2-分公司 3-门店 4-电商门店',
  `begin_dtme` datetime DEFAULT NULL COMMENT '促销开始时间',
  `end_dtme` datetime DEFAULT NULL COMMENT '促销结束时间',
  `PMT_SELLING_POINT` varchar(100) DEFAULT NULL,
  `loc_pty_num_id` int(8) DEFAULT '0',
  `DISCOUNT_NUMBER` decimal(18,0) DEFAULT NULL COMMENT '折的件数N',
  `PACK_PRICE` decimal(18,2) DEFAULT NULL COMMENT '打包价',
  `cycle_type` tinyint(1) DEFAULT '0' COMMENT '0-普通促销 1-周循环 2-月循环',
  `cycle_week` varchar(200) DEFAULT '' COMMENT '每周几',
  `cycle_month` varchar(200) DEFAULT '' COMMENT '每月几号',
  `cycle_time` varchar(200) DEFAULT '' COMMENT '时间段',
  `group_summary_level` tinyint(1) DEFAULT '0' COMMENT '0-同组 1-同sku 2-同Spu 3-同价位',
  `grade` int(11) DEFAULT '0' COMMENT '一级类别 数值较小者优先',
  `vip_type_num_id` bigint(20) DEFAULT '0' COMMENT '适用会员类型',
  `vip_grade_string` varchar(500) DEFAULT NULL COMMENT '会员等级字符串',
  `group_begin_discount` decimal(12,4) DEFAULT NULL,
  `group_end_discount` decimal(12,4) DEFAULT NULL,
  `itemid` varchar(60) DEFAULT '',
  `barcode` varchar(20) DEFAULT '' COMMENT '商品条码',
  `item_name` varchar(100) DEFAULT '' COMMENT '中文全称',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_item_lable` (`item_num_id`) USING BTREE,
  KEY `ux_pmt_pcy_item_lable` (`reserved_no`,`item_num_id`,`sub_unit_num_id`,`mg_unit_num_id`,`levelgroup_id`,`levelfltr_id`,`ec_shop_num_id`,`loc_pty_num_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_item_lable_back
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_item_lable_back`;
CREATE TABLE `pmt_pcy_item_lable_back` (
  `reserved_no` bigint(20) NOT NULL COMMENT '促销单号',
  `type_num_id` int(11) DEFAULT NULL COMMENT '促销分类',
  `begin_day` datetime DEFAULT NULL COMMENT '开始日期',
  `end_day` datetime DEFAULT NULL COMMENT '截止日期',
  `begin_tm` varchar(10) DEFAULT ' ' COMMENT '开如时间',
  `end_tm` varchar(10) DEFAULT ' ' COMMENT '截止时间',
  `description` varchar(200) DEFAULT ' ' COMMENT '促销描述',
  `mg_unit_num_id` bigint(20) NOT NULL COMMENT '分公司编号',
  `item_num_id` bigint(20) NOT NULL COMMENT '商品编号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `levelfltr_count` int(11) DEFAULT '1' COMMENT '符合促销要几组条件',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '折后价',
  `sub_unit_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '门店编号',
  `fltr_begin_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '条件起始数量',
  `fltr_end_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '条件截止数量',
  `fltr_begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '条件起始金额',
  `fltr_end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '条件截止金额',
  `group_begin_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起始数量',
  `group_end_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '分组截止数量',
  `group_begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起始金额',
  `group_end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组截止金额',
  `group_pack_price` decimal(18,2) DEFAULT '0.00' COMMENT '分组打包价',
  `group_discount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组折扣',
  `group_decrease_amount` decimal(18,2) DEFAULT '0.00' COMMENT '分组立减金额',
  `group_fitler_qty_matching` tinyint(4) DEFAULT '0' COMMENT '条件组数量配比',
  `group_just_one` tinyint(4) DEFAULT '1' COMMENT '1：仅执行一档，0：全执行',
  `batch_no` bigint(20) DEFAULT '0' COMMENT '标签批次',
  `sub_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '限定达到条件量',
  `sub_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '限定达到条件额',
  `level_description` varchar(100) DEFAULT '0' COMMENT '分档描述',
  `style_num_id` bigint(20) DEFAULT '0' COMMENT '款式编号',
  `sub_pmt_type_num_id` int(11) DEFAULT '0' COMMENT '折扣方式  1-打折(0,+OO),2-减价(0,+OO),3-指定价格(0,+OO)',
  `sub_pmt_value` decimal(18,4) DEFAULT '0.0000' COMMENT '折扣值',
  `div_num_id` bigint(20) DEFAULT NULL COMMENT '事业部',
  `cancelsign` char(1) NOT NULL DEFAULT 'N',
  `ticketid` varchar(50) DEFAULT '0' COMMENT '卡券规则ID',
  `group_standard_price_sign` tinyint(4) DEFAULT '1' COMMENT '是否正价参与1 是 0 否',
  `group_multiple_sign` bigint(20) DEFAULT '1' COMMENT '最大翻倍次数',
  `series` bigint(20) NOT NULL DEFAULT '0',
  `sub_discount_again` tinyint(4) DEFAULT '1' COMMENT '打折基准',
  `levelgroup_count` int(11) DEFAULT '1' COMMENT '分档数量',
  `pcy_poster_url` varchar(200) DEFAULT ' ' COMMENT '海报',
  `fltr_qty` bigint(20) DEFAULT '0' COMMENT '分组起订量',
  `fltr_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起订金额',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `ec_shop_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '电商门店',
  `scope_num_id` int(11) DEFAULT '0' COMMENT '促销范围 1-全国 2-分公司 3-门店 4-电商门店',
  `begin_dtme` datetime DEFAULT NULL COMMENT '促销开始时间',
  `end_dtme` datetime DEFAULT NULL COMMENT '促销结束时间',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ix_pmt_pcy_item_lable_back3` (`reserved_no`,`item_num_id`,`mg_unit_num_id`,`sub_unit_num_id`,`ec_shop_num_id`,`levelgroup_id`,`levelfltr_id`,`tenant_num_id`,`data_sign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_item_lable_copy
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_item_lable_copy`;
CREATE TABLE `pmt_pcy_item_lable_copy` (
  `reserved_no` bigint(20) NOT NULL COMMENT '促销单号',
  `type_num_id` int(11) DEFAULT NULL COMMENT '促销分类',
  `begin_day` datetime DEFAULT NULL COMMENT '开始日期',
  `end_day` datetime DEFAULT NULL COMMENT '截止日期',
  `begin_tm` varchar(10) DEFAULT ' ' COMMENT '开如时间',
  `end_tm` varchar(10) DEFAULT ' ' COMMENT '截止时间',
  `description` varchar(400) DEFAULT ' ' COMMENT '促销描述',
  `mg_unit_num_id` bigint(20) NOT NULL COMMENT '分公司编号',
  `item_num_id` bigint(20) NOT NULL COMMENT '商品编号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `levelfltr_count` int(11) DEFAULT '1' COMMENT '符合促销要几组条件',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '折后价',
  `sub_unit_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '门店编号',
  `fltr_begin_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '条件起始数量',
  `fltr_end_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '条件截止数量',
  `fltr_begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '条件起始金额',
  `fltr_end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '条件截止金额',
  `group_begin_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起始数量',
  `group_end_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '分组截止数量',
  `group_begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起始金额',
  `group_end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组截止金额',
  `group_pack_price` decimal(18,2) DEFAULT '0.00' COMMENT '分组打包价',
  `group_discount_again` tinyint(4) DEFAULT '2' COMMENT '优惠基准',
  `group_discount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组折扣',
  `group_decrease_amount` decimal(18,2) DEFAULT '0.00' COMMENT '分组立减金额',
  `group_fitler_qty_matching` tinyint(4) DEFAULT '0' COMMENT '条件组数量配比',
  `group_just_one` tinyint(4) DEFAULT '1' COMMENT '1：仅执行一档，0：全执行',
  `batch_no` bigint(20) DEFAULT '0' COMMENT '标签批次',
  `sub_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '限定达到条件量',
  `sub_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '限定达到条件额',
  `level_description` varchar(100) DEFAULT '0' COMMENT '分档描述',
  `style_num_id` bigint(20) DEFAULT '0' COMMENT '款式编号',
  `sub_pmt_type_num_id` int(11) DEFAULT '0' COMMENT '折扣方式  1-打折(0,+OO),2-减价(0,+OO),3-指定价格(0,+OO)',
  `sub_pmt_value` decimal(18,4) DEFAULT '0.0000' COMMENT '折扣值',
  `div_num_id` bigint(20) DEFAULT NULL COMMENT '事业部',
  `cancelsign` char(1) NOT NULL DEFAULT 'N',
  `ticketid` varchar(50) DEFAULT '0' COMMENT '卡券规则ID',
  `group_standard_price_sign` tinyint(4) DEFAULT '0' COMMENT '是否正价参与1 是 0 否',
  `group_multiple_sign` bigint(20) DEFAULT '1' COMMENT '最大翻倍次数',
  `series` bigint(20) NOT NULL DEFAULT '0',
  `sub_discount_again` tinyint(4) DEFAULT '1' COMMENT '打折基准',
  `levelgroup_count` int(11) DEFAULT '1' COMMENT '分档数量',
  `pcy_poster_url` varchar(200) DEFAULT ' ' COMMENT '海报',
  `fltr_qty` bigint(20) DEFAULT '0' COMMENT '分组起订量',
  `fltr_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起订金额',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `ec_shop_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '电商门店',
  `scope_num_id` int(11) DEFAULT '0' COMMENT '促销范围 1-全国 2-分公司 3-门店 4-电商门店',
  `begin_dtme` datetime DEFAULT NULL COMMENT '促销开始时间',
  `end_dtme` datetime DEFAULT NULL COMMENT '促销结束时间',
  `PMT_SELLING_POINT` varchar(100) DEFAULT NULL,
  `loc_pty_num_id` int(8) DEFAULT '0',
  `DISCOUNT_NUMBER` decimal(18,0) DEFAULT NULL COMMENT '折的件数N',
  `PACK_PRICE` decimal(18,2) DEFAULT NULL COMMENT '打包价',
  `cycle_type` tinyint(1) DEFAULT '0' COMMENT '0-普通促销 1-周循环 2-月循环',
  `cycle_week` varchar(200) DEFAULT '' COMMENT '每周几',
  `cycle_month` varchar(200) DEFAULT '' COMMENT '每月几号',
  `cycle_time` varchar(200) DEFAULT '' COMMENT '时间段',
  `group_summary_level` tinyint(1) DEFAULT '0' COMMENT '0-同组 1-同sku 2-同Spu 3-同价位',
  `grade` int(11) DEFAULT '0' COMMENT '一级类别 数值较小者优先',
  `vip_type_num_id` bigint(20) DEFAULT '0' COMMENT '适用会员类型',
  `vip_grade_string` varchar(500) DEFAULT NULL COMMENT '会员等级字符串',
  `group_begin_discount` decimal(12,4) DEFAULT NULL,
  `group_end_discount` decimal(12,4) DEFAULT NULL,
  `itemid` varchar(60) DEFAULT '',
  `barcode` varchar(20) DEFAULT '' COMMENT '商品条码',
  `item_name` varchar(100) DEFAULT '' COMMENT '中文全称',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_pcy_item_lable` (`item_num_id`) USING BTREE,
  KEY `ux_pmt_pcy_item_lable` (`reserved_no`,`item_num_id`,`sub_unit_num_id`,`mg_unit_num_id`,`levelgroup_id`,`levelfltr_id`,`ec_shop_num_id`,`loc_pty_num_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_item_sql_log
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_item_sql_log`;
CREATE TABLE `pmt_pcy_item_sql_log` (
  `series` bigint(20) NOT NULL DEFAULT '0',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL COMMENT '促销单号',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `sql_log` text COMMENT '促销查询商品使用的sql',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`series`),
  KEY `idx_reserved_no` (`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_lable_series_tml
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_lable_series_tml`;
CREATE TABLE `pmt_pcy_lable_series_tml` (
  `tml_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '终端订单号',
  `lable_series_detail` longtext COMMENT '促销政策行号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chose_result` text,
  PRIMARY KEY (`tml_num_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_pcy_level_group
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_level_group`;
CREATE TABLE `pmt_pcy_level_group` (
  `series` bigint(20) NOT NULL DEFAULT '0',
  `reserved_no` bigint(20) NOT NULL COMMENT '促销单号',
  `grade` int(11) DEFAULT '0' COMMENT '一级类别 数值较小者优先',
  `type_num_id` int(11) DEFAULT NULL COMMENT '促销分类',
  `description` varchar(400) DEFAULT ' ' COMMENT '描述',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `level_description` varchar(100) DEFAULT '0' COMMENT '分档描述',
  `levelfltr_id` int(11) NOT NULL DEFAULT '0' COMMENT '条件组号',
  `levelfltr_count` int(11) DEFAULT '1' COMMENT '符合促销要几组条件',
  `fltr_begin_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '条件起始数量',
  `fltr_end_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '条件截止数量',
  `fltr_begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '条件起始金额',
  `fltr_end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '条件截止金额',
  `group_begin_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起始数量',
  `group_end_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '分组截止数量',
  `DISCOUNT_NUMBER` decimal(18,0) DEFAULT NULL COMMENT '折的件数N',
  `group_begin_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起始金额',
  `group_end_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组截止金额',
  `group_pack_price` decimal(18,2) DEFAULT '0.00' COMMENT '分组打包价',
  `group_discount_again` tinyint(4) DEFAULT '2' COMMENT '优惠基准',
  `group_discount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组折扣',
  `group_decrease_amount` decimal(18,2) DEFAULT '0.00' COMMENT '分组立减金额',
  `group_fitler_qty_matching` tinyint(4) DEFAULT '0' COMMENT '条件组数量配比',
  `group_just_one` tinyint(4) DEFAULT '1' COMMENT '1：仅执行一档，0：全执行',
  `sub_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '限定达到条件量',
  `sub_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '限定达到条件额',
  `style_num_id` bigint(20) DEFAULT '0' COMMENT '款式编号',
  `sub_pmt_type_num_id` int(11) DEFAULT '0' COMMENT '折扣方式  1-打折(0,+OO),2-减价(0,+OO),3-指定价格(0,+OO)',
  `sub_pmt_value` decimal(18,4) DEFAULT '0.0000' COMMENT '折扣值',
  `div_num_id` bigint(20) DEFAULT NULL COMMENT '事业部',
  `ticketid` varchar(50) DEFAULT '0' COMMENT '卡券规则ID',
  `group_standard_price_sign` tinyint(4) DEFAULT '1' COMMENT '是否正价参与1 是 0 否',
  `group_multiple_sign` bigint(20) DEFAULT '1' COMMENT '最大翻倍次数',
  `sub_discount_again` tinyint(4) DEFAULT '1' COMMENT '打折基准',
  `levelgroup_count` int(11) DEFAULT '1' COMMENT '分档数量',
  `fltr_qty` bigint(20) DEFAULT '0' COMMENT '分组起订量',
  `fltr_amount` decimal(18,4) DEFAULT '0.0000' COMMENT '分组起订金额',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `begin_dtme` datetime DEFAULT NULL COMMENT '促销开始时间',
  `end_dtme` datetime DEFAULT NULL COMMENT '促销结束时间',
  `loc_pty_num_id` int(8) DEFAULT '0',
  `PACK_PRICE` decimal(18,2) DEFAULT NULL COMMENT '打包价',
  `cycle_type` tinyint(1) DEFAULT '0' COMMENT '0-普通促销 1-周循环 2-月循环',
  `cycle_week` varchar(200) DEFAULT '' COMMENT '每周几',
  `cycle_month` varchar(200) DEFAULT '' COMMENT '每月几号',
  `cycle_time` varchar(200) DEFAULT '' COMMENT '时间段',
  `group_summary_level` tinyint(1) DEFAULT '0' COMMENT '0-同组 1-同sku 2-同Spu 3-同价位',
  `vip_grade_string` varchar(500) DEFAULT NULL,
  `group_begin_discount` decimal(12,4) DEFAULT NULL,
  `group_end_discount` decimal(12,4) DEFAULT NULL,
  `settlement_type_string` varchar(16) DEFAULT '0' COMMENT '0不限 1正柜 2花车柜',
  `item_name` varchar(100) DEFAULT '' COMMENT '中文全称',
  `barcode` varchar(20) DEFAULT '' COMMENT '商品条码',
  `itemid` varchar(60) DEFAULT '',
  `vip_type_num_id` bigint(20) DEFAULT '0' COMMENT '适用会员类型',
  `begin_day` datetime DEFAULT NULL COMMENT '开始日期',
  `end_day` datetime DEFAULT NULL COMMENT '截止日期',
  `begin_tm` varchar(10) DEFAULT ' ' COMMENT '开如时间',
  `end_tm` varchar(10) DEFAULT ' ' COMMENT '截止时间',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `batch_no` bigint(20) DEFAULT '0' COMMENT '标签批次',
  `cancelsign` char(1) NOT NULL DEFAULT 'N',
  `pcy_poster_url` varchar(200) DEFAULT ' ' COMMENT '海报',
  `PMT_SELLING_POINT` varchar(100) DEFAULT NULL,
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '折后价',
  `is_resolve_tickets` bigint(20) DEFAULT '0' COMMENT '现金券是否需要分摊至相关商品的trade_price 1是 0否',
  `is_all_product` tinyint(2) DEFAULT NULL COMMENT '商品参与 0:非全场商品参与 1:全场商品参与 2:部分商品排除',
  `cycle_time_sign` tinyint(2) DEFAULT '0' COMMENT '是否启用时间段 1:启用 0:不启用',
  `buy_limit_type` tinyint(2) DEFAULT '0' COMMENT '是否启用用户限购 0: 不限制 1:全部 2:门店新客',
  `buy_limit_per_person_per_day` decimal(18,4) DEFAULT '0.0000' COMMENT '每人每日限购件数',
  `buy_limit_per_order` decimal(18,4) DEFAULT '0.0000' COMMENT '每单限购件数',
  `buy_limit_per_person` decimal(18,4) DEFAULT '0.0000' COMMENT '活动期间单用户总限购数量',
  `show_category` varchar(20) DEFAULT '' COMMENT '饿百店铺页活动商品的分类名称，不超过8个字，只对品类满减生效',
  `promotion_show_rule` varchar(200) DEFAULT NULL COMMENT '优惠规则(饿百),(京东广告语)',
  `platform_ids` varchar(30) DEFAULT '' COMMENT '适用平台,多个用逗号隔开',
  `cycle_week_sign` int(11) DEFAULT '0' COMMENT '是否启用周限制 0-不限制 1-周限制',
  `daily_limit_stock_qty` decimal(12,4) DEFAULT '0.0000' COMMENT '当日活动商品库存',
  `buy_limit_per_activity` decimal(18,4) DEFAULT '0.0000' COMMENT '活动总限购数量',
  `nth_pcy_rule` tinyint(4) DEFAULT '1' COMMENT '第N件优惠类型 1:低价打折 2:同品打折',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_pmt_pcy_item_lable` (`levelgroup_id`,`levelfltr_id`,`reserved_no`) USING BTREE,
  UNIQUE KEY `pk_pmt_pcy_item_lable` (`series`) USING BTREE,
  KEY `idx_reserved_no` (`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_mmo
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_mmo`;
CREATE TABLE `pmt_pcy_mmo` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '单据号',
  `tenant_num_id` int(11) DEFAULT '0',
  `data_sign` tinyint(4) DEFAULT '0',
  `activity_id` varchar(200) NOT NULL COMMENT '档期号',
  `activity_name` varchar(200) DEFAULT ' ' COMMENT '档期名称',
  `begin_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '开始日期',
  `end_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '结束日期',
  `status_num_id` int(11) DEFAULT '0' COMMENT '0 未开始  1 已开始 2 执行中 3 已结束',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `create_user_name` varchar(200) DEFAULT ' ' COMMENT '创建人名字',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `last_update_user_name` varchar(200) DEFAULT ' ' COMMENT '更新人名字',
  `input_switch` tinyint(4) DEFAULT NULL COMMENT '录入开关 0：打开（可录入），1：关闭（不可录入）',
  `remark` varchar(500) DEFAULT ' ' COMMENT '备注',
  `audit_status` tinyint(4) DEFAULT '0' COMMENT '审核状态 0：未审核；1：已审核；',
  `generate_mm_detail` tinyint(4) DEFAULT '0' COMMENT '是否已经生成mm商品明细 0:否；1:是',
  PRIMARY KEY (`series`),
  UNIQUE KEY `activity_id_idx` (`activity_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for pmt_pcy_mmo_detail
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_mmo_detail`;
CREATE TABLE `pmt_pcy_mmo_detail` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `parent_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '父表主键',
  `activity_num_id` bigint(20) NOT NULL,
  `sub_unit_num_id` bigint(20) NOT NULL COMMENT '门店编码',
  `sub_unit_id` varchar(50) NOT NULL,
  `sub_unit_name` varchar(200) DEFAULT NULL,
  `item_num_id` bigint(20) NOT NULL COMMENT '商品编码',
  `item_name` varchar(255) DEFAULT ' ' COMMENT '订阅提醒的商品名称',
  `barcode` varchar(60) NOT NULL DEFAULT ' ' COMMENT '商品条码',
  `forecast_sale_qty` decimal(18,4) NOT NULL DEFAULT '0.0000' COMMENT '预估销量',
  `forecast_qty` decimal(18,4) NOT NULL DEFAULT '0.0000' COMMENT '预估定量',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  PRIMARY KEY (`series`),
  UNIQUE KEY `sub_item_act_num_idx` (`sub_unit_num_id`,`item_num_id`,`activity_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for pmt_pcy_mmo_order
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_mmo_order`;
CREATE TABLE `pmt_pcy_mmo_order` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '单据号',
  `tenant_num_id` int(11) DEFAULT '0',
  `data_sign` tinyint(4) DEFAULT '0',
  `activity_id` varchar(200) NOT NULL COMMENT '档期号',
  `activity_name` varchar(200) DEFAULT ' ' COMMENT '档期名称',
  `begin_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '开始日期',
  `end_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '结束日期',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `create_user_name` varchar(200) DEFAULT ' ' COMMENT '创建人名字',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `last_update_user_name` varchar(200) DEFAULT ' ' COMMENT '更新人名字',
  `review_user_id` bigint(20) DEFAULT NULL COMMENT '审核人',
  `review_user_name` varchar(200) DEFAULT NULL COMMENT '审核人name',
  `review_user_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '审核时间',
  `remark` varchar(500) DEFAULT ' ' COMMENT '备注',
  `audit_status` tinyint(4) DEFAULT '0' COMMENT '审核状态 0：未审核；1：已审核',
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for pmt_pcy_mmo_pages
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_mmo_pages`;
CREATE TABLE `pmt_pcy_mmo_pages` (
  `series` bigint(20) NOT NULL COMMENT 'id',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `mmo_series` bigint(20) NOT NULL COMMENT '父表id',
  `activity_id` varchar(200) DEFAULT NULL COMMENT '档期号',
  `page_code` varchar(50) NOT NULL DEFAULT ' ' COMMENT '版面代码',
  `page_name` varchar(200) DEFAULT ' ' COMMENT '版面名称',
  `create_dtme` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新日期',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '更新人',
  `remark` varchar(255) DEFAULT ' ' COMMENT '备注',
  UNIQUE KEY `mmo_series_page_code` (`mmo_series`,`page_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for pmt_pcy_mmo_pro_list
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_mmo_pro_list`;
CREATE TABLE `pmt_pcy_mmo_pro_list` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT 'id号',
  `tenant_num_id` int(11) NOT NULL,
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试''',
  `parent_series` bigint(20) DEFAULT NULL COMMENT '档期series',
  `activity_id` varchar(200) DEFAULT ' ' COMMENT '档期号',
  `page_code` varchar(50) NOT NULL COMMENT '版面编号',
  `page_name` varchar(200) DEFAULT ' ' COMMENT '版面名称',
  `item_num_id` varchar(50) NOT NULL COMMENT '商品编码',
  `barcode_1` varchar(50) DEFAULT ' ' COMMENT '商品条码',
  `div_num_id` int(2) DEFAULT NULL COMMENT '部类编码',
  `div_name` varchar(200) DEFAULT NULL COMMENT '部类名称',
  `item_name` varchar(200) DEFAULT ' ' COMMENT '商品名称',
  `purchase_num` varchar(50) DEFAULT ' ' COMMENT 'A进B出商品进货编码',
  `pty_num_1` bigint(20) DEFAULT NULL COMMENT '商品大类',
  `pty1_name` varchar(100) DEFAULT ' ' COMMENT '大类名称',
  `sell_good` tinyint(4) DEFAULT '0' COMMENT '是否爆款商品（进店必买）0:否，1：是',
  `style_desc` varchar(50) DEFAULT ' ' COMMENT '规格',
  `conversion_qty` int(11) DEFAULT '0' COMMENT '箱入数',
  `units_name` varchar(20) DEFAULT ' ' COMMENT '销售单位',
  `product_origin_name` varchar(255) DEFAULT ' ' COMMENT '产地',
  `unit_num_id` int(11) DEFAULT '0' COMMENT '供应商编码',
  `unit_name` varchar(100) DEFAULT ' ' COMMENT '供应商名称',
  `promotion_subs` varchar(255) DEFAULT '' COMMENT '促销门店',
  `promotion_subs_str` varchar(3000) DEFAULT NULL COMMENT '促销门店的中文名称',
  `eliminate_subs` varchar(255) DEFAULT '' COMMENT '剔除门店',
  `eliminate_subs_str` varchar(3000) DEFAULT NULL COMMENT '剔除门店的中文名称',
  `contrac_cost` decimal(18,2) DEFAULT '0.00' COMMENT '正常进价',
  `promotion_cost` decimal(18,2) DEFAULT '0.00' COMMENT '促销进价',
  `price` decimal(18,2) DEFAULT '0.00' COMMENT '正常售价',
  `promotion_price` decimal(18,2) DEFAULT '0.00' COMMENT '促销售价',
  `activity_other_style` varchar(100) DEFAULT ' ' COMMENT '其它活动方式',
  `sell_point` varchar(100) DEFAULT ' ' COMMENT '卖点',
  `empe_num_id` int(10) DEFAULT NULL COMMENT '采购负责人编号',
  `empe_name` varchar(50) DEFAULT ' ' COMMENT '采购负责人',
  `settlement_type` tinyint(4) DEFAULT '0' COMMENT '结算方式',
  `product_end_date` datetime DEFAULT NULL COMMENT '商品到期日',
  `forecast_sale_qty` int(11) DEFAULT NULL COMMENT '预估销售量',
  `forecast_sale_amount` decimal(18,2) DEFAULT NULL COMMENT '预估销售额',
  `pop_status` tinyint(4) DEFAULT '0' COMMENT '主推商品标记 0:否；1:是',
  `pre_30days_sale_amount` decimal(18,2) DEFAULT '0.00' COMMENT '前30天销售额',
  `pre_30days_sale_qty` bigint(11) DEFAULT '0' COMMENT '前30天销量',
  `pre_30days_cost_price` decimal(10,2) DEFAULT '0.00' COMMENT '前30天进价',
  `pre_30days_sale_price` decimal(10,2) DEFAULT '0.00' COMMENT '前30天售价',
  `advice_retail_price` decimal(10,2) DEFAULT '0.00' COMMENT '建议售价',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `audit_status` tinyint(4) DEFAULT '0' COMMENT '审核状态 0：未审核；1：已审核',
  `remark` varchar(255) DEFAULT ' ' COMMENT '备注',
  `if_base_order` tinyint(4) DEFAULT '0' COMMENT '是否总部下单：0是；1否',
  PRIMARY KEY (`series`),
  UNIQUE KEY `act_item_prosub_idx` (`activity_id`,`item_num_id`,`promotion_subs`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for pmt_pcy_mmo_pro_sub_list
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_mmo_pro_sub_list`;
CREATE TABLE `pmt_pcy_mmo_pro_sub_list` (
  `series` bigint(20) NOT NULL,
  `parent_series` bigint(20) NOT NULL COMMENT '父表主键',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `activity_id` varchar(100) NOT NULL COMMENT '档期号',
  `activity_name` varchar(100) DEFAULT NULL COMMENT '档期名称',
  `page_design` varchar(50) DEFAULT ' ' COMMENT '版面名称',
  `item_num_id` varchar(50) NOT NULL COMMENT '商品编码',
  `barcode_1` varchar(20) NOT NULL COMMENT '商品国际条码',
  `div_num_id` int(2) NOT NULL COMMENT '部类编码',
  `div_name` varchar(200) DEFAULT NULL COMMENT '部类名称',
  `item_name` varchar(200) DEFAULT ' ' COMMENT '商品名称',
  `sub_unit_num_id` int(11) NOT NULL COMMENT '门店编号',
  `sub_unit_name` varchar(200) DEFAULT ' ' COMMENT '门店名称',
  `purchase_num` varchar(50) DEFAULT ' ' COMMENT 'A进B出商品进货编码',
  `pty_num_1` bigint(20) NOT NULL COMMENT '商品大类',
  `pty1_name` varchar(100) DEFAULT ' ' COMMENT '大类名称',
  `sell_good` tinyint(4) DEFAULT NULL COMMENT '是否爆款商品（进店必买）0:否，1：是',
  `prv_num_id` int(11) DEFAULT NULL COMMENT '省编号',
  `city_num_id` int(11) DEFAULT NULL COMMENT '市编号',
  `coefficient` double(4,2) DEFAULT NULL COMMENT '系数',
  `style_desc` varchar(50) DEFAULT ' ' COMMENT '规格',
  `conversion_qty` int(11) DEFAULT '0' COMMENT '箱入数',
  `units_name` varchar(20) DEFAULT ' ' COMMENT '销售单位',
  `product_origin_name` varchar(255) DEFAULT ' ' COMMENT '产地',
  `contrac_cost` decimal(18,2) DEFAULT '0.00' COMMENT '正常进价',
  `promotion_cost` decimal(18,2) DEFAULT '0.00' COMMENT '促销进价',
  `price` decimal(18,2) DEFAULT '0.00' COMMENT '正常售价',
  `promotion_price` decimal(18,2) DEFAULT '0.00' COMMENT '促销售价',
  `activity_other_style` varchar(200) DEFAULT ' ' COMMENT '其他活动方式',
  `supply_unit_num_id` bigint(20) DEFAULT '0' COMMENT '供应商编码',
  `supply_unit_name` varchar(200) DEFAULT ' ' COMMENT '供应商名称',
  `settlement_type` tinyint(4) DEFAULT NULL COMMENT '结算方式',
  `product_end_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '商品到期日',
  `sell_point` varchar(200) DEFAULT NULL COMMENT '卖点',
  `sub_pro_forecast_sale_qty` bigint(11) DEFAULT '0' COMMENT '门店商品预估销售量',
  `sub_pro_forecast_sale_amount` decimal(18,4) DEFAULT NULL COMMENT '门店预估销售额',
  `pop_status` tinyint(4) DEFAULT '0' COMMENT '主推商品标记：0：否；1：是',
  `pre_30days_sale_amount` decimal(18,4) DEFAULT NULL COMMENT '前30天销售额',
  `pre_30days_sale_qty` bigint(11) DEFAULT NULL COMMENT '前30天销量',
  `pre_30days_cost_price` decimal(10,2) DEFAULT NULL COMMENT '前30天进价',
  `pre_30days_sale_price` decimal(10,2) DEFAULT NULL COMMENT '前30天售价',
  `advice_retail_price` decimal(10,2) unsigned zerofill DEFAULT NULL COMMENT '建议零售价',
  `remark` varchar(255) DEFAULT ' ' COMMENT '备注',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建者id',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新者id',
  `empe_name` varchar(50) DEFAULT ' ' COMMENT '采购负责人',
  PRIMARY KEY (`series`),
  UNIQUE KEY `page_sub_pro_idx` (`activity_id`,`sub_unit_num_id`,`item_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for pmt_pcy_org
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_org`;
CREATE TABLE `pmt_pcy_org` (
  `series` bigint(20) NOT NULL DEFAULT '0',
  `reserved_no` bigint(20) NOT NULL COMMENT '促销单号',
  `mg_unit_num_id` bigint(20) NOT NULL COMMENT '分公司编号',
  `sub_unit_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '门店编号',
  `ec_shop_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '电商门店',
  `scope_num_id` int(11) DEFAULT '0' COMMENT '促销范围 1-全国 2-分公司 3-门店 4-电商门店',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`series`),
  UNIQUE KEY `pk_pmt_pcy_org` (`series`) USING BTREE,
  KEY `idx_reserved_no` (`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for pmt_pcy_platform_support_rule
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_platform_support_rule`;
CREATE TABLE `pmt_pcy_platform_support_rule` (
  `series` bigint(20) NOT NULL COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL COMMENT '0: 正式  1：测试',
  `platform_id` int(11) NOT NULL DEFAULT '0' COMMENT '平台编号 1:wap端， 2 :APP端， 3 :小程序端,  4:PC端''， 5:饿了么，6：京东到家，7：美团外卖，8：饿百 9:POS',
  `member_buy_limit_sign` tinyint(2) DEFAULT '0' COMMENT '用户限购 0:不支持 1:支持',
  `member_buy_limit_new_member_sign` tinyint(2) DEFAULT '0' COMMENT '用户限购门店新客 0:不支持 1:支持',
  `cycle_time_count` int(11) DEFAULT '0' COMMENT '支持促销时段档数 0:不支持 1:饿百支持1档 3:美团支持3档',
  `cycle_week_sign` tinyint(2) DEFAULT '0' COMMENT '周循环 0:不支持 1:支持,美团、饿百支持，京东不支持',
  `cycle_month_sign` tinyint(2) DEFAULT '0' COMMENT '月循环 0:不支持 1:支持,第三方都不支持',
  `all_product_sign` tinyint(2) DEFAULT '0' COMMENT '全部商品 0:不支持 1:支持,美团、饿百不支持，京东支持',
  `buy_limit_per_person_per_day_sign` tinyint(2) NOT NULL DEFAULT '0' COMMENT '每人每日限购件数限制 0:不支持 1:支持,美团不支持',
  `buy_limit_new_member_sign` tinyint(2) NOT NULL DEFAULT '0' COMMENT '门店新客限制 0:不支持 1:支持,美团支持',
  `fulfil_reduce_level_max` tinyint(2) NOT NULL DEFAULT '0' COMMENT '满减限制档数 京东最大3个,饿百最大3档',
  `fulfil_git_level_max` tinyint(2) NOT NULL DEFAULT '0' COMMENT '满赠限制档数 美团只支持1档 京东最大3个',
  `fulfil_git_dtl_max` tinyint(2) NOT NULL DEFAULT '0' COMMENT '满赠限制档数 美团只支持1档 京东最大3个',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '删除',
  PRIMARY KEY (`series`),
  KEY `ix_ec_scm_platform_product_stock_allocate_01` (`platform_id`,`tenant_num_id`,`data_sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='电商门店商品第三方平台库存分配缓存表';

-- ----------------------------
-- Table structure for pmt_pcy_view_config
-- ----------------------------
DROP TABLE IF EXISTS `pmt_pcy_view_config`;
CREATE TABLE `pmt_pcy_view_config` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式? 1：测试',
  `grade` int(11) DEFAULT '0' COMMENT '促销优先级 数值较小者优先',
  `grade_name` varchar(255) DEFAULT NULL,
  `type_num_id` int(11) DEFAULT '0' COMMENT '促销类型',
  `type_name` varchar(255) DEFAULT NULL,
  `view_num_id` int(11) DEFAULT '0',
  `view_name` varchar(1000) DEFAULT ' ' COMMENT '参数描述',
  `description` varchar(255) DEFAULT NULL,
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP,
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP,
  `create_user_id` bigint(20) DEFAULT '0',
  `last_update_user_id` bigint(20) DEFAULT '0',
  `cancelsign` char(1) DEFAULT '',
  `insertdata` char(1) DEFAULT '',
  `updatedata` char(1) DEFAULT '',
  `platform_ids` varchar(50) DEFAULT '' COMMENT '适用平台,多个平台用英文逗号分隔',
  `front_show_sign` tinyint(2) DEFAULT '0' COMMENT '前台是否展示 0否 1是',
  `image_url` varchar(255) DEFAULT '' COMMENT '促销图片',
  PRIMARY KEY (`series`),
  UNIQUE KEY `pk_pmt_pcy_view_config` (`tenant_num_id`,`data_sign`,`view_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_ppb_activity_hdr
-- ----------------------------
DROP TABLE IF EXISTS `pmt_ppb_activity_hdr`;
CREATE TABLE `pmt_ppb_activity_hdr` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `activity_num_id` bigint(20) DEFAULT '0' COMMENT '活动编号',
  `activity_name` varchar(100) DEFAULT ' ' COMMENT '活动名称',
  `status_num_id` bigint(20) DEFAULT '0' COMMENT '状态  0待审核 1已审核 2已终止',
  `start_dtme` datetime DEFAULT NULL COMMENT '活动开始时间',
  `end_dtme` datetime DEFAULT NULL COMMENT '活动结束时间',
  `activity_type_num_id` int(11) DEFAULT '0' COMMENT '活动类型  1 满额加价购  2 买A加价购',
  `activity_title` varchar(100) DEFAULT ' ' COMMENT '活动标题',
  `consumption_price` decimal(18,2) DEFAULT '0.00' COMMENT '消费门槛',
  `channel_num_id` int(11) DEFAULT NULL COMMENT '渠道',
  `if_all_shop` tinyint(2) DEFAULT NULL COMMENT '是否所有门店  0部分门店  1所有门店  ',
  `approver` bigint(20) DEFAULT '0' COMMENT '审核人',
  `approve_dtme` datetime DEFAULT NULL COMMENT '审核时间',
  `description` varchar(100) DEFAULT ' ' COMMENT '描述',
  `create_dtme` datetime DEFAULT NULL COMMENT '创建时间',
  `last_updtme` datetime DEFAULT NULL COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_ppb_activity_hdr_1` (`activity_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_ppb_activity_partake_item
-- ----------------------------
DROP TABLE IF EXISTS `pmt_ppb_activity_partake_item`;
CREATE TABLE `pmt_ppb_activity_partake_item` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `dimension_type` varchar(61) NOT NULL DEFAULT ' ' COMMENT '维度类型',
  `dimension_value` varchar(30) NOT NULL DEFAULT ' ' COMMENT '维度值',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  `dimension_content` varchar(100) DEFAULT ' ' COMMENT '维度内容',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_ppb_promote_item_1` (`item_num_id`) USING BTREE,
  KEY `ix_pmt_ppb_promote_item_2` (`reserved_no`,`tenant_num_id`,`data_sign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_ppb_activity_plus_item
-- ----------------------------
DROP TABLE IF EXISTS `pmt_ppb_activity_plus_item`;
CREATE TABLE `pmt_ppb_activity_plus_item` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '编号',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品编号',
  `item_name` varchar(100) DEFAULT ' ' COMMENT '中文全称',
  `lower_price` decimal(18,4) DEFAULT '0.0000' COMMENT '吊牌最低价',
  `high_price` decimal(18,4) DEFAULT '0.0000' COMMENT '吊牌最高价',
  `plus_price` decimal(18,4) DEFAULT '0.0000' COMMENT '加购价',
  `uniform_price` decimal(18,4) DEFAULT NULL COMMENT '统一价格',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_ppd_activity_plus_item_1` (`item_num_id`) USING BTREE,
  KEY `ix_pmt_ppd_activity_plus_item_2` (`reserved_no`,`tenant_num_id`,`data_sign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_ppb_activity_shop
-- ----------------------------
DROP TABLE IF EXISTS `pmt_ppb_activity_shop`;
CREATE TABLE `pmt_ppb_activity_shop` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '编号',
  `shop_num_id` bigint(20) DEFAULT '0' COMMENT '线上门店列表',
  `shop_name` varchar(200) DEFAULT NULL COMMENT '门店名称',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新人',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '禁用',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_pmt_ppb_activity_shop_1` (`series`) USING BTREE,
  KEY `ix_pmt_ppb_activity_shop_2` (`reserved_no`) USING BTREE,
  KEY `ix_pmt_ppb_activity_shop_3` (`shop_num_id`,`tenant_num_id`,`data_sign`,`cancelsign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_sd_back_gift_book
-- ----------------------------
DROP TABLE IF EXISTS `pmt_sd_back_gift_book`;
CREATE TABLE `pmt_sd_back_gift_book` (
  `SERIES` bigint(20) NOT NULL DEFAULT '0',
  `tenant_num_id` int(11) DEFAULT '0',
  `batch_no` bigint(20) DEFAULT '0',
  `ec_shop_num_id` bigint(20) DEFAULT '0',
  `LINE_NUM_ID` bigint(20) DEFAULT '0',
  `BACK_QTY` bigint(20) DEFAULT '0',
  `PMT_SIGN` bigint(20) DEFAULT '0',
  `CREATE_DTME` datetime DEFAULT NULL,
  `data_sign` tinyint(4) DEFAULT '0',
  `dimension_value` varchar(30) DEFAULT '',
  PRIMARY KEY (`SERIES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_sd_bl_buy_limit_tsc
-- ----------------------------
DROP TABLE IF EXISTS `pmt_sd_bl_buy_limit_tsc`;
CREATE TABLE `pmt_sd_bl_buy_limit_tsc` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `tml_num_id` varchar(25) NOT NULL DEFAULT '0' COMMENT '小票编号',
  `tml_line` bigint(25) NOT NULL DEFAULT '0' COMMENT '小票明细行号',
  `order_date` date DEFAULT NULL COMMENT '订单日期',
  `reserved_no` bigint(20) NOT NULL COMMENT '促销单号',
  `type_num_id` int(11) NOT NULL COMMENT '促销分类',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `usr_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '会员编号',
  `buy_limit_type` int(11) DEFAULT NULL COMMENT '限购的类型 1:限购件数 2:限购单数',
  `item_num_id` bigint(20) DEFAULT '0' COMMENT '参与限购的商品编号',
  `qty` decimal(18,4) DEFAULT '0.0000' COMMENT '数量',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户',
  `last_update_user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '更新用户',
  `cancelsign` char(1) NOT NULL DEFAULT 'N' COMMENT '删除',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_sd_bl_buy_limit_tsc_1` (`reserved_no`,`levelgroup_id`,`usr_num_id`,`item_num_id`) USING BTREE,
  KEY `ix_pmt_sd_bl_buy_limit_tsc_2` (`reserved_no`,`levelgroup_id`,`usr_num_id`,`item_num_id`,`order_date`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='促销限购流水表';

-- ----------------------------
-- Table structure for pmt_sd_bl_giftgroup_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_sd_bl_giftgroup_dtl`;
CREATE TABLE `pmt_sd_bl_giftgroup_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `so_num_id` bigint(20) DEFAULT '0' COMMENT '订单号',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '促销编号',
  `levelgroup_id` int(11) DEFAULT '0' COMMENT '分档编号',
  `gift_group_id` int(11) DEFAULT '0' COMMENT '赠品分组号',
  `gift_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '赠品数量',
  `group_qty` decimal(18,4) DEFAULT '0.0000' COMMENT '可赠组数',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_sd_bl_giftgroup_dtl_1` (`so_num_id`,`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_sd_bl_giftgroup_sub_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_sd_bl_giftgroup_sub_dtl`;
CREATE TABLE `pmt_sd_bl_giftgroup_sub_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `so_num_id` bigint(20) DEFAULT '0' COMMENT '订单号',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '促销单号',
  `levelgroup_id` int(11) DEFAULT '0' COMMENT '分组号',
  `gift_group_id` int(11) DEFAULT '0' COMMENT '赠品分组号',
  `item_num_id` bigint(20) DEFAULT '0' COMMENT '商品编号',
  `retail_price` decimal(12,2) DEFAULT '0.00' COMMENT '零售价',
  `standard_tradeprice` decimal(12,2) DEFAULT '0.00' COMMENT '标准价',
  `depreciate` decimal(12,2) DEFAULT '0.00' COMMENT '促销价',
  `qty` bigint(20) DEFAULT '0' COMMENT '赠送标准量',
  `fact_qty` bigint(20) DEFAULT '0' COMMENT '实际赠送量',
  `pcy_value` bigint(20) DEFAULT '0' COMMENT '赠品政策关键字',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_sd_bl_giftgroup_sub_dtl_1` (`so_num_id`,`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_sd_bl_level_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_sd_bl_level_dtl`;
CREATE TABLE `pmt_sd_bl_level_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `so_num_id` bigint(20) DEFAULT '0' COMMENT 'SO_NUM_ID',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT 'RESERVED_NO',
  `levelgroup_id` int(11) DEFAULT '0' COMMENT 'LEVELGROUP_ID',
  `type_num_id` bigint(20) DEFAULT '0' COMMENT 'TYPE_NUM_ID',
  `status_num_id` bigint(20) DEFAULT '0' COMMENT 'STATUS_NUM_ID',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_sd_bl_level_dtl_1` (`so_num_id`,`reserved_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_sd_bl_order_batch
-- ----------------------------
DROP TABLE IF EXISTS `pmt_sd_bl_order_batch`;
CREATE TABLE `pmt_sd_bl_order_batch` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `tml_num_id` varchar(25) NOT NULL DEFAULT '0' COMMENT '小票编号',
  `batch_id` int(4) NOT NULL DEFAULT '0' COMMENT '批次号',
  `promotion_exist` char(4) NOT NULL DEFAULT 'Y' COMMENT '存在促销标识',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_sd_bl_order_batch` (`tml_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_sd_bl_order_dtl
-- ----------------------------
DROP TABLE IF EXISTS `pmt_sd_bl_order_dtl`;
CREATE TABLE `pmt_sd_bl_order_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `tml_num_id` varchar(25) NOT NULL DEFAULT '0' COMMENT '小票编号',
  `hdr_series` varchar(25) NOT NULL DEFAULT '0' COMMENT '单头促销行号',
  `trade_price` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `deduct_amount` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '促销商品别扣减金额',
  `tml_line` bigint(20) NOT NULL DEFAULT '0' COMMENT '参与促销商品在小票中行号',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '参与促销商品编号',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `loc_pty_num_id` int(8) NOT NULL DEFAULT '0',
  `_dble_op_time` bigint(20) DEFAULT NULL COMMENT 'field for checking consistency',
  `third_charge_amount` decimal(10,2) DEFAULT '0.00' COMMENT '第三方平台承担金额',
  `shop_charge_amount` decimal(10,2) DEFAULT '0.00' COMMENT '商户承担金额',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_sd_bl_order_dtl` (`tml_num_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_sd_bl_order_gift
-- ----------------------------
DROP TABLE IF EXISTS `pmt_sd_bl_order_gift`;
CREATE TABLE `pmt_sd_bl_order_gift` (
  `series` bigint(20) DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `hdr_series` varchar(25) NOT NULL DEFAULT '0' COMMENT '单头行号',
  `tml_num_id` varchar(25) NOT NULL DEFAULT '0' COMMENT '小票编号',
  `tml_line` varchar(25) DEFAULT '0' COMMENT '小票行号',
  `item_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '赠品商品编号',
  `qty` bigint(20) NOT NULL DEFAULT '0' COMMENT '赠品数量',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `_dble_op_time` bigint(20) DEFAULT NULL COMMENT 'field for checking consistency',
  PRIMARY KEY (`hdr_series`,`tml_num_id`,`item_num_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ix_pmt_sd_bl_order_gift` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_sd_bl_order_gift_group
-- ----------------------------
DROP TABLE IF EXISTS `pmt_sd_bl_order_gift_group`;
CREATE TABLE `pmt_sd_bl_order_gift_group` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `gift_series` bigint(20) NOT NULL DEFAULT '0' COMMENT '订单赠品行号',
  `gift_group_id` int(11) NOT NULL DEFAULT '0' COMMENT '赠品组',
  `group_gift_qty` int(11) NOT NULL DEFAULT '0' COMMENT '赠品份数',
  `gift_qty` int(11) NOT NULL DEFAULT '0' COMMENT '赠品数量',
  PRIMARY KEY (`series`),
  KEY `ix_pmt_sd_bl_order_gift_group` (`gift_series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_sd_bl_order_hdr
-- ----------------------------
DROP TABLE IF EXISTS `pmt_sd_bl_order_hdr`;
CREATE TABLE `pmt_sd_bl_order_hdr` (
  `series` bigint(20) DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `description` varchar(255) DEFAULT ' ' COMMENT '促销描述',
  `tml_num_id` varchar(25) NOT NULL DEFAULT '0' COMMENT '小票编号',
  `reserved_no` bigint(20) NOT NULL COMMENT '促销单号',
  `third_party_promotion_id` varchar(200) NOT NULL DEFAULT ' ' COMMENT '第三方平台促销单号',
  `type_num_id` int(11) DEFAULT NULL COMMENT '促销分类',
  `levelgroup_id` int(11) NOT NULL DEFAULT '0' COMMENT '分档组号',
  `total_deduct_amount` decimal(18,2) NOT NULL DEFAULT '0.00' COMMENT '促销扣减总金额',
  `multiple_qty` int(11) DEFAULT '0' COMMENT '赠品翻倍次数',
  `ticketid` varchar(50) DEFAULT ' ' COMMENT '卡券规则ID',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `batch_id` int(4) NOT NULL DEFAULT '0' COMMENT '批次',
  `_dble_op_time` bigint(20) DEFAULT NULL COMMENT 'field for checking consistency',
  `coupon_no` varchar(50) DEFAULT NULL,
  `third_charge_amount` decimal(10,2) DEFAULT '0.00' COMMENT '第三方平台承担金额',
  `shop_charge_amount` decimal(10,2) DEFAULT '0.00' COMMENT '商户承担金额',
  PRIMARY KEY (`tml_num_id`,`third_party_promotion_id`,`reserved_no`,`levelgroup_id`,`batch_id`,`tenant_num_id`,`data_sign`),
  UNIQUE KEY `ux_pmt_sd_bl_order_hdr` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_syspromotion_remind
-- ----------------------------
DROP TABLE IF EXISTS `pmt_syspromotion_remind`;
CREATE TABLE `pmt_syspromotion_remind` (
  `series` int(11) NOT NULL DEFAULT '0' COMMENT '序号',
  `remind_id` int(11) DEFAULT '0',
  `remind_time` int(11) DEFAULT '0' COMMENT '提醒时间',
  `start_time` int(11) DEFAULT '0' COMMENT '活动开始时间',
  `remind_way` varchar(6) DEFAULT ' ' COMMENT '提醒方式',
  `remind_goal` varchar(255) DEFAULT ' ' COMMENT '提醒目标',
  `user_id` int(11) DEFAULT '0' COMMENT '订阅提醒用户id',
  `activity_name` varchar(255) DEFAULT ' ' COMMENT '订阅提醒的活动名称',
  `activity_id` int(11) DEFAULT '0' COMMENT '订阅提醒的活动id',
  `item_id` int(11) DEFAULT '0' COMMENT '订阅提醒的商品id',
  `item_name` varchar(255) DEFAULT ' ' COMMENT '订阅提醒的商品名称',
  `remind_status` tinyint(4) DEFAULT '0' COMMENT '是否已提醒',
  `add_time` int(11) DEFAULT '0' COMMENT '订阅时间',
  `platform` varchar(6) DEFAULT ' ' COMMENT '订阅平台',
  `url` varchar(255) DEFAULT ' ' COMMENT '订阅链接',
  `tenant_num_id` int(11) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '数据类型',
  PRIMARY KEY (`series`),
  KEY `ux_pmt_syspromotion_remind` (`remind_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for pmt_third_sync_concurrent
-- ----------------------------
DROP TABLE IF EXISTS `pmt_third_sync_concurrent`;
CREATE TABLE `pmt_third_sync_concurrent` (
  `series` bigint(20) NOT NULL COMMENT '序号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) NOT NULL COMMENT '0: 正式  1：测试',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '促销编号',
  `ec_shop_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '电商门店编号',
  `platform_id` int(11) NOT NULL DEFAULT '0' COMMENT '平台编号 5:饿了么，6:京东到家，7:美团外卖，8:饿百',
  `process_sign` tinyint(2) NOT NULL COMMENT '处理标识 0: 未处理 1：已处理',
  `batch_num_id` bigint(20) NOT NULL COMMENT '批次序号',
  `sync_sign` tinyint(2) NOT NULL COMMENT '同步状态 -1:未同步 0: 同步失败  1：同步成功',
  `sync_msg` varchar(255) DEFAULT NULL COMMENT '同步信息',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建用户',
  `last_update_user_id` bigint(20) DEFAULT NULL COMMENT '更新用户',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '删除',
  PRIMARY KEY (`series`),
  KEY `ux_pmt_third_sync_concurrent_01` (`reserved_no`,`ec_shop_num_id`,`platform_id`,`tenant_num_id`,`data_sign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='促销第三方同步并发控制表';

-- ----------------------------
-- Table structure for promotion_generate_lable_log
-- ----------------------------
DROP TABLE IF EXISTS `promotion_generate_lable_log`;
CREATE TABLE `promotion_generate_lable_log` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `function` varchar(20) NOT NULL COMMENT '功能',
  `request` varchar(100) NOT NULL COMMENT '访问参数',
  `error_message` varchar(2000) NOT NULL COMMENT '异常信息',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `spend_mill` int(11) DEFAULT '0' COMMENT '花费时间单位毫秒',
  `create_user_id` bigint(20) DEFAULT '0',
  PRIMARY KEY (`series`),
  KEY `ix_promotion_generate_lable_log` (`series`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sd_bl_so_pcy_ticket_dtl
-- ----------------------------
DROP TABLE IF EXISTS `sd_bl_so_pcy_ticket_dtl`;
CREATE TABLE `sd_bl_so_pcy_ticket_dtl` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `usr_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户编号',
  `ec_shop_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '电商门店编号',
  `tml_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '订单号',
  `reserved_no` bigint(20) NOT NULL DEFAULT '0' COMMENT '促销号码',
  `type_num_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '卡券类别 1:现金券 2:折扣券',
  `ticket_id` varchar(30) NOT NULL DEFAULT '0' COMMENT '规则号',
  `ticket_no` varchar(30) NOT NULL DEFAULT '0' COMMENT '券号',
  `issue_type` tinyint(4) NOT NULL COMMENT '发型类别１:平台 2:商户',
  `ticket_amount` decimal(18,2) DEFAULT '0.00',
  `ticket_use_amount` decimal(18,2) DEFAULT '0.00' COMMENT '现金券实际使用金额',
  `writeoff_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '核销（0：未核销，1：已核销）',
  `create_dtme` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(18) NOT NULL DEFAULT '0' COMMENT '用户',
  `last_update_user_id` bigint(18) NOT NULL DEFAULT '0' COMMENT '更新用户',
  `cancelsign` char(1) NOT NULL DEFAULT 'N' COMMENT '删除',
  `insertdata` char(1) NOT NULL DEFAULT 'Y' COMMENT '新增',
  `updatedata` char(1) NOT NULL DEFAULT 'N' COMMENT '更新',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '0: 正式  1：测试',
  `senddata` char(1) NOT NULL DEFAULT 'N' COMMENT '通讯',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_sd_bl_so_pcy_ticket_dtl` (`reserved_no`,`ticket_no`,`tenant_num_id`,`data_sign`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_consume_success_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_consume_success_detail`;
CREATE TABLE `sys_consume_success_detail` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `request_param` text NOT NULL COMMENT '参数',
  `success_detail` text NOT NULL COMMENT '内容',
  `_dble_op_time` bigint(20) DEFAULT NULL COMMENT 'field for checking consistency',
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_consume_success_detail_his
-- ----------------------------
DROP TABLE IF EXISTS `sys_consume_success_detail_his`;
CREATE TABLE `sys_consume_success_detail_his` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `request_param` varchar(2000) DEFAULT NULL COMMENT '参数',
  `success_detail` varchar(2000) NOT NULL COMMENT '内容',
  `_dble_op_time` bigint(20) DEFAULT NULL COMMENT 'field for checking consistency',
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_consume_success_detail_new
-- ----------------------------
DROP TABLE IF EXISTS `sys_consume_success_detail_new`;
CREATE TABLE `sys_consume_success_detail_new` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `request_param` text NOT NULL COMMENT '入参',
  `success_detail` text NOT NULL COMMENT '成功出参',
  `shard_id` int(3) DEFAULT '0' COMMENT '分片号',
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_consume_success_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_consume_success_log`;
CREATE TABLE `sys_consume_success_log` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `request_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '流程行号',
  `sub_system` varchar(20) NOT NULL COMMENT '子系统',
  `service_name` varchar(100) NOT NULL,
  `method_name` varchar(100) NOT NULL,
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bill_key` varchar(200) NOT NULL,
  `bill_value` varchar(200) NOT NULL,
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_sys_consume_success_log_1` (`tenant_num_id`,`data_sign`,`request_num_id`,`sub_system`,`service_name`,`method_name`,`bill_key`,`bill_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_consume_success_log_his
-- ----------------------------
DROP TABLE IF EXISTS `sys_consume_success_log_his`;
CREATE TABLE `sys_consume_success_log_his` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `request_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '流程行号',
  `sub_system` varchar(20) NOT NULL COMMENT '子系统',
  `service_name` varchar(100) NOT NULL,
  `method_name` varchar(100) NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bill_key` varchar(200) NOT NULL,
  `bill_value` varchar(200) NOT NULL,
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `_dble_op_time` bigint(20) DEFAULT NULL COMMENT 'field for checking consistency',
  PRIMARY KEY (`series`),
  UNIQUE KEY `ux_sys_consume_success_log_his_1` (`tenant_num_id`,`data_sign`,`request_num_id`,`sub_system`,`service_name`,`method_name`,`bill_key`,`bill_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sys_consume_success_log_new
-- ----------------------------
DROP TABLE IF EXISTS `sys_consume_success_log_new`;
CREATE TABLE `sys_consume_success_log_new` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `tenant_num_id` int(11) NOT NULL DEFAULT '0' COMMENT '租户ID',
  `request_num_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '流程编号',
  `sub_system` varchar(50) NOT NULL COMMENT '子系统',
  `service_name` varchar(100) NOT NULL COMMENT '服务名(首字母大写)',
  `method_name` varchar(100) NOT NULL COMMENT '方法名',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bill_key` varchar(200) NOT NULL COMMENT '业务主键名',
  `bill_value` varchar(200) NOT NULL COMMENT '业务主键值',
  `data_sign` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: 正式  1：测试',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后修改时间',
  `shard_id` int(3) DEFAULT '0' COMMENT '分片号',
  `message_series` bigint(20) DEFAULT '0' COMMENT '消息行号',
  PRIMARY KEY (`series`),
  KEY `ix_sys_consume_success_log_new_1` (`request_num_id`) USING BTREE,
  KEY `ix_sys_consume_success_log_new_2` (`bill_value`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for wls_temp
-- ----------------------------
DROP TABLE IF EXISTS `wls_temp`;
CREATE TABLE `wls_temp` (
  `series` bigint(20) NOT NULL DEFAULT '0' COMMENT '行号',
  `reserved_no` bigint(20) DEFAULT '0' COMMENT '调价单号',
  `sub_unit_num_id` bigint(20) DEFAULT '0' COMMENT '门店编码',
  `item_num_id` bigint(20) DEFAULT '0' COMMENT '商品主键',
  `itemid` varchar(60) NOT NULL DEFAULT '' COMMENT '商品商家编码',
  `supply_unit_num_id` bigint(20) DEFAULT '0' COMMENT '供应商编码',
  `retail_price` decimal(18,2) DEFAULT '0.00' COMMENT '零售价',
  `price` decimal(18,2) DEFAULT '0.00' COMMENT '执行售价',
  `vip_price` decimal(18,2) DEFAULT NULL COMMENT '会员价',
  `num1` bigint(20) DEFAULT '0' COMMENT '数字类型1',
  `num2` bigint(20) DEFAULT '0' COMMENT '数字类型2',
  `num3` bigint(20) DEFAULT '0' COMMENT '数字类型3',
  `num4` bigint(20) DEFAULT '0' COMMENT '数字类型4',
  `num5` bigint(20) DEFAULT '0' COMMENT '数字类型5',
  `char1` bigint(20) DEFAULT '0' COMMENT '字符类型1',
  `char2` bigint(20) DEFAULT '0' COMMENT '字符类型2',
  `char3` bigint(20) DEFAULT '0' COMMENT '字符类型3',
  `char4` bigint(20) DEFAULT '0' COMMENT '字符类型4',
  `char5` bigint(20) DEFAULT '0' COMMENT '字符类型5',
  `create_dtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_updtme` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  `create_user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `last_update_user_id` bigint(20) DEFAULT '0' COMMENT '更新用户',
  `cancelsign` char(1) DEFAULT 'N' COMMENT '删除',
  `tenant_num_id` bigint(20) DEFAULT '0' COMMENT '租户ID',
  `data_sign` tinyint(4) DEFAULT '0' COMMENT '正式或测试标识',
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
