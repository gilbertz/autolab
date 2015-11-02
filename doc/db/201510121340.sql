-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 120.26.72.17    Database: qimei
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
INSERT INTO `oauth_access_token` VALUES ('4703f4ac3543904c184b8a271077e234','��\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$��\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6�Z���\0\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0P_��%xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valueq\0~\0xpt\0$a2b5d51e-f14a-40f2-ad15-567aa94e32b2sq\0~\0	w\0\0P���%xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$5d71fe13-01c0-491a-842b-d64496589abe','1e48b66719deae09a39143879a4b762e','admin','clientapp','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERsq\0~\0\rt\0\nROLE_ADMINxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	clientappsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\ngrant_typet\0passwordt\0scopet\0\nread writet\0	client_idt\0	clientappt\0usernamet\0adminxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0(w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0USERxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsq\0~\0\'w\0\0\0?@\0\0\0\0\0t\0restservicexsq\0~\0(w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0�\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0q\0~\0xq\0~\06sr\0java.util.LinkedHashMap4�N\\l��\0Z\0accessOrderxq\0~\0?@\0\0\0\0\0w\0\0\0\0\0\0q\0~\0#q\0~\0$q\0~\0q\0~\0q\0~\0q\0~\0 t\0\rclient_secrett\0 f506d105142e2928e2e37675b560ff75q\0~\0!q\0~\0\"x\0psr\0com.qimei.common.model.UseryWrX�\0L\0accuracyt\0Ljava/lang/Double;L\0	aliAvatarq\0~\0L\0aliIdq\0~\0L\0aliNickq\0~\0L\0cityq\0~\0L\0countryq\0~\0L\0followsq\0~\0L\0\nheadimgurlq\0~\0L\0languageq\0~\0L\0lastLoginIpq\0~\0L\0\rlastLoginTimet\0Ljava/util/Date;L\0latitudeq\0~\0<L\0likesq\0~\0L\0	longitudeq\0~\0<L\0nicknameq\0~\0L\0openidq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0provinceq\0~\0L\0rolet\0\"Lcom/qimei/common/model/User$Role;L\0sexq\0~\0L\0	subscribet\0Ljava/lang/Integer;L\0\rsubscribeTimet\0Ljava/lang/Long;L\0unionidq\0~\0L\0usernameq\0~\0xr\0!com.qimei.common.model.BaseEntity_��V5*8�\0L\0\ncreateTimeq\0~\0=L\0idq\0~\0@L\0mapq\0~\0L\0statust\0Lcom/qimei/common/model/Status;xpsr\0java.sql.Timestamp&��S�e\0I\0nanosxr\0java.util.Datehj�KYt\0\0xpw\0\0P&�+(x\0\0\0\0sr\0java.lang.Long;��̏#�\0J\0valuexr\0java.lang.Number������\0\0xp\0\0\0\0\0\0\0p~r\0com.qimei.common.model.Status\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0OKppppppsr\0/org.hibernate.collection.internal.PersistentBagFJd\\.�\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollection�J~w��\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Pxp\0����\0\0q\0~\0Iq\0~\0Ct\0#com.qimei.common.model.User.followsppppppppsq\0~\0N\0����\0\0q\0~\0Iq\0~\0Ct\0!com.qimei.common.model.User.likesppppt\0adminpt\0<$2a$10$4ONqBZdBwiIY52RBd11wn.59Y1s5MKm3OFnGJ34kUFQ1eRLU.RqnSt\0123p~r\0 com.qimei.common.model.User$Role\0\0\0\0\0\0\0\0\0\0xq\0~\0Kt\0\nROLE_ADMINppppt\0admin','bf38687dfe40ae9c5315cdee5c53e125'),('37b6a06922912db9bbd28769d89d1293','��\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken��6$��\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6�Z���\0\0xpsr\0java.util.Datehj�KYt\0\0xpw\0\0P_�H�xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/�Gc��ɷ\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens�\ncT�^\0L\0valueq\0~\0xpt\0$8d083bdc-d5d2-4235-af4d-d061a7ce50b7sq\0~\0	w\0\0P���xsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$5e3ddf3e-a327-48dd-84c6-edf02878a770','fd91a32382b248205a7168dd36988503',NULL,'clientapp','��\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2Authentication�@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationTokenӪ(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList�%1��\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0��^�\0L\0cq\0~\0xpsr\0java.util.ArrayListx����a�\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0�\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>�qi�\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	clientappsr\0%java.util.Collections$UnmodifiableMap��t�B\0L\0mq\0~\0xpsr\0java.util.HashMap���`�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ali_idt\0lishuangt\0\ngrant_typet\0alit\0scopet\0\nread writet\0ali_nickt\0李爽t\0\nali_avatart\0LISHUANG_AVATARt\0	client_idt\0	clientappxsr\0%java.util.Collections$UnmodifiableSet��я��U\0\0xq\0~\0	sr\0java.util.LinkedHashSet�l�Z��*\0\0xr\0java.util.HashSet�D�����4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0*w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0USERxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0restservicexsq\0~\0*w\0\0\0?@\0\0\0\0\0\0xsr\0Horg.springframework.security.authentication.AnonymousAuthenticationToken\0\0\0\0\0\0\0\0I\0keyHashL\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\08pO���sr\0com.qimei.common.model.UseryWrX�\0L\0accuracyt\0Ljava/lang/Double;L\0	aliAvatarq\0~\0L\0aliIdq\0~\0L\0aliNickq\0~\0L\0cityq\0~\0L\0countryq\0~\0L\0followsq\0~\0L\0\nheadimgurlq\0~\0L\0languageq\0~\0L\0lastLoginIpq\0~\0L\0\rlastLoginTimet\0Ljava/util/Date;L\0latitudeq\0~\0:L\0likesq\0~\0L\0	longitudeq\0~\0:L\0nicknameq\0~\0L\0openidq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0provinceq\0~\0L\0rolet\0\"Lcom/qimei/common/model/User$Role;L\0sexq\0~\0L\0	subscribet\0Ljava/lang/Integer;L\0\rsubscribeTimet\0Ljava/lang/Long;L\0unionidq\0~\0L\0usernameq\0~\0xr\0!com.qimei.common.model.BaseEntity_��V5*8�\0L\0\ncreateTimeq\0~\0;L\0idq\0~\0>L\0mapq\0~\0L\0statust\0Lcom/qimei/common/model/Status;xpsr\0java.util.Datehj�KYt\0\0xpw\0\0PZ��xpp~r\0com.qimei.common.model.Status\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0OKpt\0LISHUANG_AVATARt\0lishuangt\0李爽ppsq\0~\0\0\0\0\0w\0\0\0\0xpppppsq\0~\0\0\0\0\0w\0\0\0\0xpppppp~r\0 com.qimei.common.model.User$Role\0\0\0\0\0\0\0\0\0\0xq\0~\0Et\0	ROLE_USERppppp','3a517c79e754498c53ff487eea33a058');
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
  `top` tinyint(1) DEFAULT '0' COMMENT '是否是置顶',
  `sort` int(11) DEFAULT NULL COMMENT '排序的',
  `status` varchar(45) DEFAULT 'OK',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='明星表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_actor`
--

LOCK TABLES `qimei_actor` WRITE;
/*!40000 ALTER TABLE `qimei_actor` DISABLE KEYS */;
INSERT INTO `qimei_actor` VALUES (1,'钟汉良','钟汉良','http://qimei-app.image.alimmdn.com/actor/%E9%92%9F%E6%B1%89%E8%89%AF_1_1.png?t=1444583134000','http://qimei-app.image.alimmdn.com/actor/%E9%92%9F%E6%B1%89%E8%89%AF_16_9.png?t=1444583138000','中国香港影视演员/歌手/舞者',1,1,'OK','2015-10-01 09:19:38'),(2,'唐嫣','唐嫣','http://qimei-app.image.alimmdn.com/actor/%E5%94%90%E5%AB%A3_1_1.png?t=1444583133000','http://qimei-app.image.alimmdn.com/actor/%E5%94%90%E5%AB%A3_16_9.png?t=1444583133000','中国上海女演员',1,2,'OK','2015-10-01 09:19:38'),(3,'陈赫','陈赫','http://qimei-app.image.alimmdn.com/actor/%E9%99%88%E8%B5%AB_1_1.png?t=1444583131000','http://qimei-app.image.alimmdn.com/actor/%E9%99%88%E8%B5%AB_16_9.png?t=1444583132000','中国大陆男演员',1,3,'OK','2015-10-01 09:19:39'),(4,'娄艺潇','娄艺潇','http://qimei-app.image.alimmdn.com/actor/%E5%A8%84%E8%89%BA%E6%BD%87_1_1.png?t=1444583131000','http://qimei-app.image.alimmdn.com/actor/%E5%A8%84%E8%89%BA%E6%BD%87_16_9.png?t=1444583133000','中国女演员',1,4,'OK','2015-10-01 09:19:39'),(5,'孙艺洲','孙艺洲','http://qimei-app.image.alimmdn.com/actor/%E5%AD%99%E8%89%BA%E6%B4%B2_1_1.png?t=1444583131000','http://qimei-app.image.alimmdn.com/actor/%E5%AD%99%E8%89%BA%E6%B4%B2_16_9.png?t=1444583134000','上海话剧艺术中心话剧演员',1,5,'OK','2015-10-01 09:19:39'),(6,'李金铭','李金铭','http://qimei-app.image.alimmdn.com/actor/%E6%9D%8E%E9%87%91%E9%93%AD_1_1.png?t=1444583131000','http://qimei-app.image.alimmdn.com/actor/%E6%9D%8E%E9%87%91%E9%93%AD_16_9.png?t=1444583131000','中国女演员/主持人',1,6,'OK','2015-10-01 09:19:40'),(7,'王传君','王传君','http://qimei-app.image.alimmdn.com/actor/%E7%8E%8B%E4%BC%A0%E5%90%9B_1_1.png?t=1444583133000','http://qimei-app.image.alimmdn.com/actor/%E7%8E%8B%E4%BC%A0%E5%90%9B_16_9.png?t=1444583135000','中国男演员',1,7,'OK','2015-10-11 14:18:31'),(8,'谭凯','谭凯','http://qimei-app.image.alimmdn.com/actor/%E8%B0%AD%E5%87%AF_1_1.png?t=1444583133000','http://qimei-app.image.alimmdn.com/actor/%E8%B0%AD%E5%87%AF_16_9.png?t=1444583137000','中国男演员',1,8,'OK','2015-10-11 14:20:16'),(9,'菅韧姿','菅韧姿','http://qimei-app.image.alimmdn.com/actor/%E8%8F%85%E9%9F%A7%E5%A7%BF_1_1.png?t=1444584223000','http://qimei-app.image.alimmdn.com/actor/%E8%8F%85%E9%9F%A7%E5%A7%BF_16_9.jpg?t=1444584223000','中国女演员',1,9,'OK','2015-10-11 14:26:30'),(10,'邓家佳','邓家佳','http://qimei-app.image.alimmdn.com/actor/%E9%82%93%E5%AE%B6%E4%BD%B3_1_1.png?t=1444583131000','http://qimei-app.image.alimmdn.com/actor/%E9%82%93%E5%AE%B6%E4%BD%B3_16_9.png?t=1444583131000','中国女演员',1,10,'OK','2015-10-11 15:11:00');
/*!40000 ALTER TABLE `qimei_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_carousel`
--

DROP TABLE IF EXISTS `qimei_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_carousel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_id` int(11) DEFAULT NULL COMMENT '属于的实体id',
  `actor_id` int(11) DEFAULT NULL COMMENT '属于的实体id',
  `poster_id` int(11) DEFAULT NULL COMMENT '属于的实体id',
  `type` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='轮播图';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_carousel`
--

LOCK TABLES `qimei_carousel` WRITE;
/*!40000 ALTER TABLE `qimei_carousel` DISABLE KEYS */;
INSERT INTO `qimei_carousel` VALUES (1,1,NULL,NULL,'MOVIE','http://qimei-app.image.alimmdn.com/movie/hysxm_cover3.png?t=1444571917000',NULL,'OK','2015-10-10 11:58:57'),(2,NULL,NULL,4,'POSTER','http://qimei-app.image.alimmdn.com/poster/1.png?t=1444572897000',NULL,'OK','2015-10-10 11:58:58'),(3,2,NULL,NULL,'MOVIE','http://qimei-app.image.alimmdn.com/movie/aygy_cover3.png?t=1444571917000',NULL,'OK','2015-10-10 11:58:58');
/*!40000 ALTER TABLE `qimei_carousel` ENABLE KEYS */;
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
  `rank` int(10) DEFAULT NULL,
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
INSERT INTO `qimei_episode` VALUES (1,1,1,'OK','2015-10-01 08:40:59'),(2,1,2,'OK','2015-10-01 08:40:59'),(3,1,3,'OK','2015-10-01 08:40:59'),(4,1,4,'OK','2015-10-01 08:40:59'),(5,1,5,'OK','2015-10-01 08:40:59'),(6,1,6,'OK','2015-10-01 08:40:59'),(7,1,7,'OK','2015-10-01 08:40:59'),(8,1,8,'OK','2015-10-01 08:40:59'),(9,1,9,'OK','2015-10-01 08:40:59'),(10,1,10,'OK','2015-10-01 08:40:59'),(11,2,1,'OK','2015-10-01 08:40:59'),(12,2,2,'OK','2015-10-01 08:40:59'),(13,2,3,'OK','2015-10-01 08:40:59'),(14,2,4,'OK','2015-10-01 08:40:59'),(15,2,5,'OK','2015-10-01 08:40:59');
/*!40000 ALTER TABLE `qimei_episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_follow`
--

DROP TABLE IF EXISTS `qimei_follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_follow` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) DEFAULT NULL,
  `actor_id` int(10) DEFAULT NULL,
  `movie_id` int(10) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_follow`
--

LOCK TABLES `qimei_follow` WRITE;
/*!40000 ALTER TABLE `qimei_follow` DISABLE KEYS */;
INSERT INTO `qimei_follow` VALUES (1,1,3,NULL,'ACTOR','OK','2015-10-10 16:12:45'),(2,1,5,NULL,'ACTOR','OK','2015-10-10 16:12:45'),(5,1,NULL,1,'MOVIE','OK','2015-10-10 16:12:45'),(6,1,NULL,1,'MOVIE','OK','2015-10-10 16:12:45'),(9,2,3,NULL,'ACTOR','OK','2015-10-11 02:33:48'),(10,2,5,NULL,'ACTOR','OK','2015-10-11 02:33:48'),(11,2,NULL,1,'MOVIE','OK','2015-10-11 02:33:48'),(12,2,NULL,1,'MOVIE','OK','2015-10-11 02:33:48');
/*!40000 ALTER TABLE `qimei_follow` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_like`
--

LOCK TABLES `qimei_like` WRITE;
/*!40000 ALTER TABLE `qimei_like` DISABLE KEYS */;
INSERT INTO `qimei_like` VALUES (1,1,1,'OK','2015-10-02 03:08:48'),(2,2,1,'OK','2015-10-02 03:08:48'),(3,13,1,'OK','2015-10-02 03:08:48'),(4,1,1,'OK','2015-10-12 04:42:17'),(5,1,1,'OK','2015-10-12 04:42:23'),(6,1,1,'OK','2015-10-12 04:42:25'),(7,1,1,'OK','2015-10-12 04:46:18'),(8,1,1,'OK','2015-10-12 04:48:17'),(9,1,1,'OK','2015-10-12 04:51:44'),(10,1,1,'OK','2015-10-12 04:52:36'),(11,1,1,'OK','2015-10-12 04:54:45'),(12,1,1,'OK','2015-10-12 04:55:08'),(13,1,1,'OK','2015-10-12 04:57:02');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='演员和影视的多对多关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_link_actor_movie`
--

LOCK TABLES `qimei_link_actor_movie` WRITE;
/*!40000 ALTER TABLE `qimei_link_actor_movie` DISABLE KEYS */;
INSERT INTO `qimei_link_actor_movie` VALUES (1,1,1,'钟汉良','OK','2015-10-01 10:21:07'),(2,2,1,'唐嫣','OK','2015-10-01 10:21:07'),(3,3,2,'陈赫','OK','2015-10-01 10:21:07'),(4,4,2,'娄艺潇','OK','2015-10-01 10:21:07'),(5,5,2,'孙艺洲','OK','2015-10-01 10:21:07'),(6,6,2,'李金铭','OK','2015-10-01 10:21:08'),(7,7,2,'王传君','OK','2015-10-01 12:18:45'),(8,8,1,'谭凯','OK','2015-10-01 12:18:45'),(9,9,1,'菅韧姿','OK','2015-10-01 12:18:45'),(10,10,2,'邓家佳','OK','2015-10-02 13:36:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='演员和剧照或截图的多对多关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_link_actor_poster`
--

LOCK TABLES `qimei_link_actor_poster` WRITE;
/*!40000 ALTER TABLE `qimei_link_actor_poster` DISABLE KEYS */;
INSERT INTO `qimei_link_actor_poster` VALUES (1,2,1,'OK','2015-10-01 13:19:11'),(2,2,2,'OK','2015-10-01 13:19:11'),(3,2,3,'OK','2015-10-01 13:21:25'),(4,2,4,'OK','2015-10-11 02:48:29'),(5,2,5,'OK','2015-10-11 03:05:49'),(6,2,6,'OK','2015-10-12 01:46:24'),(7,2,7,'OK','2015-10-12 01:46:27'),(8,2,8,'OK','2015-10-12 01:46:31'),(9,9,9,'OK','2015-10-12 01:46:36'),(10,2,10,'OK','2015-10-12 01:46:39'),(11,2,11,'OK','2015-10-12 01:46:44'),(12,2,12,'OK','2015-10-12 01:46:47'),(13,7,13,'OK','2015-10-12 01:46:50'),(14,10,14,'OK','2015-10-12 01:46:53'),(15,5,15,'OK','2015-10-12 01:47:28'),(16,3,16,'OK','2015-10-12 01:47:31'),(17,6,17,'OK','2015-10-12 01:47:34'),(18,6,18,'OK','2015-10-12 01:47:39'),(19,7,19,'OK','2015-10-12 01:47:42'),(20,6,20,'OK','2015-10-12 01:47:47'),(21,6,21,'OK','2015-10-12 01:47:49'),(22,3,22,'OK','2015-10-12 01:47:52'),(23,3,23,'OK','2015-10-12 01:47:55'),(24,3,24,'OK','2015-10-12 01:47:57');
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
  `title` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL COMMENT '排序的',
  `top` tinyint(1) DEFAULT NULL COMMENT '是否是置顶',
  `avatar` varchar(255) DEFAULT NULL COMMENT '1:1',
  `background1` varchar(255) DEFAULT NULL COMMENT '16:9',
  `background2` varchar(255) DEFAULT NULL COMMENT '7:10',
  `introduction` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT '电影，连续剧，话剧等类别',
  `tag` varchar(255) DEFAULT NULL COMMENT '悬疑，侦探，爱情等',
  `director` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `release_time` timestamp NULL DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_movie`
--

LOCK TABLES `qimei_movie` WRITE;
/*!40000 ALTER TABLE `qimei_movie` DISABLE KEYS */;
INSERT INTO `qimei_movie` VALUES (1,'何以笙箫默','何以笙箫默','钟汉良唐嫣真爱不败',1,1,'http://qimei-app.image.alimmdn.com/movie/hysxm.png?t=1444572299000','http://qimei-app.image.alimmdn.com/movie/hysxm_cover3.png?t=1444571917000','http://qimei-app.image.alimmdn.com/movie/hysxm7_10.png?t=1444572374000','大学时代的赵默笙，对C大法学系大才子何以琛一见倾心，开朗直率的她“死缠烂打”地倒追，与众不同的方式吸引了以琛的目光，一段纯纯的校园爱情悄悄滋生。然而，以琛寄养家庭的妹妹以玫，鼓起勇气向默笙宣战。当默笙去找以琛证实，没想到竟然得到以琛冷酷的回应。误以为以琛和以玫在一起的默笙，落寞地服从父亲的安排，前往美国深造。七年后，成为摄影师的默笙回来了，再次遇到那个无法忘却的男人。这对分手七年的爱人，横在他们中','TELEPLAY','偶像剧/言情剧/青春剧','刘俊杰','内地',NULL,'OK','2015-10-01 08:32:31'),(2,'爱情公寓','爱情公寓',NULL,2,1,'http://qimei-app.image.alimmdn.com/movie/1-150314143R4.png?t=1444572570000','http://qimei-app.image.alimmdn.com/movie/aygy_cover3.png?t=1444571917000','http://qimei-app.image.alimmdn.com/movie/aqgy4.png?t=1444572337000','小贤和一菲的事业都开始走上正轨，但互相之间的感情依然磕磕绊绊。而子乔和美嘉之间虽然做回了男女朋友，但吕子乔的花心本性不改也着实让美嘉头疼。关谷的事业蒸蒸日上，但是和悠悠之间也还是偶有嫌隙。展博对于宛瑜依旧难以忘怀，但也重新开始寻找新的伴侣。大家在爱情公寓一起经过了那么多年，那么多事，每一个人都开始渐渐明白自己的生活方向和彼此在自己心中的位置。不仅仅有相互之间的调侃、戏谑、捉弄，也更多了份相互鼓励。','TELEPLAY','偶像/都市/言情','韦正','内地',NULL,'OK','2015-10-03 08:32:31'),(3,'头脑特工队','头脑特工队',NULL,3,1,NULL,NULL,'http://qimei-app.image.alimmdn.com/movie/movie1.jpg?t=1444571706000',NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-11 13:49:41'),(4,'港囧','港囧',NULL,4,1,NULL,NULL,'http://qimei-app.image.alimmdn.com/movie/movie2.jpg?t=1444571706000',NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-11 13:50:27'),(5,'像素大战','像素大战',NULL,5,1,NULL,NULL,'http://qimei-app.image.alimmdn.com/movie/movie3.jpg?t=1444571706000',NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-11 13:51:01');
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
  `image` varchar(255) DEFAULT NULL,
  `episode_id` int(10) DEFAULT NULL COMMENT '多对一的影视剧来源',
  `movie_id` int(11) DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL COMMENT '是否是置顶',
  `sort` int(11) DEFAULT NULL COMMENT '排序的',
  `frame` int(10) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK' COMMENT '状态',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='剧照';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_poster`
--

LOCK TABLES `qimei_poster` WRITE;
/*!40000 ALTER TABLE `qimei_poster` DISABLE KEYS */;
INSERT INTO `qimei_poster` VALUES (1,'http://qimei.image.alimmdn.com/poster/hysxm/143607037065800101_1390.png',1,1,0,NULL,1390,'OK','2015-10-01 12:35:01',NULL,NULL),(2,'http://qimei.image.alimmdn.com/poster/hysxm/143607037065800501_1387.png',5,1,0,NULL,1387,'OK','2015-10-01 13:21:57',NULL,NULL),(3,'http://qimei.image.alimmdn.com/poster/hysxm/143607037065800501_385.png',5,1,0,NULL,385,'OK','2015-10-03 05:21:35',NULL,NULL),(4,'http://qimei-app.image.alimmdn.com/poster/1.png?t=1444572897000',1,1,1,1,1322,'OK','2015-10-06 13:31:28','http://qimei-app.image.alimmdn.com/poster/1.png?t=1444572897000',NULL),(5,'http://qimei.image.alimmdn.com/poster/hysxm/143601023128100601_1405.png',6,1,1,2,1405,'OK','2015-10-06 13:32:23',NULL,'http://qimei-app.image.alimmdn.com/poster/2.png?t=1444572896000'),(6,'http://qimei.image.alimmdn.com/poster/hysxm/143607037065800501_46.png',5,1,0,NULL,46,'OK','2015-10-09 12:32:35',NULL,NULL),(7,'http://qimei.image.alimmdn.com/poster/hysxm/143601085434400001_2450.png',1,1,0,NULL,2450,'OK','2015-10-11 02:38:50',NULL,NULL),(8,'http://qimei.image.alimmdn.com/poster/hysxm/143607037065800101_362.png',1,1,0,NULL,362,'OK','2015-10-11 05:46:16',NULL,NULL),(9,'http://qimei.image.alimmdn.com/poster/hysxm/143607037065800801_2152.png',8,1,0,NULL,2152,'OK','2015-10-11 05:46:16',NULL,NULL),(10,'http://qimei.image.alimmdn.com/poster/hysxm/143607037065800801_1195.png',8,1,0,NULL,1195,'OK','2015-10-11 05:46:16',NULL,NULL),(11,'http://qimei.image.alimmdn.com/poster/hysxm/143607037065800601_1211.png',6,1,0,NULL,1211,'OK','2015-10-11 05:46:16',NULL,NULL),(12,'http://qimei.image.alimmdn.com/poster/hysxm/143601085434400001_1419.png',1,1,0,NULL,1419,'OK','2015-10-11 05:46:16',NULL,NULL),(13,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900301_12.png?t=1444577354000',13,2,1,3,12,'OK','2015-10-11 15:28:13','http://qimei-app.image.alimmdn.com/poster/aqgy4/4.png?t=1444577635000',NULL),(14,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900301_1766.png?t=1444577354000',13,2,1,4,1766,'OK','2015-10-11 15:35:14','http://qimei-app.image.alimmdn.com/poster/aqgy4/3.png?t=1444577635000',NULL),(15,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900501_1397.png?t=1444577354000',15,2,0,NULL,1397,'OK','2015-10-11 15:36:04',NULL,NULL),(16,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900501_1816.png?t=1444577354000',15,2,0,NULL,1816,'OK','2015-10-11 15:36:11',NULL,NULL),(17,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900401_979.png?t=1444577354000',14,2,0,NULL,979,'OK','2015-10-11 15:36:30',NULL,NULL),(18,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900501_62.png?t=1444577354000',15,2,0,NULL,62,'OK','2015-10-11 15:36:40',NULL,NULL),(19,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900401_658.png?t=1444577354000',14,2,0,NULL,658,'OK','2015-10-11 15:36:51',NULL,NULL),(20,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900301_2242.png?t=1444577354000',13,2,0,NULL,2242,'OK','2015-10-11 15:37:01',NULL,NULL),(21,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900501_867.png?t=1444577354000',15,2,0,NULL,867,'OK','2015-10-11 15:37:12',NULL,NULL),(22,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900401_1672.png?t=1444577354000',14,2,0,NULL,1672,'OK','2015-10-11 15:37:20',NULL,NULL),(23,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900501_416.png?t=1444577354000',15,2,0,NULL,416,'OK','2015-10-11 15:37:27',NULL,NULL),(24,'http://qimei-app.image.alimmdn.com/poster/aqgy4/143773835623900301_417.png?t=1444577354000',13,2,0,NULL,417,'OK','2015-10-11 15:37:42',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='这是一个可以点击的触控点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_touch`
--

LOCK TABLES `qimei_touch` WRITE;
/*!40000 ALTER TABLE `qimei_touch` DISABLE KEYS */;
INSERT INTO `qimei_touch` VALUES (1,5,0.584,0.483,'衣服','http://item.taobao.com/item.htm?id=44108362215','OK','2015-10-01 12:34:32'),(2,7,0.53,0.409,'衣服','http://item.taobao.com/item.htm?id=43864283206','OK','2015-10-03 12:17:53'),(3,8,0.106,0.399,'衣服','https://item.taobao.com/item.htm?id=43542224126','OK','2015-10-11 06:17:03'),(4,1,0.592,0.308,'衣服','http://item.taobao.com/item.htm?id=43583464736','OK','2015-10-11 06:17:03'),(5,4,0.284,0.362,'衣服','http://item.taobao.com/item.htm?id=43736270498','OK','2015-10-11 06:17:03'),(6,6,0.397,0.51,'衣服','https://item.taobao.com/item.htm?id=43935631335','OK','2015-10-11 06:17:03'),(7,3,0.441,0.472,'衣服','http://item.taobao.com/item.htm?id=44516110533','OK','2015-10-11 06:17:03'),(8,2,0.256,0.479,'衣服','https://item.taobao.com/item.htm?id=45480691402','OK','2015-10-11 06:17:03'),(9,11,0.578,0.442,'衣服','https://item.taobao.com/item.htm?id=520970157132','OK','2015-10-11 06:17:03'),(10,10,0.24,0.416,'衣服','http://item.taobao.com/item.htm?id=44796045486','OK','2015-10-11 06:17:03'),(11,9,0.068,0.46,'衣服','https://item.taobao.com/item.htm?id=41808363531','OK','2015-10-11 06:17:03'),(12,12,0.331,0.577,'衣服','http://item.taobao.com/item.htm?id=43926362802','OK','2015-10-11 06:17:03'),(13,13,NULL,NULL,'衣服','http://item.taobao.com/item.htm?id=37104187209','OK','2015-10-11 15:27:53'),(14,14,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=36505118888','OK','2015-10-11 15:27:57'),(15,20,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=41134960458','OK','2015-10-11 15:28:00'),(16,24,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=37218382450','OK','2015-10-11 15:28:02'),(17,15,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=38137358119','OK','2015-10-11 16:11:36'),(18,19,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=520787684901','OK','2015-10-11 16:16:13'),(19,22,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=38148897927','OK','2015-10-11 16:21:40'),(20,23,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=37218382450','OK','2015-10-11 16:25:23'),(21,21,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=42143030848','OK','2015-10-11 16:31:19'),(22,18,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=41257056687','OK','2015-10-11 16:31:25'),(23,17,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=520909616456','OK','2015-10-11 16:31:27'),(24,16,NULL,NULL,'衣服','https://item.taobao.com/item.htm?id=38163644847','OK','2015-10-11 16:31:28');
/*!40000 ALTER TABLE `qimei_touch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qimei_user`
--

DROP TABLE IF EXISTS `qimei_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qimei_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ali_id` varchar(45) DEFAULT NULL COMMENT '阿里的用户唯一标识',
  `ali_nick` varchar(45) DEFAULT NULL COMMENT '阿里用户的昵称',
  `ali_avatar` varchar(45) DEFAULT NULL COMMENT '阿里用户的头像',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(45) DEFAULT 'ROLE_USER',
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户表描述';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_user`
--

LOCK TABLES `qimei_user` WRITE;
/*!40000 ALTER TABLE `qimei_user` DISABLE KEYS */;
INSERT INTO `qimei_user` VALUES (1,NULL,NULL,NULL,'admin','$2a$10$4ONqBZdBwiIY52RBd11wn.59Y1s5MKm3OFnGJ34kUFQ1eRLU.RqnS','ROLE_ADMIN','123',NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-02 03:07:53'),(2,NULL,NULL,NULL,'lishuang','$2a$10$4ONqBZdBwiIY52RBd11wn.59Y1s5MKm3OFnGJ34kUFQ1eRLU.RqnS','ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-11 03:42:45'),(3,'lishuang','李爽','LISHUANG_AVATAR',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-12 04:41:08');
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

-- Dump completed on 2015-10-12 13:41:04
