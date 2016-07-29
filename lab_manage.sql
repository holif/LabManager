-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- 主机: 127.0.0.1
-- 生成日期: 2016 �?07 �?29 �?16:40
-- 服务器版本: 5.6.11
-- PHP 版本: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `lab_manage`
--
CREATE DATABASE IF NOT EXISTS `lab_manage` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `lab_manage`;

-- --------------------------------------------------------

--
-- 表的结构 `buy`
--

CREATE TABLE IF NOT EXISTS `buy` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `deviceName` varchar(30) NOT NULL COMMENT '设备名',
  `deviceType` varchar(20) NOT NULL COMMENT '设备类别',
  `deviceClassNo` varchar(20) NOT NULL COMMENT '设备型号',
  `deviceSize` varchar(20) NOT NULL COMMENT '设备规格',
  `devicePrice` varchar(15) NOT NULL COMMENT '设备单价',
  `applyDate` varchar(12) NOT NULL COMMENT '申请日期',
  `permission` varchar(10) NOT NULL COMMENT '是否批准',
  `checkDate` varchar(12) NOT NULL COMMENT '查阅日期',
  `agent` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `buy`
--

INSERT INTO `buy` (`id`, `deviceName`, `deviceType`, `deviceClassNo`, `deviceSize`, `devicePrice`, `applyDate`, `permission`, `checkDate`, `agent`) VALUES
(1, '设备3', '类别三', 'S123', '123*52', '555', '2016-06-20', '已批准', '2016-06-20', 'xiehan'),
(13, '设备4', '类别四', '4444', '456', '456', '2016-06-20', '已批准', '2016-06-20', 'xiehan'),
(14, '设备5', '类别一', '12322', '22222', '2222', '2016-06-20', '已批准', '2016-06-20', 'xiehan'),
(15, '111', '类别一', '324', '345', '5677', '2016-06-20', '已批准', '2016-06-20', 'xiehan'),
(16, '数据线', '类别五', 's4546', '123222', '500', '2016-06-20', '已批准', '2016-06-20', 'xiehan');

-- --------------------------------------------------------

--
-- 表的结构 `device`
--

CREATE TABLE IF NOT EXISTS `device` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(10) NOT NULL COMMENT '设备类别',
  `deviceName` varchar(30) NOT NULL COMMENT '设备名',
  `deviceNo` varchar(20) NOT NULL COMMENT '设备编号',
  `deviceClassNo` varchar(20) NOT NULL COMMENT '设备型号',
  `deviceSize` varchar(10) NOT NULL COMMENT '设备规格',
  `devicePrice` varchar(15) NOT NULL COMMENT '设备价格',
  `buyDate` varchar(12) NOT NULL COMMENT '购置日期',
  `manufacturer` varchar(30) NOT NULL COMMENT '生产厂家',
  `warranty` varchar(10) NOT NULL COMMENT '保修期',
  `operator` varchar(10) NOT NULL COMMENT '经办人',
  `maintenanceRecord` varchar(10) NOT NULL COMMENT '维修记录',
  `scrap` varchar(10) NOT NULL COMMENT '报废',
  PRIMARY KEY (`id`),
  UNIQUE KEY `deviceNo` (`deviceNo`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `device`
--

INSERT INTO `device` (`id`, `type`, `deviceName`, `deviceNo`, `deviceClassNo`, `deviceSize`, `devicePrice`, `buyDate`, `manufacturer`, `warranty`, `operator`, `maintenanceRecord`, `scrap`) VALUES
(1, '类别一', '设备1', '20160503001', '100001', 'S-2016001', '88888.9', '2016-05-03', '滁州市天佑机械有限公司丰乐大道分部', '3年', '媛妹子', '有', '否'),
(2, '类别二', '设备2', '20160508001', '100002', 'S-2016002', '85639.0', '2016-05-08', '滁州市天佑机械有限公司丰乐大道分部', '3年', '管理衰', '有', '否'),
(4, '类别三', '设备3', '1466398246822', 'S123', '123*52', '555', '2016-06-20', '滁州市机械厂', '三年', '管理员', '无', '否'),
(5, '类别四', '设备4', '1466398248059', '4444', '456', '456', '2016-06-20', '滁州市机械厂', '三年', '管理员', '无', '否'),
(6, '类别一', '设备5', '1466399374748', '12322', '22222', '2222', '2016-06-20', '滁州市机械厂', '三年', '管理员', '无', '否'),
(7, '类别一', '111', '1466412531224', '324', '345', '5677', '2016-06-20', '滁州市机械厂', '三年', '管理员', '无', '否'),
(8, '类别五', '数据线', '1466417211739', 's4546', '123222', '500', '2016-06-20', '滁州市机械厂', '三年', '管理员', '无', '否');

-- --------------------------------------------------------

--
-- 表的结构 `repair`
--

CREATE TABLE IF NOT EXISTS `repair` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `deviceName` varchar(30) NOT NULL COMMENT '设备名',
  `deviceNo` varchar(20) NOT NULL COMMENT '设备编号',
  `applyDate` varchar(12) NOT NULL COMMENT '申请时间',
  `repairDate` varchar(12) DEFAULT NULL COMMENT '维修日期',
  `repairManufacturer` varchar(30) NOT NULL COMMENT '修理厂家',
  `repairPrice` varchar(15) NOT NULL COMMENT '修理费用',
  `agent` varchar(10) NOT NULL COMMENT '责任人',
  `repairInfo` varchar(100) NOT NULL COMMENT '维修信息',
  `state` varchar(20) NOT NULL COMMENT '申请状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `repair`
--

INSERT INTO `repair` (`id`, `deviceName`, `deviceNo`, `applyDate`, `repairDate`, `repairManufacturer`, `repairPrice`, `agent`, `repairInfo`, `state`) VALUES
(11, '设备5', '1466399374748', '2016-06-20', '2016-06-20', '', '', 'xiehan', '', '已批准'),
(10, '设备4', '1466398248059', '2016-06-20', '2016-06-20', '滁州', '122', 'xiehan', '杀杀杀', '已批准'),
(4, '设备3', '1466398246822', '2016-06-20', '2016-06-20', '滁州修理厂', '123', 'xiehan', '损坏', '已批准'),
(12, '设备4', '1466398248059', '2016-06-20', '2016-07-06', '滁州修理厂', '120', 'xiehan', '损坏', '已批准');

-- --------------------------------------------------------

--
-- 表的结构 `scrap`
--

CREATE TABLE IF NOT EXISTS `scrap` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `deviceName` varchar(30) NOT NULL COMMENT '设备名',
  `deviceNo` varchar(20) NOT NULL COMMENT '设备编号',
  `applyDate` varchar(12) NOT NULL COMMENT '申请日期',
  `permission` varchar(10) NOT NULL COMMENT '批准',
  `agent` varchar(20) DEFAULT NULL,
  `checkDate` varchar(12) DEFAULT NULL COMMENT '查阅日期',
  `scrapInfo` varchar(100) NOT NULL COMMENT '报废信息',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `scrap`
--

INSERT INTO `scrap` (`id`, `deviceName`, `deviceNo`, `applyDate`, `permission`, `agent`, `checkDate`, `scrapInfo`) VALUES
(4, '设备3', '1466398246822', '2016-06-20', '已批准', 'xiehan', '2016-06-20', '损坏严重');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `permission` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `permission`, `name`) VALUES
(1, 'admin', 'admin', '1', '管理员'),
(2, 'test1', 'test', '0', 'xiehan');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
