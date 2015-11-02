-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: liyarou.com    Database: qimei
-- ------------------------------------------------------
-- Server version	5.5.40-0ubuntu0.14.04.1

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
-- Table structure for table `ClientDetails`
--

DROP TABLE IF EXISTS `ClientDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientDetails` (
  `appId` varchar(255) NOT NULL,
  `resourceIds` varchar(255) DEFAULT NULL,
  `appSecret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `grantTypes` varchar(255) DEFAULT NULL,
  `redirectUrl` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientDetails`
--

LOCK TABLES `ClientDetails` WRITE;
/*!40000 ALTER TABLE `ClientDetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClientDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_token`
--

DROP TABLE IF EXISTS `oauth_access_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_token`
--

LOCK TABLES `oauth_access_token` WRITE;
/*!40000 ALTER TABLE `oauth_access_token` DISABLE KEYS */;
INSERT INTO `oauth_access_token` VALUES ('915d69b231af9bb33a33ac1681d14cff','��\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$��\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6�Z���\0\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0P.�Ⱥxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valueq\0~\0xpt\0$0919bbf8-27e9-405e-b396-d569a70d2ccfsq\0~\0	w\0\0P��b�xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$0dc84495-62d0-469e-9481-d11b097ce1af','1e48b66719deae09a39143879a4b762e','admin','clientapp','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERsq\0~\0\rt\0ROLE_MANAGERsq\0~\0\rt\0\nROLE_ADMINsq\0~\0\rt\0ROLE_AUTHEDxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	clientappsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0scopet\0\nread writet\0	client_idt\0	clientappt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0,w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0USERxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsq\0~\0+w\0\0\0?@\0\0\0\0\0t\0restservicexsq\0~\0,w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0q\0~\0q\0~\0xq\0~\0:sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0\'q\0~\0(q\0~\0!q\0~\0\"q\0~\0#q\0~\0$t\0\rclient_secrett\0 f506d105142e2928e2e37675b560ff75q\0~\0%q\0~\0&x\0psr\0com.qimei.common.model.User�R���$\0\0L\0accuracyt\0Ljava/lang/Double;L\0cityq\0~\0L\0countryq\0~\0L\0\nheadimgurlq\0~\0L\0languageq\0~\0L\0lastLoginIpq\0~\0L\0\rlastLoginTimet\0Ljava/util/Date;L\0latitudeq\0~\0@L\0likesq\0~\0L\0	longitudeq\0~\0@L\0nicknameq\0~\0L\0openidq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0provinceq\0~\0L\0sexq\0~\0L\0	subscribet\0Ljava/lang/Integer;L\0\rsubscribeTimet\0Ljava/lang/Long;L\0unionidq\0~\0L\0usernameq\0~\0xr\0!com.qimei.common.model.BaseEntity/ZtOm�A�\0L\0\ncreateTimeq\0~\0AL\0idq\0~\0CL\0statust\0Lcom/qimei/common/model/Status;xpsr\0java.sql.Timestamp&��S�e\0I\0nanosxr\0java.util.Datehj�KYt\0\0xpw\0\0P&�+(x\0\0\0\0sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0~r\0com.qimei.common.model.Status\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0OKppppppppsr\0/org.hibernate.collection.internal.PersistentBagFJd\\.�\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Sxp\0����\0\0q\0~\0Lq\0~\0Ft\0!com.qimei.common.model.User.likesppppt\0adminpt\0<$2a$10$4ONqBZdBwiIY52RBd11wn.59Y1s5MKm3OFnGJ34kUFQ1eRLU.RqnSt\0123pppppt\0admin','bbb236359d76ce990182a324c873cf99');
/*!40000 ALTER TABLE `oauth_access_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_details`
--

DROP TABLE IF EXISTS `oauth_client_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(255) NOT NULL,
  `resource_ids` varchar(255) DEFAULT NULL,
  `client_secret` varchar(255) DEFAULT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `authorized_grant_types` varchar(255) DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) DEFAULT NULL,
  `authorities` varchar(255) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_details`
--

LOCK TABLES `oauth_client_details` WRITE;
/*!40000 ALTER TABLE `oauth_client_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_client_token`
--

DROP TABLE IF EXISTS `oauth_client_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `client_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_client_token`
--

LOCK TABLES `oauth_client_token` WRITE;
/*!40000 ALTER TABLE `oauth_client_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_client_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_code`
--

DROP TABLE IF EXISTS `oauth_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_code`
--

LOCK TABLES `oauth_code` WRITE;
/*!40000 ALTER TABLE `oauth_code` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_token`
--

DROP TABLE IF EXISTS `oauth_refresh_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(255) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_token`
--

LOCK TABLES `oauth_refresh_token` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_token` DISABLE KEYS */;
INSERT INTO `oauth_refresh_token` VALUES ('bbb236359d76ce990182a324c873cf99','��\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valuet\0Ljava/lang/String;xpt\0$0919bbf8-27e9-405e-b396-d569a70d2ccfsr\0java.util.Datehj�KYt\0\0xpw\0\0P��b�x','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0ROLE_MANAGERsq\0~\0\rt\0ROLE_AUTHEDxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	clientappsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0scopet\0\nread writet\0	client_idt\0	clientappt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0(w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0USERxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsq\0~\0\'w\0\0\0?@\0\0\0\0\0t\0restservicexsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\06sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0#q\0~\0$q\0~\0q\0~\0q\0~\0q\0~\0 t\0\rclient_secrett\0 f506d105142e2928e2e37675b560ff75q\0~\0!q\0~\0\"x\0psr\0com.qimei.common.model.User�R���$\0\0L\0accuracyt\0Ljava/lang/Double;L\0cityq\0~\0L\0countryq\0~\0L\0\nheadimgurlq\0~\0L\0languageq\0~\0L\0lastLoginIpq\0~\0L\0\rlastLoginTimet\0Ljava/util/Date;L\0latitudeq\0~\0<L\0likesq\0~\0L\0	longitudeq\0~\0<L\0nicknameq\0~\0L\0openidq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0provinceq\0~\0L\0sexq\0~\0L\0	subscribet\0Ljava/lang/Integer;L\0\rsubscribeTimet\0Ljava/lang/Long;L\0unionidq\0~\0L\0usernameq\0~\0xr\0!com.qimei.common.model.BaseEntity/ZtOm�A�\0L\0\ncreateTimeq\0~\0=L\0idq\0~\0?L\0statust\0Lcom/qimei/common/model/Status;xpsr\0java.sql.Timestamp&��S�e\0I\0nanosxr\0java.util.Datehj�KYt\0\0xpw\0\0P&�+(x\0\0\0\0sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0~r\0com.qimei.common.model.Status\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0OKppppppppsr\0/org.hibernate.collection.internal.PersistentBagFJd\\.�\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Oxp\0����\0\0q\0~\0Hq\0~\0Bt\0!com.qimei.common.model.User.likesppppt\0adminpt\0<$2a$10$4ONqBZdBwiIY52RBd11wn.59Y1s5MKm3OFnGJ34kUFQ1eRLU.RqnSt\0123pppppt\0admin');
/*!40000 ALTER TABLE `oauth_refresh_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_actor`
--

DROP TABLE IF EXISTS `qimei_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_actor` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `origin_name` varchar(45) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像，小图',
  `background` varchar(255) DEFAULT NULL COMMENT '背景大图',
  `introduction` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='明星表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_actor`
--

LOCK TABLES `qimei_actor` WRITE;
/*!40000 ALTER TABLE `qimei_actor` DISABLE KEYS */;
INSERT INTO `qimei_actor` VALUES (1,'钟汉良','钟汉良',NULL,NULL,'1974年11月30日出生于中国香港，影视演员、歌手、舞者','OK','2015-10-01 09:19:38'),(2,'唐嫣','唐嫣',NULL,NULL,'1983年12月6日出生于上海，中国女演员','OK','2015-10-01 09:19:38'),(3,'陈赫','陈赫',NULL,NULL,'1985年11月9日出生于福建长乐，中国大陆男演员。毕业于上海戏剧学院表演系，上海话剧艺术中心演员','OK','2015-10-01 09:19:39'),(4,'娄艺潇','娄艺潇',NULL,NULL,'1988年12月27日出生于辽宁省大连市，中国女演员。毕业于上海戏剧学院表演系','OK','2015-10-01 09:19:39'),(5,'孙艺洲','孙艺洲',NULL,NULL,'1983年10月23日出生于四川成都，上海话剧艺术中心话剧演员','OK','2015-10-01 09:19:39'),(6,'李金铭','李金铭',NULL,NULL,'1985年11月21日出生于山东济南章丘，中国女演员、主持人','OK','2015-10-01 09:19:40'),(7,'刘亦菲','刘亦菲','NO_AVATAR_YET','NO_BACKGRO','我是刘亦菲，我就是小仙女','OK','2015-09-30 22:23:23'),(8,'黄晓明','黄晓明','NO_AVATAR_YET','NO_BACKGRO','闹太套就是我','OK','2015-09-30 23:19:20'),(12,'方彬彬彬','牛皮癣1',NULL,'这是一张非常非常长的图片LLLLLLOOOOOOOOOOOOOG PIC',NULL,'DELETED','2015-10-02 06:51:38'),(13,'范冰冰',NULL,NULL,'NOT',NULL,'OK','2015-10-02 08:00:21'),(14,'zqin',NULL,NULL,NULL,NULL,'OK','2015-10-02 11:01:05');
/*!40000 ALTER TABLE `qimei_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_episode`
--

DROP TABLE IF EXISTS `qimei_episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_episode` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `movie_id` int(10) DEFAULT NULL,
  `index` int(10) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='分集的表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_episode`
--

LOCK TABLES `qimei_episode` WRITE;
/*!40000 ALTER TABLE `qimei_episode` DISABLE KEYS */;
INSERT INTO `qimei_episode` VALUES (1,1,1,'OK','2015-10-01 08:40:59'),(2,1,2,'OK','2015-10-01 08:40:59'),(3,1,3,'OK','2015-10-01 08:40:59'),(4,1,4,'OK','2015-10-01 08:40:59'),(5,1,5,'OK','2015-10-01 08:40:59'),(6,1,6,'OK','2015-10-01 08:40:59'),(7,1,7,'OK','2015-10-01 08:40:59'),(8,1,8,'OK','2015-10-01 08:40:59'),(9,1,9,'OK','2015-10-01 08:40:59'),(10,1,10,'OK','2015-10-01 08:40:59'),(11,1,11,'OK','2015-10-01 08:40:59'),(12,1,12,'OK','2015-10-01 08:40:59'),(13,1,13,'OK','2015-10-01 08:40:59'),(14,1,14,'OK','2015-10-01 08:40:59'),(15,1,15,'OK','2015-10-01 08:40:59'),(16,1,16,'OK','2015-10-01 08:40:59'),(17,1,17,'OK','2015-10-01 08:40:59'),(18,1,18,'OK','2015-10-01 08:40:59'),(19,1,19,'OK','2015-10-01 08:40:59'),(20,1,20,'OK','2015-10-01 08:40:59'),(21,1,21,'OK','2015-10-01 08:40:59'),(22,1,22,'OK','2015-10-01 08:40:59'),(23,1,23,'OK','2015-10-01 08:40:59'),(24,1,24,'OK','2015-10-01 08:40:59'),(25,1,25,'OK','2015-10-01 08:40:59'),(26,1,26,'OK','2015-10-01 08:40:59'),(27,1,27,'OK','2015-10-01 08:40:59'),(28,1,28,'OK','2015-10-01 08:40:59'),(29,1,29,'OK','2015-10-01 08:40:59'),(30,1,30,'OK','2015-10-01 08:40:59'),(31,1,31,'OK','2015-10-01 08:40:59'),(32,1,32,'OK','2015-10-01 08:40:59'),(33,2,1,'OK','2015-10-01 08:40:59'),(34,2,2,'OK','2015-10-01 08:40:59'),(35,2,3,'OK','2015-10-01 08:40:59'),(36,2,4,'OK','2015-10-01 08:40:59'),(37,2,5,'OK','2015-10-01 08:40:59'),(38,2,6,'OK','2015-10-01 08:40:59'),(39,2,7,'OK','2015-10-01 08:40:59'),(40,2,8,'OK','2015-10-01 08:40:59'),(41,2,9,'OK','2015-10-01 08:40:59'),(42,2,10,'OK','2015-10-01 08:40:59'),(43,2,11,'OK','2015-10-01 08:40:59'),(44,2,12,'OK','2015-10-01 08:40:59'),(45,2,13,'OK','2015-10-01 08:40:59'),(46,2,14,'OK','2015-10-01 08:40:59'),(47,2,15,'OK','2015-10-01 08:40:59'),(48,2,16,'OK','2015-10-01 08:40:59'),(49,2,17,'OK','2015-10-01 08:40:59'),(50,2,18,'OK','2015-10-01 08:40:59'),(51,2,19,'OK','2015-10-01 08:40:59'),(52,2,20,'OK','2015-10-01 08:40:59'),(53,2,21,'OK','2015-10-01 08:40:59'),(54,2,22,'OK','2015-10-01 08:40:59'),(55,2,23,'OK','2015-10-01 08:40:59'),(56,2,24,'OK','2015-10-01 08:40:59');
/*!40000 ALTER TABLE `qimei_episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_like`
--

DROP TABLE IF EXISTS `qimei_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_like` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `poster_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_like`
--

LOCK TABLES `qimei_like` WRITE;
/*!40000 ALTER TABLE `qimei_like` DISABLE KEYS */;
INSERT INTO `qimei_like` VALUES (1,1,1,'OK','2015-10-02 03:08:48'),(2,2,1,'OK','2015-10-02 03:08:48'),(3,1,1,'OK',NULL);
/*!40000 ALTER TABLE `qimei_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_link_actor_movie`
--

DROP TABLE IF EXISTS `qimei_link_actor_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_link_actor_movie` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `actor_id` int(10) DEFAULT NULL,
  `movie_id` int(10) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='演员和影视的多对多关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_link_actor_movie`
--

LOCK TABLES `qimei_link_actor_movie` WRITE;
/*!40000 ALTER TABLE `qimei_link_actor_movie` DISABLE KEYS */;
INSERT INTO `qimei_link_actor_movie` VALUES (1,1,1,'何以琛','OK','2015-10-01 10:21:07'),(2,2,1,'赵默笙','OK','2015-10-01 10:21:07'),(3,3,2,'曾小贤','OK','2015-10-01 10:21:07'),(4,4,2,'胡一菲','OK','2015-10-01 10:21:07'),(5,5,2,'吕子乔','OK','2015-10-01 10:21:07'),(6,6,2,'陈美嘉','OK','2015-10-01 10:21:08'),(7,7,3,'小龙女','OK','2015-10-01 12:18:45'),(8,7,4,'赵灵儿','OK','2015-10-01 12:18:45'),(9,8,3,'杨过','OK','2015-10-01 12:18:45'),(22,3,1,'C罗','OK','2015-10-02 13:36:00'),(23,4,1,'梅西','OK','2015-10-02 13:36:00');
/*!40000 ALTER TABLE `qimei_link_actor_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_link_actor_poster`
--

DROP TABLE IF EXISTS `qimei_link_actor_poster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_link_actor_poster` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `actor_id` int(10) DEFAULT NULL,
  `poster_id` int(10) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='演员和剧照或截图的多对多关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_link_actor_poster`
--

LOCK TABLES `qimei_link_actor_poster` WRITE;
/*!40000 ALTER TABLE `qimei_link_actor_poster` DISABLE KEYS */;
INSERT INTO `qimei_link_actor_poster` VALUES (1,1,1,'OK','2015-10-01 13:19:11'),(2,1,2,'OK','2015-10-01 13:19:11'),(3,2,1,'OK','2015-10-01 13:21:25');
/*!40000 ALTER TABLE `qimei_link_actor_poster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_movie`
--

DROP TABLE IF EXISTS `qimei_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_movie` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL COMMENT '1:1',
  `background1` varchar(255) DEFAULT NULL COMMENT '16:9',
  `background2` varchar(45) DEFAULT NULL COMMENT '5:7',
  `introduction` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT '电影，连续剧，话剧等类别',
  `tag` varchar(255) DEFAULT NULL COMMENT '悬疑，侦探，爱情等',
  `director` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `release_time` timestamp NULL DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_movie`
--

LOCK TABLES `qimei_movie` WRITE;
/*!40000 ALTER TABLE `qimei_movie` DISABLE KEYS */;
INSERT INTO `qimei_movie` VALUES (1,'何以笙箫默','img/tv/heyi.jpg','img/tv/heyi.jpg',NULL,'大学时代的赵默笙，对C大法学系大才子何以琛一见倾心，开朗直率的她“死缠烂打”地倒追，与众不同的方式吸引了以琛的目光，一段纯纯的校园爱情悄悄滋生。然而，以琛寄养家庭的妹妹以玫，鼓起勇气向默笙宣战。当默笙去找以琛证实，没想到竟然得到以琛冷酷的回应。误以为以琛和以玫在一起的默笙，落寞地服从父亲的安排，前往美国深造。七年后，成为摄影师的默笙回来了，再次遇到那个无法忘却的男人。这对分手七年的爱人，横在他们中','TELEPLAY','偶像剧/言情剧/青春剧','刘俊杰','内地',NULL,'OK','2015-10-01 08:32:31'),(2,'爱情公寓','img/tv/loveapartment.jpg','img/tv/loveapartment.jpg',NULL,'小贤和一菲的事业都开始走上正轨，但互相之间的感情依然磕磕绊绊。而子乔和美嘉之间虽然做回了男女朋友，但吕子乔的花心本性不改也着实让美嘉头疼。关谷的事业蒸蒸日上，但是和悠悠之间也还是偶有嫌隙。展博对于宛瑜依旧难以忘怀，但也重新开始寻找新的伴侣。大家在爱情公寓一起经过了那么多年，那么多事，每一个人都开始渐渐明白自己的生活方向和彼此在自己心中的位置。不仅仅有相互之间的调侃、戏谑、捉弄，也更多了份相互鼓励。','TELEPLAY','偶像/都市/言情','韦正','内地',NULL,'OK','2015-10-01 08:32:31'),(3,'神雕侠侣','NO_AVATAR','NO_BACKGROUND',NULL,'神雕侠侣，杨过和小龙女的故事','TELEPLAY','武侠/爱情','张纪中','内地',NULL,'OK','2015-10-01 12:16:48'),(4,'仙剑奇侠传','NO_AVATAR','NO_BACKGROUND',NULL,'讲述仙侠道的故事','TELEPLAY','奇幻/爱情','未知','内地',NULL,'OK','2015-10-01 12:17:37'),(6,'黄金大劫案',NULL,NULL,NULL,NULL,'FILM',NULL,NULL,NULL,'2015-10-02 11:11:27','OK',NULL),(7,'破风',NULL,NULL,NULL,NULL,'TELEPLAY',NULL,NULL,NULL,'2015-10-02 11:11:58','DELETED',NULL);
/*!40000 ALTER TABLE `qimei_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_poster`
--

DROP TABLE IF EXISTS `qimei_poster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_poster` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `episode_id` int(10) DEFAULT NULL COMMENT '多对一的影视剧来源',
  `frame` int(10) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='剧照';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_poster`
--

LOCK TABLES `qimei_poster` WRITE;
/*!40000 ALTER TABLE `qimei_poster` DISABLE KEYS */;
INSERT INTO `qimei_poster` VALUES (1,'/img',1,80,'OK','2015-10-01 12:35:01'),(2,'NO_IMG_YET',1,90,'OK','2015-10-01 13:21:57'),(3,'/usr/img1.jpg',1,0,'DELETED','2015-10-03 05:21:35');
/*!40000 ALTER TABLE `qimei_poster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_touch`
--

DROP TABLE IF EXISTS `qimei_touch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_touch` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `poster_id` int(10) DEFAULT NULL,
  `x` double DEFAULT NULL,
  `Y` double DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT '衣服，鞋子，等类型',
  `link` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT '链接',
  `status` varchar(45) DEFAULT 'OK' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='这是一个可以点击的触控点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_touch`
--

LOCK TABLES `qimei_touch` WRITE;
/*!40000 ALTER TABLE `qimei_touch` DISABLE KEYS */;
INSERT INTO `qimei_touch` VALUES (1,1,8,29,'鞋子','http://www.localhost:8080/index.html','OK','2015-10-01 12:34:32');
/*!40000 ALTER TABLE `qimei_touch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_user`
--

DROP TABLE IF EXISTS `qimei_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL COMMENT '微信的openId号。',
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `subscribe` int(10) DEFAULT NULL COMMENT '是否订阅',
  `nickname` varchar(255) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `language` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `headimgurl` varchar(255) DEFAULT NULL,
  `subscribe_time` int(10) DEFAULT NULL,
  `unionid` varchar(45) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `accuracy` double DEFAULT NULL COMMENT '地理位置经度(precision Hibernate会莫名报错)',
  `status` varchar(45) DEFAULT 'OK' COMMENT '状态',
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
INSERT INTO `qimei_user` VALUES (1,'admin','$2a$10$4ONqBZdBwiIY52RBd11wn.59Y1s5MKm3OFnGJ34kUFQ1eRLU.RqnS','123',NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-02 03:07:53');
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

-- Dump completed on 2015-10-03 15:15:07
