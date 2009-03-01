/*
SQLyog Enterprise - MySQL GUI v6.03
Host - 5.0.22-community-nt : Database - abbcc
*********************************************************************
Server version : 5.0.22-community-nt
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `abbcc`;

USE `abbcc`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `company_logo` */

DROP TABLE IF EXISTS `company_logo`;

CREATE TABLE `company_logo` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `logo_info` varchar(5000) default NULL,
  `handle_time` datetime default '0000-00-00 00:00:00'
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`company_logo_0`,`company_logo_1`,`company_logo_2`,`company_logo_3`);

/*Data for the table `company_logo` */

insert  into `company_logo`(`hyjbxxid`,`logo_info`,`handle_time`) values (5,'<p>北京市朝阳区十里河乡西直河村小学29号<img height=\"338\" width=\"450\" alt=\"\" src=\"/abbcc/UserFiles/companylogo/06-08-07_1440.jpg\" /></p>','2009-01-18 23:34:22');

/*Table structure for table `company_logo_0` */

DROP TABLE IF EXISTS `company_logo_0`;

CREATE TABLE `company_logo_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `logo_info` varchar(5000) default NULL,
  `handle_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `company_logo_0` */

insert  into `company_logo_0`(`hyjbxxid`,`logo_info`,`handle_time`) values (5,'<p>北京市朝阳区十里河乡西直河村小学29号<img height=\"338\" width=\"450\" alt=\"\" src=\"/abbcc/UserFiles/companylogo/06-08-07_1440.jpg\" /></p>','2009-01-18 23:34:22');

/*Table structure for table `company_logo_1` */

DROP TABLE IF EXISTS `company_logo_1`;

CREATE TABLE `company_logo_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `logo_info` varchar(5000) default NULL,
  `handle_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `company_logo_1` */

/*Table structure for table `company_logo_2` */

DROP TABLE IF EXISTS `company_logo_2`;

CREATE TABLE `company_logo_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `logo_info` varchar(5000) default NULL,
  `handle_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `company_logo_2` */

/*Table structure for table `company_logo_3` */

DROP TABLE IF EXISTS `company_logo_3`;

CREATE TABLE `company_logo_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `logo_info` varchar(5000) default NULL,
  `handle_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `company_logo_3` */

/*Table structure for table `cpgqxx` */

DROP TABLE IF EXISTS `cpgqxx`;

CREATE TABLE `cpgqxx` (
  `hyjbxxid` int(11) unsigned NOT NULL,
  `cpgqxxid` int(11) unsigned NOT NULL,
  `xxlx` varchar(1) NOT NULL,
  `cpmc` varchar(16) NOT NULL,
  `cpshlm` varchar(8) NOT NULL,
  `xxbt` varchar(64) NOT NULL,
  `cpsxid` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) NOT NULL,
  `jytjid` varchar(32) default NULL,
  `sqsj` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `sfyx` varchar(1) NOT NULL,
  `scsj` timestamp NULL default '0000-00-00 00:00:00',
  `xxyxsj` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`cpgqxxid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`cpgqxx_0`,`cpgqxx_1`,`cpgqxx_2`,`cpgqxx_3`);

/*Data for the table `cpgqxx` */

insert  into `cpgqxx`(`hyjbxxid`,`cpgqxxid`,`xxlx`,`cpmc`,`cpshlm`,`xxbt`,`cpsxid`,`xxsm`,`tp1`,`tp2`,`tp3`,`xxyxq`,`jytjid`,`sqsj`,`sfyx`,`scsj`,`xxyxsj`) values (1,22,'1','testeee','124','供应',NULL,'sssss','FC7F950A54204B26856DDAC682E.gif','153DA9783CA215358B0B0E44C66.gif','371C05D923BBF6CC4C62C82BFC2.jpg','5',NULL,'2009-01-29 21:55:47','3',NULL,'2009-07-29 20:59:55');

/*Table structure for table `cpgqxx_0` */

DROP TABLE IF EXISTS `cpgqxx_0`;

CREATE TABLE `cpgqxx_0` (
  `hyjbxxid` int(11) unsigned NOT NULL,
  `cpgqxxid` int(11) unsigned NOT NULL,
  `xxlx` varchar(1) NOT NULL,
  `cpmc` varchar(16) NOT NULL,
  `cpshlm` varchar(8) NOT NULL,
  `xxbt` varchar(64) NOT NULL,
  `cpsxid` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) NOT NULL,
  `jytjid` varchar(32) default NULL,
  `sqsj` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `sfyx` varchar(1) NOT NULL,
  `scsj` timestamp NULL default '0000-00-00 00:00:00',
  `xxyxsj` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`cpgqxxid`),
  KEY `cpgqxx_idx` (`hyjbxxid`,`cpgqxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `cpgqxx_0` */

insert  into `cpgqxx_0`(`hyjbxxid`,`cpgqxxid`,`xxlx`,`cpmc`,`cpshlm`,`xxbt`,`cpsxid`,`xxsm`,`tp1`,`tp2`,`tp3`,`xxyxq`,`jytjid`,`sqsj`,`sfyx`,`scsj`,`xxyxsj`) values (1,22,'1','testeee','124','供应',NULL,'sssss','FC7F950A54204B26856DDAC682E.gif','153DA9783CA215358B0B0E44C66.gif','371C05D923BBF6CC4C62C82BFC2.jpg','5',NULL,'2009-01-29 21:55:47','3',NULL,'2009-07-29 20:59:55');

/*Table structure for table `cpgqxx_1` */

DROP TABLE IF EXISTS `cpgqxx_1`;

CREATE TABLE `cpgqxx_1` (
  `hyjbxxid` int(11) unsigned NOT NULL,
  `cpgqxxid` int(11) unsigned NOT NULL,
  `xxlx` varchar(1) NOT NULL,
  `cpmc` varchar(16) NOT NULL,
  `cpshlm` varchar(8) NOT NULL,
  `xxbt` varchar(64) NOT NULL,
  `cpsxid` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) NOT NULL,
  `jytjid` varchar(32) default NULL,
  `sqsj` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `sfyx` varchar(1) NOT NULL,
  `scsj` timestamp NULL default '0000-00-00 00:00:00',
  `xxyxsj` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`cpgqxxid`),
  KEY `cpgqxx_idx` (`hyjbxxid`,`cpgqxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `cpgqxx_1` */

/*Table structure for table `cpgqxx_2` */

DROP TABLE IF EXISTS `cpgqxx_2`;

CREATE TABLE `cpgqxx_2` (
  `hyjbxxid` int(11) unsigned NOT NULL,
  `cpgqxxid` int(11) unsigned NOT NULL,
  `xxlx` varchar(1) NOT NULL,
  `cpmc` varchar(16) NOT NULL,
  `cpshlm` varchar(8) NOT NULL,
  `xxbt` varchar(64) NOT NULL,
  `cpsxid` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) NOT NULL,
  `jytjid` varchar(32) default NULL,
  `sqsj` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `sfyx` varchar(1) NOT NULL,
  `scsj` timestamp NULL default '0000-00-00 00:00:00',
  `xxyxsj` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`cpgqxxid`),
  KEY `cpgqxx_idx` (`hyjbxxid`,`cpgqxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `cpgqxx_2` */

/*Table structure for table `cpgqxx_3` */

DROP TABLE IF EXISTS `cpgqxx_3`;

CREATE TABLE `cpgqxx_3` (
  `hyjbxxid` int(11) unsigned NOT NULL,
  `cpgqxxid` int(11) unsigned NOT NULL,
  `xxlx` varchar(1) NOT NULL,
  `cpmc` varchar(16) NOT NULL,
  `cpshlm` varchar(8) NOT NULL,
  `xxbt` varchar(64) NOT NULL,
  `cpsxid` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) NOT NULL,
  `jytjid` varchar(32) default NULL,
  `sqsj` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `sfyx` varchar(1) NOT NULL,
  `scsj` timestamp NULL default '0000-00-00 00:00:00',
  `xxyxsj` timestamp NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`cpgqxxid`),
  KEY `cpgqxx_idx` (`hyjbxxid`,`cpgqxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `cpgqxx_3` */

/*Table structure for table `dljmsx` */

DROP TABLE IF EXISTS `dljmsx`;

CREATE TABLE `dljmsx` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `dljmsxid` int(10) unsigned NOT NULL,
  `pp` varchar(16) default NULL,
  `jbtz` varchar(16) default NULL,
  `bzje` varchar(16) default NULL,
  `jmf` varchar(16) default NULL,
  `jmqy` varchar(6) default NULL,
  `ppfyd` varchar(32) default NULL,
  `yjhbr` varchar(4) default NULL,
  `yjhbzq` varchar(4) default NULL,
  `txqsyf` varchar(16) default NULL,
  `htqx` varchar(4) default NULL,
  `jmszs` varchar(8) default NULL,
  `txjysj` varchar(4) default NULL,
  `jyms` varchar(32) default NULL,
  `fzms` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`dljmsxid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`dljmsx_0`,`dljmsx_1`,`dljmsx_2`,`dljmsx_3`);

/*Data for the table `dljmsx` */

/*Table structure for table `dljmsx_0` */

DROP TABLE IF EXISTS `dljmsx_0`;

CREATE TABLE `dljmsx_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `dljmsxid` int(10) unsigned NOT NULL,
  `pp` varchar(16) default NULL,
  `jbtz` varchar(16) default NULL,
  `bzje` varchar(16) default NULL,
  `jmf` varchar(16) default NULL,
  `jmqy` varchar(6) default NULL,
  `ppfyd` varchar(32) default NULL,
  `yjhbr` varchar(4) default NULL,
  `yjhbzq` varchar(4) default NULL,
  `txqsyf` varchar(16) default NULL,
  `htqx` varchar(4) default NULL,
  `jmszs` varchar(8) default NULL,
  `txjysj` varchar(4) default NULL,
  `jyms` varchar(32) default NULL,
  `fzms` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`dljmsxid`),
  KEY `dljmsx_idx` (`hyjbxxid`,`dljmsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `dljmsx_0` */

/*Table structure for table `dljmsx_1` */

DROP TABLE IF EXISTS `dljmsx_1`;

CREATE TABLE `dljmsx_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `dljmsxid` int(10) unsigned NOT NULL,
  `pp` varchar(16) default NULL,
  `jbtz` varchar(16) default NULL,
  `bzje` varchar(16) default NULL,
  `jmf` varchar(16) default NULL,
  `jmqy` varchar(6) default NULL,
  `ppfyd` varchar(32) default NULL,
  `yjhbr` varchar(4) default NULL,
  `yjhbzq` varchar(4) default NULL,
  `txqsyf` varchar(16) default NULL,
  `htqx` varchar(4) default NULL,
  `jmszs` varchar(8) default NULL,
  `txjysj` varchar(4) default NULL,
  `jyms` varchar(32) default NULL,
  `fzms` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`dljmsxid`),
  KEY `dljmsx_idx` (`hyjbxxid`,`dljmsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `dljmsx_1` */

/*Table structure for table `dljmsx_2` */

DROP TABLE IF EXISTS `dljmsx_2`;

CREATE TABLE `dljmsx_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `dljmsxid` int(10) unsigned NOT NULL,
  `pp` varchar(16) default NULL,
  `jbtz` varchar(16) default NULL,
  `bzje` varchar(16) default NULL,
  `jmf` varchar(16) default NULL,
  `jmqy` varchar(6) default NULL,
  `ppfyd` varchar(32) default NULL,
  `yjhbr` varchar(4) default NULL,
  `yjhbzq` varchar(4) default NULL,
  `txqsyf` varchar(16) default NULL,
  `htqx` varchar(4) default NULL,
  `jmszs` varchar(8) default NULL,
  `txjysj` varchar(4) default NULL,
  `jyms` varchar(32) default NULL,
  `fzms` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`dljmsxid`),
  KEY `dljmsx_idx` (`hyjbxxid`,`dljmsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `dljmsx_2` */

/*Table structure for table `dljmsx_3` */

DROP TABLE IF EXISTS `dljmsx_3`;

CREATE TABLE `dljmsx_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `dljmsxid` int(10) unsigned NOT NULL,
  `pp` varchar(16) default NULL,
  `jbtz` varchar(16) default NULL,
  `bzje` varchar(16) default NULL,
  `jmf` varchar(16) default NULL,
  `jmqy` varchar(6) default NULL,
  `ppfyd` varchar(32) default NULL,
  `yjhbr` varchar(4) default NULL,
  `yjhbzq` varchar(4) default NULL,
  `txqsyf` varchar(16) default NULL,
  `htqx` varchar(4) default NULL,
  `jmszs` varchar(8) default NULL,
  `txjysj` varchar(4) default NULL,
  `jyms` varchar(32) default NULL,
  `fzms` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`dljmsxid`),
  KEY `dljmsx_idx` (`hyjbxxid`,`dljmsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `dljmsx_3` */

/*Table structure for table `fwsx` */

DROP TABLE IF EXISTS `fwsx`;

CREATE TABLE `fwsx` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `fwsxid` int(10) unsigned NOT NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`fwsxid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`fwsx_0`,`fwsx_1`,`fwsx_2`,`fwsx_3`);

/*Data for the table `fwsx` */

/*Table structure for table `fwsx_0` */

DROP TABLE IF EXISTS `fwsx_0`;

CREATE TABLE `fwsx_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `fwsxid` int(10) unsigned NOT NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`fwsxid`),
  KEY `fwsx_idx` (`hyjbxxid`,`fwsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `fwsx_0` */

/*Table structure for table `fwsx_1` */

DROP TABLE IF EXISTS `fwsx_1`;

CREATE TABLE `fwsx_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `fwsxid` int(10) unsigned NOT NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`fwsxid`),
  KEY `fwsx_idx` (`hyjbxxid`,`fwsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `fwsx_1` */

/*Table structure for table `fwsx_2` */

DROP TABLE IF EXISTS `fwsx_2`;

CREATE TABLE `fwsx_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `fwsxid` int(10) unsigned NOT NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`fwsxid`),
  KEY `fwsx_idx` (`hyjbxxid`,`fwsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `fwsx_2` */

/*Table structure for table `fwsx_3` */

DROP TABLE IF EXISTS `fwsx_3`;

CREATE TABLE `fwsx_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `fwsxid` int(10) unsigned NOT NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`fwsxid`),
  KEY `fwsx_idx` (`hyjbxxid`,`fwsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `fwsx_3` */

/*Table structure for table `gly` */

DROP TABLE IF EXISTS `gly`;

CREATE TABLE `gly` (
  `glyid` int(10) unsigned NOT NULL,
  `yhm` varchar(8) default NULL,
  `mm` varchar(16) default NULL,
  `zhdlsj` varchar(11) default NULL,
  `zhdlip` varchar(16) default NULL,
  `glqx` varchar(128) default NULL,
  PRIMARY KEY  (`glyid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gly` */

/*Table structure for table `gsjbxx` */

DROP TABLE IF EXISTS `gsjbxx`;

CREATE TABLE `gsjbxx` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gsmc` varchar(50) default NULL,
  `qylx` varchar(12) default NULL,
  `jyms` varchar(18) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(60) default NULL,
  `zyfx` varchar(12) default NULL,
  `xsdcp` varchar(60) default NULL,
  `cgdcp` varchar(60) default NULL,
  `gsjs` varchar(2000) default NULL
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`gsjbxx_0`,`gsjbxx_1`,`gsjbxx_2`,`gsjbxx_3`);

/*Data for the table `gsjbxx` */

insert  into `gsjbxx`(`hyjbxxid`,`gsmc`,`qylx`,`jyms`,`gsszd`,`jydz`,`zyhy`,`zyfx`,`xsdcp`,`cgdcp`,`gsjs`) values (3,'39','0','','china','china','125,126','3','test','try',''),(1,'838','0','1,4,','838','北京朝阳门','131','3','93','93','苏州市高科气体设备有限公司是一家股份制高新技术企业。高科公司座落于苏州美丽的虎丘风景区虎丘山旁，312国道96公里处，距沪宁高速约两公里路程，离火车站、汽车站也就四五公里，交通十分便利。专业从事各类工业气体设备的研制、开发、设计、生产、制造、销售及服务，提供专业的气体资源和配套产品。是国内知名工业气体设备专业生产厂商。是国内制造常温空分制氮系统全套设备最优秀的企业之一。公司在气体技术方面积累了相当丰富的理论和实践经验，雄厚的技术力量使公司的产品在市场上处于领先地位。\r\n高科公司产品包括变压吸附制氮装置、氮气纯化装置、氨分解制氢装置、变压吸附制氢装置、气体纯化装置、自动配比装置等气体设备，还承接各种气体非标设备的设计、制造和技术咨询。 \r\n高科公司生产各种气体设备服务于石油化工、化纤、热处理、冶金、玻璃、食品、医药、电子、国防航天、航空等主导领域中得到了广泛的应用。为国民经济建设做出了贡献。 \r\n先进的技术是高科发展的动力，优良的品质是高科秉承的传统，周到的服务是高科生存的根本。高科公司是国内较早开发、制造变压吸附制氮机的企业之一。氨分解制氢、变压吸附制氮装置等都是国内一流品质和技术的气体设备。 \r\n高科产品从设计开始就引入了服务概念，销售仅仅是为顾客服务的开始。高科以用户为中心，强化各项服务工作，全面实施“用户满意工程”，为每位顾客提供专业、快捷、满意的服务。\r\n高科期待着为你创造价值、创造财富 ……     \r\n    		'),(2,'88',NULL,NULL,'88','77',NULL,'3','82','73',NULL);

/*Table structure for table `gsjbxx_0` */

DROP TABLE IF EXISTS `gsjbxx_0`;

CREATE TABLE `gsjbxx_0` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gsmc` varchar(50) default NULL,
  `qylx` varchar(12) default NULL,
  `jyms` varchar(18) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(60) default NULL,
  `zyfx` varchar(12) default NULL,
  `xsdcp` varchar(60) default NULL,
  `cgdcp` varchar(60) default NULL,
  `gsjs` varchar(2000) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsjbxx_0` */

insert  into `gsjbxx_0`(`hyjbxxid`,`gsmc`,`qylx`,`jyms`,`gsszd`,`jydz`,`zyhy`,`zyfx`,`xsdcp`,`cgdcp`,`gsjs`) values (3,'39','0','','china','china','125,126','3','test','try',''),(1,'838','0','1,4,','838','北京朝阳门','131','3','93','93','苏州市高科气体设备有限公司是一家股份制高新技术企业。高科公司座落于苏州美丽的虎丘风景区虎丘山旁，312国道96公里处，距沪宁高速约两公里路程，离火车站、汽车站也就四五公里，交通十分便利。专业从事各类工业气体设备的研制、开发、设计、生产、制造、销售及服务，提供专业的气体资源和配套产品。是国内知名工业气体设备专业生产厂商。是国内制造常温空分制氮系统全套设备最优秀的企业之一。公司在气体技术方面积累了相当丰富的理论和实践经验，雄厚的技术力量使公司的产品在市场上处于领先地位。\r\n高科公司产品包括变压吸附制氮装置、氮气纯化装置、氨分解制氢装置、变压吸附制氢装置、气体纯化装置、自动配比装置等气体设备，还承接各种气体非标设备的设计、制造和技术咨询。 \r\n高科公司生产各种气体设备服务于石油化工、化纤、热处理、冶金、玻璃、食品、医药、电子、国防航天、航空等主导领域中得到了广泛的应用。为国民经济建设做出了贡献。 \r\n先进的技术是高科发展的动力，优良的品质是高科秉承的传统，周到的服务是高科生存的根本。高科公司是国内较早开发、制造变压吸附制氮机的企业之一。氨分解制氢、变压吸附制氮装置等都是国内一流品质和技术的气体设备。 \r\n高科产品从设计开始就引入了服务概念，销售仅仅是为顾客服务的开始。高科以用户为中心，强化各项服务工作，全面实施“用户满意工程”，为每位顾客提供专业、快捷、满意的服务。\r\n高科期待着为你创造价值、创造财富 ……     \r\n    		'),(2,'88',NULL,NULL,'88','77',NULL,'3','82','73',NULL);

/*Table structure for table `gsjbxx_1` */

DROP TABLE IF EXISTS `gsjbxx_1`;

CREATE TABLE `gsjbxx_1` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gsmc` varchar(50) default NULL,
  `qylx` varchar(12) default NULL,
  `jyms` varchar(18) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(60) default NULL,
  `zyfx` varchar(12) default NULL,
  `xsdcp` varchar(60) default NULL,
  `cgdcp` varchar(60) default NULL,
  `gsjs` varchar(2000) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsjbxx_1` */

/*Table structure for table `gsjbxx_2` */

DROP TABLE IF EXISTS `gsjbxx_2`;

CREATE TABLE `gsjbxx_2` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gsmc` varchar(50) default NULL,
  `qylx` varchar(12) default NULL,
  `jyms` varchar(18) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(60) default NULL,
  `zyfx` varchar(12) default NULL,
  `xsdcp` varchar(60) default NULL,
  `cgdcp` varchar(60) default NULL,
  `gsjs` varchar(2000) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsjbxx_2` */

/*Table structure for table `gsjbxx_3` */

DROP TABLE IF EXISTS `gsjbxx_3`;

CREATE TABLE `gsjbxx_3` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gsmc` varchar(50) default NULL,
  `qylx` varchar(12) default NULL,
  `jyms` varchar(18) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(60) default NULL,
  `zyfx` varchar(12) default NULL,
  `xsdcp` varchar(60) default NULL,
  `cgdcp` varchar(60) default NULL,
  `gsjs` varchar(2000) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsjbxx_3` */

/*Table structure for table `gsxxxx` */

DROP TABLE IF EXISTS `gsxxxx`;

CREATE TABLE `gsxxxx` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gszcd` varchar(80) default NULL,
  `gsclsj` varchar(12) default NULL,
  `fddbr` varchar(32) default NULL,
  `nyye` varchar(12) default NULL,
  `ygrs` varchar(12) default NULL,
  `jypp` varchar(60) default NULL,
  `zczb` varchar(12) default NULL,
  `zykhq` varchar(60) default NULL,
  `zysc` varchar(32) default NULL,
  `ncke` varchar(12) default NULL,
  `njke` varchar(12) default NULL,
  `khyh` varchar(60) default NULL,
  `zh` varchar(32) default NULL,
  `oem` varchar(12) default NULL,
  `yfbmrs` varchar(12) default NULL,
  `ycl` varchar(12) default NULL,
  `cfmj` varchar(12) default NULL,
  `zlkz` varchar(12) default NULL,
  `gltxrz` varchar(12) default NULL,
  `gstp` varchar(32) default NULL
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`gsxxxx_0`,`gsxxxx_1`,`gsxxxx_2`,`gsxxxx_3`);

/*Data for the table `gsxxxx` */

insert  into `gsxxxx`(`hyjbxxid`,`gszcd`,`gsclsj`,`fddbr`,`nyye`,`ygrs`,`jypp`,`zczb`,`zykhq`,`zysc`,`ncke`,`njke`,`khyh`,`zh`,`oem`,`yfbmrs`,`ycl`,`cfmj`,`zlkz`,`gltxrz`,`gstp`) values (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1,'消费水平','1234','一个人','0','3','test','12222','','','0','0','中国','天津','','3',NULL,'89282','','',NULL);

/*Table structure for table `gsxxxx_0` */

DROP TABLE IF EXISTS `gsxxxx_0`;

CREATE TABLE `gsxxxx_0` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gszcd` varchar(80) default NULL,
  `gsclsj` varchar(12) default NULL,
  `fddbr` varchar(32) default NULL,
  `nyye` varchar(12) default NULL,
  `ygrs` varchar(12) default NULL,
  `jypp` varchar(60) default NULL,
  `zczb` varchar(12) default NULL,
  `zykhq` varchar(60) default NULL,
  `zysc` varchar(32) default NULL,
  `ncke` varchar(12) default NULL,
  `njke` varchar(12) default NULL,
  `khyh` varchar(60) default NULL,
  `zh` varchar(32) default NULL,
  `oem` varchar(12) default NULL,
  `yfbmrs` varchar(12) default NULL,
  `ycl` varchar(12) default NULL,
  `cfmj` varchar(12) default NULL,
  `zlkz` varchar(12) default NULL,
  `gltxrz` varchar(12) default NULL,
  `gstp` varchar(32) default NULL,
  KEY `gsxxxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsxxxx_0` */

insert  into `gsxxxx_0`(`hyjbxxid`,`gszcd`,`gsclsj`,`fddbr`,`nyye`,`ygrs`,`jypp`,`zczb`,`zykhq`,`zysc`,`ncke`,`njke`,`khyh`,`zh`,`oem`,`yfbmrs`,`ycl`,`cfmj`,`zlkz`,`gltxrz`,`gstp`) values (3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1,'消费水平','1234','一个人','0','3','test','12222','','','0','0','中国','天津','','3',NULL,'89282','','',NULL);

/*Table structure for table `gsxxxx_1` */

DROP TABLE IF EXISTS `gsxxxx_1`;

CREATE TABLE `gsxxxx_1` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gszcd` varchar(80) default NULL,
  `gsclsj` varchar(12) default NULL,
  `fddbr` varchar(32) default NULL,
  `nyye` varchar(12) default NULL,
  `ygrs` varchar(12) default NULL,
  `jypp` varchar(60) default NULL,
  `zczb` varchar(12) default NULL,
  `zykhq` varchar(60) default NULL,
  `zysc` varchar(32) default NULL,
  `ncke` varchar(12) default NULL,
  `njke` varchar(12) default NULL,
  `khyh` varchar(60) default NULL,
  `zh` varchar(32) default NULL,
  `oem` varchar(12) default NULL,
  `yfbmrs` varchar(12) default NULL,
  `ycl` varchar(12) default NULL,
  `cfmj` varchar(12) default NULL,
  `zlkz` varchar(12) default NULL,
  `gltxrz` varchar(12) default NULL,
  `gstp` varchar(32) default NULL,
  KEY `gsxxxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsxxxx_1` */

/*Table structure for table `gsxxxx_2` */

DROP TABLE IF EXISTS `gsxxxx_2`;

CREATE TABLE `gsxxxx_2` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gszcd` varchar(80) default NULL,
  `gsclsj` varchar(12) default NULL,
  `fddbr` varchar(32) default NULL,
  `nyye` varchar(12) default NULL,
  `ygrs` varchar(12) default NULL,
  `jypp` varchar(60) default NULL,
  `zczb` varchar(12) default NULL,
  `zykhq` varchar(60) default NULL,
  `zysc` varchar(32) default NULL,
  `ncke` varchar(12) default NULL,
  `njke` varchar(12) default NULL,
  `khyh` varchar(60) default NULL,
  `zh` varchar(32) default NULL,
  `oem` varchar(12) default NULL,
  `yfbmrs` varchar(12) default NULL,
  `ycl` varchar(12) default NULL,
  `cfmj` varchar(12) default NULL,
  `zlkz` varchar(12) default NULL,
  `gltxrz` varchar(12) default NULL,
  `gstp` varchar(32) default NULL,
  KEY `gsxxxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsxxxx_2` */

/*Table structure for table `gsxxxx_3` */

DROP TABLE IF EXISTS `gsxxxx_3`;

CREATE TABLE `gsxxxx_3` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gszcd` varchar(80) default NULL,
  `gsclsj` varchar(12) default NULL,
  `fddbr` varchar(32) default NULL,
  `nyye` varchar(12) default NULL,
  `ygrs` varchar(12) default NULL,
  `jypp` varchar(60) default NULL,
  `zczb` varchar(12) default NULL,
  `zykhq` varchar(60) default NULL,
  `zysc` varchar(32) default NULL,
  `ncke` varchar(12) default NULL,
  `njke` varchar(12) default NULL,
  `khyh` varchar(60) default NULL,
  `zh` varchar(32) default NULL,
  `oem` varchar(12) default NULL,
  `yfbmrs` varchar(12) default NULL,
  `ycl` varchar(12) default NULL,
  `cfmj` varchar(12) default NULL,
  `zlkz` varchar(12) default NULL,
  `gltxrz` varchar(12) default NULL,
  `gstp` varchar(32) default NULL,
  KEY `gsxxxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsxxxx_3` */

/*Table structure for table `honor` */

DROP TABLE IF EXISTS `honor`;

CREATE TABLE `honor` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `honor_info` varchar(5000) default NULL,
  `create_time` datetime default '0000-00-00 00:00:00'
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`honor_0`,`honor_1`,`honor_2`,`honor_3`);

/*Data for the table `honor` */

insert  into `honor`(`hyjbxxid`,`honor_info`,`create_time`) values (2,'<p><span style=\"font-size: medium\">快过年了哦&middot;&middot;！</span></p>','2009-01-21 14:01:18'),(8,'<p><img height=\"307\" alt=\"\" width=\"296\" src=\"/abbcc/UserFiles/Image/e60e6817eb12725321a4e924.gif\" />是的，只有快才能早点达成目标！！！</p>','2009-01-17 19:30:53'),(5,'<p>中国SUN分公司好过河吗？<img height=\"338\" width=\"450\" alt=\"\" src=\"/abbcc/UserFiles/honor/06-08-07_1440(2).jpg\" />的，已经ready@</p>','2009-01-18 23:35:53'),(1,'<p><img height=\"338\" width=\"450\" alt=\"\" src=\"/abbcc/UserFiles/honor/7(000).jpg\" /></p>','2009-01-21 11:23:53');

/*Table structure for table `honor_0` */

DROP TABLE IF EXISTS `honor_0`;

CREATE TABLE `honor_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `honor_info` varchar(5000) default NULL,
  `create_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `honor_0` */

insert  into `honor_0`(`hyjbxxid`,`honor_info`,`create_time`) values (2,'<p><span style=\"font-size: medium\">快过年了哦&middot;&middot;！</span></p>','2009-01-21 14:01:18'),(8,'<p><img height=\"307\" alt=\"\" width=\"296\" src=\"/abbcc/UserFiles/Image/e60e6817eb12725321a4e924.gif\" />是的，只有快才能早点达成目标！！！</p>','2009-01-17 19:30:53'),(5,'<p>中国SUN分公司好过河吗？<img height=\"338\" width=\"450\" alt=\"\" src=\"/abbcc/UserFiles/honor/06-08-07_1440(2).jpg\" />的，已经ready@</p>','2009-01-18 23:35:53'),(1,'<p><img height=\"338\" width=\"450\" alt=\"\" src=\"/abbcc/UserFiles/honor/7(000).jpg\" /></p>','2009-01-21 11:23:53');

/*Table structure for table `honor_1` */

DROP TABLE IF EXISTS `honor_1`;

CREATE TABLE `honor_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `honor_info` varchar(5000) default NULL,
  `create_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `honor_1` */

/*Table structure for table `honor_2` */

DROP TABLE IF EXISTS `honor_2`;

CREATE TABLE `honor_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `honor_info` varchar(5000) default NULL,
  `create_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `honor_2` */

/*Table structure for table `honor_3` */

DROP TABLE IF EXISTS `honor_3`;

CREATE TABLE `honor_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `honor_info` varchar(5000) default NULL,
  `create_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `honor_3` */

/*Table structure for table `hygrzl` */

DROP TABLE IF EXISTS `hygrzl`;

CREATE TABLE `hygrzl` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `sr` varchar(16) default NULL,
  `xx` varchar(2) default NULL,
  `jg` varchar(16) default NULL,
  `slsp` varchar(2) default NULL,
  `xl` varchar(2) default NULL,
  `zjxy` varchar(2) default NULL,
  `grzy` varchar(32) default NULL,
  `xqah` varchar(64) default NULL,
  `zwjs` varchar(1000) default NULL,
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`hygrzl_0`,`hygrzl_1`,`hygrzl_2`,`hygrzl_3`);

/*Data for the table `hygrzl` */

/*Table structure for table `hygrzl_0` */

DROP TABLE IF EXISTS `hygrzl_0`;

CREATE TABLE `hygrzl_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `sr` varchar(16) default NULL,
  `xx` varchar(2) default NULL,
  `jg` varchar(16) default NULL,
  `slsp` varchar(2) default NULL,
  `xl` varchar(2) default NULL,
  `zjxy` varchar(2) default NULL,
  `grzy` varchar(32) default NULL,
  `xqah` varchar(64) default NULL,
  `zwjs` varchar(1000) default NULL,
  PRIMARY KEY  (`hyjbxxid`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hygrzl_0` */

/*Table structure for table `hygrzl_1` */

DROP TABLE IF EXISTS `hygrzl_1`;

CREATE TABLE `hygrzl_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `sr` varchar(16) default NULL,
  `xx` varchar(2) default NULL,
  `jg` varchar(16) default NULL,
  `slsp` varchar(2) default NULL,
  `xl` varchar(2) default NULL,
  `zjxy` varchar(2) default NULL,
  `grzy` varchar(32) default NULL,
  `xqah` varchar(64) default NULL,
  `zwjs` varchar(1000) default NULL,
  PRIMARY KEY  (`hyjbxxid`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hygrzl_1` */

/*Table structure for table `hygrzl_2` */

DROP TABLE IF EXISTS `hygrzl_2`;

CREATE TABLE `hygrzl_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `sr` varchar(16) default NULL,
  `xx` varchar(2) default NULL,
  `jg` varchar(16) default NULL,
  `slsp` varchar(2) default NULL,
  `xl` varchar(2) default NULL,
  `zjxy` varchar(2) default NULL,
  `grzy` varchar(32) default NULL,
  `xqah` varchar(64) default NULL,
  `zwjs` varchar(1000) default NULL,
  PRIMARY KEY  (`hyjbxxid`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hygrzl_2` */

/*Table structure for table `hygrzl_3` */

DROP TABLE IF EXISTS `hygrzl_3`;

CREATE TABLE `hygrzl_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `sr` varchar(16) default NULL,
  `xx` varchar(2) default NULL,
  `jg` varchar(16) default NULL,
  `slsp` varchar(2) default NULL,
  `xl` varchar(2) default NULL,
  `zjxy` varchar(2) default NULL,
  `grzy` varchar(32) default NULL,
  `xqah` varchar(64) default NULL,
  `zwjs` varchar(1000) default NULL,
  PRIMARY KEY  (`hyjbxxid`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hygrzl_3` */

/*Table structure for table `hygzjl` */

DROP TABLE IF EXISTS `hygzjl`;

CREATE TABLE `hygzjl` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hygzjlid` int(10) unsigned NOT NULL,
  `rzrq` varchar(32) default NULL,
  `gs` varchar(32) default NULL,
  `sshy` varchar(3) default NULL,
  `gm` varchar(2) default NULL,
  `bm` varchar(32) default NULL,
  `zw` varchar(32) default NULL,
  `gznr` varchar(1000) default NULL
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`hygzjl_0`,`hygzjl_1`,`hygzjl_2`,`hygzjl_3`);

/*Data for the table `hygzjl` */

/*Table structure for table `hygzjl_0` */

DROP TABLE IF EXISTS `hygzjl_0`;

CREATE TABLE `hygzjl_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hygzjlid` int(10) unsigned NOT NULL,
  `rzrq` varchar(32) default NULL,
  `gs` varchar(32) default NULL,
  `sshy` varchar(3) default NULL,
  `gm` varchar(2) default NULL,
  `bm` varchar(32) default NULL,
  `zw` varchar(32) default NULL,
  `gznr` varchar(1000) default NULL,
  PRIMARY KEY  (`hygzjlid`),
  KEY `hygzjl_idx` (`hyjbxxid`,`hygzjlid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hygzjl_0` */

/*Table structure for table `hygzjl_1` */

DROP TABLE IF EXISTS `hygzjl_1`;

CREATE TABLE `hygzjl_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hygzjlid` int(10) unsigned NOT NULL,
  `rzrq` varchar(32) default NULL,
  `gs` varchar(32) default NULL,
  `sshy` varchar(3) default NULL,
  `gm` varchar(2) default NULL,
  `bm` varchar(32) default NULL,
  `zw` varchar(32) default NULL,
  `gznr` varchar(1000) default NULL,
  PRIMARY KEY  (`hygzjlid`),
  KEY `hygzjl_idx` (`hyjbxxid`,`hygzjlid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hygzjl_1` */

/*Table structure for table `hygzjl_2` */

DROP TABLE IF EXISTS `hygzjl_2`;

CREATE TABLE `hygzjl_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hygzjlid` int(10) unsigned NOT NULL,
  `rzrq` varchar(32) default NULL,
  `gs` varchar(32) default NULL,
  `sshy` varchar(3) default NULL,
  `gm` varchar(2) default NULL,
  `bm` varchar(32) default NULL,
  `zw` varchar(32) default NULL,
  `gznr` varchar(1000) default NULL,
  PRIMARY KEY  (`hygzjlid`),
  KEY `hygzjl_idx` (`hyjbxxid`,`hygzjlid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hygzjl_2` */

/*Table structure for table `hygzjl_3` */

DROP TABLE IF EXISTS `hygzjl_3`;

CREATE TABLE `hygzjl_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hygzjlid` int(10) unsigned NOT NULL,
  `rzrq` varchar(32) default NULL,
  `gs` varchar(32) default NULL,
  `sshy` varchar(3) default NULL,
  `gm` varchar(2) default NULL,
  `bm` varchar(32) default NULL,
  `zw` varchar(32) default NULL,
  `gznr` varchar(1000) default NULL,
  PRIMARY KEY  (`hygzjlid`),
  KEY `hygzjl_idx` (`hyjbxxid`,`hygzjlid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hygzjl_3` */

/*Table structure for table `hyjbxx` */

DROP TABLE IF EXISTS `hyjbxx`;

CREATE TABLE `hyjbxx` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hydlm` varchar(32) default NULL,
  `mm` varchar(32) default NULL,
  `mmtswt` varchar(100) default NULL,
  `mmtsda` varchar(40) default NULL,
  `zsxm` varchar(16) default NULL,
  `xb` varchar(1) default NULL,
  `dzyx` varchar(64) default NULL,
  `gddh` varchar(32) default NULL,
  `cz` varchar(16) default NULL,
  `sj` varchar(16) default NULL,
  `member_type` varchar(3) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` datetime default NULL,
  `gslx` varchar(40) default NULL,
  `gsmc` varchar(60) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(80) default NULL,
  `zyhy` varchar(40) default NULL,
  `regist_time` datetime default NULL,
  `zw` varchar(30) default NULL
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`hyjbxx_0`,`hyjbxx_1`,`hyjbxx_2`,`hyjbxx_3`);

/*Data for the table `hyjbxx` */

insert  into `hyjbxx`(`hyjbxxid`,`hydlm`,`mm`,`mmtswt`,`mmtsda`,`zsxm`,`xb`,`dzyx`,`gddh`,`cz`,`sj`,`member_type`,`sfyx`,`scsj`,`gslx`,`gsmc`,`gsszd`,`jydz`,`zyhy`,`regist_time`,`zw`) values (2,'jzq98','geeks','我最喜欢吃的食物？','test','test','0','test@test.com','88/99/88','88','88','1','0','2010-01-21 00:00:00','1','88','88','77','1','2009-01-21 00:00:00','manager'),(1,'geeks','geeks','我最喜欢的歌星？','sun','sun','0','test@183.com','83/938/838','838','838','4','0','2012-01-21 00:00:00','1','838','838','83','1','2009-01-21 00:00:00','boss'),(3,'abbcc','geeks','我最喜欢的歌星？','test','test','0','test@163.com','299/929/83Q','939','93','0','0','2010-01-21 00:00:00','1','39','china','china','1','2009-01-21 00:00:00','test');

/*Table structure for table `hyjbxx_0` */

DROP TABLE IF EXISTS `hyjbxx_0`;

CREATE TABLE `hyjbxx_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hydlm` varchar(32) default NULL,
  `mm` varchar(32) default NULL,
  `mmtswt` varchar(100) default NULL,
  `mmtsda` varchar(40) default NULL,
  `zsxm` varchar(16) default NULL,
  `xb` varchar(1) default NULL,
  `dzyx` varchar(64) default NULL,
  `gddh` varchar(32) default NULL,
  `cz` varchar(16) default NULL,
  `sj` varchar(16) default NULL,
  `member_type` varchar(3) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` datetime default NULL,
  `gslx` varchar(40) default NULL,
  `gsmc` varchar(60) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(80) default NULL,
  `zyhy` varchar(40) default NULL,
  `regist_time` datetime default NULL,
  `zw` varchar(30) default NULL,
  PRIMARY KEY  (`hyjbxxid`),
  KEY `regist_time_idx` (`regist_time`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjbxx_0` */

insert  into `hyjbxx_0`(`hyjbxxid`,`hydlm`,`mm`,`mmtswt`,`mmtsda`,`zsxm`,`xb`,`dzyx`,`gddh`,`cz`,`sj`,`member_type`,`sfyx`,`scsj`,`gslx`,`gsmc`,`gsszd`,`jydz`,`zyhy`,`regist_time`,`zw`) values (2,'jzq98','geeks','我最喜欢吃的食物？','test','test','0','test@test.com','88/99/88','88','88','1','0','2010-01-21 00:00:00','1','88','88','77','1','2009-01-21 00:00:00','manager'),(1,'geeks','geeks','我最喜欢的歌星？','sun','sun','0','test@183.com','83/938/838','838','838','4','0','2012-01-21 00:00:00','1','838','838','83','1','2009-01-21 00:00:00','boss'),(3,'abbcc','geeks','我最喜欢的歌星？','test','test','0','test@163.com','299/929/83Q','939','93','0','0','2010-01-21 00:00:00','1','39','china','china','1','2009-01-21 00:00:00','test');

/*Table structure for table `hyjbxx_1` */

DROP TABLE IF EXISTS `hyjbxx_1`;

CREATE TABLE `hyjbxx_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hydlm` varchar(32) default NULL,
  `mm` varchar(32) default NULL,
  `mmtswt` varchar(100) default NULL,
  `mmtsda` varchar(40) default NULL,
  `zsxm` varchar(16) default NULL,
  `xb` varchar(1) default NULL,
  `dzyx` varchar(64) default NULL,
  `gddh` varchar(32) default NULL,
  `cz` varchar(16) default NULL,
  `sj` varchar(16) default NULL,
  `member_type` varchar(3) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` datetime default NULL,
  `gslx` varchar(40) default NULL,
  `gsmc` varchar(60) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(80) default NULL,
  `zyhy` varchar(40) default NULL,
  `regist_time` datetime default NULL,
  `zw` varchar(30) default NULL,
  PRIMARY KEY  (`hyjbxxid`),
  KEY `regist_time_idx` (`regist_time`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjbxx_1` */

/*Table structure for table `hyjbxx_2` */

DROP TABLE IF EXISTS `hyjbxx_2`;

CREATE TABLE `hyjbxx_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hydlm` varchar(32) default NULL,
  `mm` varchar(32) default NULL,
  `mmtswt` varchar(100) default NULL,
  `mmtsda` varchar(40) default NULL,
  `zsxm` varchar(16) default NULL,
  `xb` varchar(1) default NULL,
  `dzyx` varchar(64) default NULL,
  `gddh` varchar(32) default NULL,
  `cz` varchar(16) default NULL,
  `sj` varchar(16) default NULL,
  `member_type` varchar(3) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` datetime default NULL,
  `gslx` varchar(40) default NULL,
  `gsmc` varchar(60) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(80) default NULL,
  `zyhy` varchar(40) default NULL,
  `regist_time` datetime default NULL,
  `zw` varchar(30) default NULL,
  PRIMARY KEY  (`hyjbxxid`),
  KEY `regist_time_idx` (`regist_time`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjbxx_2` */

/*Table structure for table `hyjbxx_3` */

DROP TABLE IF EXISTS `hyjbxx_3`;

CREATE TABLE `hyjbxx_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hydlm` varchar(32) default NULL,
  `mm` varchar(32) default NULL,
  `mmtswt` varchar(100) default NULL,
  `mmtsda` varchar(40) default NULL,
  `zsxm` varchar(16) default NULL,
  `xb` varchar(1) default NULL,
  `dzyx` varchar(64) default NULL,
  `gddh` varchar(32) default NULL,
  `cz` varchar(16) default NULL,
  `sj` varchar(16) default NULL,
  `member_type` varchar(3) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` datetime default NULL,
  `gslx` varchar(40) default NULL,
  `gsmc` varchar(60) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(80) default NULL,
  `zyhy` varchar(40) default NULL,
  `regist_time` datetime default NULL,
  `zw` varchar(30) default NULL,
  PRIMARY KEY  (`hyjbxxid`),
  KEY `regist_time_idx` (`regist_time`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjbxx_3` */

/*Table structure for table `hyjyjl` */

DROP TABLE IF EXISTS `hyjyjl`;

CREATE TABLE `hyjyjl` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hyjyjlid` int(10) unsigned NOT NULL,
  `xxmc` varchar(32) default NULL,
  `xw` varchar(2) default NULL,
  `zy` varchar(3) default NULL,
  `xxksrq` varchar(8) default NULL,
  `xxjsrq` varchar(8) default NULL,
  `bz` varchar(1000) default NULL,
  PRIMARY KEY  (`hyjyjlid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`hyjyjl_0`,`hyjyjl_1`,`hyjyjl_2`,`hyjyjl_3`);

/*Data for the table `hyjyjl` */

/*Table structure for table `hyjyjl_0` */

DROP TABLE IF EXISTS `hyjyjl_0`;

CREATE TABLE `hyjyjl_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hyjyjlid` int(10) unsigned NOT NULL,
  `xxmc` varchar(32) default NULL,
  `xw` varchar(2) default NULL,
  `zy` varchar(3) default NULL,
  `xxksrq` varchar(8) default NULL,
  `xxjsrq` varchar(8) default NULL,
  `bz` varchar(1000) default NULL,
  PRIMARY KEY  (`hyjyjlid`),
  KEY `hyjyjl_idx` (`hyjbxxid`,`hyjyjlid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjyjl_0` */

/*Table structure for table `hyjyjl_1` */

DROP TABLE IF EXISTS `hyjyjl_1`;

CREATE TABLE `hyjyjl_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hyjyjlid` int(10) unsigned NOT NULL,
  `xxmc` varchar(32) default NULL,
  `xw` varchar(2) default NULL,
  `zy` varchar(3) default NULL,
  `xxksrq` varchar(8) default NULL,
  `xxjsrq` varchar(8) default NULL,
  `bz` varchar(1000) default NULL,
  PRIMARY KEY  (`hyjyjlid`),
  KEY `hyjyjl_idx` (`hyjbxxid`,`hyjyjlid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjyjl_1` */

/*Table structure for table `hyjyjl_2` */

DROP TABLE IF EXISTS `hyjyjl_2`;

CREATE TABLE `hyjyjl_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hyjyjlid` int(10) unsigned NOT NULL,
  `xxmc` varchar(32) default NULL,
  `xw` varchar(2) default NULL,
  `zy` varchar(3) default NULL,
  `xxksrq` varchar(8) default NULL,
  `xxjsrq` varchar(8) default NULL,
  `bz` varchar(1000) default NULL,
  PRIMARY KEY  (`hyjyjlid`),
  KEY `hyjyjl_idx` (`hyjbxxid`,`hyjyjlid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjyjl_2` */

/*Table structure for table `hyjyjl_3` */

DROP TABLE IF EXISTS `hyjyjl_3`;

CREATE TABLE `hyjyjl_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hyjyjlid` int(10) unsigned NOT NULL,
  `xxmc` varchar(32) default NULL,
  `xw` varchar(2) default NULL,
  `zy` varchar(3) default NULL,
  `xxksrq` varchar(8) default NULL,
  `xxjsrq` varchar(8) default NULL,
  `bz` varchar(1000) default NULL,
  PRIMARY KEY  (`hyjyjlid`),
  KEY `hyjyjl_idx` (`hyjbxxid`,`hyjyjlid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjyjl_3` */

/*Table structure for table `hysh` */

DROP TABLE IF EXISTS `hysh`;

CREATE TABLE `hysh` (
  `glyid` int(10) unsigned NOT NULL default '0',
  `hyjbxxid` int(10) unsigned default NULL,
  `zcsj` varchar(11) default NULL,
  `dqsj` varchar(11) default NULL,
  `zhdlsj` varchar(11) default NULL,
  `wdlts` varchar(16) default NULL,
  `zhdlip` varchar(16) default NULL,
  `sfsh` varchar(1) default NULL,
  `sfyfx` varchar(1) default NULL,
  `dlcs` varchar(10) default NULL,
  `ksrq` varchar(11) default NULL,
  `jsrq` varchar(11) default NULL,
  `cpdjtj` varchar(16) default NULL,
  PRIMARY KEY  (`glyid`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hysh` */

/*Table structure for table `hzsx` */

DROP TABLE IF EXISTS `hzsx`;

CREATE TABLE `hzsx` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hzsxid` int(10) unsigned NOT NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`hzsxid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`hzsx_0`,`hzsx_1`,`hzsx_2`,`hzsx_3`);

/*Data for the table `hzsx` */

/*Table structure for table `hzsx_0` */

DROP TABLE IF EXISTS `hzsx_0`;

CREATE TABLE `hzsx_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hzsxid` int(10) unsigned NOT NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`hzsxid`),
  KEY `hzsx_idx` (`hyjbxxid`,`hzsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hzsx_0` */

/*Table structure for table `hzsx_1` */

DROP TABLE IF EXISTS `hzsx_1`;

CREATE TABLE `hzsx_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hzsxid` int(10) unsigned NOT NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`hzsxid`),
  KEY `hzsx_idx` (`hyjbxxid`,`hzsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hzsx_1` */

/*Table structure for table `hzsx_2` */

DROP TABLE IF EXISTS `hzsx_2`;

CREATE TABLE `hzsx_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hzsxid` int(10) unsigned NOT NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`hzsxid`),
  KEY `hzsx_idx` (`hyjbxxid`,`hzsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hzsx_2` */

/*Table structure for table `hzsx_3` */

DROP TABLE IF EXISTS `hzsx_3`;

CREATE TABLE `hzsx_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hzsxid` int(10) unsigned NOT NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`hzsxid`),
  KEY `hzsx_idx` (`hyjbxxid`,`hzsxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hzsx_3` */

/*Table structure for table `jghz` */

DROP TABLE IF EXISTS `jghz`;

CREATE TABLE `jghz` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `jghzid` int(10) unsigned NOT NULL,
  `jglx` varchar(1) default NULL,
  `jgmc` varchar(32) default NULL,
  `jgsslm` varchar(32) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`jghzid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`jghz_0`,`jghz_1`,`jghz_2`,`jghz_3`);

/*Data for the table `jghz` */

/*Table structure for table `jghz_0` */

DROP TABLE IF EXISTS `jghz_0`;

CREATE TABLE `jghz_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `jghzid` int(10) unsigned NOT NULL,
  `jglx` varchar(1) default NULL,
  `jgmc` varchar(32) default NULL,
  `jgsslm` varchar(32) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`jghzid`),
  KEY `hyjbxxid_idx` (`hyjbxxid`,`jghzid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `jghz_0` */

/*Table structure for table `jghz_1` */

DROP TABLE IF EXISTS `jghz_1`;

CREATE TABLE `jghz_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `jghzid` int(10) unsigned NOT NULL,
  `jglx` varchar(1) default NULL,
  `jgmc` varchar(32) default NULL,
  `jgsslm` varchar(32) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`jghzid`),
  KEY `hyjbxxid_idx` (`hyjbxxid`,`jghzid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `jghz_1` */

/*Table structure for table `jghz_2` */

DROP TABLE IF EXISTS `jghz_2`;

CREATE TABLE `jghz_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `jghzid` int(10) unsigned NOT NULL,
  `jglx` varchar(1) default NULL,
  `jgmc` varchar(32) default NULL,
  `jgsslm` varchar(32) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`jghzid`),
  KEY `hyjbxxid_idx` (`hyjbxxid`,`jghzid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `jghz_2` */

/*Table structure for table `jghz_3` */

DROP TABLE IF EXISTS `jghz_3`;

CREATE TABLE `jghz_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `jghzid` int(10) unsigned NOT NULL,
  `jglx` varchar(1) default NULL,
  `jgmc` varchar(32) default NULL,
  `jgsslm` varchar(32) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`jghzid`),
  KEY `hyjbxxid_idx` (`hyjbxxid`,`jghzid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `jghz_3` */

/*Table structure for table `jytj` */

DROP TABLE IF EXISTS `jytj`;

CREATE TABLE `jytj` (
  `hyjbxxid` int(11) unsigned default NULL,
  `jytjid` int(10) unsigned NOT NULL,
  `cpgqxxid` int(11) unsigned NOT NULL,
  `jldw` varchar(8) default NULL,
  `cpdj` varchar(8) default NULL,
  `zxqdl` varchar(8) default NULL,
  `ghzl` varchar(8) default NULL,
  `fhqx` varchar(3) default NULL,
  `gyslc` varchar(1) default NULL,
  PRIMARY KEY  (`jytjid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`jytj_0`,`jytj_1`,`jytj_2`,`jytj_3`);

/*Data for the table `jytj` */

insert  into `jytj`(`hyjbxxid`,`jytjid`,`cpgqxxid`,`jldw`,`cpdj`,`zxqdl`,`ghzl`,`fhqx`,`gyslc`) values (1,37,22,'122','111','11','1111','10','2');

/*Table structure for table `jytj_0` */

DROP TABLE IF EXISTS `jytj_0`;

CREATE TABLE `jytj_0` (
  `hyjbxxid` int(11) unsigned default NULL,
  `jytjid` int(10) unsigned NOT NULL,
  `cpgqxxid` int(11) unsigned NOT NULL,
  `jldw` varchar(8) default NULL,
  `cpdj` varchar(8) default NULL,
  `zxqdl` varchar(8) default NULL,
  `ghzl` varchar(8) default NULL,
  `fhqx` varchar(3) default NULL,
  `gyslc` varchar(1) default NULL,
  PRIMARY KEY  (`jytjid`),
  KEY `jytj_idx` (`hyjbxxid`,`jytjid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `jytj_0` */

insert  into `jytj_0`(`hyjbxxid`,`jytjid`,`cpgqxxid`,`jldw`,`cpdj`,`zxqdl`,`ghzl`,`fhqx`,`gyslc`) values (1,37,22,'122','111','11','1111','10','2');

/*Table structure for table `jytj_1` */

DROP TABLE IF EXISTS `jytj_1`;

CREATE TABLE `jytj_1` (
  `hyjbxxid` int(11) unsigned default NULL,
  `jytjid` int(10) unsigned NOT NULL,
  `cpgqxxid` int(11) unsigned NOT NULL,
  `jldw` varchar(8) default NULL,
  `cpdj` varchar(8) default NULL,
  `zxqdl` varchar(8) default NULL,
  `ghzl` varchar(8) default NULL,
  `fhqx` varchar(3) default NULL,
  `gyslc` varchar(1) default NULL,
  PRIMARY KEY  (`jytjid`),
  KEY `jytj_idx` (`hyjbxxid`,`jytjid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `jytj_1` */

/*Table structure for table `jytj_2` */

DROP TABLE IF EXISTS `jytj_2`;

CREATE TABLE `jytj_2` (
  `hyjbxxid` int(11) unsigned default NULL,
  `jytjid` int(10) unsigned NOT NULL,
  `cpgqxxid` int(11) unsigned NOT NULL,
  `jldw` varchar(8) default NULL,
  `cpdj` varchar(8) default NULL,
  `zxqdl` varchar(8) default NULL,
  `ghzl` varchar(8) default NULL,
  `fhqx` varchar(3) default NULL,
  `gyslc` varchar(1) default NULL,
  PRIMARY KEY  (`jytjid`),
  KEY `jytj_idx` (`hyjbxxid`,`jytjid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `jytj_2` */

/*Table structure for table `jytj_3` */

DROP TABLE IF EXISTS `jytj_3`;

CREATE TABLE `jytj_3` (
  `hyjbxxid` int(11) unsigned default NULL,
  `jytjid` int(10) unsigned NOT NULL,
  `cpgqxxid` int(11) unsigned NOT NULL,
  `jldw` varchar(8) default NULL,
  `cpdj` varchar(8) default NULL,
  `zxqdl` varchar(8) default NULL,
  `ghzl` varchar(8) default NULL,
  `fhqx` varchar(3) default NULL,
  `gyslc` varchar(1) default NULL,
  PRIMARY KEY  (`jytjid`),
  KEY `jytj_idx` (`hyjbxxid`,`jytjid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `jytj_3` */

/*Table structure for table `manager` */

DROP TABLE IF EXISTS `manager`;

CREATE TABLE `manager` (
  `managerid` int(10) unsigned NOT NULL,
  `manager_name` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `true_name` varchar(30) default NULL,
  `status` varchar(30) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `manager` */

insert  into `manager`(`managerid`,`manager_name`,`password`,`true_name`,`status`) values (1,'geeks','geeks','小王','管理员');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL auto_increment,
  `tableName` varchar(100) default NULL,
  `cpgqxxIdFiled` varchar(100) NOT NULL,
  `idFiledName` varchar(100) NOT NULL,
  `otherFiledName` varchar(255) NOT NULL,
  `productTypeId` varchar(100) NOT NULL,
  `formName` varchar(255) NOT NULL,
  `propertyName` varchar(1000) NOT NULL,
  `isNull` varchar(255) NOT NULL,
  `remark` varchar(1000) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `isShow` varchar(255) NOT NULL,
  `isHidden` varchar(255) NOT NULL,
  `state` int(1) NOT NULL default '2',
  `createTime` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `productName` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`tableName`,`cpgqxxIdFiled`,`idFiledName`,`otherFiledName`,`productTypeId`,`formName`,`propertyName`,`isNull`,`remark`,`unit`,`type`,`isShow`,`isHidden`,`state`,`createTime`,`productName`) values (17,'product_table_7','cpgqxxid','id','f_0,f_1,f_2,f_3','124','f_0,f_1,f_2,f_3','我们多,你么我,他们,大家2','true,true,true,false',',,,','mm,mm,mm,mm','text,text,text,text','true,true,true,true','false,false,false,true',1,'2009-01-29 12:26:17','呵呵寺');

/*Table structure for table `product_table_7` */

DROP TABLE IF EXISTS `product_table_7`;

CREATE TABLE `product_table_7` (
  `id` int(11) NOT NULL auto_increment COMMENT '呵呵',
  `cpgqxxid` int(11) NOT NULL COMMENT '呵呵',
  `f_0` varchar(255) default NULL,
  `f_1` varchar(255) default NULL,
  `f_2` varchar(255) default NULL,
  `f_3` varchar(255) default NULL,
  `createtime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `product_table_7` */

insert  into `product_table_7`(`id`,`cpgqxxid`,`f_0`,`f_1`,`f_2`,`f_3`,`createtime`) values (2,17,'ddd','dd','11','11','2009-01-29 16:36:16'),(3,18,'111','11','111','11','2009-01-29 16:59:52'),(4,19,'dd','qq','qq','q','2009-01-29 17:05:24'),(5,20,'ff','ff','ff','ff','2009-01-29 17:08:18'),(6,21,'11','11','1','11','2009-01-29 17:10:57'),(7,22,'1ggg','1ddd','1ddd','fff','2009-01-29 17:12:27'),(8,23,'11','11','1','1','2009-01-29 21:33:26');

/*Table structure for table `producttype` */

DROP TABLE IF EXISTS `producttype`;

CREATE TABLE `producttype` (
  `id` int(11) NOT NULL auto_increment COMMENT '产品类目表',
  `parentid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `typeid` varchar(100) default NULL,
  `type` int(1) NOT NULL,
  `isshow` int(1) NOT NULL,
  `createtime` timestamp NOT NULL default '0000-00-00 00:00:00' on update CURRENT_TIMESTAMP,
  `priority` int(11) NOT NULL default '100',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `producttype` */

insert  into `producttype`(`id`,`parentid`,`name`,`typeid`,`type`,`isshow`,`createtime`,`priority`) values (112,0,'照明工业',NULL,1,2,'2009-01-28 19:31:52',1),(113,0,'电子元器件',NULL,1,2,'2008-12-21 19:54:30',3),(114,0,'传媒、广电',NULL,1,2,'2008-12-21 19:56:21',4),(115,0,'安全、防护',NULL,1,2,'2008-12-21 19:35:20',100),(116,0,'包装',NULL,1,2,'2008-12-21 19:54:24',2),(117,0,'纸业',NULL,1,2,'2008-12-21 19:35:28',100),(118,0,'办公、文教',NULL,1,2,'2008-12-21 19:35:25',100),(119,112,'白炽灯',NULL,1,2,'2008-12-21 20:01:40',0),(120,112,'冷光源',NULL,1,2,'2008-12-21 20:01:44',0),(121,112,'电光源材料',NULL,1,2,'2008-12-21 20:01:46',0),(122,112,'插座',NULL,1,2,'2008-12-21 20:01:49',0),(123,112,'其他未分类',NULL,1,2,'2009-01-28 19:32:09',0),(124,119,'彩色灯泡',NULL,1,2,'2008-12-21 20:02:54',0),(125,119,'摄影灯泡',NULL,1,2,'2008-12-21 20:02:59',0),(126,119,'微型灯泡',NULL,1,2,'2009-01-28 19:32:02',0),(127,119,'水下灯泡',NULL,1,2,'2009-01-28 19:32:04',0),(128,119,'其他白炽灯',NULL,1,2,'2009-01-28 19:32:06',100);

/*Table structure for table `pz` */

DROP TABLE IF EXISTS `pz`;

CREATE TABLE `pz` (
  `tablename` varchar(32) NOT NULL,
  `recnum` int(11) unsigned NOT NULL,
  `max_count` int(11) unsigned NOT NULL,
  PRIMARY KEY  (`tablename`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `pz` */

insert  into `pz`(`tablename`,`recnum`,`max_count`) values ('company_logo',0,0),('cpgqxx',23,23),('dljmsx',0,0),('fwsx',0,0),('gly',0,0),('gsjbxx',3,3),('gsxxxx',3,3),('honor',1,0),('hygrzl',0,0),('hygzjl',0,0),('hyjbxx',3,3),('hyjyjl',0,0),('hysh',0,0),('hzsx',0,0),('jghz',0,0),('jytj',38,36),('product_table',8,6),('technology',1,0),('wzjbxx',0,0),('xxsh',0,0),('zpxx',0,0);

/*Table structure for table `technology` */

DROP TABLE IF EXISTS `technology`;

CREATE TABLE `technology` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `tech_info` varchar(5000) default NULL,
  `handle_time` datetime default '0000-00-00 00:00:00'
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`technology_0`,`technology_1`,`technology_2`,`technology_3`);

/*Data for the table `technology` */

insert  into `technology`(`hyjbxxid`,`tech_info`,`handle_time`) values (5,'<p>中国一天公司采用顶尖技术为互联网的发展助力&middot;<img height=\"338\" width=\"450\" alt=\"\" src=\"/abbcc/UserFiles/technology/06-08-07_1206.jpg\" /></p>','2009-01-18 23:34:49'),(2,'<p><img height=\"338\" width=\"450\" alt=\"\" src=\"/abbcc/UserFiles/technology/leesy..jpg\" /></p>','2009-01-21 14:01:36');

/*Table structure for table `technology_0` */

DROP TABLE IF EXISTS `technology_0`;

CREATE TABLE `technology_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `tech_info` varchar(5000) default NULL,
  `handle_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `technology_0` */

insert  into `technology_0`(`hyjbxxid`,`tech_info`,`handle_time`) values (5,'<p>中国一天公司采用顶尖技术为互联网的发展助力&middot;<img height=\"338\" width=\"450\" alt=\"\" src=\"/abbcc/UserFiles/technology/06-08-07_1206.jpg\" /></p>','2009-01-18 23:34:49'),(2,'<p><img height=\"338\" width=\"450\" alt=\"\" src=\"/abbcc/UserFiles/technology/leesy..jpg\" /></p>','2009-01-21 14:01:36');

/*Table structure for table `technology_1` */

DROP TABLE IF EXISTS `technology_1`;

CREATE TABLE `technology_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `tech_info` varchar(5000) default NULL,
  `handle_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `technology_1` */

/*Table structure for table `technology_2` */

DROP TABLE IF EXISTS `technology_2`;

CREATE TABLE `technology_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `tech_info` varchar(5000) default NULL,
  `handle_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `technology_2` */

/*Table structure for table `technology_3` */

DROP TABLE IF EXISTS `technology_3`;

CREATE TABLE `technology_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `tech_info` varchar(5000) default NULL,
  `handle_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `technology_3` */

/*Table structure for table `trade_info` */

DROP TABLE IF EXISTS `trade_info`;

CREATE TABLE `trade_info` (
  `category_id` varchar(20) default NULL,
  `product_id` varchar(32) default NULL,
  `table_name` varchar(40) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

/*Data for the table `trade_info` */

insert  into `trade_info`(`category_id`,`product_id`,`table_name`) values ('0','01','照明工业\r'),('01','0101','白炽灯\r'),('0101','010101','彩色灯泡\r'),('0101','010102','卤钨灯泡\r'),('0101','010103','摄影灯泡\r'),('0101','010104','普通照明白炽灯\r'),('0101','010105','微型灯泡\r'),('0101','010106','聚光灯泡\r'),('0101','010107','水下灯泡\r'),('0101','010108','无影灯\r'),('0101','010109','红外线灯泡\r'),('0101','010110','指示灯泡\r'),('01','0102','气体放电灯\r'),('0102','010201','氙气灯\r'),('0102','010202','U型荧光灯管\r'),('0102','010203','冷阴极荧光灯\r'),('0102','010204','霓虹灯管\r'),('0102','010205','直型荧光灯\r'),('0102','010206','环型荧光灯管\r'),('0102','010207','汞灯\r'),('0102','010208','纳灯\r'),('0102','010209','金卤灯\r'),('0102','010210','氖灯\r'),('0102','010211','紫外线灯管\r'),('0102','010212','螺旋型荧光灯管\r'),('01','0103','冷光源\r'),('0103','010301','EL冷光片\r'),('0103','010302','发光二级管\r'),('01','0104','灯具配附件\r'),('0104','010401','端子\r'),('0104','010402','稳压器\r'),('0104','010403','灯箱\r'),('0104','010404','解片\r'),('0104','010405','触发器\r'),('0104','010406','光源器\r'),('0104','010407','灯杯\r'),('0104','010408','支架\r'),('0104','010409','灯头灯座\r'),('0104','010410','灯盘\r'),('0104','010411','灯柱灯杆\r'),('0104','010412','灯罩\r'),('0104','010413','启辉器\r'),('0104','010414','镇流器\r'),('01','0105','电光源材料\r'),('0105','010501','灯丝');

/*Table structure for table `wzjbxx` */

DROP TABLE IF EXISTS `wzjbxx`;

CREATE TABLE `wzjbxx` (
  `glyid` int(10) unsigned NOT NULL default '0',
  `wzmc` varchar(32) default NULL,
  `wz` varchar(64) default NULL,
  `gsmc` varchar(32) default NULL,
  `yb` varchar(10) default NULL,
  `lxdh` varchar(32) default NULL,
  `cz` varchar(32) default NULL,
  `dzyxs` varchar(32) default NULL,
  `dzyxt` varchar(32) default NULL,
  `lxr` varchar(32) default NULL,
  `qq` varchar(16) default NULL,
  `hysh` varchar(1) default NULL,
  `xxsh` varchar(1) default NULL,
  `cpsh` varchar(1) default NULL,
  `zpsh` varchar(1) default NULL,
  PRIMARY KEY  (`glyid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `wzjbxx` */

/*Table structure for table `xxsh` */

DROP TABLE IF EXISTS `xxsh`;

CREATE TABLE `xxsh` (
  `glyid` int(10) unsigned NOT NULL default '0',
  `hyjbxxid` int(10) unsigned default NULL,
  `xxid` int(10) unsigned default NULL,
  `fbr` varchar(16) default NULL,
  `fbrq` varchar(11) default NULL,
  `sfsh` varchar(1) default NULL,
  `shlx` varchar(2) default NULL,
  PRIMARY KEY  (`glyid`),
  KEY `xxid_idx` (`xxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `xxsh` */

/*Table structure for table `zpxx` */

DROP TABLE IF EXISTS `zpxx`;

CREATE TABLE `zpxx` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `zpxxid` int(10) unsigned NOT NULL,
  `zpzt` varchar(64) default NULL,
  `yxq` varchar(1) default NULL,
  `hy` varchar(2) default NULL,
  `gshy` varchar(2) default NULL,
  `gzdd` varchar(32) default NULL,
  `zprs` varchar(4) default NULL,
  `gznx` varchar(2) default NULL,
  `xzsp` varchar(2) default NULL,
  `zwyq` varchar(32) default NULL,
  `lxr` varchar(16) default NULL,
  `lxfs` varchar(16) default NULL,
  `bz` varchar(1000) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`zpxxid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`zpxx_0`,`zpxx_1`,`zpxx_2`,`zpxx_3`);

/*Data for the table `zpxx` */

/*Table structure for table `zpxx_0` */

DROP TABLE IF EXISTS `zpxx_0`;

CREATE TABLE `zpxx_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `zpxxid` int(10) unsigned NOT NULL,
  `zpzt` varchar(64) default NULL,
  `yxq` varchar(1) default NULL,
  `hy` varchar(2) default NULL,
  `gshy` varchar(2) default NULL,
  `gzdd` varchar(32) default NULL,
  `zprs` varchar(4) default NULL,
  `gznx` varchar(2) default NULL,
  `xzsp` varchar(2) default NULL,
  `zwyq` varchar(32) default NULL,
  `lxr` varchar(16) default NULL,
  `lxfs` varchar(16) default NULL,
  `bz` varchar(1000) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`zpxxid`),
  KEY `zpxx_idx` (`hyjbxxid`,`zpxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `zpxx_0` */

/*Table structure for table `zpxx_1` */

DROP TABLE IF EXISTS `zpxx_1`;

CREATE TABLE `zpxx_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `zpxxid` int(10) unsigned NOT NULL,
  `zpzt` varchar(64) default NULL,
  `yxq` varchar(1) default NULL,
  `hy` varchar(2) default NULL,
  `gshy` varchar(2) default NULL,
  `gzdd` varchar(32) default NULL,
  `zprs` varchar(4) default NULL,
  `gznx` varchar(2) default NULL,
  `xzsp` varchar(2) default NULL,
  `zwyq` varchar(32) default NULL,
  `lxr` varchar(16) default NULL,
  `lxfs` varchar(16) default NULL,
  `bz` varchar(1000) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`zpxxid`),
  KEY `zpxx_idx` (`hyjbxxid`,`zpxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `zpxx_1` */

/*Table structure for table `zpxx_2` */

DROP TABLE IF EXISTS `zpxx_2`;

CREATE TABLE `zpxx_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `zpxxid` int(10) unsigned NOT NULL,
  `zpzt` varchar(64) default NULL,
  `yxq` varchar(1) default NULL,
  `hy` varchar(2) default NULL,
  `gshy` varchar(2) default NULL,
  `gzdd` varchar(32) default NULL,
  `zprs` varchar(4) default NULL,
  `gznx` varchar(2) default NULL,
  `xzsp` varchar(2) default NULL,
  `zwyq` varchar(32) default NULL,
  `lxr` varchar(16) default NULL,
  `lxfs` varchar(16) default NULL,
  `bz` varchar(1000) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`zpxxid`),
  KEY `zpxx_idx` (`hyjbxxid`,`zpxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `zpxx_2` */

/*Table structure for table `zpxx_3` */

DROP TABLE IF EXISTS `zpxx_3`;

CREATE TABLE `zpxx_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `zpxxid` int(10) unsigned NOT NULL,
  `zpzt` varchar(64) default NULL,
  `yxq` varchar(1) default NULL,
  `hy` varchar(2) default NULL,
  `gshy` varchar(2) default NULL,
  `gzdd` varchar(32) default NULL,
  `zprs` varchar(4) default NULL,
  `gznx` varchar(2) default NULL,
  `xzsp` varchar(2) default NULL,
  `zwyq` varchar(32) default NULL,
  `lxr` varchar(16) default NULL,
  `lxfs` varchar(16) default NULL,
  `bz` varchar(1000) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`zpxxid`),
  KEY `zpxx_idx` (`hyjbxxid`,`zpxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `zpxx_3` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
