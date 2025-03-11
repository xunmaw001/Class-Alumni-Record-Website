-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmw8k39
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
) ENGINE=InnoDB AUTO_INCREMENT=1615534154974 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (61,'2021-03-12 07:21:44',1,1,'提问1','回复1',1),(62,'2021-03-12 07:21:44',2,2,'提问2','回复2',2),(63,'2021-03-12 07:21:44',3,3,'提问3','回复3',3),(64,'2021-03-12 07:21:44',4,4,'提问4','回复4',4),(65,'2021-03-12 07:21:44',5,5,'提问5','回复5',5),(66,'2021-03-12 07:21:44',6,6,'提问6','回复6',6),(1615534154973,'2021-03-12 07:29:14',1615534044575,NULL,'‍你好\r\n','有什么能帮你的\r\n',0);
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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmw8k39/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmw8k39/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmw8k39/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1615534132735 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (71,'2021-03-12 07:21:44','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(72,'2021-03-12 07:21:44','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(73,'2021-03-12 07:21:44','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(74,'2021-03-12 07:21:44','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(75,'2021-03-12 07:21:44','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(76,'2021-03-12 07:21:44','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1615534132734,'2021-03-12 07:28:52','sdf','<p>sdfsdfsdfsdfdsfsdf</p>',0,1615534044575,'11','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `gonggaoneirong` longtext COMMENT '公告内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615534381419 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (21,'2021-03-12 07:21:44','标题1','http://localhost:8080/jspmw8k39/upload/gonggaoxinxi_tupian1.jpg','公告内容1','2021-03-12'),(22,'2021-03-12 07:21:44','标题2','http://localhost:8080/jspmw8k39/upload/gonggaoxinxi_tupian2.jpg','公告内容2','2021-03-12'),(23,'2021-03-12 07:21:44','标题3','http://localhost:8080/jspmw8k39/upload/gonggaoxinxi_tupian3.jpg','公告内容3','2021-03-12'),(24,'2021-03-12 07:21:44','标题4','http://localhost:8080/jspmw8k39/upload/gonggaoxinxi_tupian4.jpg','公告内容4','2021-03-12'),(25,'2021-03-12 07:21:44','标题5','http://localhost:8080/jspmw8k39/upload/gonggaoxinxi_tupian5.jpg','公告内容5','2021-03-12'),(26,'2021-03-12 07:21:44','标题6','http://localhost:8080/jspmw8k39/upload/gonggaoxinxi_tupian6.jpg','公告内容6','2021-03-12'),(1615534381418,'2021-03-12 07:33:01','06届同学聚会','http://localhost:8080/jspmw8k39/upload/1615534370140.jpg','sdgdggdffsdfdf\r\n','2021-03-12');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juhuibaoming`
--

DROP TABLE IF EXISTS `juhuibaoming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `juhuibaoming` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `juhuishijian` date DEFAULT NULL COMMENT '聚会时间',
  `juhuididian` varchar(200) DEFAULT NULL COMMENT '聚会地点',
  `baomingshijian` date DEFAULT NULL COMMENT '报名时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615534300058 DEFAULT CHARSET=utf8 COMMENT='聚会报名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juhuibaoming`
--

LOCK TABLES `juhuibaoming` WRITE;
/*!40000 ALTER TABLE `juhuibaoming` DISABLE KEYS */;
INSERT INTO `juhuibaoming` VALUES (51,'2021-03-12 07:21:44','用户名1','姓名1','手机号码1','2021-03-12','聚会地点1','2021-03-12'),(52,'2021-03-12 07:21:44','用户名2','姓名2','手机号码2','2021-03-12','聚会地点2','2021-03-12'),(53,'2021-03-12 07:21:44','用户名3','姓名3','手机号码3','2021-03-12','聚会地点3','2021-03-12'),(54,'2021-03-12 07:21:44','用户名4','姓名4','手机号码4','2021-03-12','聚会地点4','2021-03-12'),(55,'2021-03-12 07:21:44','用户名5','姓名5','手机号码5','2021-03-12','聚会地点5','2021-03-12'),(56,'2021-03-12 07:21:44','用户名6','姓名6','手机号码6','2021-03-12','聚会地点6','2021-03-12'),(1615534300057,'2021-03-12 07:31:39','11','杨小姐','13823899999','2021-03-17','好家园','2021-03-12');
/*!40000 ALTER TABLE `juhuibaoming` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户1','yonghu','用户','00mpgx4dtdfn2cx38r7ffjf1mpimfnt6','2021-03-12 07:25:20','2021-03-12 08:25:21'),(2,1615534044575,'11','yonghu','用户','8s3djd4htxudei77teuo9m5z6r55owxa','2021-03-12 07:27:34','2021-03-12 08:27:34'),(3,1,'abo','users','管理员','4ddziewxjt1777izb87h5kjccivs23po','2021-03-12 07:31:54','2021-03-12 08:31:54');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tongxuelu`
--

DROP TABLE IF EXISTS `tongxuelu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tongxuelu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `jiebie` varchar(200) DEFAULT NULL COMMENT '届别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615534239806 DEFAULT CHARSET=utf8 COMMENT='同学录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tongxuelu`
--

LOCK TABLES `tongxuelu` WRITE;
/*!40000 ALTER TABLE `tongxuelu` DISABLE KEYS */;
INSERT INTO `tongxuelu` VALUES (31,'2021-03-12 07:21:44','用户名1','姓名1','http://localhost:8080/jspmw8k39/upload/tongxuelu_touxiang1.jpg','男','13823888881','773890001@qq.com','班级1','届别1'),(32,'2021-03-12 07:21:44','用户名2','姓名2','http://localhost:8080/jspmw8k39/upload/tongxuelu_touxiang2.jpg','男','13823888882','773890002@qq.com','班级2','届别2'),(33,'2021-03-12 07:21:44','用户名3','姓名3','http://localhost:8080/jspmw8k39/upload/tongxuelu_touxiang3.jpg','男','13823888883','773890003@qq.com','班级3','届别3'),(34,'2021-03-12 07:21:44','用户名4','姓名4','http://localhost:8080/jspmw8k39/upload/tongxuelu_touxiang4.jpg','男','13823888884','773890004@qq.com','班级4','届别4'),(35,'2021-03-12 07:21:44','用户名5','姓名5','http://localhost:8080/jspmw8k39/upload/tongxuelu_touxiang5.jpg','男','13823888885','773890005@qq.com','班级5','届别5'),(36,'2021-03-12 07:21:44','用户名6','姓名6','http://localhost:8080/jspmw8k39/upload/tongxuelu_touxiang6.jpg','男','13823888886','773890006@qq.com','班级6','届别6'),(1615534239805,'2021-03-12 07:30:39','11','杨小姐','http://localhost:8080/jspmw8k39/upload/1615534177097.jpg','女','13823899999','','302','2006届');
/*!40000 ALTER TABLE `tongxuelu` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-12 07:21:44');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoyoufengcai`
--

DROP TABLE IF EXISTS `xiaoyoufengcai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoyoufengcai` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `fengguangshiji` longtext COMMENT '风光事迹',
  `zaixiaoshijian` varchar(200) DEFAULT NULL COMMENT '在校时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='校友风采';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoyoufengcai`
--

LOCK TABLES `xiaoyoufengcai` WRITE;
/*!40000 ALTER TABLE `xiaoyoufengcai` DISABLE KEYS */;
INSERT INTO `xiaoyoufengcai` VALUES (41,'2021-03-12 07:21:44','姓名1','http://localhost:8080/jspmw8k39/upload/xiaoyoufengcai_tupian1.jpg','男','风光事迹1','在校时间1'),(42,'2021-03-12 07:21:44','姓名2','http://localhost:8080/jspmw8k39/upload/xiaoyoufengcai_tupian2.jpg','男','风光事迹2','在校时间2'),(43,'2021-03-12 07:21:44','姓名3','http://localhost:8080/jspmw8k39/upload/xiaoyoufengcai_tupian3.jpg','男','风光事迹3','在校时间3'),(44,'2021-03-12 07:21:44','姓名4','http://localhost:8080/jspmw8k39/upload/xiaoyoufengcai_tupian4.jpg','男','风光事迹4','在校时间4'),(45,'2021-03-12 07:21:44','姓名5','http://localhost:8080/jspmw8k39/upload/xiaoyoufengcai_tupian5.jpg','男','风光事迹5','在校时间5'),(46,'2021-03-12 07:21:44','姓名6','http://localhost:8080/jspmw8k39/upload/xiaoyoufengcai_tupian6.jpg','男','风光事迹6','在校时间6');
/*!40000 ALTER TABLE `xiaoyoufengcai` ENABLE KEYS */;
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
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615534044576 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-12 07:21:44','用户1','123456','姓名1','http://localhost:8080/jspmw8k39/upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com'),(12,'2021-03-12 07:21:44','用户2','123456','姓名2','http://localhost:8080/jspmw8k39/upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com'),(13,'2021-03-12 07:21:44','用户3','123456','姓名3','http://localhost:8080/jspmw8k39/upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com'),(14,'2021-03-12 07:21:44','用户4','123456','姓名4','http://localhost:8080/jspmw8k39/upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com'),(15,'2021-03-12 07:21:44','用户5','123456','姓名5','http://localhost:8080/jspmw8k39/upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com'),(16,'2021-03-12 07:21:44','用户6','123456','姓名6','http://localhost:8080/jspmw8k39/upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com'),(1615534044575,'2021-03-12 07:27:24','11','123456','杨小姐','http://localhost:8080/jspmw8k39/upload/1615534069154.jpg','女','13823899999','');
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

-- Dump completed on 2021-03-13 10:27:15
