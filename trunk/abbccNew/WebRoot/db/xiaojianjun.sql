DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `toid` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `title` varchar(200) NOT NULL,
  `fromid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `message` VALUES ('1', '1', 'jj', ' 33', '1', '1', '8', '2008-12-25 22:01:22');
INSERT INTO `message` VALUES ('2', '1', 'vfvffgf', '标题', '1', '2', '9', '2008-12-25 22:01:27');
INSERT INTO `message` VALUES ('1', '2', 'aaaaa', '标题', '2', '2', '10', '2008-12-25 22:02:37');
INSERT INTO `message` VALUES ('1', '2', 'sdfsdfasdf', '标题', '2', '2', '11', '2008-12-25 22:02:34');
INSERT INTO `message` VALUES ('1', '2', 'dddd', '标题ddd', '2', '2', '12', '2008-12-25 22:02:32');
INSERT INTO `message` VALUES ('2', '1', '我们', '我 我', '1', '1', '13', '2008-12-25 22:02:30');
INSERT INTO `message` VALUES ('2', '1', '我们', '我 我', '1', '1', '14', '2008-12-25 22:02:26');
INSERT INTO `message` VALUES ('2', '1', '我们', '我 我', '1', '1', '15', '2008-12-25 22:02:23');
INSERT INTO `message` VALUES ('2', '1', '故事 ', '我 们 的 故 事', '1', '2', '16', '2008-12-25 22:02:21');
INSERT INTO `message` VALUES ('2', '1', '好大的雪啊', '下雪', '1', '1', '17', '2008-12-25 22:02:18');
INSERT INTO `message` VALUES ('2', '1', '下雪啦', '冬天', '1', '2', '18', '2008-12-25 22:02:16');
INSERT INTO `message` VALUES ('2', '2', '累斗累', '我 们 的 故 事', '2', '1', '23', '2008-12-25 22:02:13');
INSERT INTO `message` VALUES ('2', '2', '好了 ', '哈哈 ', '2', '2', '22', '2008-12-25 22:02:10');
INSERT INTO `message` VALUES ('2', '2', '疯狂了', '回复：紧急信息，请注意查收。', '2', '1', '24', '2008-12-25 22:02:06');
INSERT INTO `message` VALUES ('2', '2', '终于成功拉', '嘿嘿', '2', '1', '25', '2008-12-25 22:02:03');
INSERT INTO `message` VALUES ('2', '1', '奇怪啊 ', '很慢', '2', '2', '26', '2008-12-25 22:02:00');
INSERT INTO `message` VALUES ('2', '1', '非常可乐的奇怪', '奇怪', '2', '1', '27', '2008-12-25 22:01:57');
INSERT INTO `message` VALUES ('2', '1', '啦啦啦啦啦啦 ', '讨厌', '2', '2', '28', '2008-12-25 22:01:54');
INSERT INTO `message` VALUES ('2', '1', '圣诞', '圣诞快乐', '2', '1', '29', '2008-12-25 22:01:51');
INSERT INTO `message` VALUES ('2', '1', '北京的冬天很冷', '我说', '2', '1', '30', '2008-12-25 22:01:47');
INSERT INTO `message` VALUES ('2', '1', '是啊 真的很冷', '回复', '2', '1', '31', '2008-12-25 22:01:45');
INSERT INTO `message` VALUES ('2', '1', '2009', '紧急信息，请注意查收', '2', '1', '32', '2008-12-25 22:01:43');
INSERT INTO `message` VALUES ('2', '1', 'fhhhhhhhhhhhhhhhh', 'fffffff', '2', '1', '33', '2008-12-25 22:01:39');
INSERT INTO `message` VALUES ('3', '1', 'ffffffffffffffff', 'ffffffffffffff', '2', '1', '34', '2008-12-25 21:54:22');
INSERT INTO `message` VALUES ('3', '1', 'ffffffffffffffff', 'ffffffffffffff', '2', '1', '35', '2008-12-25 21:57:39');
INSERT INTO `message` VALUES ('3', '1', 'ffffffffffffffff', 'ffffffffffffff', '2', '1', '36', '2008-12-25 22:03:05');