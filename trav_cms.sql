/*
Navicat MySQL Data Transfer

Source Server         : xss
Source Server Version : 50722
Source Host           : localhost:3306
Source Database       : trav_cms

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2020-03-02 01:14:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_banner`
-- ----------------------------
DROP TABLE IF EXISTS `t_banner`;
CREATE TABLE `t_banner` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `ban_name` varchar(30) DEFAULT NULL,
  `ban_title` varchar(80) DEFAULT NULL,
  `ban_path` varchar(30) DEFAULT '' COMMENT '轮播图路径',
  `scen_id` int(11) DEFAULT NULL COMMENT '景点',
  PRIMARY KEY (`ban_id`),
  KEY `Prim_scenid` (`scen_id`),
  CONSTRAINT `Prim_scenid` FOREIGN KEY (`scen_id`) REFERENCES `t_scen` (`scen_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='图片轮播';

-- ----------------------------
-- Records of t_banner
-- ----------------------------
INSERT INTO `t_banner` VALUES ('121', '茶卡盐湖', 'xxx', 'image/banner/chakayanhu.jpg', '1');
INSERT INTO `t_banner` VALUES ('122', '稻城亚丁', 'xxx', 'image/banner/daocheng.jpg', '7');
INSERT INTO `t_banner` VALUES ('137', '大唐不夜城', 'xxx', 'image/banner/datangbuye.jpg', '6');
INSERT INTO `t_banner` VALUES ('138', '山沟沟风景区', 'xxx', 'image/banner/shangougou.jpg', '4');
INSERT INTO `t_banner` VALUES ('139', '解放碑', 'xxx', 'image/banner/jiefangbei.jpg', '16');

-- ----------------------------
-- Table structure for `t_group`
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL COMMENT '级别',
  PRIMARY KEY (`group_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员级别';

-- ----------------------------
-- Records of t_group
-- ----------------------------
INSERT INTO `t_group` VALUES ('0', '普通用户');
INSERT INTO `t_group` VALUES ('1', '管理员');
INSERT INTO `t_group` VALUES ('2', '超级管理员');
INSERT INTO `t_group` VALUES ('3', 'Vip管理');

-- ----------------------------
-- Table structure for `t_info`
-- ----------------------------
DROP TABLE IF EXISTS `t_info`;
CREATE TABLE `t_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `info_title` varchar(100) NOT NULL COMMENT '标题',
  `info_txt` varchar(500) NOT NULL COMMENT '内容',
  `info_tag` varchar(20) DEFAULT NULL,
  `info_pic` varchar(40) DEFAULT NULL COMMENT '图片',
  `info_video` varchar(40) DEFAULT NULL COMMENT '视频',
  `info_url` varchar(80) DEFAULT NULL COMMENT 'URl',
  `info_date` date DEFAULT NULL COMMENT '日期',
  `info_order` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='资讯表';

-- ----------------------------
-- Records of t_info
-- ----------------------------
INSERT INTO `t_info` VALUES ('1', '疫情中的北京——雪后网红景点行人稀少', '2月5日，北京再迎降雪，雪后的市区银装素裹。由于仍处于疫情防控阶段，街头行人稀少，连平日的各处网红景点也难觅游人。此刻，北京城显得格外安静。图为雪中的南锣鼓巷空空荡荡，平日这里经常挤满游客。\r\n在北锣鼓巷难见行人。旧鼓楼大街上显得空空荡荡。在什刹海的地标银锭桥，也难见游人。\r\n雪中的南锣鼓巷空空荡荡，店铺已经全部暂停营业。\r\n北二环上车辆不多，通行顺畅。\r\n前门大街上游人稀疏。\r\n烟袋斜街东口格外安静。\r\n钟鼓楼广场上，只有零星几个拍照的市民和游客。', '网红景点、疫情', 'image/info/zixun1.jpg', null, 'xxx', '2020-02-12', '199');
INSERT INTO `t_info` VALUES ('2', '废弃煤矿变成网红景点，竟然全得益于一群猫', '台北附近的一座房屋，村也是CNN评选出的世界六大山光胜地之一，位于新北市瑞芳镇宁静的小山村，别看村子不大，只有百位居民，但却有近200只猫咪。猫咪在自己的梦幻世界之中，即便行人来往甚至玩乐跳动也不动声色，你玩你的我睡我的，甚至有些危险的地方也会被他们占领.\r\n这里又被称作猫街猫街位于台湾新北市瑞芳区的候车站周围，但是在这个火车站旁边他们会摆一个驱猫石石头上面撒了一些药水，猫就不会跑到这个火车站上，免得被火车撞死。\r\n到20世纪90年代，煤矿产业彻底衰败，村里的居民减少了不足百人，而近年来网红村的打造。木屋的宁静的平息了解以及台湾最美丽的景观景兰吊桥和十字路口，而最后一站就是猫咪的天堂河东村了，据说河东这地方在河道以前就住着很多猫，如今成为猫咪的天堂，似乎也是有种注定的事情。\r\n猫咪的繁殖能力很强，在这个地方简直就是他们的后花园了，周围虽然说是废弃的铁矿，但还是非常值得来参观的，这里已经慢慢的成为一个国际知名度的景点了。', '网红景点、猫、煤矿', 'image/info/zixun2.png', null, 'xxx', '2020-02-12', '99');
INSERT INTO `t_info` VALUES ('3', '江苏的这个服务区火了，变成了网红景点，每天来这里的都是游客', '最近，江苏的一个服务区火遍了中国，很多人为了来这里看一眼，宁愿多绕一段路也要开车到这个服务区停留一段时间，究竟这个服务区有什么吸引人之处呢？\r\n刚到服务区，你会发现这里依然还有部分区域还在建设之中，但当你来到服务区大门的时候，苏式园林的建筑之风扑面而来。进入大厅，天花板蓝天白云的装饰，让人显得更加清凉。\r\n但与澳门威尼斯人酒店不同的是，这里的建筑风格和布局不是威尼斯人的风格，而是苏州特有的小桥流水的苏式建筑风格。\r\n虽然来到这里的第一印象是来到了威尼斯人酒店，不过，在其独特的建筑风格之下，仿若来到了一个新的景区。这里不得不佩服江苏服务区的建造能力。不论是阳澄湖还是常州芳茂山服务区，都建的十分有特色。\r\n除此之外，在去洗手间的路上，你会看到一家非遗文化展示馆，虽被不少人抱怨为卖东西，但是在这里也能领略苏州的非遗文化，也是十分不错的。\r\n', '网红景点、江苏、游客', 'image/info/zixun3.png', null, 'xxx', '2020-02-12', '100');
INSERT INTO `t_info` VALUES ('4', '成都的一个网红景点：外地游客收费高10倍，但游客依旧络绎不绝', '观音阁老茶馆，是一个历史悠久的茶馆，据说至今为止已有300多年的历史。而且里面的一些元素也一直没有变化，甚至还有很多的当地人表示，这个老茶馆就连茶的味道都没有变。\r\n所以本地人非常喜欢去这个地方喝茶，用当地人的话来说就是成都的茶跟其他地方是不一样的， 如果你来到成都不喝茶的话那你就等于白来成都了。不过对于来这个茶馆喝茶的外地游客，他们大多不是真正的喜欢喝茶。\r\n而是为了摄影，因为这个茶馆给人的感觉就是非常复古，在这里能拍出很多好看的照片。里面有很多的老桌子老椅子，进去之后就会给人一种很奇妙的感觉，仿佛自己好像在一瞬间就穿越了。但也正是因为他们这些人的宣传，如果的老茶馆已经成为了一个网红老茶馆', '网红景点、成都、收费', 'image/info/zixun4.png', null, 'xxx', '2020-02-12', '102');
INSERT INTO `t_info` VALUES ('5', '新晋网红景点藏在这里！', '东海岸定位国际新城，地位堪比深圳前海。同时，东海岸优享政府种种规划利好，还是2021年亚青会主场馆所在地，多维交通环绕，公园、图书馆、金融平台、购物中心等配套一应俱全，是名副其实的醇熟居住区。\r\n龙光重点打造的潮汕首个新中式项目——御海天禧开盘热销9成，足见潮汕人对于新中式府邸、对于龙光品牌的高度认可。2018年，御海天禧完美交付，同时，御海天宸和御海天韵载誉而来，继御海天禧之后，龙光于潮汕再筑新中式5.0人居生活范本。\r\n“上有天、下有地、中间有庭院”，“竹林小径通宅门，庭院深深听蝉音。”\r\n“水岸有宅，宅中有园，园里有屋，屋中有院，院中有树，树上有天，天上有月……”\r\n', '新、网红景点', 'image/info/zixun5.png', null, 'xxx', '2020-02-12', '166');
INSERT INTO `t_info` VALUES ('6', '一生一定要去一次的四川三个小众网红景点', '向大家推荐一些四川很小众却很美的三个景点。在这里拍照和发呆都很美，很多游客是远道慕名而来，称它们是网红景点，真是一点不为过。\r\n1、坐小火车 四川乐山嘉阳小火车。与成都仅有三个小时车程（距离成都200公里）的乐山市，有一个叫犍为县的地方，其大山深处最令人惊奇的是世上还唯一运行的小火车正“哐当哐当”地行驶在层层阶梯之中。\r\n2、逛小镇 彭州市。典型的法式风情小镇。白鹿镇位于彭州市，是典型的法式风情小镇，坐落在山间。鳞次栉比的法式建筑，点缀于青山绿水之间，色彩丰富，建筑抢眼，置身其间，有疑在异国他乡的赶脚。\r\n3、漫步若尔盖大草原。这里有四川省最大的草原，面积近3万平方公里，由草甸草原和沼泽组成。草原地势平坦，一望无际，人烟稀少。红军二万五千里长征曾多次通过这里，留下了许多可歌可泣的动人故事和革命遗址，使草地声名远播海内外。', '网红景点', 'image/info/zixun6.png', null, 'xxx', '2020-02-12', '188');
INSERT INTO `t_info` VALUES ('7', '宁波“小而美”网红景点，屹立江边150年，是当地人婚纱照首选地', '外滩天主教堂位于宁波江北老外滩附近，是一座典型的罗马风格教堂。这座教堂的历史可以追溯到清代同治十一年（公元1872年），距今已近150年。在1844年老外滩开埠，以来，一直就是西方人聚集的地方，这座教堂也因此而建，外滩天主堂被作为历史文物保存下来，如今被列入了第六批国家重点保护文物。\r\n这座教堂看上去不算大，其外立面以青砖为主，装饰有红砖边框。教堂正面是高耸的钟楼，高达30米，装饰精美，极具异域风情。在建成初期，这座钟楼一度是宁波外滩的最高建筑。\r\n作为宁波市区内最古老的教堂，这座教堂在宁波人的心目中有着极其重要的地位，记得2014年那场火灾，伤了许多人的心。如今这座百年教堂宠你更新伫立在三江口，而且更美了!', '网红景点、宁波、教堂', 'image/info/zixun7.png', null, 'xxx', '2020-02-12', '189');
INSERT INTO `t_info` VALUES ('8', '上海第一网红景点，国庆瞬时峰值7.1万人，外滩究竟有多迷人？', '每年国庆长假都是全国最热闹、最喜庆的节日，各大景区的客流量比春节期间有过之而无不及，春节的法定假期虽然只有七天左右，但很多民营企业的放假时长甚至达到一个月，客流量在一定程度上有所分流。\r\n\r\n很多人认为上海是中国的经济桥头堡，旅游业应该一般般，其实这种想法是错误的。如果你曾经到过上海，就会明白这座中国第一大都市也是不折不扣的旅游城市，号称“万国建筑博览馆”的上海外滩每天都游人如织。\r\n上海外滩位于黄浦江畔，因此也叫黄浦滩，它南起延安东路，北至苏州河外白渡桥，核心区域是外白渡桥至龙潭路，7.1万人的瞬时峰值就出现在这一段路。\r\n上海外滩全长1.5公里，是民国时期中国最繁华的商业街，一共耸立着52座风格迵异的欧陆古典式大楼。上海开埠之后，很多商会、商行、银行、报社、保险公司纷纷在这里开设分部，或者直接把总部设在这里。当时的上海外滩，一跃成为东方的金融中心，其地位直逼美国纽约和英国伦敦。\r\n外滩是上海繁荣的起点，也承载着上百年的沧桑历史，1.5公里长的欧式豪华建筑群在中国，乃至东亚地区都绝无仅有。', '网红景点、上海、外滩', 'image/info/zixun8.png', null, 'xxx', '2020-02-12', '198');

-- ----------------------------
-- Table structure for `t_msg`
-- ----------------------------
DROP TABLE IF EXISTS `t_msg`;
CREATE TABLE `t_msg` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) DEFAULT NULL COMMENT '用户昵称',
  `msg_text` varchar(255) DEFAULT NULL COMMENT '内容',
  `msg_time` datetime DEFAULT NULL COMMENT '留言时间',
  `msg_ip` varchar(64) DEFAULT NULL COMMENT '留言IP',
  `email` varchar(32) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='留言表';

-- ----------------------------
-- Records of t_msg
-- ----------------------------
INSERT INTO `t_msg` VALUES ('5', 'today', 'ytgbhmkl', '2020-04-13 14:45:26', '127.0.0.1', '96416@qq.com');
INSERT INTO `t_msg` VALUES ('6', 'today', 'ytgbhmkl', '2020-04-13 16:36:59', '127.0.0.1', '96416@qq.com');
INSERT INTO `t_msg` VALUES ('7', 'test', 'test', '2020-03-01 16:02:57', '127.0.0.1', 'test@qq.com');
INSERT INTO `t_msg` VALUES ('8', 'test', 'test', '2020-03-01 16:09:00', '127.0.0.1', 'test@qq.com');

-- ----------------------------
-- Table structure for `t_pic`
-- ----------------------------
DROP TABLE IF EXISTS `t_pic`;
CREATE TABLE `t_pic` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(255) DEFAULT NULL COMMENT '图片名',
  `pic_title` varchar(255) DEFAULT '' COMMENT '标题',
  `pic_path` varchar(255) DEFAULT NULL COMMENT '路径',
  `pic_url` varchar(50) DEFAULT NULL COMMENT '路径',
  KEY `pic_id` (`pic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全表图片';

-- ----------------------------
-- Records of t_pic
-- ----------------------------

-- ----------------------------
-- Table structure for `t_scen`
-- ----------------------------
DROP TABLE IF EXISTS `t_scen`;
CREATE TABLE `t_scen` (
  `scen_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `scen_name` varchar(100) NOT NULL COMMENT '景点名称',
  `scen_intro` varchar(1000) DEFAULT NULL COMMENT '介绍',
  `scen_level` varchar(20) DEFAULT NULL COMMENT '等级',
  `scen_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `scen_feature` varchar(100) DEFAULT NULL COMMENT '特色',
  `scen_traff` varchar(500) DEFAULT NULL COMMENT '交通',
  `scen_map` varchar(50) DEFAULT NULL COMMENT '地图描述',
  `pic_path` varchar(50) DEFAULT NULL COMMENT '展示图片',
  `video_path` varchar(50) DEFAULT NULL COMMENT '视频路径',
  `scen_add` varchar(50) DEFAULT NULL COMMENT '地址',
  `scen_name_en` varchar(100) DEFAULT NULL COMMENT '英文名',
  `scen_order` int(11) DEFAULT NULL COMMENT '排序',
  `scen_url` varchar(30) DEFAULT NULL COMMENT 'URL地址',
  PRIMARY KEY (`scen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='景点信息';

-- ----------------------------
-- Records of t_scen
-- ----------------------------
INSERT INTO `t_scen` VALUES ('1', '茶卡盐湖', '茶卡盐湖，别称茶卡或达布逊淖尔，是位于青海省海西蒙古族藏族自治州乌兰县茶卡镇的天然结晶盐湖，是柴达木盆地四大盐湖之一。“茶卡”是藏语，意即盐池，也就是青海的盐；“达布逊淖尔”是蒙古语，也是盐湖之意。茶卡盐湖与塔尔寺、青海湖、孟达天池齐名，是“青海四大景”之一，被旅行者们称为中国“天空之镜”，被国家旅游地理杂志评为“人一生必去的55个地方”之一，以其为核心的茶卡盐湖景区是生态游与工业游并举的景区。2016年10月，茶卡盐湖景区被原国家旅游局评为国家4A级景区并授予“最佳旅游秩序景区”、“全国旅游系统先进集体”的荣誉称号。', 'AAAA', '最美天空之境', '雪山草原之间这一望无际的白，湖面平滑如镜，将天空云朵和对岸的山都倒影在湖里，天空湖面相互辉映，宛如仙境，如梦如幻，被国家旅游地理杂志评为“人一生必去的55个地方”之一！', '汽车：西宁长途汽车站有发往乌兰县的班车，经过茶卡镇，每天有5班，票价约80元\r\n包车：从西宁汽车站包车前往，来回约400元；从黑马河包车前往，约200元左右\r\n其它：从黑马河跟随盐车至湖区，50元左右', '青海省海西蒙古族藏族自治州乌兰县茶卡镇', 'image/scen/chakayanhu.jpg', '1', '青海省海西蒙古族藏族自治州乌兰县茶卡镇', 'Caka Salt Lake', '4', 'http://www.forguo.com');
INSERT INTO `t_scen` VALUES ('2', '丽景门', '王城大道', 'AAA', '王城大道', '王城大道', '王城大道', 'luoyang', 'image/scen/pic.jpg', null, '王城大道', null, '2', 'http://www.forguo.com');
INSERT INTO `t_scen` VALUES ('3', '重庆轨道交通2号线', '，重庆轨道交通2号线全长31.36千米，东起渝中区民权路、新华路、中兴路交叉口，设较场口站；途经解放碑商圈设临江门站；后沿嘉陵江在李子坝站穿楼而过；经大坪商圈、杨家坪商圈、大渡口商圈在沿途分别设站，后向南延伸过长江至巴南区设鱼洞站；沿线经过人民解放纪念碑、市奥林匹克体育中心、市动物园等重要节点。2号线李子坝站是中国国内第一座与商住楼共建共存的跨座式单轨高架车站，于2004年3月建成，占地面积3100平方米，建筑面积6000平方米。该站位于嘉陵江畔的李子坝正街39号，因其“空中列车穿楼而过”成为蜚声中外的“网红车站”。', 'A', '网红李子坝', '横穿居民楼的2号线，这种与众不同的设计前所未有，闻所未闻，也是城市观光线路。开通时外国媒体都炸锅了，一个神奇的轻轨站。', '轻轨2号线', '重庆', 'image/scen/2.jpg', null, '重庆', 'Chongqing Rail Transit Line 2', '3', '');
INSERT INTO `t_scen` VALUES ('4', '山沟沟风景区', '景区由\"汤坑\"、\"茅塘\"和\"花果山\"三大景区组成，分别为峡谷型生态旅游区、高山平台型休闲观光度假景区和农业观光园区。既有美丽的自然生态，又可享受悠闲的农家时光。旅游区内资源丰富，生态环境优良，动植物种类丰富，有国家珍稀植物千年红豆杉群，有国家一级保护动物黑麂等。四周峰峦叠嶂，群山苍翠，植被覆盖率95%，形成了与周边环境不同的独特的\"康乐型\"气候环境。景区还先后获得国家、省、市等部门颁发的多项荣誉，先后被评定为\"中国生物圈保护区\"、\"浙江省农家乐特色旅游示范点\"、 \"浙江省森林公园\"、\"杭州市乡村旅游试点单位\"、\"青少年爱国主义教育基地\" 、\"杭州最周到景点\"等。', 'AAAA', '蜜梨之乡,风韵犹存', '风景区拥有杭城第一峰--海拔1095米的窑头山和次高峰海拔1025米的红桃山，是太湖的重要源头之一。来这里体验山沟沟3D玻璃吊桥吧！', '杭州武林门北乘K348或和睦新村巴士313至瓶窑转中巴;\r\n\r\n杭州黄龙旅游集散中心每周六、日有车直达。\r\n', '杭州', 'image/scen/shangougou.jpg', null, '杭州西北四十公里处的鸬鸟镇', 'Shangougou Scenic Area', '5', '');
INSERT INTO `t_scen` VALUES ('5', '白云山', '洛阳白云山位于河南省洛阳市嵩县西南部伏牛山腹地，总面积45平方公里，是世界地质公园、国家AAAAA级旅游景区、全国最具影响力的森林公园、全国科普教育基地、中国十佳休闲胜地。地跨长江、黄河、淮河三大流域，处于北亚热带向暖温带的气候过渡带，盛夏最高气温不超过26℃，有脊椎动物204种，维管束植物1991种，昆虫3000余种，是天然的生物资源基因库，被专家誉为“自然博物馆” 。白云山目前已开发有九龙瀑布、玉皇顶、白云峰、原始森林、小黄山五大观光区和白云湖、森林氧吧、高山牡丹园、留候祠、芦花谷等五大休闲区。中央政治局常委李长春视察白云山题词“中原名山”；著名书法家启功先生题笔“人间仙境白云山”；原新华社社长穆青先生泼墨“白云天下秀”。被誉为“中国夏都，养生天堂”。”', 'AAAA', '千年帝王避暑地，生态疗养第一山。', '千年帝王避暑地，生态疗养第一山。', '洛阳-栾川栾川县城-鸡冠洞景区4路车、6路车', 'luoyang', 'image/scen/slide4.jpg', null, '河南省洛阳市嵩县白云山景区', 'Baiyun Mountain nation', null, null);
INSERT INTO `t_scen` VALUES ('6', '大唐不夜城', '大唐不夜城的中轴景观大道是一条1500米\r\n大唐不夜城\r\n大唐不夜城\r\n横贯南北的中央雕塑景观步行街，其上分布着盛世帝王、历史人物、英雄故事、经典艺术作品等九组主题群雕，立体展现大唐帝国在宗教、文学、艺术、科技等领域的至尊地位并彰显大国气象。贞观纪念碑是不夜城的地标性雕塑，由李世民骑马像组成及周围的附属雕塑组成:中间，李世民威武端跨高头大马之上手，抖缰绳欲勒马前行，意气风发;四周，号手、旗手各半的24人仪仗队、鼓手2人及文臣武将各3人紧密相随。碑体正面雕刻\"贞观之治\"四字，背面为贞观政要名录数百字。据中央美术学院雕塑研究所副所长、教授段海康介绍，该纪念碑是他和他的创作团队将大唐时期的雕塑元素和西方纪念碑式雕塑创作手法相结合精心创作的，以反映大唐帝国的繁荣盛况和李世民的文治武功。碑体由暖黄色花岗岩雕琢而成，而李世民及其坐骑由青铜铸成。主雕塑南北长36米，南北宽18米，总高17.95米，总重量约8到10吨。亚洲最大的景观大道改造完成，以李世民、李隆基、武则天、玄奘等一代帝王、历史人物、英雄故事为主题的大唐群英谱雕塑以九组雕塑群与现代化的水景系统、灯光系统、立体交通系统有机结合，多维再现盛唐风范。随着西安音乐厅、曲江美术馆、曲江电影城三大文化场馆的盛大开放，亚洲最炫美的大唐雕塑景观步行街的亮相，西安新乐汇等大型城市商业综合体全面开业。', 'AAAAA', '大唐盛世，重展中国民风', '感受一下长安十二时辰，夜晚灯火阑珊！贞观文化广场--雕塑---开元广场', '地铁：西安地铁3号线、4号线，大雁塔站下车.\r\n公交：曲江旅游环线、环山1号线、环山2号线、5、19、21、22、23、24、30等，大雁塔站下车', '西安', 'image/scen/datang.jpg', null, '西安曲江新区举世闻名的大雁塔脚下', 'Great Tang All Day Mall', '20', '');
INSERT INTO `t_scen` VALUES ('7', '稻城亚丁', '亚丁风景区(全名:稻城亚丁风景区)位于四川省甘孜藏族自治州稻城县香格里拉镇亚丁村境内，主要由\"仙乃日、央迈勇、夏诺多吉\"三座神山和周围的河流、湖泊和高山草甸组成，它的景致保持着在地球上近绝迹的纯粹，因其独特的地貌和原生态的自然风光，被誉为\"中国香格里拉之魂\"，被国际友人誉为\"水蓝色星球上的最后一片净土\"，是摄影爱好者的天堂。\r\n亚丁风景区不仅有壮丽神圣的雪山，还有辽阔的草甸、五彩斑斓的森林和碧蓝通透的海子，雪域高原最美的一切几乎都汇聚于此，这一切的一切都让人流连忘返。如当地虔诚的藏民一样，徒步转山是感受亚丁风光的最好方式。不过由于亚丁保护区海拔较高，全程徒步还是需要相当的体力。\r\n亚丁，藏语意为\"向阳之地\"。保护区内的三座雪山:仙乃日、央迈勇、夏诺多吉，南北向分布，呈品字形排列，统称\"念青贡嘎日松贡布\"，意为:终年积雪不化的三座护法神山圣地。藏传佛教中称其为\"三怙主雪山\"，是藏民心中的神圣之地。', 'AAAA', '中国香格里拉之魂----稻城亚丁', '想和喜欢的人一同去一个地方，不是土耳其，不是东京，也不是巴黎，是一个叫稻城的“净土”！去稻城遇见你的全世界！', '从亚丁管理站至冲古寺及洛绒牛场有交通车乘坐，到达洛绒牛场后是徒步道路，前往牛奶海和五色海只能徒步或者骑马', '四川省甘孜藏族自治州稻城县香格里拉镇', 'image/scen/daocheng.jpg', null, '四川省甘孜藏族自治州稻城县香格里拉镇', 'Scenic Spot of Daocheng Yading', '18', '');
INSERT INTO `t_scen` VALUES ('8', '天空悬廊', '世界第一天空悬廊，位于重庆市梦幻万盛奥陶纪主题公园，廊桥悬空在300米高的悬崖上，向悬崖探出69.6米。该廊桥呈“A”字形，桥面铺设全透明玻璃，从内往外由宽渐窄。世界第一天空悬廊以向悬崖外出挑69.6米的长度成功创吉尼斯世界纪录，成为世界上“最长的悬挑空中玻璃走廊”，比美国亚利桑那州科罗拉多大峡谷空中的玻璃走廊长3倍多', 'AAAA', '深谷廊桥步步惊心，世界第一天空悬廊“练胆”行！  ', '万盛奥陶纪的世界第一天空悬廊，让我们体验了一把什么叫凌空漫步！拥有吉尼斯世界纪录的天空悬廊，跨度大', '公交/计程车', '重庆万盛区奥陶纪景区西门区', 'image/scen/sky1.png', null, '重庆万盛区奥陶纪景区西门区', 'Sky Corridor', '19', '');
INSERT INTO `t_scen` VALUES ('9', '粉色沙滩 ', '巴哈马群岛拥有100,000平方英里号称世界上最清澈的海域。面对碧蓝的海水，探险者很难抑制潜水的冲动。这里是一个如梦似幻的海底世界。在澄澈的水底，隐藏着久远年代的沉船，而色彩斑斓的热带鱼类却在您身边翩翩起舞，巴哈马美丽的海底世界是全球最适合潜水的水域。这片美丽的水域也是钓鱼爱好者的天堂，体形硕大的枪鱼、剑鱼和梭鱼随处可见。巴哈马群岛蔚蓝的天空也为初级飞行员提供了一个磨砺飞行技巧，探幽览胜的机会。 巴哈马首都拿骚的海边，一片粉红让人以为那里开满了花儿，走近了，却发现这竟然就是沙滩的颜色。原来整个沙滩都是由红珊瑚被海水冲刷成的粉末构成的。即使是平日，拿骚的街市也充满了欢快气息，只要艺人鼓点一响，一秒钟之间，花花绿绿的人们便潮水般涌来，又唱又跳!当你走在街头，如果旁边的帅哥靓女伸手过来说:「Hi，dance with me!」你可千万不要惊讶啊!', 'AAAA', '娟秀绮丽的粉红沙滩', '女孩子有两大粉红色的宝，一是人见人爱的社会人佩奇，另外一个是满足了无数女孩的粉红沙滩', '从首都拿骚或者迈阿密乘坐飞机抵达伊柳塞拉岛机场，然后乘坐向游人出租的船只，当地人叫它\"海上出租车\"，大约行驶一英里就能到达哈勃岛。', '巴哈马', 'image/scen/fense.jpg', null, '巴哈马', 'PinkSands', '20', '');
INSERT INTO `t_scen` VALUES ('10', '长江索道', '长江索道是构筑重庆独具特色的立体交通网络的重要组成部分，是与重庆山水人文特色相辉映，与山城景致相得益彰的城市名片。乘坐重庆长江索道，最适合解读重庆“立体交通”与“山城外型符号”。外地游客到重庆旅游期间，可以乘坐长江索道飞渡大江，在空中欣赏著名的重庆夜景，是一种新鲜感十足的体验。\r\n', 'AAAA', '万里长江第一条空中走廊', '在晚上乘坐就能一睹重庆夜景的魅力，孤独的时候看看这大好的夜景，被誉为“万里长江第一条空中走廊”和“山城空中公共汽车”！', '乘坐重庆轨道交通1号线、6号线坐至小什字站下，5号出口出站到达。', '重庆', 'image/scen/cj.jpg', null, '重庆市渝中区新华路151号', 'Yangtze River Cableway', '14', '');
INSERT INTO `t_scen` VALUES ('11', '厦门泡泡屋', '泡泡屋文化园作为拍照圣地，可说是吸引了无数青春靓丽的美女来此留下浪漫动人的瞬间。满园的佳人穿梭在一个个透明的泡泡中间，让人误以为闯入了王母娘娘的御花园。   樱花房、热带风情、海洋球、粉红木马的、火烈鸟连体泡泡、还有VIP最大挑高聚会专享泡泡，地理优势简直不能太占优势了，就在环岛路边上打车坐公交都特别好找，而且走出去就是一大片绝美的海滩，打卡完还可以下海玩水！', 'AAAA', '泡泡小别墅——拍照圣地', '樱花，火烈鸟，热带雨林.....在环岛的绝美海边散落着十几个大小不一的泡泡屋，在这里拍照，九宫格都放不下。', '公交\r\n计程车', '厦门', 'image/scen/paopaowu.jpg', null, '厦门环岛路君巍艺术园', 'Xiamen Bubble House', '22', '');
INSERT INTO `t_scen` VALUES ('12', '世茂海峡大厦观光厅', '世茂海峡大厦是厦门市地标高楼位于历史足迹沙坡尾毗邻厦门大学与鼓浪屿隔海相望。携手“上海中心”设计团队 斥资50亿 打造300米高度，福建高楼双子塔。\r\n云上厦门\r\n两栋高达300米的高层建筑，使厦门世茂海峡大厦当之无愧地成为目前厦门标志性建筑。而拥有海拔视野广阔的世茂海峡大厦观光厅，被浪漫的称之为云上厦门。', 'AAAA', '云上厦门——你值得拥有！', '踏上300米高空的玻璃栈道，当晴空翠绿的海洋和秀丽的跃入眼帘，云上厦门——你值得拥有！', '厦门高崎机场：乘坐空港快线东渡专线至东渡，转135路至厦大医院下车，步行约500米即达。\r\n厦门站： 乘坐659路至梧村车站下车，步行约500米即达。', '厦门', 'image/scen/dasha.jpg', null, '福建省厦门市思明区大学路世茂海峡大厦B塔', 'Shimao channel building sightseeing hall', '23', '');
INSERT INTO `t_scen` VALUES ('13', '万石植物园', '截止2014年6月，厦门园林植物园已建成松衫园、裸子植物区、棕榈岛、蔷薇园、沙生植物区、雨林世界、花卉园、藤本区等特色专类园十多个，更是萃集了厦门大小八景的“天界晓钟”、“高读琴洞”、“万石锁云”、“中岩玉笏”、“太平石笑”、“万石涵翠”诸景点，且有百十余处摩岩石刻。', 'AAAA', '城市绿化的物种“方舟”', '从长满仙人掌的热情沙漠，一秒穿越云雾缭绕的热带雨林，换上白裙子，瞬间打造森系效果！', '公交\r\n乘87、943路公交车，植物园站下车；\r\n乘3路、17路、19路、21路、32路、139路、659路、959路、857路公交车，一中站下车步行300米。\r\n自驾车\r\n成功大道钟鼓山隧道植物园出口。', '厦门', 'image/scen/wanshi.jpg', null, '福建省厦门市思明区虎园路25号', 'Wanshi Botanical Garden', '24', '');
INSERT INTO `t_scen` VALUES ('14', '厦门地铁1号线', '厦门地铁1号线（Xiamen Metro Line 1）是厦门地铁第一条开通运营的线路，于2017年12月31日开始试运营，代表色是橙红色。\r\n厦门地铁1号线起于镇海路站，经过思明区、湖里区、集美区，贯穿集美新城、厦门北站，止于岩内站，大致呈南北走向。\r\n厦门地铁1号线全长30.3千米，其中地下段25.6千米，地面段1.9千米，高架段2.8千米；共设24座车站，除集美学村站其余均为地下站；采用6节B型编组列车。', 'AAAA', '跨海连接通道', '被誉为现实版《千与千寻》，地铁线沿途经过24站，让你坐着地铁看遍最美厦门！', '地铁', ' 厦门', 'image/scen/ditie2.jpg', null, ' 厦门', 'Xiamen Metro Line 1', '25', '');
INSERT INTO `t_scen` VALUES ('15', '南山一棵树', '重庆南山一棵树观景台前身是1997年1月建成开放的一棵树观景台，此处因多年来保留一棵重庆市树－－黄桷树而得名。\r\n2005年7月，为迎接第五届亚太城市市长峰会，报经市政府同意，市园林局精心组织，对观景台、阁进行了全面改造。重庆南山一棵树观景台是来渝宾客观赏山城夜景的一大佳点。此景观园在不调整原有设施和风格基础上，将浏览空间向后延伸，设置野外休闲区，建有14个健身项目，拓宽了游览空间，形成了日观市容市貌，夜览山城夜景的游览格局。', 'AAAA', '南山一棵树，自此山城之景尽收眼底', ' 重庆观赏夜景的绝佳平台，赶在太阳落山前观景，夕阳夜景一览无余！', '市区去南山一棵树有364/384/347路公交车，另外还可以从市区乘长江索道，到上新街后转364/384/347路公交车前往，或到上新街乘定线车到南山一棵树。', '重庆', 'image/scen/tree.jpg', null, '重庆', 'A tree in Nanshan', '26', '');
INSERT INTO `t_scen` VALUES ('16', '解放碑', '解放碑位于重庆主城渝中区民权路、民族路和邹容路交汇处，是重庆标志性建筑物。全国唯一的一座纪念中华民族抗日战争胜利的纪念碑解放碑的全称是“人民解放碑”，它代表着和平与解放。是抗战胜利和重庆解放的历史见证。\r\n从蔚蓝的天空的背影下看解放碑，碑体绝大部分呈白色，上端有几架大钟，朝着四面八方，每到整点时，便会响起那高阔又洪亮的声音。重庆市渝中区的商业以此处为中，附近300米处有颇受市民喜爱的小吃街\r\n', 'AAAA', '抗战胜利纪功碑暨人民解放纪念碑', '国内最有名的步行街之一，逛街、小吃都值得一试！', '乘坐重庆轨道交通2号线，在临江门站下车；乘坐重庆轨道交通1号线或重庆轨道交通6号线，在小什字站下车，步行500米即到。乘坐重庆公交462路、465路、0492路、612路、T087路夜景线、高铁快车G01路、高铁快车G04路、观光巴士T480路、机场快线K01路、旅游专线02路，在解放碑站下车。', '重庆', 'image/scen/jiefangbei.jpg', null, '重庆市渝中区解放碑商业步行街中心地带', 'Monument to the people\'s Liberation', '27', '');
INSERT INTO `t_scen` VALUES ('17', '洪崖洞', '洪崖洞是重庆历史文化的见证和重庆城市精神的象征。洪崖洞以最具巴渝传统建筑特色的吊脚楼为主体，依山就势，沿江而建，在古建筑群中一般三层建筑居多。\r\n洪崖洞\"一态、三绝、四街、八景\"的经营形态体现了巴渝文化休闲业态，\"一态\"指的是文化休闲业态。\"三绝\"指的是吊脚楼、集镇老街、巴文化；\"四街\"指洪崖洞的四条街：娱乐无极限\"的纸盐河动感酒吧街\"；重庆大观园的\"天成巷巴渝风情街\"；老城墙岩石崖体边古时的石板道，是\"洪崖洞盛宴街美食街\"；沧白路上是\"城市阳台异域风情街\"；街上有重庆首家法兰西风情的滨江时尚酒店。\"八景\"指的是洪崖洞滴翠、两江汇流、吊脚楼群、洪崖群雕、城市阳台、巴文化柱、滨江好吃街、嘉陵夕照。', 'AAAA', '\"吊脚楼\"-现实版千与千寻', '依山就势，夜晚灯火通明，堪称山城一绝，逛山城老街，赏两江风景，品当地美食，唯美版千与千寻！', '公交\r\n111、112路外环，114路到洪崖洞站下车，105、111、112内环，小什字站下车后向西北步行400米。\r\n地铁\r\n轻轨2号线临江门站下车后向东北步行500米即到。\r\n出租车', '重庆', 'image/scen/jiefang.jpg', null, '重庆市核心商圈解放碑沧白路、长江、嘉陵江两江交汇的滨江地带', 'Hongyadong', '28', '');

-- ----------------------------
-- Table structure for `t_scen_pic`
-- ----------------------------
DROP TABLE IF EXISTS `t_scen_pic`;
CREATE TABLE `t_scen_pic` (
  `scen_id` int(11) DEFAULT NULL,
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_title` varchar(255) DEFAULT NULL,
  `pic_name` varchar(255) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  `pic_url` varchar(50) DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`pic_id`),
  KEY `Scen_id` (`scen_id`),
  CONSTRAINT `Scen_id` FOREIGN KEY (`scen_id`) REFERENCES `t_scen` (`scen_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='景点图片库';

-- ----------------------------
-- Records of t_scen_pic
-- ----------------------------
INSERT INTO `t_scen_pic` VALUES ('1', '2', '龙门', '龙门', 'image/2.jpg', null);
INSERT INTO `t_scen_pic` VALUES ('1', '4', '龙门', '龙门', 'image/4.jpg', null);
INSERT INTO `t_scen_pic` VALUES ('1', '5', '关林', '关林', 'image/5.jpg', null);

-- ----------------------------
-- Table structure for `t_site`
-- ----------------------------
DROP TABLE IF EXISTS `t_site`;
CREATE TABLE `t_site` (
  `site_name` varchar(50) NOT NULL DEFAULT '',
  `site_keyword` varchar(50) DEFAULT NULL COMMENT '关键词',
  `site_desc` varchar(50) DEFAULT NULL COMMENT '描述',
  `site_copy` varchar(20) DEFAULT NULL COMMENT '版权信息',
  `site_beian` varchar(20) DEFAULT NULL COMMENT '备案号',
  PRIMARY KEY (`site_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='网站基本设置';

-- ----------------------------
-- Records of t_site
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `register_time` date NOT NULL COMMENT '注册时间',
  `register_ip` varchar(50) NOT NULL DEFAULT '127.0.0.1' COMMENT '注册IP',
  `group_id` int(11) NOT NULL DEFAULT '0' COMMENT '管理员级别',
  `gender` varchar(3) DEFAULT NULL COMMENT '性别',
  `user_pic` varchar(30) DEFAULT NULL COMMENT '用户头像',
  `user_stat` int(11) DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`user_id`),
  KEY `F_group_id` (`group_id`),
  CONSTRAINT `F_group_id` FOREIGN KEY (`group_id`) REFERENCES `t_group` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '1234', 'forguo', '1234@qq.com', '2020-03-22', '127.0.0.1', '0', '女', null, '1');
INSERT INTO `t_user` VALUES ('2', 'admin', 'admin', 'admin@qq.com', '2020-03-21', '127.0.0.1', '2', '男', null, '1');
INSERT INTO `t_user` VALUES ('3', 'hl', 'weiguo', 'hl@163.com', '2020-04-13', '127.0.0.1', '0', '男', null, '1');
INSERT INTO `t_user` VALUES ('4', 'liuwenyan', 'liuwenyan', 'liuwenyan@qq.com', '2020-04-13', '127.0.0.1', '0', '女', null, '1');

-- ----------------------------
-- Table structure for `t_video`
-- ----------------------------
DROP TABLE IF EXISTS `t_video`;
CREATE TABLE `t_video` (
  `video_id` int(11) NOT NULL,
  `video_name` varchar(100) DEFAULT NULL COMMENT '视频名称',
  `video_path` varchar(100) NOT NULL COMMENT '视频路径',
  `video_title` varchar(100) DEFAULT NULL COMMENT '标题',
  `video_url` varchar(50) DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`video_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='视频';

-- ----------------------------
-- Records of t_video
-- ----------------------------
INSERT INTO `t_video` VALUES ('1', '魅力中国', '/static/video/myvideo', '魅力中国', null);
