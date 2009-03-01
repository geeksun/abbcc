 
CREATE TABLE `product` (
  `id` int(11) NOT NULL auto_increment,
  `tableName` varchar(100) default NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
 
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

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `product` VALUES ('7', 'product_table_4', 'id', 'f_0,f_1,f_2', '124', 'f_0,f_1,f_2', 'dd,ddd,dd', 'true,true,true', ',,', 'mm,mm,mm', 'text,text,text', 'true,true,true', 'false,false,true', '1', '2008-12-22 21:39:47', '1111');
INSERT INTO `product` VALUES ('8', 'product_table_5', 'id', 'f_0,f_1,f_2', '125', 'f_0,f_1,f_2', 'ddddd,dd,ddddd', 'true,true,true', ',,', 'mm,mm,mm', 'text,text,text', 'true,true,true', 'false,false,false', '1', '2008-12-22 21:39:52', '1111');
INSERT INTO `producttype` VALUES ('12', '11', 'ffff', null, '1', '1', '0000-00-00 00:00:00', '100');
INSERT INTO `producttype` VALUES ('13', '11', 'ggggggg', null, '1', '1', '0000-00-00 00:00:00', '100');
INSERT INTO `producttype` VALUES ('15', '7', 'dddddd', null, '1', '1', '0000-00-00 00:00:00', '100');
INSERT INTO `producttype` VALUES ('111', '11', '111', '11', '1111', '11', '0000-00-00 00:00:00', '100');
INSERT INTO `producttype` VALUES ('112', '0', '照明工业', null, '1', '2', '2008-12-21 19:54:19', '1');
INSERT INTO `producttype` VALUES ('113', '0', '电子元器件', null, '1', '2', '2008-12-21 19:54:30', '3');
INSERT INTO `producttype` VALUES ('114', '0', '传媒、广电', null, '1', '2', '2008-12-21 19:56:21', '4');
INSERT INTO `producttype` VALUES ('115', '0', '安全、防护', null, '1', '2', '2008-12-21 19:35:20', '100');
INSERT INTO `producttype` VALUES ('116', '0', '包装', null, '1', '2', '2008-12-21 19:54:24', '2');
INSERT INTO `producttype` VALUES ('117', '0', '纸业', null, '1', '2', '2008-12-21 19:35:28', '100');
INSERT INTO `producttype` VALUES ('118', '0', '办公、文教', null, '1', '2', '2008-12-21 19:35:25', '100');
INSERT INTO `producttype` VALUES ('119', '112', '白炽灯', null, '1', '2', '2008-12-21 20:01:40', '0');
INSERT INTO `producttype` VALUES ('120', '112', '冷光源', null, '1', '2', '2008-12-21 20:01:44', '0');
INSERT INTO `producttype` VALUES ('121', '112', '电光源材料', null, '1', '2', '2008-12-21 20:01:46', '0');
INSERT INTO `producttype` VALUES ('122', '112', '插座', null, '1', '2', '2008-12-21 20:01:49', '0');
INSERT INTO `producttype` VALUES ('123', '112', '其他未分类', null, '1', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `producttype` VALUES ('124', '119', '彩色灯泡', null, '1', '2', '2008-12-21 20:02:54', '0');
INSERT INTO `producttype` VALUES ('125', '119', '摄影灯泡', null, '1', '2', '2008-12-21 20:02:59', '0');
INSERT INTO `producttype` VALUES ('126', '119', '微型灯泡', null, '1', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `producttype` VALUES ('127', '119', '水下灯泡', null, '1', '1', '0000-00-00 00:00:00', '0');
INSERT INTO `producttype` VALUES ('128', '119', '其他白炽灯', null, '1', '1', '0000-00-00 00:00:00', '100');
