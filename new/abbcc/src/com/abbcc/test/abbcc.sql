/*
MySQL Data Transfer
Source Host: localhost
Source Database: abbcc
Target Host: localhost
Target Database: abbcc
Date: 2008-12-22 0:27:46
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for comment
-- ----------------------------
CREATE TABLE `comment` (
  `id` int(11) NOT NULL auto_increment,
  `userid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `answerTitle` varchar(255) default NULL,
  `answerContent` varchar(1000) default NULL,
  `state` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for cpgqxx
-- ----------------------------
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

-- ----------------------------
-- Table structure for cpgqxx_0
-- ----------------------------
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

-- ----------------------------
-- Table structure for cpgqxx_1
-- ----------------------------
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

-- ----------------------------
-- Table structure for cpgqxx_2
-- ----------------------------
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

-- ----------------------------
-- Table structure for cpgqxx_3
-- ----------------------------
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

-- ----------------------------
-- Table structure for dljmsx
-- ----------------------------
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

-- ----------------------------
-- Table structure for dljmsx_0
-- ----------------------------
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

-- ----------------------------
-- Table structure for dljmsx_1
-- ----------------------------
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

-- ----------------------------
-- Table structure for dljmsx_2
-- ----------------------------
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

-- ----------------------------
-- Table structure for dljmsx_3
-- ----------------------------
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

-- ----------------------------
-- Table structure for fwsx
-- ----------------------------
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

-- ----------------------------
-- Table structure for fwsx_0
-- ----------------------------
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

-- ----------------------------
-- Table structure for fwsx_1
-- ----------------------------
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

-- ----------------------------
-- Table structure for fwsx_2
-- ----------------------------
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

-- ----------------------------
-- Table structure for fwsx_3
-- ----------------------------
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

-- ----------------------------
-- Table structure for gly
-- ----------------------------
CREATE TABLE `gly` (
  `glyid` int(10) unsigned NOT NULL,
  `yhm` varchar(8) default NULL,
  `mm` varchar(16) default NULL,
  `zhdlsj` varchar(11) default NULL,
  `zhdlip` varchar(16) default NULL,
  `glqx` varchar(128) default NULL,
  PRIMARY KEY  (`glyid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for gsjbxx
-- ----------------------------
CREATE TABLE `gsjbxx` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gsmc` varchar(50) default NULL,
  `qylx` varchar(12) default NULL,
  `jyms` varchar(18) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(12) default NULL,
  `zyfx` varchar(12) default NULL,
  `xsdcp` varchar(32) default NULL,
  `cgdcp` varchar(32) default NULL
) ENGINE=MRG_MyISAM DEFAULT CHARSET=gbk INSERT_METHOD=LAST UNION=(`gsjbxx_0`,`gsjbxx_1`,`gsjbxx_2`,`gsjbxx_3`);

-- ----------------------------
-- Table structure for gsjbxx_0
-- ----------------------------
CREATE TABLE `gsjbxx_0` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gsmc` varchar(50) default NULL,
  `qylx` varchar(12) default NULL,
  `jyms` varchar(18) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(12) default NULL,
  `zyfx` varchar(12) default NULL,
  `xsdcp` varchar(32) default NULL,
  `cgdcp` varchar(32) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for gsjbxx_1
-- ----------------------------
CREATE TABLE `gsjbxx_1` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gsmc` varchar(50) default NULL,
  `qylx` varchar(12) default NULL,
  `jyms` varchar(18) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(12) default NULL,
  `zyfx` varchar(12) default NULL,
  `xsdcp` varchar(32) default NULL,
  `cgdcp` varchar(32) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for gsjbxx_2
-- ----------------------------
CREATE TABLE `gsjbxx_2` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gsmc` varchar(50) default NULL,
  `qylx` varchar(12) default NULL,
  `jyms` varchar(18) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(12) default NULL,
  `zyfx` varchar(12) default NULL,
  `xsdcp` varchar(32) default NULL,
  `cgdcp` varchar(32) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for gsjbxx_3
-- ----------------------------
CREATE TABLE `gsjbxx_3` (
  `hyjbxxid` int(10) unsigned default NULL,
  `gsmc` varchar(50) default NULL,
  `qylx` varchar(12) default NULL,
  `jyms` varchar(18) default NULL,
  `gsszd` varchar(80) default NULL,
  `jydz` varchar(64) default NULL,
  `zyhy` varchar(12) default NULL,
  `zyfx` varchar(12) default NULL,
  `xsdcp` varchar(32) default NULL,
  `cgdcp` varchar(32) default NULL,
  KEY `gsjbxx_idx` (`hyjbxxid`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for gsxxxx
-- ----------------------------
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

-- ----------------------------
-- Table structure for gsxxxx_0
-- ----------------------------
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

-- ----------------------------
-- Table structure for gsxxxx_1
-- ----------------------------
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

-- ----------------------------
-- Table structure for gsxxxx_2
-- ----------------------------
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

-- ----------------------------
-- Table structure for gsxxxx_3
-- ----------------------------
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

-- ----------------------------
-- Table structure for hygrzl
-- ----------------------------
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

-- ----------------------------
-- Table structure for hygrzl_0
-- ----------------------------
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

-- ----------------------------
-- Table structure for hygrzl_1
-- ----------------------------
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

-- ----------------------------
-- Table structure for hygrzl_2
-- ----------------------------
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

-- ----------------------------
-- Table structure for hygrzl_3
-- ----------------------------
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

-- ----------------------------
-- Table structure for hygzjl
-- ----------------------------
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

-- ----------------------------
-- Table structure for hygzjl_0
-- ----------------------------
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

-- ----------------------------
-- Table structure for hygzjl_1
-- ----------------------------
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

-- ----------------------------
-- Table structure for hygzjl_2
-- ----------------------------
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

-- ----------------------------
-- Table structure for hygzjl_3
-- ----------------------------
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

-- ----------------------------
-- Table structure for hyjbxx
-- ----------------------------
