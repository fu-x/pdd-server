/*
Navicat MySQL Data Transfer

Source Server         : Admin
Source Server Version : 50638
Source Host           : localhost:3306
Source Database       : pdd

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2020-01-27 14:07:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `pdd_cart`
-- ----------------------------
DROP TABLE IF EXISTS `pdd_cart`;
CREATE TABLE `pdd_cart` (
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) unsigned NOT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `thumb_url` varchar(255) DEFAULT NULL,
  `price` int(11) unsigned DEFAULT NULL,
  `number` int(10) unsigned DEFAULT NULL,
  `ispay` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pdd_cart
-- ----------------------------
INSERT INTO `pdd_cart` VALUES ('1', '23823', '【吃厚6层送教学视频】202家用电动缝纫机带脚踏可选扩展台', 'http://t00img.yangkeduo.com/goods/images/2018-07-28/9754db01919d2fc5c12e1da537c22450.jpeg', '3000', '1', '0');
INSERT INTO `pdd_cart` VALUES ('1', '311764', '【泰国进口】泰国进口榴莲新鲜金枕头3-11斤金枕榴莲现摘先发非巴掌榴莲猫山王', 'http://t00img.yangkeduo.com/t08img/images/2018-06-11/2c6323ffca5de54e31fd0291c04f85e3.jpeg', '7990', '1', '0');
INSERT INTO `pdd_cart` VALUES ('1', '329575', '俞兆林多功能充电式迷你榨汁机便捷家用豆浆料理机电动水果榨汁杯', 'http://t00img.yangkeduo.com/t10img/images/2018-07-08/287f79a9f3623263c53f48fa88dcd3ec.jpeg', '3500', '2', '0');
INSERT INTO `pdd_cart` VALUES ('3', '23823', '【吃厚6层送教学视频】202家用电动缝纫机带脚踏可选扩展台', 'http://t00img.yangkeduo.com/goods/images/2018-07-28/9754db01919d2fc5c12e1da537c22450.jpeg', '3000', '2', '0');
INSERT INTO `pdd_cart` VALUES ('3', '311764', '【泰国进口】泰国进口榴莲新鲜金枕头3-11斤金枕榴莲现摘先发非巴掌榴莲猫山王', 'http://t00img.yangkeduo.com/t08img/images/2018-06-11/2c6323ffca5de54e31fd0291c04f85e3.jpeg', '7990', '5', '0');
INSERT INTO `pdd_cart` VALUES ('3', '329575', '俞兆林多功能充电式迷你榨汁机便捷家用豆浆料理机电动水果榨汁杯', 'http://t00img.yangkeduo.com/t10img/images/2018-07-08/287f79a9f3623263c53f48fa88dcd3ec.jpeg', '3500', '1', '0');

-- ----------------------------
-- Table structure for `pdd_goodslist`
-- ----------------------------
DROP TABLE IF EXISTS `pdd_goodslist`;
CREATE TABLE `pdd_goodslist` (
  `goods_id` int(11) unsigned NOT NULL,
  `goods_name` varchar(200) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `thumb_url` varchar(255) DEFAULT NULL,
  `hd_thumb_url` varchar(255) DEFAULT NULL,
  `price` int(11) unsigned DEFAULT NULL,
  `normal_price` int(11) unsigned DEFAULT NULL,
  `market_price` int(11) unsigned DEFAULT NULL,
  `sales_tip` varchar(20) DEFAULT NULL,
  `bubble_user1` varchar(255) DEFAULT NULL,
  `bubble_user2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pdd_goodslist
-- ----------------------------
INSERT INTO `pdd_goodslist` VALUES ('1001749', '【百万家庭见证好品质】心逸竹浆本色抽纸巾餐巾纸家用面巾纸批发', '【百万家庭见证好品质】心逸竹浆本色抽纸巾餐巾纸家用面巾纸批发', 'http://t00img.yangkeduo.com/t04img/images/2018-07-02/e073fe611438bd1f256d8635e26de0ab.jpeg', 'http://t00img.yangkeduo.com/t02img/images/2018-05-29/c58805eaa48d4f00db9d6183e3117718.jpeg', 'http://t00img.yangkeduo.com/t04img/images/2018-05-29/2c9909927477ac6befd250e3aa845637.jpeg', '990', '1800', '9990', '已拼219.6万件', 'http://t20img.yangkeduo.com/a/ab844cc824f72681e409186f84925875acdc293e-1529289376?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/3e7749836a9444e8c74e636395707a0a9e8cb660-1528724121?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('1701501', '大颗粒新货原味手剥巴西松子连罐1000g/500g/200g多规格坚果特产', '大颗粒新货原味手剥巴西松子连罐1000g/500g/200g多规格坚果特产', 'http://t00img.yangkeduo.com/goods/images/2018-08-23/772997051d05bf07d2717cf639b2d52d.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-28/fa00ff2602dd5b000ef65d30032b6650.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-28/73d8a89d1e298ae7b4a194d2c21f542c.jpeg', '2390', '2500', '19900', '已拼17.1万件', 'http://t20img.yangkeduo.com/a/657e24435a0818c2e20812c99bac32c8a7c75104-1529742670?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/a0723b63e796db373370f3945a16fea1a94cf7e0-1527591711?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('2074139', '梯子家用折叠梯加厚多功能人字梯伸缩楼梯二三四五六步室内扶梯', '梯子家用折叠梯加厚多功能人字梯伸缩楼梯二三四五六步室内扶梯', 'http://omsproductionimg.yangkeduo.com/images/unknown/0/B4aufa1VT0RzFrRBKylbNm213Fgrx55v.jpg', 'http://t00img.yangkeduo.com/goods/images/2018-08-19/342d50668b1996a1dc82d451f3170a0b.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-19/0c49a1412d7d71667d84b97345f8c3d1.jpeg', '3590', '4200', '13800', '已拼4953件', 'http://t20img.yangkeduo.com/a/8910f74366998d530e48773de0ec5ee18dd36eb7-1529071813?imageMogr2/thumbnail/100x', 'http://t21img.yangkeduo.com/a/093ea5cc7d61abae799fa05b2ff8d2aae3ab2282-1510545146?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('12883854', '【1-3个装可选】保鲜盒陶瓷保鲜碗微波炉可用饭盒提锅冰箱储物盒', '【1-3个装可选】保鲜盒陶瓷保鲜碗微波炉可用饭盒提锅冰箱储物盒', 'http://t00img.yangkeduo.com/goods/images/2018-07-30/a84677f4b9ee229f52574c42b0eab085.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-07-18/6363261406ec706e6c89bc78464db10f.jpeg', 'http://t00img.yangkeduo.com/t03img/images/2018-07-18/d6fbecc7d4af6a60417bbd8cb31686f0.jpeg', '850', '1500', '4800', '已拼3.7万件', 'http://t21img.yangkeduo.com/a/9dde5e26c581ff4d8261fd225bd60773cef578ad-1509957081?imageMogr2/thumbnail/100x', 'http://t21img.yangkeduo.com/a/ca228295a0abaaeb56097749fd7e99c70bfeaadd-1526627389?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('86737634', '【8.9元抢3000件，抢完恢复9.9元】【买二送一买三送二】大容量冰箱收纳盒食品冷冻保鲜盒密封储物盒', '【买二送一买三送二】大容量冰箱收纳盒食品冷冻保鲜盒密封储物盒', 'http://t00img.yangkeduo.com/t01img/images/2018-05-24/3a7a13566b12f3089fd7a19c2d0b7546.jpeg', 'http://t11img.yangkeduo.com/images/2018-05-24/30e507b27de234c10bf614ffabacd839.jpeg', 'http://t03img.yangkeduo.com/images/2018-05-24/949494b03105800a0a3abe3a97314720.jpeg', '890', '1090', '5600', '已拼7万件', 'http://t20img.yangkeduo.com/a/c17d9dbd1bf9ed0cdb7dcc6e641921acf047fd15-1534679620?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/31ee52c235e87c115d24aa9e6bd1251bdaaf8fff-1532472920?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('322820021', '七天淡斑正品美白祛斑霜黄褐斑色斑日晒斑遗传斑雀斑老年斑30g', '七天淡斑正品美白祛斑霜黄褐斑色斑日晒斑遗传斑雀斑老年斑30g', 'http://t00img.yangkeduo.com/t04img/images/2018-05-30/a8c482c6f55e5d0ce5c0e34bf22529a2.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-22/917169bfcbb89aa33549df5c2c26c797.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-22/e98835ed45aa217e964d8be842f4d9c9.jpeg', '3500', '4900', '29900', '已拼13.3万件', 'http://t20img.yangkeduo.com/a/6ef6d829dcafe3f36d2419a26f22e89eb0431ba9-1532516500?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/78d9ba74dfcda984266aeb6596c6058e181b4108-1531888788?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('582274887', '香朵儿运动服套装女2018春秋新款学生韩版宽松时尚休闲大码两件套', '香朵儿运动服套装女2018春秋新款学生韩版宽松时尚休闲大码两件套', 'http://t00img.yangkeduo.com/goods/images/2018-08-17/a3d1f116c3a4bdbf3bd95c52697d12e9.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-17/425b8a40a0e2562094492081fe2e3e81.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-17/9f884fac2a889c9ff1e07c699b316d71.jpeg', '2990', '3090', '12800', '已拼6万件', 'http://t20img.yangkeduo.com/a/7bb7677358604fcc75c86f37a2a567cfa1107684-1534773680?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/f44b185c296fd8ef9302a2c70f2033c4133c85df-1532393091?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('602772440', '含棉贝路雪运动服套装女春秋2018新款学生韩版宽松大码卫衣两件套', '含棉贝路雪运动服套装女春秋2018新款学生韩版宽松大码卫衣两件套', 'http://t07img.yangkeduo.com/images/2018-03-12/ba58dd68d4614c0bf06c6347c02bfe3d.jpeg', 'http://t03img.yangkeduo.com/images/2018-04-08/b493a724cb17bf149259143833d865f6.jpeg', 'http://t03img.yangkeduo.com/images/2018-04-08/fe0ecfa7deccc5c3c7e7574089caac02.jpeg', '4890', '5590', '18800', '已拼10.3万件', 'http://t20img.yangkeduo.com/a/388a0b3928ba9ff235057e5efead4631d070b016-1528945093?imageMogr2/thumbnail/100x', '');
INSERT INTO `pdd_goodslist` VALUES ('659359942', '【防油污】防油防潮厨房贴你和TA厨房贴墙纸铝箔纸自粘壁纸耐高温', '【防油污】防油防潮厨房贴你和TA厨房贴墙纸铝箔纸自粘壁纸耐高温', 'http://t00img.yangkeduo.com/goods/images/2018-08-22/ae0aef0f366813879bcf811610d40005.jpeg', 'http://t00img.yangkeduo.com/t11img/images/2018-06-14/97dc2e90577f3d99b74e1283bfd61da3.jpeg', 'http://t00img.yangkeduo.com/t04img/images/2018-06-14/c4275e1311450df9d34df69ecc2731a3.jpeg', '666', '10800', '28800', '已拼9.4万件', 'http://t21img.yangkeduo.com/a/9cc487b139e07a003e1bc7fb2271054656385cf6-1507703963?imageMogr2/thumbnail/100x', '');
INSERT INTO `pdd_goodslist` VALUES ('1053832964', '【旗笙】【5条装纯棉】女士内裤女大码中腰内裤女收腹三角女内裤', '【旗笙】【5条装纯棉】女士内裤女大码中腰内裤女收腹三角女内裤', 'http://t00img.yangkeduo.com/t07img/images/2018-06-03/775a8eae37e99ac892bc86d46f6d3b8a.jpeg', 'http://t00img.yangkeduo.com/t07img/images/2018-06-08/6af50f61f488bf990fe3df9b5e530a63.jpeg', 'http://t00img.yangkeduo.com/t11img/images/2018-06-08/22882b6698dec9a5a260bc3ab6972ab1.jpeg', '1680', '1980', '2500', '已拼28.5万件', 'http://t20img.yangkeduo.com/a/dc11f18d5593069b811246740a9935abd57cc78f-1535062716?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/373fe17decd0a317734d92db81749b966f3ac566-1533434034?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('1140301418', '加大码前扣文胸妈妈背心款超薄舒适老人内衣蕾丝提花聚拢调整印花', '加大码前扣文胸妈妈背心款超薄舒适老人内衣蕾丝提花聚拢调整印花', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/284c25f663d9a43326b221a539eb713e.jpeg', 'http://t00img.yangkeduo.com/t11img/images/2018-06-14/00c7cf71fdf97d7e03e11222426d6822.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-06-14/d8e1df7631db2e1c912aeaa7b786a7d0.jpeg', '855', '1080', '7100', '已拼6万件', 'http://t21img.yangkeduo.com/a/ea2db3990785af5beab5df09e206e182349c5dc9-1522650996?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/4d22102fb9354aa7b17a952f3193f8525e01756f-1535073515?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('1294961424', '沥水碗架厨房用品置物架碗柜储物架碗碟架放碗筷收纳盒餐具架刀架', '沥水碗架厨房用品置物架碗柜储物架碗碟架放碗筷收纳盒餐具架刀架', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/1d2b49b3132078a94acbc04f67f7d5f0.jpeg', 'http://t00img.yangkeduo.com/t02img/images/2018-06-06/c64d3088d876f7ea3ef5a9e367fe396e.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-06/b4bd84f7ad340aa5f7b65f19f5264cf1.jpeg', '1190', '2690', '9990', '已拼3.9万件', '', '');
INSERT INTO `pdd_goodslist` VALUES ('1897998714', '儿童扭扭车带音乐四轮滑行车玩具车可坐人1-3岁宝宝溜溜车摇摆车', '儿童扭扭车带音乐四轮滑行车玩具车可坐人1-3岁宝宝溜溜车摇摆车', 'http://t00img.yangkeduo.com/goods/images/2018-07-19/d164dfe97f3c6219e56c3f99fbdb7894.jpeg', 'http://t00img.yangkeduo.com/t04img/images/2018-06-28/3acb15a7ce9cb93e17b793617267f7a1.jpeg', 'http://t00img.yangkeduo.com/t11img/images/2018-06-28/cdc2e6a25f36b105e7ccad428387a7ee.jpeg', '2990', '3290', '9800', '已拼2920件', 'http://t20img.yangkeduo.com/a/b66344f0d0c15210e3210786c75646454afa57cc-1532764618?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/2d1f9cc4c78b3ebca317c48e09db1d3649e97712-1534829419?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('2211400256', '【29.9元抢2000件，抢完恢复34.9元】【薇蓝昕】95棉2018女新款高腰花苞哈伦宽松萝卜裤休闲长裤送腰带', '【薇蓝昕】95棉2018女新款高腰花苞哈伦宽松萝卜裤休闲长裤送腰带', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/d21a05137d05c3feb524f436c9b1b169.jpeg', 'http://t06img.yangkeduo.com/images/2018-07-15/a321b057fdb4c7ff54c8a15000414e31.jpeg', 'http://t17img.yangkeduo.com/images/2018-07-15/cf9b8d955b96c36c5feb3682d1ca722d.jpeg', '2990', '3690', '19600', '已拼1万件', 'http://t20img.yangkeduo.com/a/53ea63cc970755565fc03c76db896dcab169016a-1532690223?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/a2819ccaad5f9fe343e0fc25cdf87ba439714eb6-1534972797?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('2321019976', '梵雪妮大码女装2018秋装新款中长款七分袖风衣修身气质外套连衣裙', '梵雪妮大码女装2018秋装新款中长款七分袖风衣修身气质外套连衣裙', 'http://t00img.yangkeduo.com/goods/images/2018-07-22/963bff2acbf32ee5d5dfde108beadf5e.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-19/3516012d19169e1f9d6183581ea5afb2.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-19/ec3dee5adb8481fc9540615e14d214fc.jpeg', '6990', '8990', '16900', '已拼7549件', 'http://t20img.yangkeduo.com/a/50b9ea9dd54630e62653ef349f2ec869b8617351-1534720465?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/16a92507b154b6368b422c86adcf37a83efffd01-1528721274?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('2411736938', '美俏姿态 100%纯棉 多色 大码长袖打底t恤女2018新款宽松体恤上衣', '美俏姿态 100%纯棉 多色 大码长袖打底t恤女2018新款宽松体恤上衣', 'http://t00img.yangkeduo.com/goods/images/2018-08-09/ac1862d515405180180f24a48fbd06d8.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-19/cc9e1061b971e0417f796db40b0d7035.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-19/c13870cb69a0ec0a65432c5b7a2bf84a.jpeg', '2176', '7900', '39800', '已拼5.8万件', 'http://pinduoduoimg.yangkeduo.com/avatar/default/2.png', 'http://t20img.yangkeduo.com/a/b7ebe716c0159d9f4dc707cf5c0cfbcc40d7acff-1528477365?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('2541420902', '中小学生书包防水减负儿童书包男女初中大容量书包', '中小学生书包防水减负儿童书包男女初中大容量书包', 'http://t00img.yangkeduo.com/goods/images/2018-08-21/1b6ce095932600b6eed5f4fe320d69fd.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-08/3a68440ca864024c609cb39e7b4f9ace.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-08/69df316c6feda5a339c199695c377028.jpeg', '2790', '3090', '12800', '已拼6403件', 'http://t20img.yangkeduo.com/a/0bacbdfa608891f7743279fe40495535678ba421-1528986655?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/eee3fcd5a4142f6348795e6731e784348cf4fe54-1533870418?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('2566316707', '【12.9元限时抢，抢完恢复19.8元】【俞兆林】秋季新款百搭哈伦裤女宽松小脚西裤显瘦松紧腰休闲女裤', '【俞兆林】秋季新款百搭哈伦裤女宽松小脚西裤显瘦松紧腰休闲女裤', 'http://t00img.yangkeduo.com/goods/images/2018-08-09/e51494715e18a0a558bdecf741060a49.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-13/a806e8436223e4744f18904c6beb36e2.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-13/cfd37e905b2bf471e8d5c683df7b276a.jpeg', '1290', '2090', '9900', '已拼4.9万件', 'http://t20img.yangkeduo.com/a/9df21fe44a6d5c91687f58bacbc44144ce7f08e8-1529557892?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/7edf1c58ee5ccbca8e9ae0990d2c7cba2288a9ba-1531526023?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('2608685329', '奋祺秋装女2018新款时尚显瘦两件套时髦宽松减龄条纹遮肉洋气套装', '奋祺秋装女2018新款时尚显瘦两件套时髦宽松减龄条纹遮肉洋气套装', 'http://t00img.yangkeduo.com/goods/images/2018-08-20/026f2d4a921eb2b7c1a9bf1aac03573e.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-19/b743234be0727fdf7f7418bc1cd9e057.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-19/5cf155f3582ee23a156296cded82c7d4.jpeg', '4890', '5990', '51800', '已拼3792件', 'http://t20img.yangkeduo.com/a/9510456ca0e49a705670c0d05e8b19f159f34358-1530699631?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/42e0667aae09d8a78420760fac9922383634b6b5-1529994708?imageMogr2/thumbnail/100x');
INSERT INTO `pdd_goodslist` VALUES ('2624964143', '【21.9元限时抢，抢完恢复27.9元】芙久纯棉大码长袖t恤女2018秋季新款韩版宽松上衣小衫打底衫女装', '芙久纯棉大码长袖t恤女2018秋季新款韩版宽松上衣小衫打底衫女装', 'http://t00img.yangkeduo.com/goods/images/2018-08-22/7d2baabe22856fc505fc2f004870fd1c.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-16/4c5b6209b5ba08dfa28ed844e994fe4a.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-16/b42da1fb7ffaa42a4d0722ebdb7e078c.jpeg', '2190', '2990', '11100', '已拼2662件', 'http://t20img.yangkeduo.com/a/7bb7677358604fcc75c86f37a2a567cfa1107684-1534773680?imageMogr2/thumbnail/100x', 'http://t20img.yangkeduo.com/a/f44b185c296fd8ef9302a2c70f2033c4133c85df-1532393091?imageMogr2/thumbnail/100x');

-- ----------------------------
-- Table structure for `pdd_homecasual`
-- ----------------------------
DROP TABLE IF EXISTS `pdd_homecasual`;
CREATE TABLE `pdd_homecasual` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pdd_homecasual
-- ----------------------------
INSERT INTO `pdd_homecasual` VALUES ('1', 'http://127.0.0.1:3000/images/home/s1.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `pdd_homecasual` VALUES ('2', 'http://127.0.0.1:3000/images/home/s2.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=228');
INSERT INTO `pdd_homecasual` VALUES ('3', 'http://127.0.0.1:3000/images/home/s3.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6242');
INSERT INTO `pdd_homecasual` VALUES ('4', 'http://127.0.0.1:3000/images/home/s4.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `pdd_homecasual` VALUES ('5', 'http://127.0.0.1:3000/images/home/s5.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6230');
INSERT INTO `pdd_homecasual` VALUES ('6', 'http://127.0.0.1:3000/images/home/s6.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=190');
INSERT INTO `pdd_homecasual` VALUES ('7', 'http://127.0.0.1:3000/images/home/s7.png', 'http://mobile.yangkeduo.com/promotion_op.html?type=12&id=229');
INSERT INTO `pdd_homecasual` VALUES ('8', 'http://127.0.0.1:3000/images/home/s8.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6153');
INSERT INTO `pdd_homecasual` VALUES ('9', 'http://127.0.0.1:3000/images/home/s9.png', 'http://mobile.yangkeduo.com/subject.html?subject_id=6242');

-- ----------------------------
-- Table structure for `pdd_homenav`
-- ----------------------------
DROP TABLE IF EXISTS `pdd_homenav`;
CREATE TABLE `pdd_homenav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `iconurl` varchar(255) DEFAULT NULL,
  `icontitle` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pdd_homenav
-- ----------------------------
INSERT INTO `pdd_homenav` VALUES ('1', 'http://127.0.0.1:3000/images/home/nav_icon01.png', '限时秒杀');
INSERT INTO `pdd_homenav` VALUES ('2', 'http://127.0.0.1:3000/images/home/nav_icon02.png', '每日清仓');
INSERT INTO `pdd_homenav` VALUES ('3', 'http://127.0.0.1:3000/images/home/nav_icon03.png', '品牌馆');
INSERT INTO `pdd_homenav` VALUES ('4', 'http://127.0.0.1:3000/images/home/nav_icon04.png', '天天领红包');
INSERT INTO `pdd_homenav` VALUES ('5', 'http://127.0.0.1:3000/images/home/nav_icon05.png', '9块9特卖');
INSERT INTO `pdd_homenav` VALUES ('6', 'http://127.0.0.1:3000/images/home/nav_icon06.gif', '充值中心');
INSERT INTO `pdd_homenav` VALUES ('7', 'http://127.0.0.1:3000/images/home/nav_icon07.png', '秋冬上新');
INSERT INTO `pdd_homenav` VALUES ('8', 'http://127.0.0.1:3000/images/home/nav_icon08.png', '现金签到');
INSERT INTO `pdd_homenav` VALUES ('9', 'http://127.0.0.1:3000/images/home/nav_icon09.png', '食品超市');
INSERT INTO `pdd_homenav` VALUES ('10', 'http://127.0.0.1:3000/images/home/nav_icon10.png', '电器城');
INSERT INTO `pdd_homenav` VALUES ('11', 'http://127.0.0.1:3000/images/home/nav_icon11.png', '助力享免单');
INSERT INTO `pdd_homenav` VALUES ('12', 'http://127.0.0.1:3000/images/home/nav_icon12.png', '天天半价购');
INSERT INTO `pdd_homenav` VALUES ('13', 'http://127.0.0.1:3000/images/home/nav_icon13.png', '1分抽大奖');
INSERT INTO `pdd_homenav` VALUES ('14', 'http://127.0.0.1:3000/images/home/nav_icon14.png', '电器城');
INSERT INTO `pdd_homenav` VALUES ('15', 'http://127.0.0.1:3000/images/home/nav_icon15.png', '海淘');
INSERT INTO `pdd_homenav` VALUES ('16', 'http://127.0.0.1:3000/images/home/nav_icon16.png', '帮帮免费团');
INSERT INTO `pdd_homenav` VALUES ('17', 'http://127.0.0.1:3000/images/home/nav_icon17.png', '多多果园');
INSERT INTO `pdd_homenav` VALUES ('18', 'http://127.0.0.1:3000/images/home/nav_icon18.png', '多多赚大钱');
INSERT INTO `pdd_homenav` VALUES ('19', 'http://127.0.0.1:3000/images/home/nav_icon19.png', '多多爱消除');
INSERT INTO `pdd_homenav` VALUES ('20', 'http://127.0.0.1:3000/images/home/nav_icon20.png', '断码清仓');

-- ----------------------------
-- Table structure for `pdd_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `pdd_recommend`;
CREATE TABLE `pdd_recommend` (
  `goods_id` int(11) unsigned NOT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `thumb_url` varchar(255) DEFAULT NULL,
  `hd_thumb_url` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `price` int(11) unsigned DEFAULT NULL,
  `normal_price` int(11) unsigned DEFAULT NULL,
  `market_price` int(1) unsigned DEFAULT NULL,
  `sales_tip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pdd_recommend
-- ----------------------------
INSERT INTO `pdd_recommend` VALUES ('23823', '【吃厚6层送教学视频】202家用电动缝纫机带脚踏可选扩展台', '【吃厚6层送教学视频】202家用电动缝纫机带脚踏可选扩展台', 'http://t00img.yangkeduo.com/goods/images/2018-07-25/0ebb050af2dc4751988909139344e29c.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-28/9754db01919d2fc5c12e1da537c22450.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-28/471719abbbe79c00f14d58b6eda0b8b6.jpeg', '3000', '12000', '12800', '已拼13.3万件');
INSERT INTO `pdd_recommend` VALUES ('311764', '【泰国进口】泰国进口榴莲新鲜金枕头3-11斤金枕榴莲现摘先发非巴掌榴莲猫山王', '泰国进口榴莲新鲜金枕头3-11斤金枕榴莲现摘先发非巴掌榴莲猫山王', 'http://omsproductionimg.yangkeduo.com/images/2017-03-20/c97226bbc7ec0f178bfbe2674c37cd25.jpeg', 'http://t00img.yangkeduo.com/t08img/images/2018-06-11/2c6323ffca5de54e31fd0291c04f85e3.jpeg', 'http://t00img.yangkeduo.com/t05img/images/2018-06-11/584612665d1c35c87b594943341c5916.jpeg', '7990', '11800', '26800', '已拼6403件');
INSERT INTO `pdd_recommend` VALUES ('329575', '俞兆林多功能充电式迷你榨汁机便捷家用豆浆料理机电动水果榨汁杯', '俞兆林多功能充电式迷你榨汁机便捷家用豆浆料理机电动水果榨汁杯', 'http://t08img.yangkeduo.com/images/2018-04-17/b3e7066da588e987ed5eb9afa4908583.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-07-08/287f79a9f3623263c53f48fa88dcd3ec.jpeg', 'http://t00img.yangkeduo.com/t01img/images/2018-07-08/070df09f5031507bd640dc09d81cdf38.jpeg', '3500', '5500', '9880', '已拼2662件');
INSERT INTO `pdd_recommend` VALUES ('584215', '浴巾浴袍可穿可裹防走光吸水抹胸加厚成人大浴巾', '浴巾浴袍可穿可裹防走光吸水抹胸加厚成人大浴巾', 'http://omsproductionimg.yangkeduo.com/images/2017-07-23/d9abc306a88541d560ecbf631ee4ade7.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/58bbd7f1ce16e2c0a9ed74ab847d214b.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/873fafd8e652db573c8eb9bf50218f66.jpeg', '841', '1680', '2551', '已拼219.6万件');
INSERT INTO `pdd_recommend` VALUES ('1001749', '【百万家庭见证好品质】心逸竹浆本色抽纸巾餐巾纸家用面巾纸批发', '【百万家庭见证好品质】心逸竹浆本色抽纸巾餐巾纸家用面巾纸批发', 'http://t00img.yangkeduo.com/t04img/images/2018-07-02/e073fe611438bd1f256d8635e26de0ab.jpeg', 'http://t00img.yangkeduo.com/t02img/images/2018-05-29/c58805eaa48d4f00db9d6183e3117718.jpeg', 'http://t00img.yangkeduo.com/t04img/images/2018-05-29/2c9909927477ac6befd250e3aa845637.jpeg', '990', '1800', '9990', '已拼5.8万件');
INSERT INTO `pdd_recommend` VALUES ('1033644', '蒸锅不锈钢三层加厚汤锅3层2层多层蒸笼家用电磁炉锅具26cm-30cm', '蒸锅不锈钢三层加厚汤锅3层2层多层蒸笼家用电磁炉锅具26cm-30cm', 'http://t09img.yangkeduo.com/images/2018-04-17/8c71230e992b875db563c29cd7eec6ef.jpeg', 'http://t04img.yangkeduo.com/images/2018-05-13/4b02ee32af071a063039ad6c05343fc9.jpeg', 'http://t01img.yangkeduo.com/images/2018-05-13/3bc5660b870c952af24dc72282aab26c.jpeg', '1350', '4990', '22980', '已拼10.3万件');
INSERT INTO `pdd_recommend` VALUES ('1218619', '【南极人 头层牛皮】真皮豆豆鞋四季单鞋女软底平底妈妈鞋孕妇鞋', '【南极人 头层牛皮】真皮豆豆鞋四季单鞋女软底平底妈妈鞋孕妇鞋', 'http://t08img.yangkeduo.com/images/2018-03-09/a70804386eb6a9aa2648e1e6ae562dea.jpeg', 'http://t00img.yangkeduo.com/t03img/images/2018-06-28/1b4fd0f6c348dfacb06c9392195d6dd8.jpeg', 'http://t00img.yangkeduo.com/t08img/images/2018-06-28/a268737300b99c4110d1ae5f0cd0d7fd.jpeg', '3790', '7990', '28800', '已拼6万件');
INSERT INTO `pdd_recommend` VALUES ('1517277', '成人情侣细丝软毛牙刷10支家庭装竹炭牙刷成人儿童软毛牙刷1支', '成人情侣细丝软毛牙刷10支家庭装竹炭牙刷成人儿童软毛牙刷1支', 'http://t02img.yangkeduo.com/images/2018-03-22/91d162c72d79456e616d8100ae2b4bf8.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-05-28/23285e564d60ffde314cc99035af1216.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-05-28/b0f847cdefc4fdca8d19a6829f06c0d6.jpeg', '258', '560', '3600', '已拼17.1万件');
INSERT INTO `pdd_recommend` VALUES ('1826840', '【40卷20卷10卷】风韵万家5.8斤40卷本色纸卫生纸厕纸卷纸', '【40卷20卷10卷】风韵万家5.8斤40卷本色纸卫生纸厕纸卷纸', 'http://t00img.yangkeduo.com/t10img/images/2018-07-13/fe2436838a562d8aadd4abe07a0cc27f.jpeg', 'http://t00img.yangkeduo.com/t04img/images/2018-07-13/275938f8e76a78965433324d815cba7d.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-07-13/c93113ec620d8cccd249316a958d6b1c.jpeg', '950', '1190', '5500', '已拼6万件');
INSERT INTO `pdd_recommend` VALUES ('2330608', '【唐幂】超薄大胸显小全罩杯文胸大码内衣女薄款上托性感聚拢胸罩', '【唐幂】超薄大胸显小全罩杯文胸大码内衣女薄款上托性感聚拢胸罩', 'http://t00img.yangkeduo.com/goods/images/2018-07-25/e72337d12c5e2b8a3f489b49d7f617fd.jpeg', 'http://t00img.yangkeduo.com/t01img/images/2018-07-10/925573b4431a97268373ae8e184b2f21.jpeg', 'http://t00img.yangkeduo.com/t04img/images/2018-07-10/e3b1fe4f60e276eee41895912033b96b.jpeg', '1990', '3990', '4090', '已拼17.1万件');
INSERT INTO `pdd_recommend` VALUES ('2441014', '【加赠手帕纸不加价】亲爽300张/包原木抽纸面巾纸纸巾餐巾纸批发', '【加赠手帕纸不加价】亲爽300张/包原木抽纸面巾纸纸巾餐巾纸批发', 'http://t00img.yangkeduo.com/goods/images/2018-07-29/b73095b48d08bda9bc5680484c0eb25a.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-29/d08c6f2a93d6e8ee4be251f563488620.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-29/ed30c8e946cf56fbfa72117d9bf2bfee.jpeg', '990', '1490', '4990', '已拼6万件');
INSERT INTO `pdd_recommend` VALUES ('2826667', '【皇媛】ins网红床上四件套仿棉学生宿舍用品被套床单三件套4寝室', '【皇媛】ins网红床上四件套仿棉学生宿舍用品被套床单三件套4寝室', 'http://t00img.yangkeduo.com/t05img/images/2018-07-07/3c5f5cd05b50f7484700e0b7f98edd53.jpeg', 'http://t00img.yangkeduo.com/t03img/images/2018-07-08/49de8127b8109614e697a60b99b940d2.jpeg', 'http://t00img.yangkeduo.com/t05img/images/2018-07-08/5c8d21c672956d79d91c730099c7c158.jpeg', '2190', '6900', '19800', '已拼5.8万件');
INSERT INTO `pdd_recommend` VALUES ('3227762', 'WIFI儿童早教机学习机视频故事机0-12岁触屏点读平板益智玩具7寸', 'WIFI儿童早教机学习机视频故事机0-12岁触屏点读平板益智玩具7寸', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/ff4817cf68e0b826227e9712eb9c28b8.jpeg', 'http://t09img.yangkeduo.com/images/2018-03-30/08b8f311ac2ebb15428f6221e2cd8829.jpeg', 'http://t07img.yangkeduo.com/images/2018-03-30/4e783c3a50a95788aefe266199feab3a.jpeg', '15800', '15900', '39800', '已拼4.9万件');
INSERT INTO `pdd_recommend` VALUES ('3881493', '【40卷24卷10卷可选】富豪5.5斤40卷天然竹浆本色卫生纸卷纸', '【40卷24卷10卷可选】富豪5.5斤40卷天然竹浆本色卫生纸卷纸', 'http://omsproductionimg.yangkeduo.com/images/2018-02-02/8c203ba2bc6e0c7d52a0dd01175a292f.jpeg', 'http://t08img.yangkeduo.com/images/2018-04-12/11ec378039f7f18df24d8865eb72b02b.jpeg', 'http://t10img.yangkeduo.com/images/2018-04-12/4ad90e01d469a44b50dd35e4643cb43e.jpeg', '990', '1690', '8900', '已拼13.3万件');
INSERT INTO `pdd_recommend` VALUES ('4735684', '创美【40-170】特大号加厚收纳箱塑料大号衣服玩具储物箱内衣收纳', '创美【40-170】特大号加厚收纳箱塑料大号衣服玩具储物箱内衣收纳', 'http://t00img.yangkeduo.com/t11img/images/2018-06-26/1fdd1f5254c3be4fa711bb981b034b68.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2017-11-07/0a5560a2738733921c0fe0f88400beea.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2017-11-07/ef525016416be4b1ea34cab50787f0c1.jpeg', '2450', '2580', '29900', '已拼28.5万件');
INSERT INTO `pdd_recommend` VALUES ('4752336', '绣花鞋老北京布鞋女内增高民族风牛筋底广场舞跳舞中老年妈妈鞋', '绣花鞋老北京布鞋女内增高民族风牛筋底广场舞跳舞中老年妈妈鞋', 'http://t00img.yangkeduo.com/goods/images/2018-07-31/3182b87ebe89b0c45b902fbd9446f0e4.jpeg', 'http://t01img.yangkeduo.com/images/2018-03-12/c3b466bcd65fd954d611597e24a1d944.jpeg', 'http://t09img.yangkeduo.com/images/2018-03-12/beb3789e1735abd18788bac06148a8b0.jpeg', '2300', '2750', '8800', '已拼6万件');
INSERT INTO `pdd_recommend` VALUES ('5286785', '妈妈装夏装连衣裙40-50岁中老年女装宽松大码中年短袖中长款裙子', '妈妈装夏装连衣裙40-50岁中老年女装宽松大码中年短袖中长款裙子', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/15c7ad85934044c792e8996dc9c3b296.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/afbac4204bcc00b28711582fec11ca33.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-07-20/9bf76a505735b2581ae80c674c327ca0.jpeg', '3200', '4100', '18800', '已拼7549件');
INSERT INTO `pdd_recommend` VALUES ('5423509', '【干大蒜10斤疯抢】【精准扶贫项目】河南干蒜10斤/5斤农家蒜头', '【干大蒜10斤疯抢】【精准扶贫项目】河南干蒜10斤/5斤农家蒜头', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/17abc01c100717ce91305abd88e0e6b8.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/793152251dde36da8612a20fc84452d6.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/5cc89129d26971bc4116b089df4f2f8f.jpeg', '869', '1590', '3090', '已拼6403件');
INSERT INTO `pdd_recommend` VALUES ('7152411', '【高档防滑衣架10-50支】成人儿童衣架衣挂衣撑子晾衣不锈钢', '【高档防滑衣架10-50支】成人儿童衣架衣挂衣撑子晾衣不锈钢', 'http://t00img.yangkeduo.com/t01img/images/2018-07-02/c8892cb29ba9aaf74644ee48ff32dacd.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-01-22/c8c6c9b801b30327e2051606a0f007a5.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-01-22/1c8818296bd33b4b3a4de3334e08cc6c.jpeg', '400', '790', '4900', '已拼9.4万件');
INSERT INTO `pdd_recommend` VALUES ('7519005', '【25.9元抢500件，抢完恢复29.9元】【可立洁品牌】加强杆2/5个拖把头钢蓝钢盘旋转拖把桶双驱动拖把', '【可立洁品牌】加强杆2/5个拖把头钢蓝钢盘旋转拖把桶双驱动拖把', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/77b8f8714129dbac16d98903ece97ebe.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-03/953a4bed08a6e1f3fe33d87ab438334e.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-03/56b84e6c200f964be2a5a34943461f84.jpeg', '2590', '3290', '5990', '已拼6万件');
INSERT INTO `pdd_recommend` VALUES ('9222650', '【亏本清仓】颈椎枕头 颈椎专用组合枕成人脊椎枕保健枕护颈枕', '【亏本清仓】颈椎枕头 颈椎专用组合枕成人脊椎枕保健枕护颈枕', 'http://t09img.yangkeduo.com/images/2018-04-23/e80309c273a2c1a0c14ca0ea4f2f2e6d.png', 'http://t00img.yangkeduo.com/t11img/images/2018-05-30/cff751b92d5bac3231ef19f27fa3874b.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-05-30/c4f109b47cb8fd0316c987d3e0484cd5.jpeg', '1090', '3990', '19900', '已拼6403件');
INSERT INTO `pdd_recommend` VALUES ('9677044', '【超值两件套】时尚显瘦套装女2018新款韩版港味chic原宿软妹套装', '【超值两件套】时尚显瘦套装女2018新款韩版港味chic原宿软妹套装', 'http://t00img.yangkeduo.com/t08img/images/2018-07-19/8c4865272f9dd2600f083071a94a3053.jpeg', 'http://t08img.yangkeduo.com/images/2018-05-14/8567f96ab02d15ebbe064775f7699321.jpeg', 'http://t03img.yangkeduo.com/images/2018-05-14/348d71cb682fe2ac45865bb2b3598d36.jpeg', '2790', '6980', '16800', '已拼4.9万件');
INSERT INTO `pdd_recommend` VALUES ('10561062', '快乐游 加厚防侧翻户外吊床户外野营吊床公园荡秋千秋游旅游必备', '快乐游 加厚防侧翻户外吊床户外野营吊床公园荡秋千秋游旅游必备', 'http://t00img.yangkeduo.com/goods/images/2018-08-07/11802d8b7e07729fa8f3d430a2b2bb7f.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-07-05/901db0800f884e77516cd18d8d834b1c.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-07-05/6e1d92018fd79deece09c5ecf21818d1.jpeg', '990', '1200', '17900', '已拼3792件');
INSERT INTO `pdd_recommend` VALUES ('18007746', '【唐幂】1/2件装 抹胸背心性感防走光裹胸打底内衣女无肩带文胸', '【唐幂】1/2件装 抹胸背心性感防走光裹胸打底内衣女无肩带文胸', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/0c41dab06305cf82a51679dda0afbe5b.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-24/d39025941fecbbd3b84306ac31c93788.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-24/415964620396463f7fe21dbf69fd687b.jpeg', '1140', '1240', '6800', '已拼28.5万件');
INSERT INTO `pdd_recommend` VALUES ('32699668', '【天堂伞正品】晴雨两用防晒遮阳伞防紫外线太阳伞女三折叠晴雨伞', '【天堂伞正品】晴雨两用防晒遮阳伞防紫外线太阳伞女三折叠晴雨伞', 'http://t00img.yangkeduo.com/t04img/images/2018-06-20/f416e3ad5e39bfeec6af6e0fef624130.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-05-28/8bcd86ea7c8ec18134b47a9b9054adc5.jpeg', 'http://t00img.yangkeduo.com/t11img/images/2018-05-28/4caa55d6218223ba51dc886d936572f4.jpeg', '1980', '3280', '5580', '已拼3792件');
INSERT INTO `pdd_recommend` VALUES ('33519901', '墨氏破壁机加热家用全自动豆浆机无渣多功能料理机电动智能养生机', '墨氏破壁机加热家用全自动豆浆机无渣多功能料理机电动智能养生机', 'http://omsproductionimg.yangkeduo.com/images/2017-07-25/47662d53a519223d0f77c4054bee70af.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-15/b68f9cc578efd5eb3d711013b469f1cf.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-15/7bfb68d20b3ac613b36b013f4caa336e.jpeg', '28800', '42900', '79800', '已拼219.6万件');
INSERT INTO `pdd_recommend` VALUES ('47081602', '半球电热水壶电水壶电热烧水壶水壶热水壶开水壶不锈钢2.0升', '半球电热水壶电水壶电热烧水壶水壶热水壶开水壶不锈钢2.0升', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/071a77bf20c6970c7ef034987b6321a4.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-06-15/ef3c2d2538c86e8f7fff8a4c6c87adc0.jpeg', 'http://t00img.yangkeduo.com/t08img/images/2018-06-15/5dc58c9e9c7f59edacbdef9478e074eb.jpeg', '1880', '2090', '11090', '已拼9.4万件');
INSERT INTO `pdd_recommend` VALUES ('53887781', '【素颜霜+隔离霜+bb霜】韩婵彩妆全套组合化妆品套装初学者 正品', '【素颜霜+隔离霜+bb霜】韩婵彩妆全套组合化妆品套装初学者 正品', 'http://omsproductionimg.yangkeduo.com/images/2017-08-12/5c1ebef0a3cc1471d1c2fa7ec7cc19a2.jpeg', 'http://t05img.yangkeduo.com/images/2018-05-25/3d918dd7ae1907d11cf640b2bde00ba6.jpeg', 'http://t11img.yangkeduo.com/images/2018-05-25/04a359d17ba6e1feab6a1f9beb3b5334.jpeg', '1990', '2090', '19900', '已拼5.8万件');
INSERT INTO `pdd_recommend` VALUES ('63257916', '【5条装】毛巾纯棉金帅缘洗脸成人批发全棉柔软吸水面巾家用加厚', '【5条装】毛巾纯棉金帅缘洗脸成人批发全棉柔软吸水面巾家用加厚', 'http://t00img.yangkeduo.com/t05img/images/2018-06-22/03c1665af08fec0625731e21f96c9f15.jpeg', 'http://t03img.yangkeduo.com/images/2018-05-14/4bd3aa5e9b4f248bc64aa00d6452d925.jpeg', 'http://t05img.yangkeduo.com/images/2018-05-14/e2f809272a9cdf41fdb62fd8cd7ecd2a.jpeg', '1990', '2290', '2990', '已拼4953件');
INSERT INTO `pdd_recommend` VALUES ('64067674', '【19.98元抢2000件，抢完恢复29.9元】【太平狼正品】春秋单鞋工作鞋女粗跟中跟上班尖头高跟鞋大码女鞋', '【太平狼正品】春秋单鞋工作鞋女粗跟中跟上班尖头高跟鞋大码女鞋', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/3e6004f9cd06fd056c50105bcd95a306.jpeg', 'http://t00img.yangkeduo.com/t08img/images/2018-07-06/e2ebd4e488947fa9e9ced83eab81048d.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-07-06/8101071de2e46114a4171037fbf7ad0d.jpeg', '1998', '4500', '16800', '已拼7万件');
INSERT INTO `pdd_recommend` VALUES ('72066126', '【9.89元限时抢，抢完恢复12.8元】免蒸发膜营养护发素正品洗发水修复干枯烫染受损补水顺滑头发焗油', '免蒸发膜营养护发素正品洗发水修复干枯烫染受损补水顺滑头发焗油', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/6789b2453928206c46c1aadf6e010266.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/fcb4cd84463b9ac55f4f6bd35eaa5521.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/25dd9b13c1cac77a1e1819dfdca29210.jpeg', '989', '1580', '6800', '已拼28.5万件');
INSERT INTO `pdd_recommend` VALUES ('99244344', '【超值针线盒46件套 迷你缝纫机】家用大号针线盒套装 便携针线包', '【超值针线盒46件套 迷你缝纫机】家用大号针线盒套装 便携针线包', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/78e0061c7c8a50828f2caa4f891daec8.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-06-01/0524f7c1b7cdc268b35d2bf04705cf6a.jpeg', 'http://t00img.yangkeduo.com/t07img/images/2018-06-01/60300e1936c1822c4291f6d0c02f703b.jpeg', '520', '880', '2990', '已拼3792件');
INSERT INTO `pdd_recommend` VALUES ('100705477', '鼎妙居家拖鞋情侣浴室男女夏室内防拖鞋滑软底洗澡家居凉拖鞋', '鼎妙居家拖鞋情侣浴室男女夏室内防拖鞋滑软底洗澡家居凉拖鞋', 'http://t00img.yangkeduo.com/t02img/images/2018-07-01/ced646ea9d510bfdf3a0ad9fa6e460e8.jpeg', 'http://t08img.yangkeduo.com/images/2018-05-18/04b347df994ddf808f8c4600cba7219c.jpeg', 'http://t10img.yangkeduo.com/images/2018-05-18/60ebe3bd9a97fe04d40f131dd75bb064.jpeg', '590', '790', '2990', '已拼4.9万件');
INSERT INTO `pdd_recommend` VALUES ('120169806', '【镇店之宝】 ABS+PC万向轮拉杆箱旅行箱密码箱行李箱男女登机箱', '【镇店之宝】 ABS+PC万向轮拉杆箱旅行箱密码箱行李箱男女登机箱', 'http://t11img.yangkeduo.com/images/2018-03-03/3a1e0addb7abf4ae77699284722a0f79.jpeg', 'http://t08img.yangkeduo.com/images/2018-05-27/5b77667906028707be39e299c4bcc491.jpeg', 'http://t08img.yangkeduo.com/images/2018-05-27/ff35a803601294ff771521a4facfacb0.jpeg', '6800', '15900', '26800', '已拼6403件');
INSERT INTO `pdd_recommend` VALUES ('120565312', '韩式S双边床裙床罩床笠保护席梦思保护套1.2米/1.5米/1.8米/2米', '韩式S双边床裙床罩床笠保护席梦思保护套1.2米/1.5米/1.8米/2米', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/11b58f6261aaffe6f4f3942b92704142.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-07-01/ad4959dc53cacb7ffe5327e950f2e5d3.jpeg', 'http://t00img.yangkeduo.com/t01img/images/2018-07-01/2c8bee2f930dfb3d317c9c4ab08e2d62.jpeg', '2260', '3900', '6900', '已拼4953件');
INSERT INTO `pdd_recommend` VALUES ('143100444', '枸杞500g宁夏中宁枸杞子罐装特级贡果苟杞子100g买2送菊花养生帝', '枸杞500g宁夏中宁枸杞子罐装特级贡果苟杞子100g买2送菊花养生帝', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/fbd17fa2c5c6ce5a808406b87954a9e6.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2017-10-25/df3656fd556d5637f7f9cc7ed254a572.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2017-10-25/c31f4f40736564039b691db9cd80219a.jpeg', '890', '1990', '12800', '已拼28.5万件');
INSERT INTO `pdd_recommend` VALUES ('164345684', '【28.9元限时抢，抢完恢复29.9元】【翔锌 真牛皮】春秋季一脚蹬休闲鞋大码单鞋女鞋平底妈妈鞋防滑', '【翔锌 真牛皮】春秋季一脚蹬休闲鞋大码单鞋女鞋平底妈妈鞋防滑', 'http://t03img.yangkeduo.com/images/2018-03-14/f4cdd30a9be6e078dd1525885622c52f.jpeg', 'http://t00img.yangkeduo.com/t01img/images/2018-05-25/84f1298f42775eaf37b39a6181c26ec0.jpeg', 'http://t00img.yangkeduo.com/t05img/images/2018-05-25/7c5154d0f84a4402be031982ece07c9c.jpeg', '2890', '3990', '39800', '已拼3.7万件');
INSERT INTO `pdd_recommend` VALUES ('167852053', '【15.9元限时抢，抢完恢复19.9元】【卡包+香薰包】2018新款斜挎包单肩包真皮质感女包时尚潮化妆包', '【卡包+香薰包】2018新款斜挎包单肩包真皮质感女包时尚潮化妆包', 'http://omsproductionimg.yangkeduo.com/images/2017-11-02/bab61f77be544ac750f55c54b669550a.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2017-11-17/7d57ca12cd730e5c942f3b80b84664a8.jpeg', 'http://t01img.yangkeduo.com/images/2018-03-07/a508df274e02898f3fdcd6aed741ea14.jpeg', '1590', '6900', '39800', '已拼13.3万件');
INSERT INTO `pdd_recommend` VALUES ('177891541', '原味手抓饼面饼【美粮坊】30片25片20片、60g90g多规格可选7仓发', '原味手抓饼面饼【美粮坊】30片25片20片、60g90g多规格可选7仓发', 'http://t00img.yangkeduo.com/t04img/images/2018-07-18/b4adbf63fddd4183ccc50a20c31e6721.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-07-19/35a4047af6d196815bfe2579ee9053e8.jpeg', 'http://t00img.yangkeduo.com/t02img/images/2018-07-19/21317d5544a678892597de35e4b812c8.jpeg', '1590', '1790', '5900', '已拼9.4万件');
INSERT INTO `pdd_recommend` VALUES ('183956786', '青花新款 居家客厅茶几沙发地毯卧室床边垫脚垫入户脚垫百搭地垫', '青花新款 居家客厅茶几沙发地毯卧室床边垫脚垫入户脚垫百搭地垫', 'http://t00img.yangkeduo.com/t10img/images/2018-06-18/3fd33391f1b1dd3f6369eb1052e38c58.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-01-18/ebc8df5b6136af4af334c48782ea990b.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-01-18/386e1b1b72209ff6c28b2703570b0447.jpeg', '300', '1300', '99900', '已拼3.9万件');
INSERT INTO `pdd_recommend` VALUES ('281029385', '超值斜纹磨毛床单六件套【抢完立即涨价 优诗莱】', '超值斜纹磨毛床单六件套【抢完立即涨价 优诗莱】', 'http://t00img.yangkeduo.com/goods/images/2018-07-28/621e43dd9d83cdaab54007fe42887a02.jpeg', 'http://t04img.yangkeduo.com/images/2018-03-18/ee61457e11f7f99090eda346319fa32c.jpeg', 'http://t01img.yangkeduo.com/images/2018-04-08/dc1fd512f7d7d5497a43dc2c617b132f.jpeg', '5690', '9990', '39900', '已拼7549件');
INSERT INTO `pdd_recommend` VALUES ('340226225', '【13.5元抢500件，抢完恢复13.9元】【厨房神器】馨南风家用手动蒜泥捣压蒜器蒜蓉搅碎机手拉切蒜神器', '【厨房神器】馨南风家用手动蒜泥捣压蒜器蒜蓉搅碎机手拉切蒜神器', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/e97db7b6335e1be8ae4e8aa7cb07d75c.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/daa54873de8c48f8a9e544dfee6919fc.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/a5d49f7e6014ceb8befe602d6d0f4d32.jpeg', '1350', '2500', '8800', '已拼17.1万件');
INSERT INTO `pdd_recommend` VALUES ('365335830', '简易衣柜实木布衣柜双人大号组装衣橱折叠收纳架柜子牛津布储物柜', '简易衣柜实木布衣柜双人大号组装衣橱折叠收纳架柜子牛津布储物柜', 'http://t08img.yangkeduo.com/images/2018-03-18/7d0c63fe8a5773de05cd886f03bd98ca.jpeg', 'http://t11img.yangkeduo.com/images/2018-02-21/2aab4855b3296050ef75f3c146ef27f6.jpeg', 'http://t05img.yangkeduo.com/images/2018-02-21/c8ba14d611c927d001ecde2fded278c6.jpeg', '3400', '3800', '15000', '已拼4953件');
INSERT INTO `pdd_recommend` VALUES ('368159275', '单筒桶小型迷你洗衣机全半自动家用波轮沥脱水带甩干强劲洗婴儿童', '单筒桶小型迷你洗衣机全半自动家用波轮沥脱水带甩干强劲洗婴儿童', 'http://t10img.yangkeduo.com/images/2018-04-18/198ba0feb78b6621c665fd27b501ca20.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-29/bc7c120ba4c8bf3bc8ddac526b7fd657.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-29/4ecc0ad1a97e9b5f50f31c4d0410c612.jpeg', '9800', '9900', '25900', '已拼3.7万件');
INSERT INTO `pdd_recommend` VALUES ('386199223', '8克拉床头罩床头套防尘罩1.2m/1.5m/1.8m/2.0m/2.2m床头保护套', '8克拉床头罩床头套防尘罩1.2m/1.5m/1.8m/2.0m/2.2m床头保护套', 'http://t00img.yangkeduo.com/t07img/images/2018-06-14/3339fde692261b05ca3e37941793eb1b.jpeg', 'http://t00img.yangkeduo.com/t07img/images/2018-06-06/98acb0c1848d86a1bf3c477d9b511051.jpeg', 'http://t00img.yangkeduo.com/t02img/images/2018-06-06/edc82209e1c7d337577053977bd4ed10.jpeg', '495', '5000', '9900', '已拼7万件');
INSERT INTO `pdd_recommend` VALUES ('420885403', '【枕巾一对装】枕巾三层纱布成人枕巾53-78cm不掉色不起球', '【枕巾一对装】枕巾三层纱布成人枕巾53-78cm不掉色不起球', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/4ffbabedd7cf16df88a7d573b5f8728e.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-06-15/e03dfd2f1e493bf30a6b10213baaad12.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-06-15/c8184a83f8e4974902b040a0c1260d11.jpeg', '1850', '2100', '4000', '已拼6万件');
INSERT INTO `pdd_recommend` VALUES ('464838296', '【买二送礼】告密公主文胸无钢圈透气背心式聚拢调整薄杯美背内衣', '【买二送礼】告密公主文胸无钢圈透气背心式聚拢调整薄杯美背内衣', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/2d23df9c33892deb1c11f762c2b8ce27.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/240c15fd1a360c21a902922e7fa79163.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/176306be3ca6b21121de0665604dc471.jpeg', '1490', '2790', '16800', '已拼10.3万件');
INSERT INTO `pdd_recommend` VALUES ('480213283', '【19.9元限时抢，抢完恢复20.3元】【北极绒正品】4条装高腰女士内裤印花收腹美体暖宫35棉三角短裤', '【北极绒正品】4条装高腰女士内裤印花收腹美体暖宫35棉三角短裤', 'http://t00img.yangkeduo.com/t11img/images/2018-06-29/f2d117bb9fdefeea5856691afa005186.jpeg', 'http://t08img.yangkeduo.com/images/2018-05-20/d0ef085fb34dc837c9b2a32ecedfa397.jpeg', 'http://t00img.yangkeduo.com/t08img/images/2018-05-20/b4201e511fa733bd0441cbdc704f8223.jpeg', '1990', '2200', '2300', '已拼3.9万件');
INSERT INTO `pdd_recommend` VALUES ('510100844', '墙不倒我不掉】强力无痕挂钩粘胶厨房墙壁粘钩贴勾免打孔吸盘钩子', '墙不倒我不掉】强力无痕挂钩粘胶厨房墙壁粘钩贴勾免打孔吸盘钩子', 'http://t01img.yangkeduo.com/images/2018-03-21/7ca132156bbb13d8f19e7874565d779b.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-05-17/c3822b8674415d97b33476f720bf585c.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-05-17/637eaefa2f4fb3ec30983656065d5afc.jpeg', '368', '490', '2000', '已拼2920件');
INSERT INTO `pdd_recommend` VALUES ('515010673', '【5双/10双装】袜子女船袜女生隐形四季款学院日系棉袜子短袜浅口', '【5双/10双装】袜子女船袜女生隐形四季款学院日系棉袜子短袜浅口', 'http://t10img.yangkeduo.com/images/2018-03-01/520e7129b798373640a357b5e22ab28b.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-01-26/92f3b2fd906f360b2271e25b45a62f7e.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-01-26/0ece4b00b8f62c92a4e2c71ac6d23ef1.jpeg', '850', '1090', '5900', '已拼1万件');
INSERT INTO `pdd_recommend` VALUES ('554370312', '【4.59元抢1000件，抢完恢复5.4元】噢爸兔【超值20/40装】不锈钢清洁球厨房用品铁丝洗碗刷子钢丝球', '噢爸兔【超值20/40装】不锈钢清洁球厨房用品铁丝洗碗刷子钢丝球', 'http://t02img.yangkeduo.com/images/2018-05-03/c454d9a35960004d644e3ff9b1a16f3a.jpeg', 'http://t10img.yangkeduo.com/images/2018-05-14/8c1ffe73f416e7293f9cf9a172f1563d.jpeg', 'http://t01img.yangkeduo.com/images/2018-05-14/9ff4f3612bd095e0d769a38b1ee32b65.jpeg', '459', '1550', '1990', '已拼4.9万件');
INSERT INTO `pdd_recommend` VALUES ('580318641', '【5.28元限时抢，抢完恢复6.6元】【轻松甩肉】中药减肥贴瘦身懒人肚脐贴瘦肚瘦腿 减肥产品12贴/盒', '【轻松甩肉】中药减肥贴瘦身懒人肚脐贴瘦肚瘦腿 减肥产品12贴/盒', 'http://t00img.yangkeduo.com/goods/images/2018-08-07/663a94ee7da63fb64be405a140d56424.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-07/f4ee4ca3b118fa4eac3aff8aa6249b47.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-07/5030a64f8dffa58090a0bb85b6069ebc.jpeg', '528', '1290', '19800', '已拼3792件');
INSERT INTO `pdd_recommend` VALUES ('584213813', '【24.9元抢300件，抢完恢复29.9元】北极绒【拍下送皮带】春夏男士休闲宽松直筒商务长裤中老年西裤', '北极绒【拍下送皮带】春夏男士休闲宽松直筒商务长裤中老年西裤', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/6839a9daa90a64eee622c3e094a3a247.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-15/9fdc3a2b98b6a15e1f19d5276df4a311.jpeg', 'http://t00img.yangkeduo.com/t11img/images/2018-06-15/f8f17470c417b4338f80e9cf7ee100f5.jpeg', '2490', '3990', '19800', '已拼2662件');
INSERT INTO `pdd_recommend` VALUES ('615291732', '【包饺子神器】手工捏饺子混沌水饺模具水饺模具小工具', '【包饺子神器】手工捏饺子混沌水饺模具水饺模具小工具', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/5d0688f30cffd39c0bbf453c06dae921.jpeg', 'http://t05img.yangkeduo.com/images/2018-03-04/e148e9f8059adea88c25c6b8b19ea750.jpeg', 'http://t08img.yangkeduo.com/images/2018-03-04/310f516e60d9881d9c2e8b85af21750d.jpeg', '192', '550', '2900', '已拼17.1万件');
INSERT INTO `pdd_recommend` VALUES ('636249025', '【多色多码】2018秋季新款韩版连帽长袖卫衣时尚丝绒休闲两件套', '【多色多码】2018秋季新款韩版连帽长袖卫衣时尚丝绒休闲两件套', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/3b02f42966be8124b572645f7cf2b175.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/c227ec706e6bd315a3ea58aa1cbe70a6.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/ef12011afddcb0762be15c6df4ff2ffd.jpeg', '5490', '6090', '28800', '已拼3.7万件');
INSERT INTO `pdd_recommend` VALUES ('643257362', '【30包28包18包8包】润百洁抽纸卫生纸纸巾3层300张餐巾纸面巾纸', '【30包28包18包8包】润百洁抽纸卫生纸纸巾3层300张餐巾纸面巾纸', 'http://t00img.yangkeduo.com/goods/images/2018-08-03/20e3d1c15fb7d31628320a93c9bb98fe.jpeg', 'http://t00img.yangkeduo.com/t05img/images/2018-07-14/b51b4e8ad75b6c3010f54785165c12e8.jpeg', 'http://t00img.yangkeduo.com/t02img/images/2018-07-14/4502d1050482b2703ec514d1dc73840a.jpeg', '990', '1990', '12800', '已拼13.3万件');
INSERT INTO `pdd_recommend` VALUES ('665057201', '【16.8元限时抢，抢完恢复25.3元】【黑美美】一片式无钢圈聚拢文胸小胸聚拢调整型无痕女士内衣胸罩', '【黑美美】一片式无钢圈聚拢文胸小胸聚拢调整型无痕女士内衣胸罩', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/ed70e8ecadde9806c3add30a172cbed2.jpeg', 'http://t00img.yangkeduo.com/t02img/images/2018-06-14/a9c5654349daf917e0f2bf5cb04cd873.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-06-14/1eaac9d2175fc6052fcf8702d40a933d.jpeg', '1680', '2880', '21600', '已拼6万件');
INSERT INTO `pdd_recommend` VALUES ('703321554', '【魅佳正品】【瘦脸面罩小v脸神器】睡眠瘦脸绷带提升脸部塑形', '【魅佳正品】【瘦脸面罩小v脸神器】睡眠瘦脸绷带提升脸部塑形', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/90d99b0c15c75821d992ec54f747999a.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/8fc5a23ada882e3dabf6a9141a84c49e.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/e49a97cdb962edfba0e2557ebd8f5f7b.jpeg', '1067', '3000', '9900', '已拼10.3万件');
INSERT INTO `pdd_recommend` VALUES ('790615920', '【最后一天特亏1000套】汪汪队立大功玩具儿童玩具汽车小狗旺旺队', '【最后一天特亏1000套】汪汪队立大功玩具儿童玩具汽车小狗旺旺队', 'http://t08img.yangkeduo.com/images/2018-03-23/759defef3f74dd34baa85597e9a1e060.jpeg', 'http://t00img.yangkeduo.com/t03img/images/2018-06-14/c5e17077bd8bf6b96f19efcc5f7df5f7.jpeg', 'http://t00img.yangkeduo.com/t01img/images/2018-06-14/9973ff34853bbda0ac23723d68faabf6.jpeg', '780', '2380', '38800', '已拼3.9万件');
INSERT INTO `pdd_recommend` VALUES ('829889414', '小苏打220g牙膏口气清新按压式莹新去口臭烟渍去黄牙渍美白家庭装', '小苏打220g牙膏口气清新按压式莹新去口臭烟渍去黄牙渍美白家庭装', 'http://t00img.yangkeduo.com/goods/images/2018-07-28/789453ca97e40c3376ff1d4aca2fa349.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-21/d7d8beeb19da499545460213fda59b92.jpeg', 'http://t00img.yangkeduo.com/t04img/images/2018-06-21/d0659c20b3ccf222f55ac517a340ba9d.jpeg', '759', '1990', '20000', '已拼2920件');
INSERT INTO `pdd_recommend` VALUES ('872596819', '2袋足足9.4斤天然皂粉洗衣粉馨香柔软低泡薰衣草大袋4.7-9.4斤', '2袋足足9.4斤天然皂粉洗衣粉馨香柔软低泡薰衣草大袋4.7-9.4斤', 'http://t00img.yangkeduo.com/t07img/images/2018-07-03/642646e457904060e4b635c320bc7eaa.jpeg', 'http://t05img.yangkeduo.com/images/2018-05-14/32c3c0982630a1453ac186964a25021f.jpeg', 'http://t08img.yangkeduo.com/images/2018-05-14/be2c5e527bc1653dfd7ab21c7bdf9710.jpeg', '1090', '1490', '4150', '已拼1万件');
INSERT INTO `pdd_recommend` VALUES ('875385046', '智能手表手机插卡儿童电话手表中小学生天才微聊成人防水定位防丢', '智能手表手机插卡儿童电话手表中小学生天才微聊成人防水定位防丢', 'http://t00img.yangkeduo.com/t01img/images/2018-07-12/98e04ba5e26ee6212162d5d8548624a5.jpeg', 'http://t00img.yangkeduo.com/t03img/images/2018-05-30/8092e7c7eec752664ea3015889126149.jpeg', 'http://t00img.yangkeduo.com/t08img/images/2018-05-30/553778d5b4c7cf060edb8228ba0936b8.jpeg', '2850', '3500', '6501', '已拼7549件');
INSERT INTO `pdd_recommend` VALUES ('918011108', '【整箱12桶】经典红烧牛肉面12*113g/麻辣/泡椒/老坛酸菜桶装泡面', '【整箱12桶】经典红烧牛肉面12*113g/麻辣/泡椒/老坛酸菜桶装泡面', 'http://t00img.yangkeduo.com/t02img/images/2018-07-20/95b219f7af1a9a1387b8e22505d04b49.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-06-13/a997ea65013ba795b3487da5a3c29950.jpeg', 'http://omsproductionimg.yangkeduo.com/images/2018-06-13/f389cead5b5ad369c73f401803ef0366.jpeg', '2290', '4000', '6000', '已拼5.8万件');
INSERT INTO `pdd_recommend` VALUES ('997775417', '【卡思朵】【双层不透】雪纺衫女蝙蝠袖大码宽松藏肉显瘦短袖上衣', '【卡思朵】【双层不透】雪纺衫女蝙蝠袖大码宽松藏肉显瘦短袖上衣', 'http://t02img.yangkeduo.com/images/2018-04-27/dfed3155b7a7dfb4c268919854b46508.jpeg', 'http://t00img.yangkeduo.com/t08img/images/2018-05-20/2d98db4a5049a9cbcb2ea72e59fae63c.jpeg', 'http://t01img.yangkeduo.com/images/2018-05-20/51e7ea0cc957efaf8abb199aac572554.jpeg', '1790', '2500', '9800', '已拼2662件');
INSERT INTO `pdd_recommend` VALUES ('1052943470', '【韩国进口】加厚电饼铛家用煎饼机双面加热悬浮式蛋糕机煎烤机烙饼锅电饼档', '加厚电饼铛家用煎饼机双面加热悬浮式蛋糕机煎烤机烙饼锅电饼档', 'http://t00img.yangkeduo.com/t05img/images/2018-06-30/5a81d56db602191c4ee5e914f3a29e4b.jpeg', 'http://t00img.yangkeduo.com/t03img/images/2018-06-28/b6255c8828186187e4f4efe68cce9e0e.jpeg', 'http://t00img.yangkeduo.com/t05img/images/2018-06-28/6c277ffd4c51352dabe4f6c2d5cac613.jpeg', '5900', '8500', '32800', '已拼3.9万件');
INSERT INTO `pdd_recommend` VALUES ('1053832964', '【旗笙】【5条装纯棉】女士内裤女大码中腰内裤女收腹三角女内裤', '【旗笙】【5条装纯棉】女士内裤女大码中腰内裤女收腹三角女内裤', 'http://t00img.yangkeduo.com/t07img/images/2018-06-03/775a8eae37e99ac892bc86d46f6d3b8a.jpeg', 'http://t00img.yangkeduo.com/t07img/images/2018-06-08/6af50f61f488bf990fe3df9b5e530a63.jpeg', 'http://t00img.yangkeduo.com/t11img/images/2018-06-08/22882b6698dec9a5a260bc3ab6972ab1.jpeg', '1680', '1980', '2500', '已拼17.1万件');
INSERT INTO `pdd_recommend` VALUES ('1062981532', '苗中医皮肤乳膏止痒快根除皮肤瘙痒外阴私处痒皮炎湿疹体癣牛皮癣', '苗中医皮肤乳膏止痒快根除皮肤瘙痒外阴私处痒皮炎湿疹体癣牛皮癣', 'http://t00img.yangkeduo.com/t07img/images/2018-06-04/b6004d5b5e86ce14f880930c11ca0903.jpeg', 'http://t00img.yangkeduo.com/t02img/images/2018-06-04/5f2b22bb014be0cfdef03847e1365118.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-04/0b8d81e1ba6bc55976a6cdce11d69f05.jpeg', '990', '1690', '5990', '已拼3.7万件');
INSERT INTO `pdd_recommend` VALUES ('1090541921', '【9.5元限时抢，抢完恢复9.8元】【特价11.8/2斤】【品牌旗舰店】泰宗坊广式五仁多味月饼500g-2kg', '【特价11.8/2斤】【品牌旗舰店】泰宗坊广式五仁多味月饼500g-2kg', 'http://t00img.yangkeduo.com/t10img/images/2018-07-14/af785fef04af25caf7950392eb02a730.jpeg', 'http://t00img.yangkeduo.com/t05img/images/2018-07-09/267d1bb547a5b869f75eee7b1add27ef.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-07-09/a2881470be3679b4e30caac9fc0c4a2c.jpeg', '950', '1088', '12800', '已拼2662件');
INSERT INTO `pdd_recommend` VALUES ('1095940878', '【4.9元抢300件，抢完恢复5.9元】【收纳箱三件套】手提式大号小号衣物玩具整理箱衣物零食储物塑料', '【收纳箱三件套】手提式大号小号衣物玩具整理箱衣物零食储物塑料', 'http://t00img.yangkeduo.com/goods/images/2018-08-03/72e5740d2d09919ffec02a051520d76a.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/509a7e51a975e4454f2320932f0ba27d.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/4ed6644cff72a7d8c8494cdf537f01e4.jpeg', '490', '890', '8800', '已拼219.6万件');
INSERT INTO `pdd_recommend` VALUES ('1138643564', '亏本阔腿裤女裙裤宽松女装阔脚裤高腰休闲九分显瘦大脚长裤子', '亏本阔腿裤女裙裤宽松女装阔脚裤高腰休闲九分显瘦大脚长裤子', 'http://t00img.yangkeduo.com/goods/images/2018-07-25/2afe39c783367a4c1788e024a4ebc882.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-04/f709837ee47d59fd03aa234a55844c2c.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-04/2828a9bbe1c5619c0349f806598427ad.jpeg', '2390', '3990', '8900', '已拼1万件');
INSERT INTO `pdd_recommend` VALUES ('1140301418', '加大码前扣文胸妈妈背心款超薄舒适老人内衣蕾丝提花聚拢调整印花', '加大码前扣文胸妈妈背心款超薄舒适老人内衣蕾丝提花聚拢调整印花', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/284c25f663d9a43326b221a539eb713e.jpeg', 'http://t00img.yangkeduo.com/t11img/images/2018-06-14/00c7cf71fdf97d7e03e11222426d6822.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-06-14/d8e1df7631db2e1c912aeaa7b786a7d0.jpeg', '855', '1080', '7100', '已拼7万件');
INSERT INTO `pdd_recommend` VALUES ('1143495493', '【莱瑞丽】大码女装连衣裙夏季新款短袖妈妈装加大胖mm修身雪纺裙', '【莱瑞丽】大码女装连衣裙夏季新款短袖妈妈装加大胖mm修身雪纺裙', 'http://t04img.yangkeduo.com/images/2018-05-25/8509fbf072bb05dcb5955718e3112b85.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/ab10d6fe214023518e6a8b7a57c8b595.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/c36e13331c6fbec3d23c90732001ea55.jpeg', '3980', '5800', '29800', '已拼6万件');
INSERT INTO `pdd_recommend` VALUES ('1179393421', '【洗澡神器】长柄浴花刷沐浴球大号洗澡刷软毛沐浴刷搓背刷包邮', '【洗澡神器】长柄浴花刷沐浴球大号洗澡刷软毛沐浴刷搓背刷包邮', 'http://t00img.yangkeduo.com/t03img/images/2018-07-13/473883322daec9d2c01d278e31cf9d4b.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-26/9c6b20e0d9f0239e79f51e40958ed01e.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-26/51c6b8c35031fc45dee907c5923cc49a.jpeg', '294', '6800', '7800', '已拼2920件');
INSERT INTO `pdd_recommend` VALUES ('1294961424', '三层沥水碗架厨房用品置物架碗柜储物架碗碟架放碗筷收纳盒餐具架', '三层沥水碗架厨房用品置物架碗柜储物架碗碟架放碗筷收纳盒餐具架', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/1d2b49b3132078a94acbc04f67f7d5f0.jpeg', 'http://t00img.yangkeduo.com/t02img/images/2018-06-06/c64d3088d876f7ea3ef5a9e367fe396e.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-06/b4bd84f7ad340aa5f7b65f19f5264cf1.jpeg', '1190', '2690', '9990', '已拼13.3万件');
INSERT INTO `pdd_recommend` VALUES ('1404717231', '【19.9元限时抢，抢完恢复29.9元】【花花公子贵宾男鞋】美国品牌假一赔十透气防臭跑步运动网鞋单鞋', '【花花公子贵宾男鞋】美国品牌假一赔十透气防臭跑步运动网鞋单鞋', 'http://t00img.yangkeduo.com/t02img/images/2018-06-06/18049d251598fd0bd3397135dba77aa3.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-05-28/3bd08f274e38fd9754f7ffde18bd25f9.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-05-28/239d456dbdbb118c89d02934b76bf5e3.jpeg', '1990', '8900', '28800', '已拼9.4万件');
INSERT INTO `pdd_recommend` VALUES ('1479115821', '扫地机手推式吸尘器家用软扫把簸箕套装组合魔法扫帚平板拖把托布', '扫地机手推式吸尘器家用软扫把簸箕套装组合魔法扫帚平板拖把托布', 'http://t00img.yangkeduo.com/goods/images/2018-07-23/34d2ab0960f922029fd492253361d304.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/ae363c6e1f7d293eca115bfe97330e07.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/dc2aa4bf5aca86e16a96e28d6ae95b24.jpeg', '2070', '2300', '9900', '已拼7549件');
INSERT INTO `pdd_recommend` VALUES ('1507450868', '【芙皇儿】妈妈仿真丝两件套连衣裙女夏装中年高贵旗袍裙子中长款', '【芙皇儿】妈妈仿真丝两件套连衣裙女夏装中年高贵旗袍裙子中长款', 'http://t00img.yangkeduo.com/t01img/images/2018-05-26/38352f78b577ac62d22d6a777f515e1e.jpeg', 'http://t00img.yangkeduo.com/t11img/images/2018-06-04/7eb2890d9bec765975785dd59ddcfbda.jpeg', 'http://t00img.yangkeduo.com/t05img/images/2018-06-04/bf8f40b253b900b4cab7d511e16ca2a8.jpeg', '5990', '6500', '49800', '已拼219.6万件');
INSERT INTO `pdd_recommend` VALUES ('1563273229', '【14.9元限时抢，抢完恢复18.8元】MTTROLI 94%棉T恤女短袖 2018夏季新款 简约修身显瘦V领打底衫女', 'MTTROLI 94%棉T恤女短袖 2018夏季新款 简约修身显瘦V领打底衫女', 'http://t00img.yangkeduo.com/t09img/images/2018-06-21/3cbd8f5c0fd0b66c24808f68000e5ab8.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-06-10/86459a542cb209899835e7592ccc020a.jpeg', 'http://t00img.yangkeduo.com/t05img/images/2018-06-10/93a3b7fd254dbda48d058451f5dd5f88.jpeg', '1490', '2990', '8800', '已拼4953件');
INSERT INTO `pdd_recommend` VALUES ('1662488988', '迷你小包包女2018新款夏季韩版撞色百搭锁扣手机包单肩包斜挎包包', '迷你小包包女2018新款夏季韩版撞色百搭锁扣手机包单肩包斜挎包包', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/8e08a96268f5cd7399f1b13d478597fc.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-12/eaaf9e86c1d2b195eead4a09d0f96340.jpeg', 'http://t00img.yangkeduo.com/t08img/images/2018-06-12/e27b0b0dd66cbaf31f2c39dbb72a2c6f.jpeg', '780', '1190', '3900', '已拼7万件');
INSERT INTO `pdd_recommend` VALUES ('1680347113', '【回购率超高】泽岭 三斤特价云南薄皮核桃坚果零食炒货半斤-九斤', '【回购率超高】泽岭 三斤特价云南薄皮核桃坚果零食炒货半斤-九斤', 'http://t00img.yangkeduo.com/t09img/images/2018-07-18/568443309930402b70e9cb9bf74a5f37.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/6b7591bb1466b225dc89a1f18e058978.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/d86f117fad950929506a232961efe93c.jpeg', '1390', '1590', '10100', '已拼6万件');
INSERT INTO `pdd_recommend` VALUES ('1710245093', '【7.9元限时抢，抢完恢复9.9元】日本马油去脚气膏80g 马油霜治脚气除去脚气喷剂王套装去臭脚臭粉', '日本马油去脚气膏80g 马油霜治脚气除去脚气喷剂王套装去臭脚臭粉', 'http://t00img.yangkeduo.com/goods/images/2018-07-26/e0be2214b7c9ed8d10b1449996738a7e.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-29/7d10182d53ec8edd4f1176909206287e.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-29/0d0309b9f5c2936a991d445c01cd6b4f.jpeg', '790', '1090', '9800', '已拼10.3万件');
INSERT INTO `pdd_recommend` VALUES ('1931100700', '连衣裙女夏2018新款清新雪纺收腰长裙大摆超仙碎花修身沙滩裙子', '连衣裙女夏2018新款清新雪纺收腰长裙大摆超仙碎花修身沙滩裙子', 'http://t00img.yangkeduo.com/t07img/images/2018-06-29/633b66071dd4ca0c04e4cd402c7429fb.jpeg', 'http://t00img.yangkeduo.com/t09img/images/2018-06-23/4aa4d86be24cb559b3f9c51d1ad9b437.jpeg', 'http://t00img.yangkeduo.com/t11img/images/2018-06-23/8a360e675738bbdd984398f5646a287c.jpeg', '7900', '8900', '28800', '已拼2920件');
INSERT INTO `pdd_recommend` VALUES ('1942162945', '10-20条,洗碗布不沾油加厚百洁布不易发霉吸水性强八层/五层抹布', '10-20条,洗碗布不沾油加厚百洁布不易发霉吸水性强八层/五层抹布', 'http://t00img.yangkeduo.com/goods/images/2018-07-25/e076bda9c887d0be0e2ce76a99f6c66e.jpeg', 'http://t00img.yangkeduo.com/t08img/images/2018-06-24/5240b1c4422d56e4002ab7d3a3fe8063.jpeg', 'http://t00img.yangkeduo.com/t05img/images/2018-06-24/b5ec859d2c644d78f43b699c5724c24a.jpeg', '359', '2500', '8000', '已拼1万件');
INSERT INTO `pdd_recommend` VALUES ('1973178930', '特级大果花生米 生 新3斤包邮批发新货手剥生花生散装农家', '特级大果花生米 生 新3斤包邮批发新货手剥生花生散装农家', 'http://t00img.yangkeduo.com/goods/images/2018-07-27/ed89a5d45f6f315d4382dd3cc56f6dce.jpeg', 'http://t00img.yangkeduo.com/t01img/images/2018-06-26/b7378c778ef85e9e24fa2c14d796d8fe.jpeg', 'http://t00img.yangkeduo.com/t10img/images/2018-06-26/d49e604512f9a0b0b9eb973a9463a20a.jpeg', '1490', '2090', '3990', '已拼7549件');
INSERT INTO `pdd_recommend` VALUES ('2051185571', '唐幂【1/2/3】夏季超薄款透气无痕隐形夏天女士空调房护膝护关节', '唐幂【1/2/3】夏季超薄款透气无痕隐形夏天女士空调房护膝护关节', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/6f986826a9721c8a87b7e0194c9777bd.jpeg', 'http://t00img.yangkeduo.com/t04img/images/2018-07-05/c861cd0962f4aadff338660ba760e536.jpeg', 'http://t00img.yangkeduo.com/t02img/images/2018-07-05/8b387b803b22bc0f34ad39285efb36f9.jpeg', '390', '1500', '2090', '已拼5.8万件');
INSERT INTO `pdd_recommend` VALUES ('2169633728', '【两件套套装】俏丽苏雪纺阔腿裤套装女夏2018新款宽松高腰两件套', '【两件套套装】俏丽苏雪纺阔腿裤套装女夏2018新款宽松高腰两件套', 'http://t00img.yangkeduo.com/t05img/images/2018-07-12/a0023f93e929df5a40788833c68fe33d.jpeg', 'http://t00img.yangkeduo.com/t01img/images/2018-07-17/3c306429048d53a82460107fd9e9d08c.jpeg', 'http://t00img.yangkeduo.com/t07img/images/2018-07-17/6e24b26cd724c80ed39487c9930d7017.jpeg', '4990', '5590', '15900', '已拼6403件');
INSERT INTO `pdd_recommend` VALUES ('2283512897', '戴妃媛牛仔连衣裙女2018夏季新款遮肚子直筒收腰中长裙子Q1162', '戴妃媛牛仔连衣裙女2018夏季新款遮肚子直筒收腰中长裙子Q1162', 'http://t00img.yangkeduo.com/goods/images/2018-08-03/ba87ee4363e129f084e50ca80e30edb6.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/113aa0c46e73597df8597a4eda0339af.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-20/b9b5b16aa259146e6028116b4675e276.jpeg', '4990', '5990', '36800', '已拼4.9万件');
INSERT INTO `pdd_recommend` VALUES ('2303556704', '儿童餐椅叫叫椅带餐盘宝宝吃饭椅儿童椅子塑料靠背椅宝宝小凳子', '儿童餐椅叫叫椅带餐盘宝宝吃饭椅儿童椅子塑料靠背椅宝宝小凳子', 'http://t00img.yangkeduo.com/goods/images/2018-08-03/48876e73fc5342e9900b812333d76267.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-03/e042462dc21828a89b95c1c38460fa87.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-03/73a2df57e2bf4d8d00e66082cab90c3b.jpeg', '1610', '2680', '3780', '已拼3792件');
INSERT INTO `pdd_recommend` VALUES ('2312283510', '摇椅成人午睡躺椅懒人椅子老人摇摇椅室内休闲藤椅阳台客厅逍遥椅', '摇椅成人午睡躺椅懒人椅子老人摇摇椅室内休闲藤椅阳台客厅逍遥椅', 'http://t00img.yangkeduo.com/openapi/images/2018-07-22/e36fc226c0d170d28a9102360a1267d6.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-22/94424b225c02572fc21a81f42fc62b3e.jpeg', 'http://t00img.yangkeduo.com/t01img/images/2018-07-22/5af1c3577c8e98a2453757ce252902ee.jpeg', '10300', '17000', '29800', '已拼2662件');
INSERT INTO `pdd_recommend` VALUES ('2323977029', '2018新款夏装宽松韩版胖妹妹大码女装洋气藏肉遮肚子减龄连衣裙潮', '2018新款夏装宽松韩版胖妹妹大码女装洋气藏肉遮肚子减龄连衣裙潮', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/19826cbd5f390339a5b74a3a238e3126.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-22/e21abb7d39ca15927b9e5b3a14ca5c83.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-22/6a3813da5b3286ed7858d2a5a7e6330c.jpeg', '4980', '5980', '34800', '已拼219.6万件');
INSERT INTO `pdd_recommend` VALUES ('2335920698', '多功能大号压蒜泥器手动剥大蒜器搅蒜蓉捣碎器厨房用品具蒜臼子', '多功能大号压蒜泥器手动剥大蒜器搅蒜蓉捣碎器厨房用品具蒜臼子', 'http://t00img.yangkeduo.com/openapi/images/2018-07-23/fb52bb01460378114a26fba8ed477eb9.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-23/fd79d67d788b3c07494b4b634d375578.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-23/5c8b50025db1a0769c3e8346858d2031.jpeg', '670', '1000', '3900', '已拼4953件');
INSERT INTO `pdd_recommend` VALUES ('2366851509', '贝乔薇风衣女中长款韩版春秋季2018新款时尚宽松抽绳收腰薄款外套', '贝乔薇风衣女中长款韩版春秋季2018新款时尚宽松抽绳收腰薄款外套', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/ed7d7afcd9a51d97df8aa299e924bc75.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-25/3837627d57f4c5930cdce3467b574d39.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-25/bd4eeba5bf89bead0c724eac9f070608.jpeg', '5990', '6990', '19900', '已拼3.7万件');
INSERT INTO `pdd_recommend` VALUES ('2373386152', '【圣西陀正品】1-2双装男女款冰爽袖套防晒紫外线加长冰丝护臂袖', '【圣西陀正品】1-2双装男女款冰爽袖套防晒紫外线加长冰丝护臂袖', 'http://t00img.yangkeduo.com/goods/images/2018-07-25/853ad6443ca4d707cbf904e56fc2e2d0.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-30/b26d4ccd0f66228857d518602843cfd9.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-30/4a8f094c0e14c1aacad3a7389444d245.jpeg', '320', '490', '1500', '已拼7万件');
INSERT INTO `pdd_recommend` VALUES ('2384244493', '【哥弟面料】秋季新款哈伦裤九分裤女修身显瘦垂感百搭休闲小脚裤', '【哥弟面料】秋季新款哈伦裤九分裤女修身显瘦垂感百搭休闲小脚裤', 'http://t00img.yangkeduo.com/goods/images/2018-08-04/acac1f9587266a8f884533b4a8ed98f0.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-26/6cfe517fec99ef23f5fca533fdc7d9d0.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-26/cd377bb9bc4dc3786893f540d0a71bd0.jpeg', '1490', '2490', '19900', '已拼6万件');
INSERT INTO `pdd_recommend` VALUES ('2393802503', '萝曼伦2018夏季新款通勤半开领A字裙女纯色职业修身连衣裙子', '萝曼伦2018夏季新款通勤半开领A字裙女纯色职业修身连衣裙子', 'http://t00img.yangkeduo.com/goods/images/2018-08-06/29d97c542cd473635a518833e773d732.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/b9cdd494c196aa9bfad262b39b3e313b.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-01/d98829a49ed7c802b411ac0e69817b7f.jpeg', '5790', '6990', '36800', '已拼10.3万件');
INSERT INTO `pdd_recommend` VALUES ('2423392350', '【优质罗马】洋气大码女装胖mm遮肉套装宽松显瘦秋装阔腿裤三件套', '【优质罗马】洋气大码女装胖mm遮肉套装宽松显瘦秋装阔腿裤三件套', 'http://t00img.yangkeduo.com/goods/images/2018-07-29/61b238971b9b4213277b11eefa1932e8.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-29/257b03857c351cfaa5680dd6dcede8be.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-29/c1af745dc35a2ef3a0b0853bd4dd1ed2.jpeg', '3990', '4990', '18800', '已拼9.4万件');
INSERT INTO `pdd_recommend` VALUES ('2427804938', '【4.65元限时抢，抢完恢复4.9元】10-20块大号厨房抹布洗碗海绵擦百洁布不沾油去污刷菜瓜布洗碗布', '10-20块大号厨房抹布洗碗海绵擦百洁布不沾油去污刷菜瓜布洗碗布', 'http://t00img.yangkeduo.com/goods/images/2018-08-07/9d9e4d9e50ce3a97318b7528fab6cfe3.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/4a5f9b60aaafeb1de0b4ed85d7ff721d.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/5d3d6646b23bd78454539671e1f17d08.jpeg', '465', '2300', '3500', '已拼28.5万件');
INSERT INTO `pdd_recommend` VALUES ('2441245939', '【39.9元限时抢，抢完恢复43.8元】【中袖/长袖可选】韩国绒2018春秋阔腿裤韩版时尚休闲运动套装女', '【中袖/长袖可选】韩国绒2018春秋阔腿裤韩版时尚休闲运动套装女', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/a8a7feeb1cf309dc9b02deea6ece53ab.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-31/7d0c260fc1eec393b7544e059e5d6265.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-07-31/ee26e1bdddf6c85cd8678f59ecea9035.jpeg', '3990', '8800', '8900', '已拼3.9万件');
INSERT INTO `pdd_recommend` VALUES ('2459375892', '复衣城 套装女夏新款韩版大码洋气雪纺开衫上衣阔腿裤时尚两件套', '复衣城 套装女夏新款韩版大码洋气雪纺开衫上衣阔腿裤时尚两件套', 'http://t00img.yangkeduo.com/goods/images/2018-07-31/1cd999b1d924227de4fb08744f2fb941.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-03/de2b458b4059a1fbc1cbf62970bc787a.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-03/a7871b2b3de447c30ef213da30466e37.jpeg', '5500', '6990', '70900', '已拼2920件');
INSERT INTO `pdd_recommend` VALUES ('2488116154', '【5.5元抢5000件，抢完恢复6.9元】映山红【25卷/15卷/5卷】彩色垃圾袋加厚平口中大号塑料袋子批发', '映山红【25卷/15卷/5卷】彩色垃圾袋加厚平口中大号塑料袋子批发', 'http://t00img.yangkeduo.com/goods/images/2018-08-05/1e8317557fc045b46702c12092e2a598.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/1724b73b501c230cbcf62089f2d2d632.jpeg', 'http://t00img.yangkeduo.com/goods/images/2018-08-02/4243fb962af4bce016db4b8dfc499520.jpeg', '550', '890', '2580', '已拼1万件');

-- ----------------------------
-- Table structure for `pdd_search`
-- ----------------------------
DROP TABLE IF EXISTS `pdd_search`;
CREATE TABLE `pdd_search` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pdd_search
-- ----------------------------
INSERT INTO `pdd_search` VALUES ('1', '服饰', 'http://127.0.0.1:3000/images/search/4a581f7b6f6d55f5afdef7de5487a2bd.png', '女装');
INSERT INTO `pdd_search` VALUES ('2', '服饰', 'http://127.0.0.1:3000/images/search/f6cdcb880776f983d9aa2274538ea9a8.png', '秋上新');
INSERT INTO `pdd_search` VALUES ('3', '服饰', 'http://127.0.0.1:3000/images/search/8e6f4725caf7307ae20d858e31afbcc6.png', 'T恤');
INSERT INTO `pdd_search` VALUES ('4', '服饰', 'http://127.0.0.1:3000/images/search/abfb614648fb0f4f4f26ce3d7a6771f2.png', '女裤');
INSERT INTO `pdd_search` VALUES ('5', '服饰', 'http://127.0.0.1:3000/images/search/35b18597fb6730742d42ab80a6128167.png', '外套');
INSERT INTO `pdd_search` VALUES ('6', '服饰', 'http://127.0.0.1:3000/images/search/d621a9d233902947a7f6c181f21de096.png', '衬衫');
INSERT INTO `pdd_search` VALUES ('7', '服饰', 'http://127.0.0.1:3000/images/search/91d18c17d6de7b8ce37a175c5c406bf1.png', '裙装');
INSERT INTO `pdd_search` VALUES ('8', '服饰', 'http://127.0.0.1:3000/images/search/b083d02727dd1e8fca4e359de4c7c21a.png', '针织衫');
INSERT INTO `pdd_search` VALUES ('9', '服饰', 'http://127.0.0.1:3000/images/search/07c6bca28e628b77e010d17ea0c18732.png', '套装');
INSERT INTO `pdd_search` VALUES ('10', '服饰', 'http://127.0.0.1:3000/images/search/2d7cfc5adcd71c4e26f370dc9ca8f533.png', '大码女装');
INSERT INTO `pdd_search` VALUES ('11', '服饰', 'http://127.0.0.1:3000/images/search/93bbd0a00fcd11ca8e2ff520b5b7321a.png', '牛仔裤');
INSERT INTO `pdd_search` VALUES ('12', '服饰', 'http://127.0.0.1:3000/images/search/0c7717ca29adb225b7bedf43565e36e1.png', '反季清仓');
INSERT INTO `pdd_search` VALUES ('13', '鞋包', 'http://127.0.0.1:3000/images/search/4ca61ccafb3388b900d0bf51fd51b363.jpg', '女鞋');
INSERT INTO `pdd_search` VALUES ('14', '鞋包', 'http://127.0.0.1:3000/images/search/8c3d5d13d07132e9ddd013ff74c76e49.jpg', '男鞋');
INSERT INTO `pdd_search` VALUES ('15', '鞋包', 'http://127.0.0.1:3000/images/search/1ad3e18be88873e82b68c8a8a8e80133.png', '箱包皮具');
INSERT INTO `pdd_search` VALUES ('16', '鞋包', 'http://127.0.0.1:3000/images/search/5ac326275632de290898cb8149f7442d.jpg', '低帮鞋');
INSERT INTO `pdd_search` VALUES ('17', '鞋包', 'http://127.0.0.1:3000/images/search/7a2b7f3ce29aa9cc67da1557ae65a2d6.jpg', '凉鞋');
INSERT INTO `pdd_search` VALUES ('18', '鞋包', 'http://127.0.0.1:3000/images/search/aa42e50789a3bd4e79e7149989b289ff.png', '腕表眼镜');
INSERT INTO `pdd_search` VALUES ('19', '鞋包', 'http://127.0.0.1:3000/images/search/80b34919b15a3b3cadade885782668f3.jpg', '皮鞋');
INSERT INTO `pdd_search` VALUES ('20', '鞋包', 'http://127.0.0.1:3000/images/search/d7b0b72045c12c197dc68bf8b123aae7.jpg', '拖鞋');
INSERT INTO `pdd_search` VALUES ('21', '鞋包', 'http://127.0.0.1:3000/images/search/9cd0896aabc077cf4574c25ef81f8303.png', '双肩包');
INSERT INTO `pdd_search` VALUES ('22', '鞋包', 'http://127.0.0.1:3000/images/search/5f6577429b33b31053ec7e8223e9740b.jpg', '帆布鞋');
INSERT INTO `pdd_search` VALUES ('23', '鞋包', 'http://127.0.0.1:3000/images/search/963edf6306ddaa99f1cd407542bbdf81.jpg', '反季清仓');
INSERT INTO `pdd_search` VALUES ('24', '鞋包', 'http://127.0.0.1:3000/images/search/5940113771a0c23a26bbc6ab8bb3729d.png', '配饰');
INSERT INTO `pdd_search` VALUES ('25', '男装', 'http://127.0.0.1:3000/images/search/163857a02c69fae18f2f2e5f79d6d65a.png', '夏清仓');
INSERT INTO `pdd_search` VALUES ('26', '男装', 'http://127.0.0.1:3000/images/search/23c0549881edcafea7d3bd901b2caedd.jpg', '套装');
INSERT INTO `pdd_search` VALUES ('27', '男装', 'http://127.0.0.1:3000/images/search/be6a716479fc666d6f5a611599aeb4ec.jpg', '衬衫');
INSERT INTO `pdd_search` VALUES ('28', '男装', 'http://127.0.0.1:3000/images/search/c7a37f7d83e2f1d93ff615e6cb636138.jpg', '休闲裤');
INSERT INTO `pdd_search` VALUES ('29', '男装', 'http://127.0.0.1:3000/images/search/71f8706a5e36fd4947623d0369917f6d.jpg', '牛仔裤');
INSERT INTO `pdd_search` VALUES ('30', '男装', 'http://127.0.0.1:3000/images/search/dfd7a2efe9a0e29acbfede4576c94604.jpg', '卫衣');
INSERT INTO `pdd_search` VALUES ('31', '男装', 'http://127.0.0.1:3000/images/search/3d6008bf0327be41e1368286734f3087.jpg', '夹克');
INSERT INTO `pdd_search` VALUES ('32', '男装', 'http://127.0.0.1:3000/images/search/c9a463e9e5774cee64612de3d7fdf425.png', '秋上新');
INSERT INTO `pdd_search` VALUES ('33', '男装', 'http://127.0.0.1:3000/images/search/c0318617ddea7d3235392a52f0b6e491.png', '毛衣');
INSERT INTO `pdd_search` VALUES ('34', '母婴', 'http://127.0.0.1:3000/images/search/c60a121d6d0dd20c9ab50f9d29ff3311.png', '童装');
INSERT INTO `pdd_search` VALUES ('35', '母婴', 'http://127.0.0.1:3000/images/search/a134494dc546b263906c21a2ed923344.png', '童鞋');
INSERT INTO `pdd_search` VALUES ('36', '母婴', 'http://127.0.0.1:3000/images/search/bf5ad345780fdcdaec0f6202d81cbeae.jpg', '秋上新');
INSERT INTO `pdd_search` VALUES ('37', '母婴', 'http://127.0.0.1:3000/images/search/90e3d9f42426e09e6d22cad32e546158.png', '玩具乐器');
INSERT INTO `pdd_search` VALUES ('38', '母婴', 'http://127.0.0.1:3000/images/search/038eb41c80aae75b7c1343e4b7b2bc01.png', '纸尿裤');
INSERT INTO `pdd_search` VALUES ('39', '母婴', 'http://127.0.0.1:3000/images/search/2a0779f49285c4f41312998d1c40c50d.png', '孕妈专区');
INSERT INTO `pdd_search` VALUES ('40', '母婴', 'http://127.0.0.1:3000/images/search/a13b90d8a2e8ddb934cf39623ee8a7ae.png', '用品湿巾');
INSERT INTO `pdd_search` VALUES ('41', '母婴', 'http://127.0.0.1:3000/images/search/1e27df90f995085ae9de20cf9f66204f.png', '学习玩具');
INSERT INTO `pdd_search` VALUES ('42', '母婴', 'http://127.0.0.1:3000/images/search/199c415f4fc3c030b8623625655fc82c.png', '童车童床');
INSERT INTO `pdd_search` VALUES ('43', '内衣', 'http://127.0.0.1:3000/images/search/f7bd831b71565891a66b4149a8f0ed7d.png', '女士内衣');
INSERT INTO `pdd_search` VALUES ('44', '内衣', 'http://127.0.0.1:3000/images/search/9251d6193fd66df10037261c5717b7f6.jpg', '男士内衣');
INSERT INTO `pdd_search` VALUES ('45', '内衣', 'http://127.0.0.1:3000/images/search/2c4e09be13e6b95bc94028fb04c0a75b.jpg', '文胸');
INSERT INTO `pdd_search` VALUES ('46', '内衣', 'http://127.0.0.1:3000/images/search/90e3d9f42426e09e6d22cad32e546158.png', '裤袜');
INSERT INTO `pdd_search` VALUES ('47', '内衣', 'http://127.0.0.1:3000/images/search/09d56e388314120bec2f6cb0b4da0179.jpg', '内裤');
INSERT INTO `pdd_search` VALUES ('48', '内衣', 'http://127.0.0.1:3000/images/search/d20277963ff3ac7b837cb4beb6390d7e.png', '睡衣');
INSERT INTO `pdd_search` VALUES ('49', '食品', 'http://127.0.0.1:3000/images/search/2548fb09335f9cb9e14978a897e9e377.jpg', '休闲零食');
INSERT INTO `pdd_search` VALUES ('50', '食品', 'http://127.0.0.1:3000/images/search/faeda76f8fccc3cd5b9a9086e95955a2.jpg', '乳制品');
INSERT INTO `pdd_search` VALUES ('51', '食品', 'http://127.0.0.1:3000/images/search/34e89c3fb7c2d7dfd8ec1d547388c3d0.png', '茶叶冲饮');
INSERT INTO `pdd_search` VALUES ('52', '食品', 'http://127.0.0.1:3000/images/search/f7b237ce64dc82dc5d61427952a811ca.jpg', '饼干糕点');
INSERT INTO `pdd_search` VALUES ('53', '食品', 'http://127.0.0.1:3000/images/search/de28426d51f8243000c7626a1665873a.png', '中秋节');
INSERT INTO `pdd_search` VALUES ('54', '食品', 'http://127.0.0.1:3000/images/search/0c96c40fa841251f6ab94dd15801717a.jpg', '粮油速食');
INSERT INTO `pdd_search` VALUES ('55', '食品', 'http://127.0.0.1:3000/images/search/1ee28c9d5a60f6c55c7ccca8b65e77de.jpg', '坚果蜜饯');
INSERT INTO `pdd_search` VALUES ('56', '食品', 'http://127.0.0.1:3000/images/search/ef17d6c193e0617a7b74354af6578e23.png', '中外名酒');
INSERT INTO `pdd_search` VALUES ('57', '食品', 'http://127.0.0.1:3000/images/search/94c5f56dc96a2e5c95e38bb70c682634.png', '营养保健');
INSERT INTO `pdd_search` VALUES ('58', '百货', 'http://127.0.0.1:3000/images/search/ccc2baf4cad5665c3164d86558f7c8ee.png', '纸品湿巾');
INSERT INTO `pdd_search` VALUES ('59', '百货', 'http://127.0.0.1:3000/images/search/68db96b9adb904bc758737724f30b71e.png', '家庭清洁');
INSERT INTO `pdd_search` VALUES ('60', '百货', 'http://127.0.0.1:3000/images/search/677621819aa45233e38d319907998afd.png', '日用百货');
INSERT INTO `pdd_search` VALUES ('61', '百货', 'http://127.0.0.1:3000/images/search/355400b815b77c15a071fed5545fc690.png', '收纳整理');
INSERT INTO `pdd_search` VALUES ('62', '百货', 'http://127.0.0.1:3000/images/search/2f94abce3d468cc6192f5a873490c9d5.jpg', '绿植园艺');
INSERT INTO `pdd_search` VALUES ('63', '百货', 'http://127.0.0.1:3000/images/search/ee96efa4f350b8f205be541636f404bb.png', '洗护清洁');
INSERT INTO `pdd_search` VALUES ('64', '百货', 'http://127.0.0.1:3000/images/search/ed11b879884a09a1de845d163363cec0.png', '厨房用品');
INSERT INTO `pdd_search` VALUES ('65', '百货', 'http://127.0.0.1:3000/images/search/74a6b515541de2d9ca14429cbc6fe8b4.jpg', '珠宝饰品');
INSERT INTO `pdd_search` VALUES ('66', '百货', 'http://127.0.0.1:3000/images/search/75705d468aa86bef588dec3e7b90d986.jpg', '水杯餐具');
INSERT INTO `pdd_search` VALUES ('67', '百货', 'http://127.0.0.1:3000/images/search/1ef7469b4175b3398c77dc0da693a89a.jpg', '图书乐器');
INSERT INTO `pdd_search` VALUES ('68', '百货', 'http://127.0.0.1:3000/images/search/1296967c0a842460a852ad7280e43bac.jpg', '宠物用品');
INSERT INTO `pdd_search` VALUES ('69', '百货', 'http://127.0.0.1:3000/images/search/46136ebb4bed80393dc798965c92bae5.jpg', '成人用品');
INSERT INTO `pdd_search` VALUES ('70', '手机', 'http://127.0.0.1:3000/images/search/45a23db862739d083c768331696c2604.jpg', '手机');
INSERT INTO `pdd_search` VALUES ('71', '手机', 'http://127.0.0.1:3000/images/search/55c023de1c45cec96fb8092bb5fbe4fc.jpg', '壳膜/支架');
INSERT INTO `pdd_search` VALUES ('72', '手机', 'http://127.0.0.1:3000/images/search/3961dbd3aa3a8affa224c644e977bed1.jpg', '充电线/器');
INSERT INTO `pdd_search` VALUES ('73', '手机', 'http://127.0.0.1:3000/images/search/51d2fdae6168765f8c0b588d70250d03.jpg', '充电宝');
INSERT INTO `pdd_search` VALUES ('74', '手机', 'http://127.0.0.1:3000/images/search/afde4c11bb62ff0c1c758a5467c9dc96.jpg', '耳机/耳麦');
INSERT INTO `pdd_search` VALUES ('75', '手机', 'http://127.0.0.1:3000/images/search/c4fb3a8a8f456a05ab7e421031badbfa.jpg', '音箱/音响');
INSERT INTO `pdd_search` VALUES ('76', '手机', 'http://127.0.0.1:3000/images/search/fd58e5824af10d51e10bdc094d23b8a8.jpg', '手环/手表');
INSERT INTO `pdd_search` VALUES ('77', '手机', 'http://127.0.0.1:3000/images/search/b613fcfa7000fc05491129428ff66459.jpg', '智能生活');
INSERT INTO `pdd_search` VALUES ('78', '手机', 'http://127.0.0.1:3000/images/search/5729ea6437bf9a496bbf5748aca8ad96.jpg', '相机');
INSERT INTO `pdd_search` VALUES ('79', '美妆', 'http://127.0.0.1:3000/images/search/e3eb82ea4b01b12e45f034a643e42349.png', '面部护理');
INSERT INTO `pdd_search` VALUES ('80', '美妆', 'http://127.0.0.1:3000/images/search/78af7cc0e003ad5a62320e222d049333.png', '面膜');
INSERT INTO `pdd_search` VALUES ('81', '美妆', 'http://127.0.0.1:3000/images/search/3ca263213a954530a26a7dc6098ace2f.png', '彩妆香氛');
INSERT INTO `pdd_search` VALUES ('82', '美妆', 'http://127.0.0.1:3000/images/search/a99856ad6fa5e41bd708bf5197372dee.png', '美发护发');
INSERT INTO `pdd_search` VALUES ('83', '美妆', 'http://127.0.0.1:3000/images/search/dfe3a51d3d67b791a1f88a9a3fde3897.png', '口红唇膏');
INSERT INTO `pdd_search` VALUES ('84', '美妆', 'http://127.0.0.1:3000/images/search/42cd2e741f1da77174e915308af3da85.png', '爽肤水乳');
INSERT INTO `pdd_search` VALUES ('85', '美妆', 'http://127.0.0.1:3000/images/search/c0dd3be9c6b7826087a43c689bdfb85d.png', '护手霜');
INSERT INTO `pdd_search` VALUES ('86', '美妆', 'http://127.0.0.1:3000/images/search/a4a2225345cb4bbe84e40e47c7247fe1.png', '身体护理');
INSERT INTO `pdd_search` VALUES ('87', '美妆', 'http://127.0.0.1:3000/images/search/fe382a3aaff9cccc74dcd95bc78af735.png', '美妆工具');
INSERT INTO `pdd_search` VALUES ('88', '家纺', 'http://127.0.0.1:3000/images/search/b5792b7538e9a9580de59424df9e116f.jpg', '四件套');
INSERT INTO `pdd_search` VALUES ('89', '家纺', 'http://127.0.0.1:3000/images/search/a3cde5c4092acdfa8f1d53f35f0e2300.gif', '秋上新');
INSERT INTO `pdd_search` VALUES ('90', '家纺', 'http://127.0.0.1:3000/images/search/aefb6b1b8add6a09d2dc25a4cc19e03c.jpg', '毛巾沙发垫');
INSERT INTO `pdd_search` VALUES ('91', '家纺', 'http://127.0.0.1:3000/images/search/abf3d2b9a39be79369e4e1c8ced0c1fe.jpg', '被子被芯');
INSERT INTO `pdd_search` VALUES ('92', '家纺', 'http://127.0.0.1:3000/images/search/be28fb895d23b7942b9e2a559b213ac9.png', '地毯窗帘');
INSERT INTO `pdd_search` VALUES ('93', '家纺', 'http://127.0.0.1:3000/images/search/3b9b3d8701c743c46a72c371ce2ee7ce.gif', '床单被套');
INSERT INTO `pdd_search` VALUES ('94', '家纺', 'http://127.0.0.1:3000/images/search/64c5618eab67d719475abb6d92078259.jpg', '枕芯枕套');
INSERT INTO `pdd_search` VALUES ('95', '家纺', 'http://127.0.0.1:3000/images/search/9c8fbf2be5caf83b3e0236e5a6c12e23.jpg', '家居饰品');
INSERT INTO `pdd_search` VALUES ('96', '家纺', 'http://127.0.0.1:3000/images/search/a1c18eb4aff91c8aa6e52e1e0a906e66.jpg', '毛毯床垫');
INSERT INTO `pdd_search` VALUES ('97', '电器', 'http://127.0.0.1:3000/images/search/2a2a8fe77f59f2ce5c8db08b1fd6906a.png', '饭煲电磁炉');
INSERT INTO `pdd_search` VALUES ('98', '电器', 'http://127.0.0.1:3000/images/search/f777d4c9363f0c23d9103930b51b7de4.png', '空调风扇');
INSERT INTO `pdd_search` VALUES ('99', '电器', 'http://127.0.0.1:3000/images/search/26d9be788f133f0b59f4bea225744c66.png', '按摩器材');
INSERT INTO `pdd_search` VALUES ('100', '电器', 'http://127.0.0.1:3000/images/search/c1c17cb41d353de33c819820ef68277f.jpg', '厨房电器');
INSERT INTO `pdd_search` VALUES ('101', '电器', 'http://127.0.0.1:3000/images/search/7cb34ee25fb0674e9c4b60af2228ef99.jpg', '个护健康');
INSERT INTO `pdd_search` VALUES ('102', '电器', 'http://127.0.0.1:3000/images/search/76fe6505fe9cea546a55bbdceec684a6.jpg', '冰箱洗衣机');
INSERT INTO `pdd_search` VALUES ('103', '电器', 'http://127.0.0.1:3000/images/search/05a70349438588950f50b8bc717d0987.jpg', '生活电器');
INSERT INTO `pdd_search` VALUES ('104', '电器', 'http://127.0.0.1:3000/images/search/d91749bb63c4d43ec2df8ec8c478d7e9.jpg', '榨汁机冲饮');
INSERT INTO `pdd_search` VALUES ('105', '电器', 'http://127.0.0.1:3000/images/search/45731fe5eacdfe425c4f7b910773ca2f.jpg', '电视厨卫');
INSERT INTO `pdd_search` VALUES ('106', '水果', 'http://127.0.0.1:3000/images/search/c8f4c0935fa91a8595ed789a3f2e1a05.png', '新鲜水果');
INSERT INTO `pdd_search` VALUES ('107', '水果', 'http://127.0.0.1:3000/images/search/7b047fa5e4e58581eb22976083a5c328.jpg', '大闸蟹');
INSERT INTO `pdd_search` VALUES ('108', '水果', 'http://127.0.0.1:3000/images/search/130fca0a1536f31021b84b048c34c92e.png', '海鲜水产');
INSERT INTO `pdd_search` VALUES ('109', '水果', 'http://127.0.0.1:3000/images/search/4e610ead665957ea876560265d1ef74e.jpg', '瓜果桃梨');
INSERT INTO `pdd_search` VALUES ('110', '水果', 'http://127.0.0.1:3000/images/search/5e526ff63119c937684b886902d7aff0.jpg', '蔬菜及制品');
INSERT INTO `pdd_search` VALUES ('111', '水果', 'http://127.0.0.1:3000/images/search/738a099643ce15cc03ded33f62b21d2b.png', '进口优选');
INSERT INTO `pdd_search` VALUES ('112', '水果', 'http://127.0.0.1:3000/images/search/1f00ccae55442d8f6e43e0f32cbcdbbd.png', '品质肉禽');
INSERT INTO `pdd_search` VALUES ('113', '水果', 'http://127.0.0.1:3000/images/search/e2da69a263450341db298e23817f74a6.jpg', '蛋及蛋制品');
INSERT INTO `pdd_search` VALUES ('114', '水果', 'http://127.0.0.1:3000/images/search/b15b14fd1e2f292d9ceabc4abf40e406.jpg', '熟食凉菜');
INSERT INTO `pdd_search` VALUES ('115', '家装', 'http://127.0.0.1:3000/images/search/e99c260bf65d8a0654e363e20df146cf.jpg', '灯具灯饰');
INSERT INTO `pdd_search` VALUES ('116', '家装', 'http://127.0.0.1:3000/images/search/2836f07129f18a531f20beb1a28895ae.jpg', '五金工具');
INSERT INTO `pdd_search` VALUES ('117', '家装', 'http://127.0.0.1:3000/images/search/8a04570beb01061b54b702ec6a81d41e.jpg', '柜类架类');
INSERT INTO `pdd_search` VALUES ('118', '家装', 'http://127.0.0.1:3000/images/search/52c45ff4fab65383dc7cb2efc465f2f7.jpg', '沙发茶几');
INSERT INTO `pdd_search` VALUES ('119', '家装', 'http://127.0.0.1:3000/images/search/ef5c48f6ff12fe5468c5973e757afa83.jpg', '床和床垫');
INSERT INTO `pdd_search` VALUES ('120', '家装', 'http://127.0.0.1:3000/images/search/d44efb2d9937fb22decde8b999b948a1.jpg', '厨房卫浴');
INSERT INTO `pdd_search` VALUES ('121', '家装', 'http://127.0.0.1:3000/images/search/c1f943711a755d2107c07215d8825c7e.jpg', '桌类椅类');
INSERT INTO `pdd_search` VALUES ('122', '家装', 'http://127.0.0.1:3000/images/search/5128dd0290fb4b150de7e47454494f7e.jpg', '办公户外');
INSERT INTO `pdd_search` VALUES ('123', '家装', 'http://127.0.0.1:3000/images/search/0e0dde4d453543b88a9c5c6e85cdaaba.jpg', '家装建材');
INSERT INTO `pdd_search` VALUES ('124', '运动', 'http://127.0.0.1:3000/images/search/83dd933ea9c7f99235d9085956471653.jpg', '运动鞋');
INSERT INTO `pdd_search` VALUES ('125', '运动', 'http://127.0.0.1:3000/images/search/e703dae570f3ea6edcbda4d50420436d.jpg', '运动服饰');
INSERT INTO `pdd_search` VALUES ('126', '运动', 'http://127.0.0.1:3000/images/search/938e02678812bd73c9b87c42d7c78e5b.png', '健身装备');
INSERT INTO `pdd_search` VALUES ('127', '运动', 'http://127.0.0.1:3000/images/search/9c6365273e70e4de6a6655a24e913645.png', '户外装备');
INSERT INTO `pdd_search` VALUES ('128', '运动', 'http://127.0.0.1:3000/images/search/d910be59d054c0a140cb8c0f28e792f8.jpg', '户外鞋服');
INSERT INTO `pdd_search` VALUES ('129', '运动', 'http://127.0.0.1:3000/images/search/d1f7030d917116f240189462ef1e5e38.png', '体育用品');
INSERT INTO `pdd_search` VALUES ('130', '运动', 'http://127.0.0.1:3000/images/search/696220370dbce10624c5609a4084af76.jpg', '骑行轮滑');
INSERT INTO `pdd_search` VALUES ('131', '运动', 'http://127.0.0.1:3000/images/search/d9e4b2d88b6011bfa7cb970ba77fd623.png', '垂钓装备');
INSERT INTO `pdd_search` VALUES ('132', '运动', 'http://127.0.0.1:3000/images/search/65de7af02e3ce1a9a11ea4633a0945cd.jpg', '游泳用品');
INSERT INTO `pdd_search` VALUES ('133', '汽车', 'http://127.0.0.1:3000/images/search/1f8ac68713ba19c0e28d4ac918d79e8a.jpg', '座垫座套');
INSERT INTO `pdd_search` VALUES ('134', '汽车', 'http://127.0.0.1:3000/images/search/de77de9e5dff1360d1e4a902d3f29ddc.jpg', '汽车内饰品');
INSERT INTO `pdd_search` VALUES ('135', '汽车', 'http://127.0.0.1:3000/images/search/2f941115e20da02e955e0bd10ddc70d3.jpg', '车用电子');
INSERT INTO `pdd_search` VALUES ('136', '汽车', 'http://127.0.0.1:3000/images/search/b105bcde574772d780a9e706ae63954b.jpg', '汽车零配件');
INSERT INTO `pdd_search` VALUES ('137', '汽车', 'http://127.0.0.1:3000/images/search/b8dd095d787360d8d680b8ad089a435b.jpg', '外饰防护');
INSERT INTO `pdd_search` VALUES ('138', '汽车', 'http://127.0.0.1:3000/images/search/e94c9f2ce9941db00c444c1e70f4a336.jpg', '清洗工具');
INSERT INTO `pdd_search` VALUES ('139', '充值', 'http://127.0.0.1:3000/images/search/789adda54a190562a33fe8b1965f7e3d.png', '闪电快充');
INSERT INTO `pdd_search` VALUES ('140', '充值', 'http://127.0.0.1:3000/images/search/9c694f7f124dd45099e6ab26a1587d40.png', '低价充值');
INSERT INTO `pdd_search` VALUES ('141', '充值', 'http://127.0.0.1:3000/images/search/af9ed87148b0ffa0a4ba686891ef7485.png', '游戏QQ');
INSERT INTO `pdd_search` VALUES ('142', '充值', 'http://127.0.0.1:3000/images/search/4673baf7f9c89ed1adc977ee1166e60f.png', '视频会员');
INSERT INTO `pdd_search` VALUES ('143', '充值', 'http://127.0.0.1:3000/images/search/73b72c801ad0d60e3e95eabd92dc9ba2.png', '定制服务');
INSERT INTO `pdd_search` VALUES ('144', '充值', 'http://127.0.0.1:3000/images/search/821d2288f445948f64d95a2b6149ca34.png', '旅游票务');
INSERT INTO `pdd_search` VALUES ('145', '电脑', 'http://127.0.0.1:3000/images/search/f0b2c21938d3bc3b99100bd9b84f12e6.jpg', '平板电脑');
INSERT INTO `pdd_search` VALUES ('146', '电脑', 'http://127.0.0.1:3000/images/search/61e4f951b27049da5bc338b43c382553.jpg', '文具学习机');
INSERT INTO `pdd_search` VALUES ('147', '电脑', 'http://127.0.0.1:3000/images/search/88b8ba9455d2385c768db73b03e90ee2.jpg', '电脑整机');
INSERT INTO `pdd_search` VALUES ('148', '电脑', 'http://127.0.0.1:3000/images/search/2f97c34c3e95436e71147321ffdf4bd3.jpg', '笔类');
INSERT INTO `pdd_search` VALUES ('149', '电脑', 'http://127.0.0.1:3000/images/search/57fc9138367cfb98de7b80674b1ae8e0.jpg', '外设配件');
INSERT INTO `pdd_search` VALUES ('150', '电脑', 'http://127.0.0.1:3000/images/search/a47cb57fe0c525dcd0fe610c106ce0c1.jpg', '办公用品');
INSERT INTO `pdd_search` VALUES ('151', '电脑', 'http://127.0.0.1:3000/images/search/63fc4d5ae656f409ac35d4fad3420d31.jpg', '游戏设备');
INSERT INTO `pdd_search` VALUES ('152', '电脑', 'http://127.0.0.1:3000/images/search/e10129469a3f72146b453738071aff60.jpg', '办公设备');
INSERT INTO `pdd_search` VALUES ('153', '电脑', 'http://127.0.0.1:3000/images/search/a6e84b0a045abfcce03faa204fa6e1b1.jpg', '网络设备');
INSERT INTO `pdd_search` VALUES ('154', '海淘', 'http://127.0.0.1:3000/images/search/da0de61057cb9697f56b0ce17dd709f6.png', '进口美妆');
INSERT INTO `pdd_search` VALUES ('155', '海淘', 'http://127.0.0.1:3000/images/search/3c08b00812263507a712ce9540d5e500.png', '进口食品');
INSERT INTO `pdd_search` VALUES ('156', '海淘', 'http://127.0.0.1:3000/images/search/363adad8271a25e42c8e13b05cb884e9.png', '进口酒水');
INSERT INTO `pdd_search` VALUES ('157', '海淘', 'http://127.0.0.1:3000/images/search/0d34195f7a29873fdedf11e812dcf2fd.png', '营养保健');
INSERT INTO `pdd_search` VALUES ('158', '海淘', 'http://127.0.0.1:3000/images/search/51903f063d3cf2d01fe4f2eceed714a3.png', '进口家居');
INSERT INTO `pdd_search` VALUES ('159', '海淘', 'http://127.0.0.1:3000/images/search/6b86182843b8c86c23f3858d1d2652c0.png', '进口母婴');
INSERT INTO `pdd_search` VALUES ('160', '海淘', 'http://127.0.0.1:3000/images/search/998726dccdd524a3c601c58328ed7bbe.png', '进口个护');
INSERT INTO `pdd_search` VALUES ('161', '海淘', 'http://127.0.0.1:3000/images/search/89cc9e26e1333cdbdbe8abf938a14ebe.png', '箱包配饰');
INSERT INTO `pdd_search` VALUES ('162', '海淘', 'http://127.0.0.1:3000/images/search/68b905373898f1e6c5ec283066f5369e.png', '服饰鞋靴');

-- ----------------------------
-- Table structure for `pdd_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `pdd_userinfo`;
CREATE TABLE `pdd_userinfo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(11) DEFAULT NULL,
  `user_name` varchar(20) DEFAULT NULL,
  `user_pwd` varchar(20) DEFAULT NULL,
  `user_sex` char(255) DEFAULT NULL,
  `user_birthday` varchar(255) DEFAULT NULL,
  `user_address` varchar(255) DEFAULT NULL,
  `user_signature` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pdd_userinfo
-- ----------------------------
INSERT INTO `pdd_userinfo` VALUES ('1', '15555555555', 'fuxiang', '123456', null, null, null, null);
INSERT INTO `pdd_userinfo` VALUES ('3', '15738577013', 'fuux', '111111', '男', '1999/06/13', '河南', '我爱学习');
