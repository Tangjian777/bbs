/*
Navicat MySQL Data Transfer

Source Server         : bbs
Source Server Version : 50709
Source Host           : 192.168.175.16:3306
Source Database       : bbs

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2017-04-19 09:08:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ad
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `adname` varchar(255) NOT NULL COMMENT '广告名称',
  `adpic` varchar(255) NOT NULL DEFAULT '/upload/ad/default.jpeg' COMMENT '广告图片',
  `adlink` varchar(255) NOT NULL COMMENT '广告跳转',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES ('1', '京东', '/uploads/ad/0652f4c4047e83741760b7a5ec2b7d65.jpg', 'www.jd.com');
INSERT INTO `ad` VALUES ('2', '天猫123', '/uploads/ad/a2252adac6cc30cdd31ee3af619c8764.jpg', 'www.tmall.com');

-- ----------------------------
-- Table structure for cang
-- ----------------------------
DROP TABLE IF EXISTS `cang`;
CREATE TABLE `cang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL COMMENT '收藏用户的uid',
  `pid` char(11) NOT NULL COMMENT '当前id收藏过的帖子',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cang
-- ----------------------------
INSERT INTO `cang` VALUES ('10', '4', '1');
INSERT INTO `cang` VALUES ('39', '17', '22');
INSERT INTO `cang` VALUES ('18', '1', '15');
INSERT INTO `cang` VALUES ('17', '1', '12');
INSERT INTO `cang` VALUES ('37', '4', '28');
INSERT INTO `cang` VALUES ('36', '4', '17');
INSERT INTO `cang` VALUES ('20', '3', '16');
INSERT INTO `cang` VALUES ('35', '4', '18');
INSERT INTO `cang` VALUES ('21', '6', '16');
INSERT INTO `cang` VALUES ('41', '18', '32');
INSERT INTO `cang` VALUES ('25', '3', '2');
INSERT INTO `cang` VALUES ('26', '2', '2');
INSERT INTO `cang` VALUES ('34', '4', '15');
INSERT INTO `cang` VALUES ('29', '1', '27');
INSERT INTO `cang` VALUES ('30', '1', '25');
INSERT INTO `cang` VALUES ('31', '15', '1');
INSERT INTO `cang` VALUES ('33', '4', '19');
INSERT INTO `cang` VALUES ('42', '18', '31');
INSERT INTO `cang` VALUES ('43', '17', '16');
INSERT INTO `cang` VALUES ('44', '17', '20');
INSERT INTO `cang` VALUES ('45', '17', '32');
INSERT INTO `cang` VALUES ('46', '2', '31');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '网站配置',
  `configtitle` varchar(255) NOT NULL COMMENT '网站标题',
  `open` enum('n','y') NOT NULL DEFAULT 'n' COMMENT '是否维护',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', '论坛111', 'n');

-- ----------------------------
-- Table structure for friendlink
-- ----------------------------
DROP TABLE IF EXISTS `friendlink`;
CREATE TABLE `friendlink` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '友情链接id',
  `fname` varchar(255) NOT NULL COMMENT '链接名',
  `flink` varchar(255) NOT NULL COMMENT '链接地址',
  `open` enum('n','y') NOT NULL DEFAULT 'y' COMMENT '是否开启显示',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of friendlink
-- ----------------------------
INSERT INTO `friendlink` VALUES ('1', '百度', 'www.baidu.com', 'y');
INSERT INTO `friendlink` VALUES ('2', 'it兄弟连', 'www.lampbrother.net', 'y');
INSERT INTO `friendlink` VALUES ('3', '河北水利电力学院', 'www.hbgz.edu.cn', 'y');

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '帖子id',
  `tid` int(11) unsigned NOT NULL COMMENT '板块id',
  `uid` int(11) unsigned NOT NULL COMMENT '发帖人id',
  `ptitle` varchar(255) NOT NULL COMMENT '帖子标题',
  `pcontent` longtext NOT NULL COMMENT '帖子内容',
  `pctime` int(255) NOT NULL DEFAULT '0' COMMENT '发帖时间',
  `click` int(255) NOT NULL DEFAULT '0' COMMENT '点击数',
  `elite` enum('n','y') NOT NULL DEFAULT 'n' COMMENT '是否精华',
  `top` enum('n','y') NOT NULL DEFAULT 'n' COMMENT '是否置顶',
  `recycle` enum('n','y') NOT NULL DEFAULT 'n' COMMENT '是否回收站',
  `creply` enum('0','1') NOT NULL DEFAULT '0' COMMENT '是否可回复',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('31', '16', '17', '123', '<p>123<br/></p>', '1490339247', '5', 'n', 'y', 'n', '1');
INSERT INTO `post` VALUES ('2', '3', '3', '入吧前须知', '<p><span style=\"text-decoration: underline; border: 1px solid rgb(0, 0, 0);\"><em><strong>哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈</strong></em></span></p>', '1490173088', '32', 'y', 'y', 'n', '0');
INSERT INTO `post` VALUES ('32', '15', '18', '测试1', '<p>1231231223</p>', '1490339882', '7', 'n', 'n', 'n', '1');
INSERT INTO `post` VALUES ('33', '1', '18', 'qweqwe', '<p>qweqwe</p>', '1490340065', '2', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('22', '4', '5', '就是百家讲坛', '<p><span style=\"color: rgb(51, 51, 51); font-family: Simsun; font-size: 14px; line-height: 17.5px; background-color: rgb(255, 255, 255);\">一贯坚持“让专家、学者为百姓服务”的宗旨，在专家、学者和百姓之间架起一座桥梁“一座让专家通向老百姓的桥梁”，从而达到普及优秀中国传统文化的目的<img src=\"http://img.baidu.com/hi/face/i_f29.gif\"/>。</span></p>', '1492394634', '6', 'n', 'n', 'y', '0');
INSERT INTO `post` VALUES ('7', '15', '2', '版规', '<p style=\"white-space: normal;\">本版块禁止膜蛤,开车,求资源等.只用于喜欢日本文化的朋友互相交流!!</p><p style=\"white-space: normal;\">(另,有需要可私聊管理员,1Tb硬盘饥渴难耐)</p><p><br/></p>', '1492174215', '38', 'y', 'y', 'n', '0');
INSERT INTO `post` VALUES ('8', '15', '2', '初识日本', '<div class=\"para\" style=\"font-size: 14px; word-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">日本', '1492174301', '4', 'n', 'n', 'y', '0');
INSERT INTO `post` VALUES ('9', '1', '6', '测试发帖', '<p>123</p>', '1490322084', '9', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('10', '1', '4', '测试收藏', '测试收藏<p><br/></p>', '1490326451', '10', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('11', '1', '1', '测试发帖', '<p>测试发帖<br/></p>', '1490326605', '8', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('12', '3', '1', '测试收藏', '测试收藏<p><br/></p>', '1490326654', '6', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('15', '14', '1', '7年不换车的人，是因为穷吗? 大神们帮忙分析。', '<p>网上流传一句话：7、8年都不换车，只有一个原因---穷。 是不是也要分情况来分析呢? <br/>　　我有个朋友，就是这个情况，大神们帮忙分析一下：<br/>　　三线城市，男，37岁，一辆国产车，大概是11万左右买的，自住房产一套，车开了七年了。家有双胞胎男孩。他和别人合伙开了个公司，主营电子产品、安防系统安装、网络安装等，公司是财府采购指定单位，还有其他一点副业偶尔赚点小钱。为人热情爽快，在生活的一些小开销方面，比较注重节省，经常参与一些打折抢红包的活动、团购活动，买东西也是要经过长时间选择 和比较才下手，即使是小商品也是这样。 穿着上比较体面讲究，倒不象抠门和拮据的人，也就是普通中产阶层的那些服装品牌吧，不是高端品牌。 他周围的朋友，许多换车很频繁，许多开豪车的，每次问他怎么还不换车，他就笑笑啥也不说，<br/><br/>　　这个人算是朋友里有点奇怪的人了，所以，有些好奇，<br/><br/>　　有阅历的朋友们，帮忙分析一下? 权当分析人性，再顺便学点东西吧。</p>', '1490328085', '15', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('16', '11', '1', '以后再也不用担心在办公室会饿了', '<p><span style=\"color: rgb(0, 0, 0); font-family: 宋体; font-size: 16px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 28px; orphans: auto; text-align: justify; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(238, 238, 238);\">因为我已经买了两大袋南方黑芝麻糊放在这里！！早上可以吃，中午可以吃，下午可以吃，加班还可以吃~总之，再也不用担心工作的时候肚子饿啦</span></p>', '1490328207', '43', 'y', 'y', 'n', '0');
INSERT INTO `post` VALUES ('17', '1', '4', 'ffffffffffffff', '<p>ffffffffffffff<br/></p>', '1490451359', '13', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('18', '1', '4', 'f1', '<p>11<br/></p>', '1490451824', '6', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('19', '1', '4', '我芝哥就是个棒槌', '<p>RT</p>', '1490451905', '26', 'y', 'y', 'n', '1');
INSERT INTO `post` VALUES ('20', '9', '3', '扒一扒算命先生那些事', '<p>&nbsp;<span style=\"font-family: 宋体; line-height: 28px; text-align: justify; background-color: rgb(238, 238, 238);\">我是一个易学工作者，已是五十知天命的年纪，沉浸易学近三十载，游历了大半个中国，为上千人批过命理八字，解过卦，做过风水指导。说起《易经》，大家都知道，但它所诠释的自然之道为百姓日用而不知。易经曾一度被尊为群经之首，众经之源，它属于中国古典哲学的一个主要部份，是中国传统优秀文化的一个重要组成部分，延伸到当代为哲学。易经作为数术预测文化一直难以登入文化大堂大肆发扬，但由于其生生不息顽强的生命力在民间得以传承，所以导致了现代人对其感到神秘。同样我也不是从小就开始学习，小时候也不是志在于此，由于时运的不济，在二舅的感染下开始了易学之路。改革开放之后，我也加入南下打工的潮流中，最初一边打工，一边学习实践，凭着这门手艺也为我的人生带来一些转机。期间，当然也走过不少弯路，被一些地摊书蒙过，也被一些所谓的大师给骗过……最终，我才发现，真正实用的东西，还是要靠自己摸索，要从实践中获得，实践出真知是永恒不变的真理！</span><br/><br/><span style=\"font-family: 宋体; line-height: 28px; text-align: justify; background-color: rgb(238, 238, 238);\">　　既然发帖了，就要讲一些干货出来，但只讲理论的话那会很枯燥，估计大家看着都会想打瞌睡，所以下面文中我会把这些年看过的一些典型的八字命局拿出来分享，讲讲那些人有趣的故事，通过案例来讲解命理，保证零基础的朋友能看懂，带大家走进命理学的世界，一起去探索！一起去揭秘人生！同时我也希望能通过这帖子，唤起更多的传统文化爱好者们的兴趣。若对本身就懂命理学的朋友看了有能所帮助或收获，那就更好了。</span></p>', '1492393108', '15', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('26', '12', '2', '运气', '<p>运气最重要啦</p>', '1492407979', '2', 'n', 'n', 'n', '1');
INSERT INTO `post` VALUES ('27', '11', '4', '测试', '<p>测试<br/></p>', '1492411837', '2', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('28', '1', '1', '无人问津', '<p>无人问津<br/></p>', '1492411971', '9', 'y', 'y', 'n', '0');
INSERT INTO `post` VALUES ('25', '7', '2', 'warewarewa~宇宙人', '<p>~~biubiu</p>', '1492407950', '3', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('23', '10', '5', '你知道什么是时尚吗？', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">“时尚”一词已是这个世界的</span><a target=\"_blank\" href=\"http://baike.baidu.com/item/%E6%BD%AE%E6%B5%81/36237\" style=\"color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">潮流</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">代言词，英文为</span><a target=\"_blank\" href=\"http://baike.baidu.com/item/fashion/34184\" style=\"color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">fashion</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">，几乎是经常挂在某些人的嘴边，频繁出现在报刊媒体上。很多人对时尚的理解都不同，有人认为时尚即是简单，与其</span><a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%A5%A2%E5%8D%8E\" style=\"color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">奢华</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">浪费，不如朴素节俭；有时时尚只是为了标新立异；给人焕然一新拥有时尚王风范的感觉，现实中很多与时尚不同步的人被指为老土、落伍；所谓时尚，是时与尚的结合体。所谓时，乃时间，时下，即在一个时间段内；尚，则有</span><a target=\"_blank\" href=\"http://baike.baidu.com/item/%E5%B4%87%E5%B0%9A\" style=\"color: rgb(19, 110, 194); text-decoration: none; font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; white-space: normal; background-color: rgb(255, 255, 255);\">崇尚</a><span style=\"color: rgb(51, 51, 51); font-family: arial, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">，高尚，高品位，领先。时尚其实在这个时代而言的，不仅仅是为了修饰，甚至已经演化成了一种追求真善美的意识。</span></p>', '1492394693', '1', 'n', 'n', 'n', '0');
INSERT INTO `post` VALUES ('24', '16', '5', '影视说明', '<p><span style=\"color: rgb(51, 51, 51); font-family: arial, tahoma, &#39;Microsoft Yahei&#39;, 宋体, sans-serif; font-size: 14px; line-height: 24px; text-indent: 28px; background-color: rgb(255, 255, 255);\">影视是以拷贝、磁带、胶片、存储器等为载体，以屏幕、银幕放映为目的，从而实现视觉与听觉综合观赏的艺术形式，是现代艺术的综合形态，包含了电影、电视剧、节目、动画等内容。</span><br/></p>', '1492395228', '9', 'y', 'y', 'n', '1');

-- ----------------------------
-- Table structure for reply
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '回复id',
  `pid` int(11) unsigned NOT NULL COMMENT '帖子id',
  `uid` int(11) unsigned NOT NULL COMMENT '回帖人id',
  `rcontent` varchar(255) NOT NULL COMMENT '回帖内容',
  `rctime` int(11) NOT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '3', '4', '本宝宝第一个不服', '1492174213');
INSERT INTO `reply` VALUES ('2', '7', '4', '本宝宝要打死你！', '1492174310');
INSERT INTO `reply` VALUES ('3', '7', '3', '稳', '1492174321');
INSERT INTO `reply` VALUES ('4', '1', '4', '求关注！', '1492174378');
INSERT INTO `reply` VALUES ('5', '1', '3', '手动滑稽', '1492174382');
INSERT INTO `reply` VALUES ('6', '15', '1', '买不起咯', '1490328101');
INSERT INTO `reply` VALUES ('7', '16', '2', '两大袋南方黑芝麻糊？是多少小袋？按照你这个吃法，早上也吃中午也吃晚上还吃……我估计吃不了两周吧哈哈哈哈', '1490328262');
INSERT INTO `reply` VALUES ('8', '16', '3', '呀，我怎么就没想到买南方黑芝麻糊呢，南方黑芝麻糊每次吃一袋儿就行了。我每次都是买了大堆的零食备在办公室，结果不到一周就吃完了。', '1490328304');
INSERT INTO `reply` VALUES ('9', '16', '4', '嗯嗯，我也是买了南方黑芝麻糊备在办公室的，吃起来不仅方便，还特别抵饿呢。不过我每次都是买的小包装，吃完再买，因为南方黑芝麻糊的口味有好多，而且都很好吃~', '1490328347');
INSERT INTO `reply` VALUES ('10', '16', '5', '感觉太甜怎么办', '1490328383');
INSERT INTO `reply` VALUES ('11', '16', '6', '我觉得水果麦片泡牛奶更能填饱肚子', '1490328418');
INSERT INTO `reply` VALUES ('12', '17', '4', '123', '1490451379');
INSERT INTO `reply` VALUES ('14', '2', '2', '哈哈哈哈??', '1492392326');
INSERT INTO `reply` VALUES ('15', '20', '4', '我发现\"周\"字为笔画八画；\"易\"字也为八画；两字合起来八八为六十四。这里似乎也暗寓《易经》由八宫（八卦）、六十四卦组成。', '1492393424');
INSERT INTO `reply` VALUES ('22', '15', '4', 'alert($)', '1492500690');
INSERT INTO `reply` VALUES ('23', '15', '4', '<br>', '1492500704');
INSERT INTO `reply` VALUES ('24', '31', '17', '22222', '1490339258');
INSERT INTO `reply` VALUES ('27', '32', '18', '蛤蛤', '1490339976');
INSERT INTO `reply` VALUES ('28', '20', '17', '自此以下', '1490340156');
INSERT INTO `reply` VALUES ('29', '7', '17', 'qweqw', '1490340347');
INSERT INTO `reply` VALUES ('30', '17', '17', 'wewe', '1490340477');
INSERT INTO `reply` VALUES ('20', '1', '15', 'qwe', '1492416770');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '板块id',
  `tname` varchar(255) NOT NULL COMMENT '板块名',
  `tlogo` varchar(255) NOT NULL COMMENT '板块LOGO',
  `tcontent` varchar(255) NOT NULL COMMENT '板块介绍',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '电玩部落123', '/uploads/logo/45c5569a827821c0eb56326928f31a0c.jpg', '汇集了各类电玩游戏资讯和内容(索尼大法好！)');
INSERT INTO `type` VALUES ('15', '日本の文化', '/uploads/logo/7c89d58a613a7508c01626b14aece5e3.png', '喜欢日本文化的小朋友来看看啦~~');
INSERT INTO `type` VALUES ('3', '礼物', '/uploads/logo/fb2b6513d4a6b2192a44185db3ef8a18.jpg', '礼尚往来');
INSERT INTO `type` VALUES ('4', '闲闲书话', '/uploads/logo/d654b4647dc4dd2abb241ef9979751c5.png', '感觉生活些许无趣？在这里，找到一群拥有生活乐趣的人，一起交流分享');
INSERT INTO `type` VALUES ('14', '汽车时代', '/uploads/logo/42e7d06e895213b247dc4b6c6cb68d19.jpg', '汇聚全国各地车友及汽车爱好者，分享汽车热点话题、购车养车经验、售后维权投诉等海量信息，举办各类线上线下活动');
INSERT INTO `type` VALUES ('7', '外星文明', '/uploads/logo/c29fefaa37fad707c08c2f6f558c98ec.png', '畅所欲言~');
INSERT INTO `type` VALUES ('9', '我的生活', '/uploads/logo/38e6782b0701ca591b35fed2eb9881d4.png', '你的生活是什么样子的?');
INSERT INTO `type` VALUES ('10', '时尚', '/uploads/logo/8bf598270dff5b4e8697b9d0ba277741.png', '在这里，你就是潮流。');
INSERT INTO `type` VALUES ('11', '食在当下', '/uploads/logo/96273857cf2dfccac8bf57e74e43e6be.png', '欢迎来到 食在天下 版块，热爱美食，热爱原产原味原生活。');
INSERT INTO `type` VALUES ('12', '生财之道', '/uploads/logo/3279b6b5dde83d0aef993493810b4b21.png', '不喜欢钱?');
INSERT INTO `type` VALUES ('13', '电脑', '/uploads/logo/066f14b13375e9897dc7d79141dc2977.jpg', '下一步，让世界没有小白！');
INSERT INTO `type` VALUES ('16', '影视', '/uploads/logo/a73824adca9af5e0033cb4b9321b5482.png', '好看的电影，海量的资源，等你来。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `auth` enum('n','y') NOT NULL DEFAULT 'n' COMMENT '是否登录后台',
  `moderator` enum('n','y') NOT NULL DEFAULT 'n' COMMENT '是否为版主',
  `status` enum('1','0') NOT NULL DEFAULT '0' COMMENT '是否禁言',
  `lastlogin` int(255) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `shenqing` enum('n','y') NOT NULL DEFAULT 'n' COMMENT '申请成为管理员状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('16', 'weiwei', '9', 'y', 'n', '0', '1490369553', 'n');
INSERT INTO `user` VALUES ('2', 'wei', 'weiwei', 'n', 'y', '0', '1490369517', 'y');
INSERT INTO `user` VALUES ('3', 'kangjian', 'kangjian123', 'n', 'y', '0', '1492418274', 'n');
INSERT INTO `user` VALUES ('4', '763237005', 'tangjian', 'y', 'n', '0', '1492529460', 'n');
INSERT INTO `user` VALUES ('5', 'yrz_god', '15733773368', 'y', 'y', '0', '1492414873', 'n');
INSERT INTO `user` VALUES ('6', 'test', 'test123', 'n', 'n', '0', '1492394690', 'n');
INSERT INTO `user` VALUES ('1', 'root', '123123', 'y', 'n', '0', '1490368297', 'n');
INSERT INTO `user` VALUES ('8', 'qweqweqwe', 'qweqweqwe', 'n', 'n', '0', '1492400766', 'n');
INSERT INTO `user` VALUES ('9', 'qwqwqwqw', 'qwqwqwqw', 'n', 'n', '0', '1492401086', 'n');
INSERT INTO `user` VALUES ('10', 'zxczxczxc', 'zxczxczxc', 'n', 'n', '0', '1492401167', 'n');
INSERT INTO `user` VALUES ('11', '1zxc', 'zxczxc', 'n', 'y', '0', '1492416054', 'n');
INSERT INTO `user` VALUES ('15', 'adadad', '123123', 'n', 'n', '0', '1492416911', 'n');
INSERT INTO `user` VALUES ('18', 'ceshi1', '123456', 'n', 'n', '0', '1490339852', 'n');
INSERT INTO `user` VALUES ('17', 'test123', 'tangjian', 'n', 'y', '0', '1490340255', 'y');

-- ----------------------------
-- Table structure for userdetail
-- ----------------------------
DROP TABLE IF EXISTS `userdetail`;
CREATE TABLE `userdetail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `nickname` varchar(255) NOT NULL DEFAULT '请修改用户名' COMMENT '用户昵称',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `sex` enum('w','m') NOT NULL DEFAULT 'm' COMMENT '用户性别',
  `qq` int(10) DEFAULT NULL COMMENT 'QQ',
  `photo` char(255) NOT NULL DEFAULT '/uploads/user/default.jpg' COMMENT '头像',
  `content` varchar(255) NOT NULL COMMENT '自我介绍',
  `integral` int(255) NOT NULL COMMENT '积分',
  `vip` enum('y','n') NOT NULL DEFAULT 'n' COMMENT '是否会员',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userdetail
-- ----------------------------
INSERT INTO `userdetail` VALUES ('16', '16', 'wewewe', 'etern@12.com', 'm', '124124', '/uploads/user/23fa0039019883076a3a14f1aeaeba5a.png', 'qweqwe', '0', 'n');
INSERT INTO `userdetail` VALUES ('2', '2', 'wei', 'eternal9421@126.com', 'm', '449196033', '/uploads/user/a3a3c2bd726fd085173e6fa58f02a631.jpg', '您的小祖宗已上线', '5555', 'y');
INSERT INTO `userdetail` VALUES ('3', '3', 'sunny', '1142971329@qq.com', 'm', '1142971329', '/uploads/user/26f7233d7e95be16fd12edb93b8d3443.png', '~~~', '5555', 'n');
INSERT INTO `userdetail` VALUES ('4', '4', '大表哥', '763237005@qq.com', 'm', '763237005', '/uploads/user/28c2273be423826d4d7b732181097fe7.jpg', '我是闫大猹的大表哥！', '225', 'n');
INSERT INTO `userdetail` VALUES ('5', '5', '叫我队长', '15733773368@sina.cn', 'm', '1179931208', '/uploads/user/b41c00982a541cfe33fb4a5a2442bbfb.png', '队长，无需解释', '110', 'n');
INSERT INTO `userdetail` VALUES ('6', '6', 'qwqwqwqw', '123@qq.com', 'm', '1357924680', '/uploads/user/default.jpg', '', '55', 'n');
INSERT INTO `userdetail` VALUES ('1', '1', '超级管理员', '123@qq.com', 'm', '123456', '/uploads/user/default.jpg', '超级管理员', '100009', 'n');
INSERT INTO `userdetail` VALUES ('8', '8', 'qwqwqwqw', 'qweqweqwe@qq.com', 'm', '1122334455', '/uploads/user/default.jpg', '', '20', 'y');
INSERT INTO `userdetail` VALUES ('9', '9', 'qwqwqwqw', 'qwqwqwqw@qq.com', 'm', '1234512345', '/uploads/user/default.jpg', '', '20', 'n');
INSERT INTO `userdetail` VALUES ('10', '10', 'zxczxczxc', 'zxczxczxc@qq.com', 'm', '1231231231', '/uploads/user/default.jpg', '', '20', 'n');
INSERT INTO `userdetail` VALUES ('11', '11', '双击评论666', '1zxc@qq.com', 'm', '666666666', '/uploads/user/default.jpg', '双击', '20', 'n');
INSERT INTO `userdetail` VALUES ('15', '15', 'adad', 'adadda@qq.com', 'm', '1234356456', '/uploads/user/bfb04ddf93a0f22e08c58d69b723b194.png', 'sad', '50', 'n');
INSERT INTO `userdetail` VALUES ('17', '17', '测试123', '12312312312@qq.com', 'm', '4444444', '/uploads/user/a573f8d6b9c3dc353407335fedab1bfe.jpg', '111111', '555580', 'n');
INSERT INTO `userdetail` VALUES ('18', '18', 'owiejfoijdsf', 'eternal9421@1226.com', 'm', '449196032', '/uploads/user/0bbddea2a02b072cdef2191a9bd476f5.jpg', 'qweqwe', '45', 'n');
