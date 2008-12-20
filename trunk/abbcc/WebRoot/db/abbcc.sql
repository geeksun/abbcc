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

/*Table structure for table `cpgqxx` */

DROP TABLE IF EXISTS `cpgqxx`;

CREATE TABLE `cpgqxx` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `cpgqxxid` int(10) unsigned NOT NULL,
  `xxlx` varchar(1) default NULL,
  `cpmc` varchar(16) default NULL,
  `cpshlm` varchar(8) default NULL,
  `xxbt` varchar(64) default NULL,
  `cpsxid` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `jytjid` varchar(32) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`cpgqxxid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`cpgqxx_0`,`cpgqxx_1`,`cpgqxx_2`,`cpgqxx_3`);

/*Data for the table `cpgqxx` */

/*Table structure for table `cpgqxx_0` */

DROP TABLE IF EXISTS `cpgqxx_0`;

CREATE TABLE `cpgqxx_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `cpgqxxid` int(10) unsigned NOT NULL,
  `xxlx` varchar(1) default NULL,
  `cpmc` varchar(16) default NULL,
  `cpshlm` varchar(8) default NULL,
  `xxbt` varchar(64) default NULL,
  `cpsxid` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `jytjid` varchar(32) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`cpgqxxid`),
  KEY `cpgqxx_idx` (`hyjbxxid`,`cpgqxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `cpgqxx_0` */

/*Table structure for table `cpgqxx_1` */

DROP TABLE IF EXISTS `cpgqxx_1`;

CREATE TABLE `cpgqxx_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `cpgqxxid` int(10) unsigned NOT NULL,
  `xxlx` varchar(1) default NULL,
  `cpmc` varchar(16) default NULL,
  `cpshlm` varchar(8) default NULL,
  `xxbt` varchar(64) default NULL,
  `cpsxid` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `jytjid` varchar(32) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`cpgqxxid`),
  KEY `cpgqxx_idx` (`hyjbxxid`,`cpgqxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `cpgqxx_1` */

/*Table structure for table `cpgqxx_2` */

DROP TABLE IF EXISTS `cpgqxx_2`;

CREATE TABLE `cpgqxx_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `cpgqxxid` int(10) unsigned NOT NULL,
  `xxlx` varchar(1) default NULL,
  `cpmc` varchar(16) default NULL,
  `cpshlm` varchar(8) default NULL,
  `xxbt` varchar(64) default NULL,
  `cpsxid` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `jytjid` varchar(32) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  PRIMARY KEY  (`cpgqxxid`),
  KEY `cpgqxx_idx` (`hyjbxxid`,`cpgqxxid`),
  KEY `sqsj_idx` (`sqsj`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `cpgqxx_2` */

/*Table structure for table `cpgqxx_3` */

DROP TABLE IF EXISTS `cpgqxx_3`;

CREATE TABLE `cpgqxx_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `cpgqxxid` int(10) unsigned NOT NULL,
  `xxlx` varchar(1) default NULL,
  `cpmc` varchar(16) default NULL,
  `cpshlm` varchar(8) default NULL,
  `xxbt` varchar(64) default NULL,
  `cpsxid` varchar(32) default NULL,
  `xxsm` varchar(2000) default NULL,
  `tp1` varchar(32) default NULL,
  `tp2` varchar(32) default NULL,
  `tp3` varchar(32) default NULL,
  `xxyxq` varchar(1) default NULL,
  `jytjid` varchar(32) default NULL,
  `sqsj` varchar(20) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
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
  `gslx` varchar(2) default NULL,
  `gsmc` varchar(32) default NULL,
  `en_corp_name` varchar(81) default NULL,
  `gj` varchar(3) default NULL,
  `sf` varchar(3) default NULL,
  `djs` varchar(3) default NULL,
  `xjs` varchar(3) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(2) default NULL,
  `zyfx` varchar(2) default NULL,
  `xsdcp` varchar(32) default NULL,
  `cgdcp` varchar(32) default NULL
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`gsjbxx_0`,`gsjbxx_1`,`gsjbxx_2`,`gsjbxx_3`);

/*Data for the table `gsjbxx` */

/*Table structure for table `gsjbxx_0` */

DROP TABLE IF EXISTS `gsjbxx_0`;

CREATE TABLE `gsjbxx_0` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gslx` varchar(2) default NULL,
  `gsmc` varchar(32) default NULL,
  `en_corp_name` varchar(81) default NULL,
  `gj` varchar(3) default NULL,
  `sf` varchar(3) default NULL,
  `djs` varchar(3) default NULL,
  `xjs` varchar(3) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(2) default NULL,
  `zyfx` varchar(2) default NULL,
  `xsdcp` varchar(32) default NULL,
  `cgdcp` varchar(32) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsjbxx_0` */

/*Table structure for table `gsjbxx_1` */

DROP TABLE IF EXISTS `gsjbxx_1`;

CREATE TABLE `gsjbxx_1` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gslx` varchar(2) default NULL,
  `gsmc` varchar(32) default NULL,
  `en_corp_name` varchar(81) default NULL,
  `gj` varchar(3) default NULL,
  `sf` varchar(3) default NULL,
  `djs` varchar(3) default NULL,
  `xjs` varchar(3) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(2) default NULL,
  `zyfx` varchar(2) default NULL,
  `xsdcp` varchar(32) default NULL,
  `cgdcp` varchar(32) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsjbxx_1` */

/*Table structure for table `gsjbxx_2` */

DROP TABLE IF EXISTS `gsjbxx_2`;

CREATE TABLE `gsjbxx_2` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gslx` varchar(2) default NULL,
  `gsmc` varchar(32) default NULL,
  `en_corp_name` varchar(81) default NULL,
  `gj` varchar(3) default NULL,
  `sf` varchar(3) default NULL,
  `djs` varchar(3) default NULL,
  `xjs` varchar(3) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(2) default NULL,
  `zyfx` varchar(2) default NULL,
  `xsdcp` varchar(32) default NULL,
  `cgdcp` varchar(32) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsjbxx_2` */

/*Table structure for table `gsjbxx_3` */

DROP TABLE IF EXISTS `gsjbxx_3`;

CREATE TABLE `gsjbxx_3` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gslx` varchar(2) default NULL,
  `gsmc` varchar(32) default NULL,
  `en_corp_name` varchar(81) default NULL,
  `gj` varchar(3) default NULL,
  `sf` varchar(3) default NULL,
  `djs` varchar(3) default NULL,
  `xjs` varchar(3) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(2) default NULL,
  `zyfx` varchar(2) default NULL,
  `xsdcp` varchar(32) default NULL,
  `cgdcp` varchar(32) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsjbxx_3` */

/*Table structure for table `gsxxxx` */

DROP TABLE IF EXISTS `gsxxxx`;

CREATE TABLE `gsxxxx` (
  `hyjbxxid` int(10) unsigned default NULL,
  `zycp` varchar(128) default NULL,
  `zyhy` varchar(3) default NULL,
  `jyms` varchar(16) default NULL,
  `qylx` varchar(3) default NULL,
  `gszcd` varchar(8) default NULL,
  `zyjydd` varchar(6) default NULL,
  `gsclsj` varchar(11) default NULL,
  `fddbr` varchar(11) default NULL,
  `nyye` varchar(2) default NULL,
  `ygrs` varchar(2) default NULL,
  `jypp` varchar(16) default NULL,
  `zczb` varchar(2) default NULL,
  `zykhq` varchar(32) default NULL,
  `zysc` varchar(32) default NULL,
  `ncke` varchar(2) default NULL,
  `njke` varchar(2) default NULL,
  `khyh` varchar(16) default NULL,
  `zh` varchar(32) default NULL,
  `oem` varchar(1) default NULL,
  `yfbmrs` varchar(2) default NULL,
  `ycl` varchar(8) default NULL,
  `cfmj` varchar(12) default NULL,
  `zlkz` varchar(2) default NULL,
  `gltxrz` varchar(2) default NULL,
  `gsjs` varchar(2000) default NULL,
  `gstp` varchar(32) default NULL
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`gsxxxx_0`,`gsxxxx_1`,`gsxxxx_2`,`gsxxxx_3`);

/*Data for the table `gsxxxx` */

/*Table structure for table `gsxxxx_0` */

DROP TABLE IF EXISTS `gsxxxx_0`;

CREATE TABLE `gsxxxx_0` (
  `hyjbxxid` int(10) unsigned default NULL,
  `zycp` varchar(128) default NULL,
  `zyhy` varchar(3) default NULL,
  `jyms` varchar(16) default NULL,
  `qylx` varchar(3) default NULL,
  `gszcd` varchar(8) default NULL,
  `zyjydd` varchar(6) default NULL,
  `gsclsj` varchar(11) default NULL,
  `fddbr` varchar(11) default NULL,
  `nyye` varchar(2) default NULL,
  `ygrs` varchar(2) default NULL,
  `jypp` varchar(16) default NULL,
  `zczb` varchar(2) default NULL,
  `zykhq` varchar(32) default NULL,
  `zysc` varchar(32) default NULL,
  `ncke` varchar(2) default NULL,
  `njke` varchar(2) default NULL,
  `khyh` varchar(16) default NULL,
  `zh` varchar(32) default NULL,
  `oem` varchar(1) default NULL,
  `yfbmrs` varchar(2) default NULL,
  `ycl` varchar(8) default NULL,
  `cfmj` varchar(12) default NULL,
  `zlkz` varchar(2) default NULL,
  `gltxrz` varchar(2) default NULL,
  `gsjs` varchar(2000) default NULL,
  `gstp` varchar(32) default NULL,
  KEY `gsxxxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsxxxx_0` */

/*Table structure for table `gsxxxx_1` */

DROP TABLE IF EXISTS `gsxxxx_1`;

CREATE TABLE `gsxxxx_1` (
  `hyjbxxid` int(10) unsigned default NULL,
  `zycp` varchar(128) default NULL,
  `zyhy` varchar(3) default NULL,
  `jyms` varchar(16) default NULL,
  `qylx` varchar(3) default NULL,
  `gszcd` varchar(8) default NULL,
  `zyjydd` varchar(6) default NULL,
  `gsclsj` varchar(11) default NULL,
  `fddbr` varchar(11) default NULL,
  `nyye` varchar(2) default NULL,
  `ygrs` varchar(2) default NULL,
  `jypp` varchar(16) default NULL,
  `zczb` varchar(2) default NULL,
  `zykhq` varchar(32) default NULL,
  `zysc` varchar(32) default NULL,
  `ncke` varchar(2) default NULL,
  `njke` varchar(2) default NULL,
  `khyh` varchar(16) default NULL,
  `zh` varchar(32) default NULL,
  `oem` varchar(1) default NULL,
  `yfbmrs` varchar(2) default NULL,
  `ycl` varchar(8) default NULL,
  `cfmj` varchar(12) default NULL,
  `zlkz` varchar(2) default NULL,
  `gltxrz` varchar(2) default NULL,
  `gsjs` varchar(2000) default NULL,
  `gstp` varchar(32) default NULL,
  KEY `gsxxxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsxxxx_1` */

/*Table structure for table `gsxxxx_2` */

DROP TABLE IF EXISTS `gsxxxx_2`;

CREATE TABLE `gsxxxx_2` (
  `hyjbxxid` int(10) unsigned default NULL,
  `zycp` varchar(128) default NULL,
  `zyhy` varchar(3) default NULL,
  `jyms` varchar(16) default NULL,
  `qylx` varchar(3) default NULL,
  `gszcd` varchar(8) default NULL,
  `zyjydd` varchar(6) default NULL,
  `gsclsj` varchar(11) default NULL,
  `fddbr` varchar(11) default NULL,
  `nyye` varchar(2) default NULL,
  `ygrs` varchar(2) default NULL,
  `jypp` varchar(16) default NULL,
  `zczb` varchar(2) default NULL,
  `zykhq` varchar(32) default NULL,
  `zysc` varchar(32) default NULL,
  `ncke` varchar(2) default NULL,
  `njke` varchar(2) default NULL,
  `khyh` varchar(16) default NULL,
  `zh` varchar(32) default NULL,
  `oem` varchar(1) default NULL,
  `yfbmrs` varchar(2) default NULL,
  `ycl` varchar(8) default NULL,
  `cfmj` varchar(12) default NULL,
  `zlkz` varchar(2) default NULL,
  `gltxrz` varchar(2) default NULL,
  `gsjs` varchar(2000) default NULL,
  `gstp` varchar(32) default NULL,
  KEY `gsxxxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsxxxx_2` */

/*Table structure for table `gsxxxx_3` */

DROP TABLE IF EXISTS `gsxxxx_3`;

CREATE TABLE `gsxxxx_3` (
  `hyjbxxid` int(10) unsigned default NULL,
  `zycp` varchar(128) default NULL,
  `zyhy` varchar(3) default NULL,
  `jyms` varchar(16) default NULL,
  `qylx` varchar(3) default NULL,
  `gszcd` varchar(8) default NULL,
  `zyjydd` varchar(6) default NULL,
  `gsclsj` varchar(11) default NULL,
  `fddbr` varchar(11) default NULL,
  `nyye` varchar(2) default NULL,
  `ygrs` varchar(2) default NULL,
  `jypp` varchar(16) default NULL,
  `zczb` varchar(2) default NULL,
  `zykhq` varchar(32) default NULL,
  `zysc` varchar(32) default NULL,
  `ncke` varchar(2) default NULL,
  `njke` varchar(2) default NULL,
  `khyh` varchar(16) default NULL,
  `zh` varchar(32) default NULL,
  `oem` varchar(1) default NULL,
  `yfbmrs` varchar(2) default NULL,
  `ycl` varchar(8) default NULL,
  `cfmj` varchar(12) default NULL,
  `zlkz` varchar(2) default NULL,
  `gltxrz` varchar(2) default NULL,
  `gsjs` varchar(2000) default NULL,
  `gstp` varchar(32) default NULL,
  KEY `gsxxxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `gsxxxx_3` */

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
  `mmtswt` varchar(32) default NULL,
  `mmtsda` varchar(16) default NULL,
  `zsxm` varchar(16) default NULL,
  `xb` varchar(1) default NULL,
  `dzyx` varchar(64) default NULL,
  `gddh` varchar(16) default NULL,
  `cz` varchar(16) default NULL,
  `sj` varchar(16) default NULL,
  `member_type` varchar(3) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  `gslx` varchar(40) default NULL,
  `gsmc` varchar(60) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(80) default NULL,
  `zyhy` varchar(40) default NULL,
  `regist_time` datetime default '0000-00-00 00:00:00'
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`hyjbxx_0`,`hyjbxx_1`,`hyjbxx_2`,`hyjbxx_3`);

/*Data for the table `hyjbxx` */

insert  into `hyjbxx`(`hyjbxxid`,`hydlm`,`mm`,`mmtswt`,`mmtsda`,`zsxm`,`xb`,`dzyx`,`gddh`,`cz`,`sj`,`member_type`,`sfyx`,`scsj`,`gslx`,`gsmc`,`gsszd`,`jydz`,`zyhy`,`regist_time`) values (1,'microsoft','test88','我最欣赏的一位名人？','爱迪生','小李','1','iii@126.com','010-3838389','','','0','0',NULL,'3','清华同方','北京清华','北京海淀','1','2008-12-06 19:57:56'),(2,'test99','aaaaa','我最喜欢的歌曲？','geiek','琪琪','1','geks@163.com','033-99393931','','','0','0',NULL,'1','test','udja','usksk','1','2008-12-15 23:02:17'),(3,'jzq1998','geeksun','我最喜欢的歌曲？','sun','sun','0','sun@gmail.com','010-23883823','','','0','0',NULL,'3','sun','moon','bj','1','2008-12-15 23:28:52'),(5,'jzq1999','geeksun','我最喜欢的颜色？','绿色','姜志强','0','geeksun@163.com','010-3838383','020-10101','1938383838','0','0',NULL,'1','北京航空大学后勤集团二公司','北京大学本校','北京海淀','1','2008-12-02 00:42:37'),(6,'geeksun','ggggg','我最喜欢的歌星？','刘若英','李明','0','tis@tom.com','010-8282828','','','0','0',NULL,'4','英国大使馆','北京三元桥','北京朝阳','1','2008-12-02 23:38:32'),(4,'ttttt','sssss','我最喜欢的颜色？','blue','谢谢','0','usk@126.com','020-2929292','','','0','0',NULL,'1','多一点','库萨克','库斯科','1','2008-12-15 23:37:45'),(10,'jzq9899','geeksun','我最喜欢吃的食物？','鱼','小姜','0','jzq1999@china.cn','010-8383838','132334545','139393939393','0','0',NULL,'1','中国网通北京公司','北京东城','北京东城','1','2008-12-04 22:25:18'),(11,'google','geeksun','我最喜欢的颜色？','green','李开复','0','sun@gmail.com','010-8283845','','','0','0',NULL,'3','谷歌中国','北京海淀','清华科技园','1','2008-12-04 23:07:15');

/*Table structure for table `hyjbxx_0` */

DROP TABLE IF EXISTS `hyjbxx_0`;

CREATE TABLE `hyjbxx_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hydlm` varchar(32) default NULL,
  `mm` varchar(32) default NULL,
  `mmtswt` varchar(32) default NULL,
  `mmtsda` varchar(16) default NULL,
  `zsxm` varchar(16) default NULL,
  `xb` varchar(1) default NULL,
  `dzyx` varchar(64) default NULL,
  `gddh` varchar(16) default NULL,
  `cz` varchar(16) default NULL,
  `sj` varchar(16) default NULL,
  `member_type` varchar(3) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  `gslx` varchar(40) default NULL,
  `gsmc` varchar(60) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(80) default NULL,
  `zyhy` varchar(40) default NULL,
  `regist_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`),
  KEY `regist_time_idx` (`regist_time`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjbxx_0` */

insert  into `hyjbxx_0`(`hyjbxxid`,`hydlm`,`mm`,`mmtswt`,`mmtsda`,`zsxm`,`xb`,`dzyx`,`gddh`,`cz`,`sj`,`member_type`,`sfyx`,`scsj`,`gslx`,`gsmc`,`gsszd`,`jydz`,`zyhy`,`regist_time`) values (1,'microsoft','test88','我最欣赏的一位名人？','爱迪生','小李','1','iii@126.com','010-3838389','','','0','0',NULL,'3','清华同方','北京清华','北京海淀','1','2008-12-06 19:57:56'),(2,'test99','aaaaa','我最喜欢的歌曲？','geiek','琪琪','1','geks@163.com','033-99393931','','','0','0',NULL,'1','test','udja','usksk','1','2008-12-15 23:02:17'),(3,'jzq1998','geeksun','我最喜欢的歌曲？','sun','sun','0','sun@gmail.com','010-23883823','','','0','0',NULL,'3','sun','moon','bj','1','2008-12-15 23:28:52');

/*Table structure for table `hyjbxx_1` */

DROP TABLE IF EXISTS `hyjbxx_1`;

CREATE TABLE `hyjbxx_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hydlm` varchar(32) default NULL,
  `mm` varchar(32) default NULL,
  `mmtswt` varchar(32) default NULL,
  `mmtsda` varchar(16) default NULL,
  `zsxm` varchar(16) default NULL,
  `xb` varchar(1) default NULL,
  `dzyx` varchar(64) default NULL,
  `gddh` varchar(16) default NULL,
  `cz` varchar(16) default NULL,
  `sj` varchar(16) default NULL,
  `member_type` varchar(3) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  `gslx` varchar(40) default NULL,
  `gsmc` varchar(60) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(80) default NULL,
  `zyhy` varchar(40) default NULL,
  `regist_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`),
  KEY `regist_time_idx` (`regist_time`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjbxx_1` */

insert  into `hyjbxx_1`(`hyjbxxid`,`hydlm`,`mm`,`mmtswt`,`mmtsda`,`zsxm`,`xb`,`dzyx`,`gddh`,`cz`,`sj`,`member_type`,`sfyx`,`scsj`,`gslx`,`gsmc`,`gsszd`,`jydz`,`zyhy`,`regist_time`) values (5,'jzq1999','geeksun','我最喜欢的颜色？','绿色','姜志强','0','geeksun@163.com','010-3838383','020-10101','1938383838','0','0',NULL,'1','北京航空大学后勤集团二公司','北京大学本校','北京海淀','1','2008-12-02 00:42:37'),(6,'geeksun','ggggg','我最喜欢的歌星？','刘若英','李明','0','tis@tom.com','010-8282828','','','0','0',NULL,'4','英国大使馆','北京三元桥','北京朝阳','1','2008-12-02 23:38:32'),(4,'ttttt','sssss','我最喜欢的颜色？','blue','谢谢','0','usk@126.com','020-2929292','','','0','0',NULL,'1','多一点','库萨克','库斯科','1','2008-12-15 23:37:45');

/*Table structure for table `hyjbxx_2` */

DROP TABLE IF EXISTS `hyjbxx_2`;

CREATE TABLE `hyjbxx_2` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hydlm` varchar(32) default NULL,
  `mm` varchar(32) default NULL,
  `mmtswt` varchar(32) default NULL,
  `mmtsda` varchar(16) default NULL,
  `zsxm` varchar(16) default NULL,
  `xb` varchar(1) default NULL,
  `dzyx` varchar(64) default NULL,
  `gddh` varchar(16) default NULL,
  `cz` varchar(16) default NULL,
  `sj` varchar(16) default NULL,
  `member_type` varchar(3) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  `gslx` varchar(40) default NULL,
  `gsmc` varchar(60) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(80) default NULL,
  `zyhy` varchar(40) default NULL,
  `regist_time` datetime default '0000-00-00 00:00:00',
  PRIMARY KEY  (`hyjbxxid`),
  KEY `regist_time_idx` (`regist_time`),
  KEY `hyjbxxid_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `hyjbxx_2` */

insert  into `hyjbxx_2`(`hyjbxxid`,`hydlm`,`mm`,`mmtswt`,`mmtsda`,`zsxm`,`xb`,`dzyx`,`gddh`,`cz`,`sj`,`member_type`,`sfyx`,`scsj`,`gslx`,`gsmc`,`gsszd`,`jydz`,`zyhy`,`regist_time`) values (10,'jzq9899','geeksun','我最喜欢吃的食物？','鱼','小姜','0','jzq1999@china.cn','010-8383838','132334545','139393939393','0','0',NULL,'1','中国网通北京公司','北京东城','北京东城','1','2008-12-04 22:25:18'),(11,'google','geeksun','我最喜欢的颜色？','green','李开复','0','sun@gmail.com','010-8283845','','','0','0',NULL,'3','谷歌中国','北京海淀','清华科技园','1','2008-12-04 23:07:15');

/*Table structure for table `hyjbxx_3` */

DROP TABLE IF EXISTS `hyjbxx_3`;

CREATE TABLE `hyjbxx_3` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `hydlm` varchar(32) default NULL,
  `mm` varchar(32) default NULL,
  `mmtswt` varchar(32) default NULL,
  `mmtsda` varchar(16) default NULL,
  `zsxm` varchar(16) default NULL,
  `xb` varchar(1) default NULL,
  `dzyx` varchar(64) default NULL,
  `gddh` varchar(16) default NULL,
  `cz` varchar(16) default NULL,
  `sj` varchar(16) default NULL,
  `member_type` varchar(3) default NULL,
  `sfyx` varchar(1) default NULL,
  `scsj` varchar(20) default NULL,
  `gslx` varchar(40) default NULL,
  `gsmc` varchar(60) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(80) default NULL,
  `zyhy` varchar(40) default NULL,
  `regist_time` datetime default '0000-00-00 00:00:00',
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
  `hyjbxxid` int(10) unsigned NOT NULL,
  `jytjid` int(10) unsigned NOT NULL,
  `jldw` varchar(8) default NULL,
  `cpdj` varchar(8) default NULL,
  `zxqdl` varchar(8) default NULL,
  `ghzl` varchar(8) default NULL,
  `fhqx` varchar(3) default NULL,
  `gyslc` varchar(1) default NULL,
  PRIMARY KEY  (`jytjid`)
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`jytj_0`,`jytj_1`,`jytj_2`,`jytj_3`);

/*Data for the table `jytj` */

/*Table structure for table `jytj_0` */

DROP TABLE IF EXISTS `jytj_0`;

CREATE TABLE `jytj_0` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `jytjid` int(10) unsigned NOT NULL,
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

/*Table structure for table `jytj_1` */

DROP TABLE IF EXISTS `jytj_1`;

CREATE TABLE `jytj_1` (
  `hyjbxxid` int(10) unsigned NOT NULL,
  `jytjid` int(10) unsigned NOT NULL,
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
  `hyjbxxid` int(10) unsigned NOT NULL,
  `jytjid` int(10) unsigned NOT NULL,
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
  `hyjbxxid` int(10) unsigned NOT NULL,
  `jytjid` int(10) unsigned NOT NULL,
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

/*Table structure for table `pz` */

DROP TABLE IF EXISTS `pz`;

CREATE TABLE `pz` (
  `tablename` varchar(32) default NULL,
  `recnum` int(10) unsigned default NULL,
  `max_count` int(10) unsigned default NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

/*Data for the table `pz` */

insert  into `pz`(`tablename`,`recnum`,`max_count`) values ('hyjbxx',5,5),('hygrzl',0,0),('hygzjl',0,0),('hyjyjl',0,0),('gsjbxx',0,0),('gsxxxx',0,0),('cpgqxx',0,0),('jytj',0,0),('dljmsx',0,0),('jghz',0,0),('fwsx',0,0),('hzsx',0,0),('zpxx',0,0),('hysh',0,0),('xxsh',0,0),('gly',0,0),('wzjbxx',0,0);

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
SET FOREIGN_KEY_CHECKS=0;
		-- ----------------------------
		-- Table structure for producttype
		-- ----------------------------
		CREATE TABLE `producttype` (
		  `id` int(11) NOT NULL auto_increment COMMENT '产品类目表',
		  `parentid` int(11) NOT NULL,
		  `name` varchar(255) NOT NULL,
		  `typeid` varchar(100) default NULL,
		  `type` int(1) NOT NULL,
		  `isshow` int(1) NOT NULL,
		  PRIMARY KEY  (`id`)
		) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=gbk;

		-- ----------------------------
		-- Records 
		-- ----------------------------
		INSERT INTO `producttype` VALUES ('1', '0', 'aaaaa', '010101', '1', '1');
		INSERT INTO `producttype` VALUES ('2', '0', 'bbbb', null, '1', '1');
		INSERT INTO `producttype` VALUES ('3', '0', 'ccccc', null, '1', '1');
		INSERT INTO `producttype` VALUES ('4', '0', 'ddddd', null, '1', '1');
		INSERT INTO `producttype` VALUES ('5', '1', 'aaa_aaaa', null, '1', '1');
		INSERT INTO `producttype` VALUES ('6', '1', 'aaaa_bbbb', null, '1', '1');
		INSERT INTO `producttype` VALUES ('7', '1', 'aaaa_cccc', null, '1', '1');
		INSERT INTO `producttype` VALUES ('8', '5', 'aaaa_aaaa_aaaa', null, '1', '1');