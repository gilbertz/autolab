-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: qimei
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Table structure for table `qimei_actor`
--

DROP TABLE IF EXISTS `qimei_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_actor` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `origin_name` varchar(45) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像，小图',
  `background` varchar(255) DEFAULT NULL COMMENT '背景大图',
  `introduction` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='明星表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_actor`
--

LOCK TABLES `qimei_actor` WRITE;
/*!40000 ALTER TABLE `qimei_actor` DISABLE KEYS */;
INSERT INTO `qimei_actor` VALUES (2,'钟汉良','钟汉良',NULL,NULL,'1974年11月30日出生于中国香港，影视演员、歌手、舞者','2015-10-01 09:19:38'),(3,'唐嫣','唐嫣',NULL,NULL,'1983年12月6日出生于上海，中国女演员','2015-10-01 09:19:38'),(4,'陈赫','陈赫',NULL,NULL,'1985年11月9日出生于福建长乐，中国大陆男演员。毕业于上海戏剧学院表演系，上海话剧艺术中心演员','2015-10-01 09:19:39'),(5,'娄艺潇','娄艺潇',NULL,NULL,'1988年12月27日出生于辽宁省大连市，中国女演员。毕业于上海戏剧学院表演系','2015-10-01 09:19:39'),(6,'孙艺洲','孙艺洲',NULL,NULL,'1983年10月23日出生于四川成都，上海话剧艺术中心话剧演员','2015-10-01 09:19:39'),(7,'李金铭','李金铭',NULL,NULL,'1985年11月21日出生于山东济南章丘，中国女演员、主持人','2015-10-01 09:19:40');
/*!40000 ALTER TABLE `qimei_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_episode`
--

DROP TABLE IF EXISTS `qimei_episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_episode` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='分集的表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_episode`
--

LOCK TABLES `qimei_episode` WRITE;
/*!40000 ALTER TABLE `qimei_episode` DISABLE KEYS */;
INSERT INTO `qimei_episode` VALUES (1,1,1,'2015-10-01 08:40:59'),(2,1,2,'2015-10-01 08:40:59'),(3,1,3,'2015-10-01 08:40:59'),(4,1,4,'2015-10-01 08:40:59'),(5,1,5,'2015-10-01 08:40:59'),(6,1,6,'2015-10-01 08:40:59'),(7,1,7,'2015-10-01 08:40:59'),(8,1,8,'2015-10-01 08:40:59'),(9,1,9,'2015-10-01 08:40:59'),(10,1,10,'2015-10-01 08:40:59'),(11,1,11,'2015-10-01 08:40:59'),(12,1,12,'2015-10-01 08:40:59'),(13,1,13,'2015-10-01 08:40:59'),(14,1,14,'2015-10-01 08:40:59'),(15,1,15,'2015-10-01 08:40:59'),(16,1,16,'2015-10-01 08:40:59'),(17,1,17,'2015-10-01 08:40:59'),(18,1,18,'2015-10-01 08:40:59'),(19,1,19,'2015-10-01 08:40:59'),(20,1,20,'2015-10-01 08:40:59'),(21,1,21,'2015-10-01 08:40:59'),(22,1,22,'2015-10-01 08:40:59'),(23,1,23,'2015-10-01 08:40:59'),(24,1,24,'2015-10-01 08:40:59'),(25,1,25,'2015-10-01 08:40:59'),(26,1,26,'2015-10-01 08:40:59'),(27,1,27,'2015-10-01 08:40:59'),(28,1,28,'2015-10-01 08:40:59'),(29,1,29,'2015-10-01 08:40:59'),(30,1,30,'2015-10-01 08:40:59'),(31,1,31,'2015-10-01 08:40:59'),(32,1,32,'2015-10-01 08:40:59'),(33,2,1,'2015-10-01 08:40:59'),(34,2,2,'2015-10-01 08:40:59'),(35,2,3,'2015-10-01 08:40:59'),(36,2,4,'2015-10-01 08:40:59'),(37,2,5,'2015-10-01 08:40:59'),(38,2,6,'2015-10-01 08:40:59'),(39,2,7,'2015-10-01 08:40:59'),(40,2,8,'2015-10-01 08:40:59'),(41,2,9,'2015-10-01 08:40:59'),(42,2,10,'2015-10-01 08:40:59'),(43,2,11,'2015-10-01 08:40:59'),(44,2,12,'2015-10-01 08:40:59'),(45,2,13,'2015-10-01 08:40:59'),(46,2,14,'2015-10-01 08:40:59'),(47,2,15,'2015-10-01 08:40:59'),(48,2,16,'2015-10-01 08:40:59'),(49,2,17,'2015-10-01 08:40:59'),(50,2,18,'2015-10-01 08:40:59'),(51,2,19,'2015-10-01 08:40:59'),(52,2,20,'2015-10-01 08:40:59'),(53,2,21,'2015-10-01 08:40:59'),(54,2,22,'2015-10-01 08:40:59'),(55,2,23,'2015-10-01 08:40:59'),(56,2,24,'2015-10-01 08:40:59');
/*!40000 ALTER TABLE `qimei_episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_like`
--

DROP TABLE IF EXISTS `qimei_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `poster_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_like`
--

LOCK TABLES `qimei_like` WRITE;
/*!40000 ALTER TABLE `qimei_like` DISABLE KEYS */;
/*!40000 ALTER TABLE `qimei_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_link_actor_movie`
--

DROP TABLE IF EXISTS `qimei_link_actor_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_link_actor_movie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='演员和影视的多对多关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_link_actor_movie`
--

LOCK TABLES `qimei_link_actor_movie` WRITE;
/*!40000 ALTER TABLE `qimei_link_actor_movie` DISABLE KEYS */;
INSERT INTO `qimei_link_actor_movie` VALUES (1,1,1,'2015-10-01 10:21:07','何以琛'),(2,2,1,'2015-10-01 10:21:07','赵默笙'),(3,3,2,'2015-10-01 10:21:07','曾小贤'),(4,3,2,'2015-10-01 10:21:07','胡一菲'),(5,3,2,'2015-10-01 10:21:07','吕子乔'),(6,3,2,'2015-10-01 10:21:08','陈美嘉');
/*!40000 ALTER TABLE `qimei_link_actor_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_movie`
--

DROP TABLE IF EXISTS `qimei_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_movie` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL,
  `introduction` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT '电影，连续剧，话剧等类别',
  `tag` varchar(255) DEFAULT NULL COMMENT '悬疑，侦探，爱情等',
  `director` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `release_time` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_movie`
--

LOCK TABLES `qimei_movie` WRITE;
/*!40000 ALTER TABLE `qimei_movie` DISABLE KEYS */;
INSERT INTO `qimei_movie` VALUES (1,'何以笙箫默','img/tv/heyi.jpg','img/tv/heyi.jpg','大学时代的赵默笙，对C大法学系大才子何以琛一见倾心，开朗直率的她“死缠烂打”地倒追，与众不同的方式吸引了以琛的目光，一段纯纯的校园爱情悄悄滋生。然而，以琛寄养家庭的妹妹以玫，鼓起勇气向默笙宣战。当默笙去找以琛证实，没想到竟然得到以琛冷酷的回应。误以为以琛和以玫在一起的默笙，落寞地服从父亲的安排，前往美国深造。七年后，成为摄影师的默笙回来了，再次遇到那个无法忘却的男人。这对分手七年的爱人，横在他们中','偶像剧/言情剧/青春剧',NULL,'刘俊杰','内地',NULL,'2015-10-01 08:32:31'),(2,'爱情公寓','img/tv/loveapartment.jpg','img/tv/loveapartment.jpg','小贤和一菲的事业都开始走上正轨，但互相之间的感情依然磕磕绊绊。而子乔和美嘉之间虽然做回了男女朋友，但吕子乔的花心本性不改也着实让美嘉头疼。关谷的事业蒸蒸日上，但是和悠悠之间也还是偶有嫌隙。展博对于宛瑜依旧难以忘怀，但也重新开始寻找新的伴侣。大家在爱情公寓一起经过了那么多年，那么多事，每一个人都开始渐渐明白自己的生活方向和彼此在自己心中的位置。不仅仅有相互之间的调侃、戏谑、捉弄，也更多了份相互鼓励。','偶像/都市/言情',NULL,'韦正','内地',NULL,'2015-10-01 08:32:31');
/*!40000 ALTER TABLE `qimei_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_poster`
--

DROP TABLE IF EXISTS `qimei_poster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_poster` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `touchs` varchar(45) DEFAULT NULL COMMENT '一对多的touch点',
  `episode_id` varchar(45) DEFAULT NULL COMMENT '多对一的影视剧来源',
  `frame` int(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='剧照';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_poster`
--

LOCK TABLES `qimei_poster` WRITE;
/*!40000 ALTER TABLE `qimei_poster` DISABLE KEYS */;
/*!40000 ALTER TABLE `qimei_poster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_role`
--

DROP TABLE IF EXISTS `qimei_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_role`
--

LOCK TABLES `qimei_role` WRITE;
/*!40000 ALTER TABLE `qimei_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `qimei_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_touch`
--

DROP TABLE IF EXISTS `qimei_touch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_touch` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `x` double DEFAULT NULL,
  `Y` double DEFAULT NULL,
  `type` varchar(45) CHARACTER SET latin1 DEFAULT NULL COMMENT '衣服，鞋子，等类型',
  `link` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '链接',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='这是一个可以点击的触控点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_touch`
--

LOCK TABLES `qimei_touch` WRITE;
/*!40000 ALTER TABLE `qimei_touch` DISABLE KEYS */;
/*!40000 ALTER TABLE `qimei_touch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_user`
--

DROP TABLE IF EXISTS `qimei_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL COMMENT '微信的openId号。',
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `subscribe` int(11) DEFAULT NULL COMMENT '是否订阅',
  `nickname` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `subscribe_time` bigint(20) DEFAULT NULL,
  `unionid` varchar(45) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `accuracy` double DEFAULT NULL COMMENT '地理位置经度(precision Hibernate会莫名报错)',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openid_UNIQUE` (`openid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表描述';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_user`
--

LOCK TABLES `qimei_user` WRITE;
/*!40000 ALTER TABLE `qimei_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `qimei_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-01 18:22:29
