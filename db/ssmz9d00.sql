-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmz9d00
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-01-15 02:25:26',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-01-15 02:25:26',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-01-15 02:25:26',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-01-15 02:25:26',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-01-15 02:25:26',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-01-15 02:25:26',6,'宇宙银河系月球1号','月某','13823888886','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (71,'2021-01-15 02:25:26',1,1,'提问1','回复1',1),(72,'2021-01-15 02:25:26',2,2,'提问2','回复2',2),(73,'2021-01-15 02:25:26',3,3,'提问3','回复3',3),(74,'2021-01-15 02:25:26',4,4,'提问4','回复4',4),(75,'2021-01-15 02:25:26',5,5,'提问5','回复5',5),(76,'2021-01-15 02:25:26',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmz9d00/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmz9d00/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmz9d00/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdantongzhi`
--

DROP TABLE IF EXISTS `dingdantongzhi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdantongzhi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpubianhao` varchar(200) DEFAULT NULL COMMENT '店铺编号',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `shouhuorenxingming` varchar(200) DEFAULT NULL COMMENT '收货人姓名',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dingdanbeizhu` longtext COMMENT '订单备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='订单通知';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdantongzhi`
--

LOCK TABLES `dingdantongzhi` WRITE;
/*!40000 ALTER TABLE `dingdantongzhi` DISABLE KEYS */;
INSERT INTO `dingdantongzhi` VALUES (51,'2021-01-15 02:25:26','店铺编号1','店铺名称1','商品编号1','商品名称1','商品类别1','价格1','数量1','总价格1','收货人姓名1','收货地址1','13823888881','订单备注1','否',''),(52,'2021-01-15 02:25:26','店铺编号2','店铺名称2','商品编号2','商品名称2','商品类别2','价格2','数量2','总价格2','收货人姓名2','收货地址2','13823888882','订单备注2','否',''),(53,'2021-01-15 02:25:26','店铺编号3','店铺名称3','商品编号3','商品名称3','商品类别3','价格3','数量3','总价格3','收货人姓名3','收货地址3','13823888883','订单备注3','否',''),(54,'2021-01-15 02:25:26','店铺编号4','店铺名称4','商品编号4','商品名称4','商品类别4','价格4','数量4','总价格4','收货人姓名4','收货地址4','13823888884','订单备注4','否',''),(55,'2021-01-15 02:25:26','店铺编号5','店铺名称5','商品编号5','商品名称5','商品类别5','价格5','数量5','总价格5','收货人姓名5','收货地址5','13823888885','订单备注5','否',''),(56,'2021-01-15 02:25:26','店铺编号6','店铺名称6','商品编号6','商品名称6','商品类别6','价格6','数量6','总价格6','收货人姓名6','收货地址6','13823888886','订单备注6','否','');
/*!40000 ALTER TABLE `dingdantongzhi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (141,'2021-01-15 02:25:27',1,1,'评论内容1','回复内容1'),(142,'2021-01-15 02:25:27',2,2,'评论内容2','回复内容2'),(143,'2021-01-15 02:25:27',3,3,'评论内容3','回复内容3'),(144,'2021-01-15 02:25:27',4,4,'评论内容4','回复内容4'),(145,'2021-01-15 02:25:27',5,5,'评论内容5','回复内容5'),(146,'2021-01-15 02:25:27',6,6,'评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fahuowuliu`
--

DROP TABLE IF EXISTS `fahuowuliu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fahuowuliu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpubianhao` varchar(200) DEFAULT NULL COMMENT '店铺编号',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `shouhuodizhi` varchar(200) DEFAULT NULL COMMENT '收货地址',
  `shouhuorenxingming` varchar(200) DEFAULT NULL COMMENT '收货人姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `wuliugongsi` varchar(200) DEFAULT NULL COMMENT '物流公司',
  `wuliudanhao` varchar(200) DEFAULT NULL COMMENT '物流单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='发货物流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fahuowuliu`
--

LOCK TABLES `fahuowuliu` WRITE;
/*!40000 ALTER TABLE `fahuowuliu` DISABLE KEYS */;
INSERT INTO `fahuowuliu` VALUES (61,'2021-01-15 02:25:26','店铺编号1','店铺名称1','商品编号1','商品名称1','数量1','收货地址1','收货人姓名1','联系电话1','物流公司1','物流单号1'),(62,'2021-01-15 02:25:26','店铺编号2','店铺名称2','商品编号2','商品名称2','数量2','收货地址2','收货人姓名2','联系电话2','物流公司2','物流单号2'),(63,'2021-01-15 02:25:26','店铺编号3','店铺名称3','商品编号3','商品名称3','数量3','收货地址3','收货人姓名3','联系电话3','物流公司3','物流单号3'),(64,'2021-01-15 02:25:26','店铺编号4','店铺名称4','商品编号4','商品名称4','数量4','收货地址4','收货人姓名4','联系电话4','物流公司4','物流单号4'),(65,'2021-01-15 02:25:26','店铺编号5','店铺名称5','商品编号5','商品名称5','数量5','收货地址5','收货人姓名5','联系电话5','物流公司5','物流单号5'),(66,'2021-01-15 02:25:26','店铺编号6','店铺名称6','商品编号6','商品名称6','数量6','收货地址6','收货人姓名6','联系电话6','物流公司6','物流单号6');
/*!40000 ALTER TABLE `fahuowuliu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (81,'2021-01-15 02:25:26','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(82,'2021-01-15 02:25:26','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(83,'2021-01-15 02:25:26','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(84,'2021-01-15 02:25:26','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(85,'2021-01-15 02:25:26','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(86,'2021-01-15 02:25:26','帖子标题6','帖子内容6',6,6,'用户名6','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maijia`
--

DROP TABLE IF EXISTS `maijia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dianpubianhao` varchar(200) DEFAULT NULL COMMENT '店铺编号',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `dianputouxiang` varchar(200) DEFAULT NULL COMMENT '店铺头像',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianpuyouxiang` varchar(200) DEFAULT NULL COMMENT '店铺邮箱',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `zhuyingchanpin` longtext COMMENT '主营产品',
  `jifen` int(11) DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dianpubianhao` (`dianpubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='卖家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maijia`
--

LOCK TABLES `maijia` WRITE;
/*!40000 ALTER TABLE `maijia` DISABLE KEYS */;
INSERT INTO `maijia` VALUES (21,'2021-01-15 02:25:26','卖家1','123456','店铺名称1','http://localhost:8080/ssmz9d00/upload/maijia_dianputouxiang1.jpg','负责人1','440300199101010001','13823888881','773890001@qq.com','地址1','主营产品1',10000,100),(22,'2021-01-15 02:25:26','卖家2','123456','店铺名称2','http://localhost:8080/ssmz9d00/upload/maijia_dianputouxiang2.jpg','负责人2','440300199202020002','13823888882','773890002@qq.com','地址2','主营产品2',10000,100),(23,'2021-01-15 02:25:26','卖家3','123456','店铺名称3','http://localhost:8080/ssmz9d00/upload/maijia_dianputouxiang3.jpg','负责人3','440300199303030003','13823888883','773890003@qq.com','地址3','主营产品3',10000,100),(24,'2021-01-15 02:25:26','卖家4','123456','店铺名称4','http://localhost:8080/ssmz9d00/upload/maijia_dianputouxiang4.jpg','负责人4','440300199404040004','13823888884','773890004@qq.com','地址4','主营产品4',10000,100),(25,'2021-01-15 02:25:26','卖家5','123456','店铺名称5','http://localhost:8080/ssmz9d00/upload/maijia_dianputouxiang5.jpg','负责人5','440300199505050005','13823888885','773890005@qq.com','地址5','主营产品5',10000,100),(26,'2021-01-15 02:25:26','卖家6','123456','店铺名称6','http://localhost:8080/ssmz9d00/upload/maijia_dianputouxiang6.jpg','负责人6','440300199606060006','13823888886','773890006@qq.com','地址6','主营产品6',10000,100);
/*!40000 ALTER TABLE `maijia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='促销活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (131,'2021-01-15 02:25:26','标题1','http://localhost:8080/ssmz9d00/upload/news_picture1.jpg','内容1'),(132,'2021-01-15 02:25:26','标题2','http://localhost:8080/ssmz9d00/upload/news_picture2.jpg','内容2'),(133,'2021-01-15 02:25:26','标题3','http://localhost:8080/ssmz9d00/upload/news_picture3.jpg','内容3'),(134,'2021-01-15 02:25:26','标题4','http://localhost:8080/ssmz9d00/upload/news_picture4.jpg','内容4'),(135,'2021-01-15 02:25:26','标题5','http://localhost:8080/ssmz9d00/upload/news_picture5.jpg','内容5'),(136,'2021-01-15 02:25:26','标题6','http://localhost:8080/ssmz9d00/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (31,'2021-01-15 02:25:26','商品类别1'),(32,'2021-01-15 02:25:26','商品类别2'),(33,'2021-01-15 02:25:26','商品类别3'),(34,'2021-01-15 02:25:26','商品类别4'),(35,'2021-01-15 02:25:26','商品类别5'),(36,'2021-01-15 02:25:26','商品类别6');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinleibie` varchar(200) DEFAULT NULL COMMENT '商品类别',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `dianpubianhao` varchar(200) DEFAULT NULL COMMENT '店铺编号',
  `dianpumingcheng` varchar(200) DEFAULT NULL COMMENT '店铺名称',
  `xiangqing` longtext COMMENT '详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `jifen` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2021-01-15 02:25:26','商品编号1','商品名称1','商品类别1','http://localhost:8080/ssmz9d00/upload/shangpinxinxi_tupian1.jpg','店铺编号1','店铺名称1','详情1','否','',1,1,'2021-01-15 10:25:26',1,10000,99.9,1,99),(42,'2021-01-15 02:25:26','商品编号2','商品名称2','商品类别2','http://localhost:8080/ssmz9d00/upload/shangpinxinxi_tupian2.jpg','店铺编号2','店铺名称2','详情2','否','',2,2,'2021-01-15 10:25:26',2,10000,99.9,2,99),(43,'2021-01-15 02:25:26','商品编号3','商品名称3','商品类别3','http://localhost:8080/ssmz9d00/upload/shangpinxinxi_tupian3.jpg','店铺编号3','店铺名称3','详情3','否','',3,3,'2021-01-15 10:25:26',3,10000,99.9,3,99),(44,'2021-01-15 02:25:26','商品编号4','商品名称4','商品类别4','http://localhost:8080/ssmz9d00/upload/shangpinxinxi_tupian4.jpg','店铺编号4','店铺名称4','详情4','否','',4,4,'2021-01-15 10:25:26',4,10000,99.9,4,99),(45,'2021-01-15 02:25:26','商品编号5','商品名称5','商品类别5','http://localhost:8080/ssmz9d00/upload/shangpinxinxi_tupian5.jpg','店铺编号5','店铺名称5','详情5','否','',5,5,'2021-01-15 10:25:26',5,10000,99.9,5,99),(46,'2021-01-15 02:25:26','商品编号6','商品名称6','商品类别6','http://localhost:8080/ssmz9d00/upload/shangpinxinxi_tupian6.jpg','店铺编号6','店铺名称6','详情6','否','',6,6,'2021-01-15 10:25:26',6,10000,99.9,6,99);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-15 02:25:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jifen` int(11) DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-15 02:25:26','用户1','123456','姓名1','年龄1','男','13823888881','773890001@qq.com','440300199101010001',10000,100),(12,'2021-01-15 02:25:26','用户2','123456','姓名2','年龄2','男','13823888882','773890002@qq.com','440300199202020002',10000,100),(13,'2021-01-15 02:25:26','用户3','123456','姓名3','年龄3','男','13823888883','773890003@qq.com','440300199303030003',10000,100),(14,'2021-01-15 02:25:26','用户4','123456','姓名4','年龄4','男','13823888884','773890004@qq.com','440300199404040004',10000,100),(15,'2021-01-15 02:25:26','用户5','123456','姓名5','年龄5','男','13823888885','773890005@qq.com','440300199505050005',10000,100),(16,'2021-01-15 02:25:26','用户6','123456','姓名6','年龄6','男','13823888886','773890006@qq.com','440300199606060006',10000,100);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-15 14:58:51
