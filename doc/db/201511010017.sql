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
INSERT INTO `oauth_access_token` VALUES ('4b1ac43271e2b440e0d6cfc4696222ec','¨Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ‹Á–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0P√…wxsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valueq\0~\0xpt\0$cb20c16a-8053-4c9d-ba71-69b2a347a428sq\0~\0	w\0\0QY!„xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$122e81e8-012b-4af9-b5bd-19a30da517e5','fd91a32382b248205a7168dd36988503',NULL,'clientapp','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0ê\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	clientappsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ali_idt\0weibot\0\ngrant_typet\0alit\0scopet\0\nread writet\0ali_nickt\0ghht\0\nali_avatart\0\n/usr/imgggt\0	client_idt\0	clientappxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0*w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0USERxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0restservicexsq\0~\0*w\0\0\0?@\0\0\0\0\0\0xsr\0Horg.springframework.security.authentication.AnonymousAuthenticationToken\0\0\0\0\0\0\0\0I\0keyHashL\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\08pºlËsr\0com.qimei.common.model.User\0\0\0\0\0\0\0d\0L\0accuracyt\0Ljava/lang/Double;L\0	aliAvatarq\0~\0L\0aliIdq\0~\0L\0aliNickq\0~\0L\0cityq\0~\0L\0countryq\0~\0L\0followsq\0~\0L\0\nheadimgurlq\0~\0L\0languageq\0~\0L\0lastLoginIpq\0~\0L\0\rlastLoginTimet\0Ljava/util/Date;L\0latitudeq\0~\0:L\0likesq\0~\0L\0	longitudeq\0~\0:L\0nicknameq\0~\0L\0openidq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0provinceq\0~\0L\0rolet\0\"Lcom/qimei/common/model/User$Role;L\0sexq\0~\0L\0	subscribet\0Ljava/lang/Integer;L\0\rsubscribeTimet\0Ljava/lang/Long;L\0unionidq\0~\0L\0usernameq\0~\0xr\0!com.qimei.common.model.BaseEntityçRü‘”ÿ6Ω\0L\0\ncreateTimeq\0~\0;L\0idq\0~\0>L\0mapq\0~\0L\0statust\0Lcom/qimei/common/model/Status;xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0PæØ4@xsr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0p~r\0com.qimei.common.model.Status\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0OKpq\0~\0$q\0~\0q\0~\0\"ppsr\0/org.hibernate.collection.internal.PersistentBagFJd\\.ƒ\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionÑJ~wÆç\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Mxp\0ˇˇˇˇ\0q\0~\0Fq\0~\0At\0#com.qimei.common.model.User.followspsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0\0\0\0\0w\0\0\0\0xpppppsq\0~\0K\0ˇˇˇˇ\0q\0~\0Fq\0~\0At\0!com.qimei.common.model.User.likespsq\0~\0\0\0\0\0w\0\0\0\0xsq\0~\0\0\0\0\0w\0\0\0\0xpppppp~r\0 com.qimei.common.model.User$Role\0\0\0\0\0\0\0\0\0\0xq\0~\0Ht\0	ROLE_USERppppp','c2b7f4d8c3818ce560bf62db4245d605'),('eed2f02a77546285e35042fe4e5736c1','¨Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ‹Á–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0P√’‡xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valueq\0~\0xpt\0$393ba7f3-8bfc-444b-bf3f-a1009b57602bsq\0~\0	w\0\0QY.Lxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$6d51557b-5be7-404c-862c-fe3b8448cf79','4a8fe4a6ea1f0e35e4d56e5e145915cd','zhaoguoqi11','clientapp','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0ê\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	clientappsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ali_idt\0zhaoguoqi11t\0\ngrant_typet\0alit\0scopet\0\nread writet\0ali_nickt\0ÊùéÁàΩt\0\nali_avatart\0LISHUANG_AVATARt\0	client_idt\0	clientappxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0*w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0USERxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0restservicexsq\0~\0*w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0ê\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\08ppsr\0com.qimei.common.model.User\0\0\0\0\0\0\0d\0L\0accuracyt\0Ljava/lang/Double;L\0	aliAvatarq\0~\0L\0aliIdq\0~\0L\0aliNickq\0~\0L\0cityq\0~\0L\0countryq\0~\0L\0followsq\0~\0L\0\nheadimgurlq\0~\0L\0languageq\0~\0L\0lastLoginIpq\0~\0L\0\rlastLoginTimet\0Ljava/util/Date;L\0latitudeq\0~\0:L\0likesq\0~\0L\0	longitudeq\0~\0:L\0nicknameq\0~\0L\0openidq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0provinceq\0~\0L\0rolet\0\"Lcom/qimei/common/model/User$Role;L\0sexq\0~\0L\0	subscribet\0Ljava/lang/Integer;L\0\rsubscribeTimet\0Ljava/lang/Long;L\0unionidq\0~\0L\0usernameq\0~\0xr\0!com.qimei.common.model.BaseEntityçRü‘”ÿ6Ω\0L\0\ncreateTimeq\0~\0;L\0idq\0~\0>L\0mapq\0~\0L\0statust\0Lcom/qimei/common/model/Status;xpsr\0java.sql.Timestamp&’»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0PæØ¿x\0\0\0\0sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0p~r\0com.qimei.common.model.Status\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0OKpt\0LISHUANG_AVATARt\0zhaoguoqi11t\0ÊùéÁàΩppsr\0/org.hibernate.collection.internal.PersistentBagFJd\\.ƒ\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionÑJ~wÆç\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Qxp\0ˇˇˇˇ\0\0q\0~\0Gq\0~\0At\0#com.qimei.common.model.User.followsppppppppsq\0~\0O\0ˇˇˇˇ\0\0q\0~\0Gq\0~\0At\0!com.qimei.common.model.User.likesppppppt\0<$2a$10$wx5/lq.HlJ5hp/UY3YjCMO9.Ynim8nLEFF5.ArHgjZ/xwwhGhcBBSpp~r\0 com.qimei.common.model.User$Role\0\0\0\0\0\0\0\0\0\0xq\0~\0It\0	ROLE_USERppppt\0zhaoguoqi11','c53d428265e2de6c49ff059909e1f9f1'),('c0e9c968d3311c423d53489cd126987c','¨Ì\0sr\0Corg.springframework.security.oauth2.common.DefaultOAuth2AccessToken≤û6$˙Œ\0L\0additionalInformationt\0Ljava/util/Map;L\0\nexpirationt\0Ljava/util/Date;L\0refreshTokent\0?Lorg/springframework/security/oauth2/common/OAuth2RefreshToken;L\0scopet\0Ljava/util/Set;L\0	tokenTypet\0Ljava/lang/String;L\0valueq\0~\0xpsr\0java.util.Collections$EmptyMapY6ÖZ‹Á–\0\0xpsr\0java.util.DatehjÅKYt\0\0xpw\0\0P√’Ò\"xsr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationq\0~\0xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valueq\0~\0xpt\0$9e8c67f4-22ec-4b96-aba3-558bf95cbb3esq\0~\0	w\0\0QY.]\"xsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0ct\0Ljava/util/Collection;xpsr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writext\0bearert\0$a6439a0d-72be-45f1-ae11-2e08a3558c34','70c5a60ad23145e13c6bf7df6f1af4e8','zhaoguoqi112','clientapp','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0ê\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	clientappsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ali_idt\0zhaoguoqi112t\0\ngrant_typet\0alit\0scopet\0\nread writet\0ali_nickt\0ÊùéÁàΩt\0\nali_avatart\0LISHUANG_AVATARt\0	client_idt\0	clientappxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0*w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0USERxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0restservicexsq\0~\0*w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0ê\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\08ppsr\0com.qimei.common.model.User\0\0\0\0\0\0\0d\0L\0accuracyt\0Ljava/lang/Double;L\0	aliAvatarq\0~\0L\0aliIdq\0~\0L\0aliNickq\0~\0L\0cityq\0~\0L\0countryq\0~\0L\0followsq\0~\0L\0\nheadimgurlq\0~\0L\0languageq\0~\0L\0lastLoginIpq\0~\0L\0\rlastLoginTimet\0Ljava/util/Date;L\0latitudeq\0~\0:L\0likesq\0~\0L\0	longitudeq\0~\0:L\0nicknameq\0~\0L\0openidq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0provinceq\0~\0L\0rolet\0\"Lcom/qimei/common/model/User$Role;L\0sexq\0~\0L\0	subscribet\0Ljava/lang/Integer;L\0\rsubscribeTimet\0Ljava/lang/Long;L\0unionidq\0~\0L\0usernameq\0~\0xr\0!com.qimei.common.model.BaseEntityçRü‘”ÿ6Ω\0L\0\ncreateTimeq\0~\0;L\0idq\0~\0>L\0mapq\0~\0L\0statust\0Lcom/qimei/common/model/Status;xpsr\0java.sql.Timestamp&’»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0PæØìHx\0\0\0\0sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0p~r\0com.qimei.common.model.Status\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0OKpt\0LISHUANG_AVATARt\0zhaoguoqi112t\0ÊùéÁàΩppsr\0/org.hibernate.collection.internal.PersistentBagFJd\\.ƒ\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionÑJ~wÆç\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Qxp\0ˇˇˇˇ\0\0q\0~\0Gq\0~\0At\0#com.qimei.common.model.User.followsppppppppsq\0~\0O\0ˇˇˇˇ\0\0q\0~\0Gq\0~\0At\0!com.qimei.common.model.User.likesppppppt\0<$2a$10$vqGbWK4zpPxWtNksLO.dXOYW.2mHT2uzOdNPcWfKMcvNwm.aBIEx6pp~r\0 com.qimei.common.model.User$Role\0\0\0\0\0\0\0\0\0\0xq\0~\0It\0	ROLE_USERppppt\0zhaoguoqi112','73d11387de7c17c286ceb609b7ea06e9');
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
INSERT INTO `oauth_refresh_token` VALUES ('c2b7f4d8c3818ce560bf62db4245d605','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$cb20c16a-8053-4c9d-ba71-69b2a347a428sr\0java.util.DatehjÅKYt\0\0xpw\0\0QY!„x','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0ê\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	clientappsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ali_idt\0fgt\0\ngrant_typet\0alit\0scopet\0\nread writet\0ali_nickt\0ghht\0\nali_avatart\0\n/usr/imgggt\0	client_idt\0	clientappxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0*w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0USERxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0restservicexsq\0~\0*w\0\0\0?@\0\0\0\0\0\0xsr\0Horg.springframework.security.authentication.AnonymousAuthenticationToken\0\0\0\0\0\0\0\0I\0keyHashL\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\08p\0\0¡sr\0com.qimei.common.model.User\0\0\0\0\0\0\0d\0L\0accuracyt\0Ljava/lang/Double;L\0	aliAvatarq\0~\0L\0aliIdq\0~\0L\0aliNickq\0~\0L\0cityq\0~\0L\0countryq\0~\0L\0followsq\0~\0L\0\nheadimgurlq\0~\0L\0languageq\0~\0L\0lastLoginIpq\0~\0L\0\rlastLoginTimet\0Ljava/util/Date;L\0latitudeq\0~\0:L\0likesq\0~\0L\0	longitudeq\0~\0:L\0nicknameq\0~\0L\0openidq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0provinceq\0~\0L\0rolet\0\"Lcom/qimei/common/model/User$Role;L\0sexq\0~\0L\0	subscribet\0Ljava/lang/Integer;L\0\rsubscribeTimet\0Ljava/lang/Long;L\0unionidq\0~\0L\0usernameq\0~\0xr\0!com.qimei.common.model.BaseEntityçRü‘”ÿ6Ω\0L\0\ncreateTimeq\0~\0;L\0idq\0~\0>L\0mapq\0~\0L\0statust\0Lcom/qimei/common/model/Status;xpsr\0java.sql.Timestamp&’»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0PæZ˜ x\0\0\0\0sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0p~r\0com.qimei.common.model.Status\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0OKpt\0\n/usr/imgggt\0fgt\0ghhppsr\0/org.hibernate.collection.internal.PersistentBagFJd\\.ƒ\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionÑJ~wÆç\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Qxp\0ˇˇˇˇ\0\0q\0~\0Gq\0~\0At\0#com.qimei.common.model.User.followsppppppppsq\0~\0O\0ˇˇˇˇ\0\0q\0~\0Gq\0~\0At\0!com.qimei.common.model.User.likesppppppppp~r\0 com.qimei.common.model.User$Role\0\0\0\0\0\0\0\0\0\0xq\0~\0It\0	ROLE_USERppppp'),('c53d428265e2de6c49ff059909e1f9f1','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$393ba7f3-8bfc-444b-bf3f-a1009b57602bsr\0java.util.DatehjÅKYt\0\0xpw\0\0QY.Lx','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0ê\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	clientappsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ali_idt\0zhaoguoqi11t\0\ngrant_typet\0alit\0scopet\0\nread writet\0ali_nickt\0ÊùéÁàΩt\0\nali_avatart\0LISHUANG_AVATARt\0	client_idt\0	clientappxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0*w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0USERxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0restservicexsq\0~\0*w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0ê\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\08ppsr\0com.qimei.common.model.User\0\0\0\0\0\0\0d\0L\0accuracyt\0Ljava/lang/Double;L\0	aliAvatarq\0~\0L\0aliIdq\0~\0L\0aliNickq\0~\0L\0cityq\0~\0L\0countryq\0~\0L\0followsq\0~\0L\0\nheadimgurlq\0~\0L\0languageq\0~\0L\0lastLoginIpq\0~\0L\0\rlastLoginTimet\0Ljava/util/Date;L\0latitudeq\0~\0:L\0likesq\0~\0L\0	longitudeq\0~\0:L\0nicknameq\0~\0L\0openidq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0provinceq\0~\0L\0rolet\0\"Lcom/qimei/common/model/User$Role;L\0sexq\0~\0L\0	subscribet\0Ljava/lang/Integer;L\0\rsubscribeTimet\0Ljava/lang/Long;L\0unionidq\0~\0L\0usernameq\0~\0xr\0!com.qimei.common.model.BaseEntityçRü‘”ÿ6Ω\0L\0\ncreateTimeq\0~\0;L\0idq\0~\0>L\0mapq\0~\0L\0statust\0Lcom/qimei/common/model/Status;xpsr\0java.sql.Timestamp&’»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0PæØ¿x\0\0\0\0sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0p~r\0com.qimei.common.model.Status\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0OKpt\0LISHUANG_AVATARt\0zhaoguoqi11t\0ÊùéÁàΩppsr\0/org.hibernate.collection.internal.PersistentBagFJd\\.ƒ\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionÑJ~wÆç\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Qxp\0ˇˇˇˇ\0\0q\0~\0Gq\0~\0At\0#com.qimei.common.model.User.followsppppppppsq\0~\0O\0ˇˇˇˇ\0\0q\0~\0Gq\0~\0At\0!com.qimei.common.model.User.likesppppppt\0<$2a$10$wx5/lq.HlJ5hp/UY3YjCMO9.Ynim8nLEFF5.ArHgjZ/xwwhGhcBBSpp~r\0 com.qimei.common.model.User$Role\0\0\0\0\0\0\0\0\0\0xq\0~\0It\0	ROLE_USERppppt\0zhaoguoqi11'),('73d11387de7c17c286ceb609b7ea06e9','¨Ì\0sr\0Lorg.springframework.security.oauth2.common.DefaultExpiringOAuth2RefreshToken/ﬂGcù–…∑\0L\0\nexpirationt\0Ljava/util/Date;xr\0Dorg.springframework.security.oauth2.common.DefaultOAuth2RefreshTokens·\ncT‘^\0L\0valuet\0Ljava/lang/String;xpt\0$9e8c67f4-22ec-4b96-aba3-558bf95cbb3esr\0java.util.DatehjÅKYt\0\0xpw\0\0QY.]\"x','¨Ì\0sr\0Aorg.springframework.security.oauth2.provider.OAuth2AuthenticationΩ@bR\0L\0\rstoredRequestt\0<Lorg/springframework/security/oauth2/provider/OAuth2Request;L\0userAuthenticationt\02Lorg/springframework/security/core/Authentication;xr\0Gorg.springframework.security.authentication.AbstractAuthenticationToken”™(~nGd\0Z\0\rauthenticatedL\0authoritiest\0Ljava/util/Collection;L\0detailst\0Ljava/lang/Object;xp\0sr\0&java.util.Collections$UnmodifiableList¸%1µÏé\0L\0listt\0Ljava/util/List;xr\0,java.util.Collections$UnmodifiableCollectionB\0ÄÀ^˜\0L\0cq\0~\0xpsr\0java.util.ArrayListxÅ“ô«aù\0I\0sizexp\0\0\0w\0\0\0sr\0Borg.springframework.security.core.authority.SimpleGrantedAuthority\0\0\0\0\0\0ê\0L\0rolet\0Ljava/lang/String;xpt\0	ROLE_USERxq\0~\0psr\0:org.springframework.security.oauth2.provider.OAuth2Request\0\0\0\0\0\0\0\0Z\0approvedL\0authoritiesq\0~\0L\0\nextensionst\0Ljava/util/Map;L\0redirectUriq\0~\0L\0resourceIdst\0Ljava/util/Set;L\0\rresponseTypesq\0~\0xr\08org.springframework.security.oauth2.provider.BaseRequest6(z>£qiΩ\0L\0clientIdq\0~\0L\0requestParametersq\0~\0L\0scopeq\0~\0xpt\0	clientappsr\0%java.util.Collections$UnmodifiableMapÒ•®˛tıB\0L\0mq\0~\0xpsr\0java.util.HashMap⁄¡√`—\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0ali_idt\0zhaoguoqi112t\0\ngrant_typet\0alit\0scopet\0\nread writet\0ali_nickt\0ÊùéÁàΩt\0\nali_avatart\0LISHUANG_AVATARt\0	client_idt\0	clientappxsr\0%java.util.Collections$UnmodifiableSetÄí—èõÄU\0\0xq\0~\0	sr\0java.util.LinkedHashSetÿl◊Zï›*\0\0xr\0java.util.HashSet∫DÖïñ∏∑4\0\0xpw\0\0\0?@\0\0\0\0\0t\0readt\0writexsq\0~\0*w\0\0\0?@\0\0\0\0\0sq\0~\0\rt\0USERxsq\0~\0?@\0\0\0\0\0\0w\0\0\0\0\0\0\0xpsq\0~\0)w\0\0\0?@\0\0\0\0\0t\0restservicexsq\0~\0*w\0\0\0?@\0\0\0\0\0\0xsr\0Oorg.springframework.security.authentication.UsernamePasswordAuthenticationToken\0\0\0\0\0\0ê\0L\0credentialsq\0~\0L\0	principalq\0~\0xq\0~\0sq\0~\0sq\0~\0\0\0\0w\0\0\0q\0~\0xq\0~\08ppsr\0com.qimei.common.model.User\0\0\0\0\0\0\0d\0L\0accuracyt\0Ljava/lang/Double;L\0	aliAvatarq\0~\0L\0aliIdq\0~\0L\0aliNickq\0~\0L\0cityq\0~\0L\0countryq\0~\0L\0followsq\0~\0L\0\nheadimgurlq\0~\0L\0languageq\0~\0L\0lastLoginIpq\0~\0L\0\rlastLoginTimet\0Ljava/util/Date;L\0latitudeq\0~\0:L\0likesq\0~\0L\0	longitudeq\0~\0:L\0nicknameq\0~\0L\0openidq\0~\0L\0passwordq\0~\0L\0phoneq\0~\0L\0provinceq\0~\0L\0rolet\0\"Lcom/qimei/common/model/User$Role;L\0sexq\0~\0L\0	subscribet\0Ljava/lang/Integer;L\0\rsubscribeTimet\0Ljava/lang/Long;L\0unionidq\0~\0L\0usernameq\0~\0xr\0!com.qimei.common.model.BaseEntityçRü‘”ÿ6Ω\0L\0\ncreateTimeq\0~\0;L\0idq\0~\0>L\0mapq\0~\0L\0statust\0Lcom/qimei/common/model/Status;xpsr\0java.sql.Timestamp&’»Søe\0I\0nanosxr\0java.util.DatehjÅKYt\0\0xpw\0\0PæØìHx\0\0\0\0sr\0java.lang.Long;ã‰êÃè#ﬂ\0J\0valuexr\0java.lang.NumberÜ¨ïî‡ã\0\0xp\0\0\0\0\0\0\0p~r\0com.qimei.common.model.Status\0\0\0\0\0\0\0\0\0\0xr\0java.lang.Enum\0\0\0\0\0\0\0\0\0\0xpt\0OKpt\0LISHUANG_AVATARt\0zhaoguoqi112t\0ÊùéÁàΩppsr\0/org.hibernate.collection.internal.PersistentBagFJd\\.ƒ\0L\0bagq\0~\0xr\0>org.hibernate.collection.internal.AbstractPersistentCollectionÑJ~wÆç\0	Z\0allowLoadOutsideTransactionI\0\ncachedSizeZ\0dirtyZ\0initializedL\0keyt\0Ljava/io/Serializable;L\0ownerq\0~\0L\0roleq\0~\0L\0sessionFactoryUuidq\0~\0L\0storedSnapshotq\0~\0Qxp\0ˇˇˇˇ\0\0q\0~\0Gq\0~\0At\0#com.qimei.common.model.User.followsppppppppsq\0~\0O\0ˇˇˇˇ\0\0q\0~\0Gq\0~\0At\0!com.qimei.common.model.User.likesppppppt\0<$2a$10$vqGbWK4zpPxWtNksLO.dXOYW.2mHT2uzOdNPcWfKMcvNwm.aBIEx6pp~r\0 com.qimei.common.model.User$Role\0\0\0\0\0\0\0\0\0\0xq\0~\0It\0	ROLE_USERppppt\0zhaoguoqi112');
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
  `avatar` varchar(255) DEFAULT NULL COMMENT 'Â§¥ÂÉèÔºåÂ∞èÂõæ',
  `background` varchar(255) DEFAULT NULL COMMENT 'ËÉåÊôØÂ§ßÂõæ',
  `introduction` varchar(255) DEFAULT NULL,
  `top` tinyint(1) DEFAULT '0' COMMENT 'ÊòØÂê¶ÊòØÁΩÆÈ°∂',
  `sort` int(11) DEFAULT NULL COMMENT 'ÊéíÂ∫èÁöÑ',
  `status` varchar(45) DEFAULT 'OK',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='ÊòéÊòüË°®';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_actor`
--

LOCK TABLES `qimei_actor` WRITE;
/*!40000 ALTER TABLE `qimei_actor` DISABLE KEYS */;
INSERT INTO `qimei_actor` VALUES (1,'ÈíüÊ±âËâØ','ÈíüÊ±âËâØ','http://qimei-app.image.alimmdn.com/actor/%E9%92%9F%E6%B1%89%E8%89%AF_1_1.png?t=1444583134000','http://qimei-app.image.alimmdn.com/actor/%E9%92%9F%E6%B1%89%E8%89%AF_16_9.png?t=1444583138000','‰∏≠ÂõΩÈ¶ôÊ∏ØÂΩ±ËßÜÊºîÂëò/Ê≠åÊâã/ËàûËÄÖ',1,1,'OK','2015-10-01 09:19:38'),(2,'ÂîêÂ´£','ÂîêÂ´£','http://qimei-app.image.alimmdn.com/actor/%E5%94%90%E5%AB%A3_1_1.png?t=1444583133000','http://qimei-app.image.alimmdn.com/actor/%E5%94%90%E5%AB%A3_16_9.png?t=1444583133000','‰∏≠ÂõΩ‰∏äÊµ∑Â•≥ÊºîÂëò',1,2,'OK','2015-10-01 09:19:38'),(3,'ÈôàËµ´','ÈôàËµ´','http://qimei-app.image.alimmdn.com/actor/%E9%99%88%E8%B5%AB_1_1.png?t=1444583131000','http://qimei-app.image.alimmdn.com/actor/%E9%99%88%E8%B5%AB_16_9.png?t=1444583132000','‰∏≠ÂõΩÂ§ßÈôÜÁî∑ÊºîÂëò',1,3,'OK','2015-10-01 09:19:39'),(4,'Â®ÑËâ∫ÊΩá','Â®ÑËâ∫ÊΩá','http://qimei-app.image.alimmdn.com/actor/%E5%A8%84%E8%89%BA%E6%BD%87_1_1.png?t=1444583131000','http://qimei-app.image.alimmdn.com/actor/%E5%A8%84%E8%89%BA%E6%BD%87_16_9.png?t=1444583133000','‰∏≠ÂõΩÂ•≥ÊºîÂëò',1,4,'OK','2015-10-01 09:19:39'),(5,'Â≠ôËâ∫Ê¥≤','Â≠ôËâ∫Ê¥≤','http://qimei-app.image.alimmdn.com/actor/%E5%AD%99%E8%89%BA%E6%B4%B2_1_1.png?t=1444583131000','http://qimei-app.image.alimmdn.com/actor/%E5%AD%99%E8%89%BA%E6%B4%B2_16_9.png?t=1444583134000','‰∏äÊµ∑ËØùÂâßËâ∫ÊúØ‰∏≠ÂøÉËØùÂâßÊºîÂëò',1,5,'OK','2015-10-01 09:19:39'),(6,'ÊùéÈáëÈì≠','ÊùéÈáëÈì≠','http://qimei-app.image.alimmdn.com/actor/%E6%9D%8E%E9%87%91%E9%93%AD_1_1.png?t=1444583131000','http://qimei-app.image.alimmdn.com/actor/%E6%9D%8E%E9%87%91%E9%93%AD_16_9.png?t=1444583131000','‰∏≠ÂõΩÂ•≥ÊºîÂëò/‰∏ªÊåÅ‰∫∫',1,6,'OK','2015-10-01 09:19:40'),(7,'Áéã‰º†Âêõ','Áéã‰º†Âêõ','http://qimei-app.image.alimmdn.com/actor/%E7%8E%8B%E4%BC%A0%E5%90%9B_1_1.png?t=1444583133000','http://qimei-app.image.alimmdn.com/actor/%E7%8E%8B%E4%BC%A0%E5%90%9B_16_9.png?t=1444583135000','‰∏≠ÂõΩÁî∑ÊºîÂëò',1,7,'OK','2015-10-11 14:18:31'),(8,'Ë∞≠ÂáØ','Ë∞≠ÂáØ','http://qimei-app.image.alimmdn.com/actor/%E8%B0%AD%E5%87%AF_1_1.png?t=1444583133000','http://qimei-app.image.alimmdn.com/actor/%E8%B0%AD%E5%87%AF_16_9.png?t=1444583137000','‰∏≠ÂõΩÁî∑ÊºîÂëò',1,8,'OK','2015-10-11 14:20:16'),(9,'ËèÖÈüßÂßø','ËèÖÈüßÂßø','http://qimei-app.image.alimmdn.com/actor/%E8%8F%85%E9%9F%A7%E5%A7%BF_1_1.png?t=1444584223000','http://qimei-app.image.alimmdn.com/actor/%E8%8F%85%E9%9F%A7%E5%A7%BF_16_9.jpg?t=1444584223000','‰∏≠ÂõΩÂ•≥ÊºîÂëò',1,9,'OK','2015-10-11 14:26:30'),(10,'ÈÇìÂÆ∂‰Ω≥','ÈÇìÂÆ∂‰Ω≥','http://qimei-app.image.alimmdn.com/actor/%E9%82%93%E5%AE%B6%E4%BD%B3_1_1.png?t=1444583131000','http://qimei-app.image.alimmdn.com/actor/%E9%82%93%E5%AE%B6%E4%BD%B3_16_9.png?t=1444583131000','‰∏≠ÂõΩÂ•≥ÊºîÂëò',1,10,'OK','2015-10-11 15:11:00'),(11,'ÂàòÂæ∑Âçé','ÂàòÂæ∑Âçé',NULL,NULL,NULL,0,NULL,'OK','2015-10-12 13:57:14');
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
  `movie_id` int(11) DEFAULT NULL COMMENT 'Â±û‰∫éÁöÑÂÆû‰Ωìid',
  `actor_id` int(11) DEFAULT NULL COMMENT 'Â±û‰∫éÁöÑÂÆû‰Ωìid',
  `poster_id` int(11) DEFAULT NULL COMMENT 'Â±û‰∫éÁöÑÂÆû‰Ωìid',
  `type` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='ËΩÆÊí≠Âõæ';
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='ÂàÜÈõÜÁöÑË°®';
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
  `status` varchar(45) DEFAULT 'OK' COMMENT 'Áä∂ÊÄÅ',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_follow`
--

LOCK TABLES `qimei_follow` WRITE;
/*!40000 ALTER TABLE `qimei_follow` DISABLE KEYS */;
INSERT INTO `qimei_follow` VALUES (1,1,3,NULL,'ACTOR','OK','2015-10-10 16:12:45'),(2,1,5,NULL,'ACTOR','OK','2015-10-10 16:12:45'),(6,1,NULL,1,'MOVIE','OK','2015-10-10 16:12:45'),(9,2,3,NULL,'ACTOR','OK','2015-10-11 02:33:48'),(10,2,5,NULL,'ACTOR','OK','2015-10-11 02:33:48'),(11,2,NULL,1,'MOVIE','OK','2015-10-11 02:33:48'),(12,2,NULL,2,'MOVIE','OK','2015-10-11 02:33:48'),(15,7,NULL,1,'MOVIE','OK','2015-10-13 01:49:02'),(16,7,NULL,2,'MOVIE','OK','2015-10-13 01:49:13'),(17,7,3,NULL,'ACTOR','OK','2015-10-13 01:49:15'),(21,11,11,NULL,'ACTOR','OK','2015-10-13 02:57:55'),(43,16,4,NULL,'ACTOR','OK','2015-10-17 16:37:13'),(50,16,6,NULL,'ACTOR','OK','2015-10-20 11:49:10'),(61,16,NULL,2,'MOVIE','OK','2015-10-20 12:44:17'),(62,16,NULL,1,'MOVIE','OK','2015-10-20 12:49:43'),(63,16,8,NULL,'ACTOR','OK','2015-10-20 12:49:51'),(64,16,9,NULL,'ACTOR','OK','2015-10-20 12:49:52'),(67,17,1,NULL,'ACTOR','OK','2015-10-26 01:22:04'),(69,17,2,NULL,'ACTOR','OK','2015-10-26 01:23:34'),(71,17,NULL,1,'MOVIE','OK','2015-10-26 01:46:50'),(72,17,NULL,2,'MOVIE','OK','2015-10-26 01:47:06'),(76,16,3,NULL,'ACTOR','OK','2015-10-26 03:34:56'),(82,16,7,NULL,'ACTOR','OK','2015-10-26 05:56:02'),(85,16,1,NULL,'ACTOR','OK','2015-10-26 06:13:32');
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
  `status` varchar(45) DEFAULT 'OK' COMMENT 'Áä∂ÊÄÅ',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_like`
--

LOCK TABLES `qimei_like` WRITE;
/*!40000 ALTER TABLE `qimei_like` DISABLE KEYS */;
INSERT INTO `qimei_like` VALUES (1,1,1,'OK','2015-10-02 03:08:48'),(2,2,1,'OK','2015-10-02 03:08:48'),(3,13,1,'OK','2015-10-02 03:08:48'),(22,1,2,'OK','2015-10-12 06:53:40'),(23,1,3,'OK','2015-10-12 07:33:04'),(26,1,18,'OK','2015-10-24 08:41:14'),(29,3,17,'OK','2015-10-26 01:53:39'),(30,1,17,'OK','2015-10-26 01:54:07'),(31,4,17,'OK','2015-10-26 01:53:01'),(35,22,17,'OK','2015-10-26 01:59:42'),(41,24,17,'OK','2015-10-26 02:12:42'),(42,24,18,'OK','2015-10-26 02:27:00'),(43,22,18,'OK','2015-10-26 02:28:17'),(49,6,16,'OK','2015-10-26 06:06:11'),(58,21,16,'OK','2015-10-26 06:48:41'),(65,4,16,'OK','2015-10-26 06:49:39'),(71,2,16,'OK','2015-10-26 06:52:20'),(74,19,16,'OK','2015-10-26 06:55:01');
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
  `status` varchar(45) DEFAULT 'OK' COMMENT 'Áä∂ÊÄÅ',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='ÊºîÂëòÂíåÂΩ±ËßÜÁöÑÂ§öÂØπÂ§öÂÖ≥Á≥ªË°®';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_link_actor_movie`
--

LOCK TABLES `qimei_link_actor_movie` WRITE;
/*!40000 ALTER TABLE `qimei_link_actor_movie` DISABLE KEYS */;
INSERT INTO `qimei_link_actor_movie` VALUES (1,1,1,'‰Ωï‰ª•Áêõ','OK','2015-10-01 10:21:07'),(2,2,1,'ËµµÈªòÁ¨ô','OK','2015-10-01 10:21:07'),(3,3,2,'ÊõæÂ∞èË¥§','OK','2015-10-01 10:21:07'),(4,4,2,'ËÉ°‰∏ÄËè≤','OK','2015-10-01 10:21:07'),(5,5,2,'ÂêïÂ≠ê‰πî','OK','2015-10-01 10:21:07'),(6,6,2,'ÈôàÁæéÂòâ','OK','2015-10-01 10:21:08'),(7,7,2,'ÂÖ≥Ë∞∑‰º†Â•á','OK','2015-10-01 12:18:45'),(8,8,1,'Ë∞≠ÂáØ','OK','2015-10-01 12:18:45'),(9,9,1,'ËèÖÈüßÂßø','OK','2015-10-01 12:18:45'),(10,10,2,'ÂîêÊÇ†ÊÇ†','OK','2015-10-02 13:36:00');
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
  `status` varchar(45) DEFAULT 'OK' COMMENT 'Áä∂ÊÄÅ',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='ÊºîÂëòÂíåÂâßÁÖßÊàñÊà™ÂõæÁöÑÂ§öÂØπÂ§öÂÖ≥Á≥ªË°®';
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
  `sort` int(11) DEFAULT NULL COMMENT 'ÊéíÂ∫èÁöÑ',
  `top` tinyint(1) DEFAULT NULL COMMENT 'ÊòØÂê¶ÊòØÁΩÆÈ°∂',
  `avatar` varchar(255) DEFAULT NULL COMMENT '1:1',
  `background1` varchar(255) DEFAULT NULL COMMENT '16:9',
  `background2` varchar(255) DEFAULT NULL COMMENT '7:10',
  `introduction` varchar(255) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT 'ÁîµÂΩ±ÔºåËøûÁª≠ÂâßÔºåËØùÂâßÁ≠âÁ±ªÂà´',
  `tag` varchar(255) DEFAULT NULL COMMENT 'ÊÇ¨ÁñëÔºå‰æ¶Êé¢ÔºåÁà±ÊÉÖÁ≠â',
  `director` varchar(45) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `release_time` timestamp NULL DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK' COMMENT 'Áä∂ÊÄÅ',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_movie`
--

LOCK TABLES `qimei_movie` WRITE;
/*!40000 ALTER TABLE `qimei_movie` DISABLE KEYS */;
INSERT INTO `qimei_movie` VALUES (1,'‰Ωï‰ª•Á¨ôÁÆ´Èªò','‰Ωï‰ª•Á¨ôÁÆ´Èªò','ÈíüÊ±âËâØÂîêÂ´£ÁúüÁà±‰∏çË¥•',1,1,'http://qimei-app.image.alimmdn.com/movie/hysxm.png?t=1444572299000','http://qimei-app.image.alimmdn.com/movie/hysxm_cover3.png?t=1444571917000','http://qimei-app.image.alimmdn.com/movie/hysxm7_10.png?t=1444572374000','Â§ßÂ≠¶Êó∂‰ª£ÁöÑËµµÈªòÁ¨ôÔºåÂØπCÂ§ßÊ≥ïÂ≠¶Á≥ªÂ§ßÊâçÂ≠ê‰Ωï‰ª•Áêõ‰∏ÄËßÅÂÄæÂøÉÔºåÂºÄÊúóÁõ¥ÁéáÁöÑÂ•π‚ÄúÊ≠ªÁº†ÁÉÇÊâì‚ÄùÂú∞ÂÄíËøΩÔºå‰∏é‰ºó‰∏çÂêåÁöÑÊñπÂºèÂê∏Âºï‰∫Ü‰ª•ÁêõÁöÑÁõÆÂÖâÔºå‰∏ÄÊÆµÁ∫ØÁ∫ØÁöÑÊ†°Âõ≠Áà±ÊÉÖÊÇÑÊÇÑÊªãÁîü„ÄÇÁÑ∂ËÄåÔºå‰ª•ÁêõÂØÑÂÖªÂÆ∂Â∫≠ÁöÑÂ¶πÂ¶π‰ª•Áé´ÔºåÈºìËµ∑ÂãáÊ∞îÂêëÈªòÁ¨ôÂÆ£Êàò„ÄÇÂΩìÈªòÁ¨ôÂéªÊâæ‰ª•ÁêõËØÅÂÆûÔºåÊ≤°ÊÉ≥Âà∞Á´üÁÑ∂ÂæóÂà∞‰ª•ÁêõÂÜ∑ÈÖ∑ÁöÑÂõûÂ∫î„ÄÇËØØ‰ª•‰∏∫‰ª•ÁêõÂíå‰ª•Áé´Âú®‰∏ÄËµ∑ÁöÑÈªòÁ¨ôÔºåËêΩÂØûÂú∞Êúç‰ªéÁà∂‰∫≤ÁöÑÂÆâÊéíÔºåÂâçÂæÄÁæéÂõΩÊ∑±ÈÄ†„ÄÇ‰∏ÉÂπ¥ÂêéÔºåÊàê‰∏∫ÊëÑÂΩ±Â∏àÁöÑÈªòÁ¨ôÂõûÊù•‰∫ÜÔºåÂÜçÊ¨°ÈÅáÂà∞ÈÇ£‰∏™Êó†Ê≥ïÂøòÂç¥ÁöÑÁî∑‰∫∫„ÄÇËøôÂØπÂàÜÊâã‰∏ÉÂπ¥ÁöÑÁà±‰∫∫ÔºåÊ®™Âú®‰ªñ‰ª¨‰∏≠','TELEPLAY','ÂÅ∂ÂÉèÂâß/Ë®ÄÊÉÖÂâß/ÈùíÊò•Ââß','Âàò‰øäÊù∞','ÂÜÖÂú∞',NULL,'OK','2015-10-01 08:32:31'),(2,'Áà±ÊÉÖÂÖ¨ÂØì','Áà±ÊÉÖÂÖ¨ÂØì',NULL,2,1,'http://qimei-app.image.alimmdn.com/movie/1-150314143R4.png?t=1444572570000','http://qimei-app.image.alimmdn.com/movie/aygy_cover3.png?t=1444571917000','http://qimei-app.image.alimmdn.com/movie/aqgy4.png?t=1444572337000','Â∞èË¥§Âíå‰∏ÄËè≤ÁöÑ‰∫ã‰∏öÈÉΩÂºÄÂßãËµ∞‰∏äÊ≠£ËΩ®Ôºå‰ΩÜ‰∫íÁõ∏‰πãÈó¥ÁöÑÊÑüÊÉÖ‰æùÁÑ∂Á£ïÁ£ïÁªäÁªä„ÄÇËÄåÂ≠ê‰πîÂíåÁæéÂòâ‰πãÈó¥ËôΩÁÑ∂ÂÅöÂõû‰∫ÜÁî∑Â•≥ÊúãÂèãÔºå‰ΩÜÂêïÂ≠ê‰πîÁöÑËä±ÂøÉÊú¨ÊÄß‰∏çÊîπ‰πüÁùÄÂÆûËÆ©ÁæéÂòâÂ§¥Áñº„ÄÇÂÖ≥Ë∞∑ÁöÑ‰∫ã‰∏öËí∏Ëí∏Êó•‰∏äÔºå‰ΩÜÊòØÂíåÊÇ†ÊÇ†‰πãÈó¥‰πüËøòÊòØÂÅ∂ÊúâÂ´åÈöô„ÄÇÂ±ïÂçöÂØπ‰∫éÂÆõÁëú‰æùÊóßÈöæ‰ª•ÂøòÊÄÄÔºå‰ΩÜ‰πüÈáçÊñ∞ÂºÄÂßãÂØªÊâæÊñ∞ÁöÑ‰º¥‰æ£„ÄÇÂ§ßÂÆ∂Âú®Áà±ÊÉÖÂÖ¨ÂØì‰∏ÄËµ∑ÁªèËøá‰∫ÜÈÇ£‰πàÂ§öÂπ¥ÔºåÈÇ£‰πàÂ§ö‰∫ãÔºåÊØè‰∏Ä‰∏™‰∫∫ÈÉΩÂºÄÂßãÊ∏êÊ∏êÊòéÁôΩËá™Â∑±ÁöÑÁîüÊ¥ªÊñπÂêëÂíåÂΩºÊ≠§Âú®Ëá™Â∑±ÂøÉ‰∏≠ÁöÑ‰ΩçÁΩÆ„ÄÇ‰∏ç‰ªÖ‰ªÖÊúâÁõ∏‰∫í‰πãÈó¥ÁöÑË∞É‰æÉ„ÄÅÊàèË∞ë„ÄÅÊçâÂºÑÔºå‰πüÊõ¥Â§ö‰∫Ü‰ªΩÁõ∏‰∫íÈºìÂä±„ÄÇ','TELEPLAY','ÂÅ∂ÂÉè/ÈÉΩÂ∏Ç/Ë®ÄÊÉÖ','Èü¶Ê≠£','ÂÜÖÂú∞',NULL,'OK','2015-10-03 08:32:31'),(3,'Â§¥ËÑëÁâπÂ∑•Èòü','Â§¥ËÑëÁâπÂ∑•Èòü',NULL,3,1,NULL,NULL,'http://qimei-app.image.alimmdn.com/movie/movie1.jpg?t=1444571706000',NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-11 13:49:41'),(4,'Ê∏ØÂõß','Ê∏ØÂõß',NULL,4,1,NULL,NULL,'http://qimei-app.image.alimmdn.com/movie/movie2.jpg?t=1444571706000',NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-11 13:50:27'),(5,'ÂÉèÁ¥†Â§ßÊàò','ÂÉèÁ¥†Â§ßÊàò',NULL,5,1,NULL,NULL,'http://qimei-app.image.alimmdn.com/movie/movie3.jpg?t=1444571706000',NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-11 13:51:01');
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
  `name` varchar(45) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL COMMENT '1:1',
  `image1` varchar(255) DEFAULT NULL COMMENT '16:9',
  `image2` varchar(255) DEFAULT NULL COMMENT '17:10',
  `episode_id` int(10) DEFAULT NULL COMMENT 'Â§öÂØπ‰∏ÄÁöÑÂΩ±ËßÜÂâßÊù•Ê∫ê',
  `movie_id` int(11) DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL COMMENT 'ÊòØÂê¶ÊòØÁΩÆÈ°∂',
  `sort` int(11) DEFAULT NULL COMMENT 'ÊéíÂ∫èÁöÑ',
  `frame` int(10) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'OK' COMMENT 'Áä∂ÊÄÅ',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='ÂâßÁÖß';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_poster`
--

LOCK TABLES `qimei_poster` WRITE;
/*!40000 ALTER TABLE `qimei_poster` DISABLE KEYS */;
INSERT INTO `qimei_poster` VALUES (1,NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/5.png?t=1444645579000',NULL,NULL,1,1,0,NULL,1390,'OK','2015-10-01 12:35:01'),(2,NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/8.png?t=1444645580000',NULL,NULL,5,1,0,NULL,1387,'OK','2015-10-01 13:21:57'),(3,NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/7.png?t=1444645579000',NULL,NULL,5,1,0,NULL,385,'OK','2015-10-03 05:21:35'),(4,'‰Ωï‰ª•Á¨ôËêßÈªò','http://qimei-app.image.alimmdn.com/poster/hysxm/12.png?t=1444645581000','http://qimei-app.image.alimmdn.com/movie/hysxm/1.png?t=1444577533000',NULL,1,1,1,1,1322,'OK','2015-10-06 13:31:28'),(5,'‰Ωï‰ª•Á¨ôËêßÈªò','http://qimei-app.image.alimmdn.com/poster/hysxm/1.png?t=1444645579000',NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/2.png?t=1444577577000',6,1,1,2,1405,'OK','2015-10-06 13:32:23'),(6,NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/6.png?t=1444645581000',NULL,NULL,5,1,0,NULL,46,'OK','2015-10-09 12:32:35'),(7,NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/3_1.png?t=1444645579000',NULL,NULL,1,1,0,NULL,2450,'OK','2015-10-11 02:38:50'),(8,NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/4_1.png?t=1444645582000',NULL,NULL,1,1,0,NULL,362,'OK','2015-10-11 05:46:16'),(9,NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/11.png?t=1444645581000',NULL,NULL,8,1,0,NULL,2152,'OK','2015-10-11 05:46:16'),(10,NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/10.png?t=1444645579000',NULL,NULL,8,1,0,NULL,1195,'OK','2015-10-11 05:46:16'),(11,NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/9.png?t=1444645581000',NULL,NULL,6,1,0,NULL,1211,'OK','2015-10-11 05:46:16'),(12,NULL,'http://qimei-app.image.alimmdn.com/poster/hysxm/2_1.png?t=1444645579000',NULL,NULL,1,1,0,NULL,1419,'OK','2015-10-11 05:46:16'),(13,'Áà±ÊÉÖÂÖ¨ÂØì4','http://qimei-app.image.alimmdn.com/poster/aqgy4/1.png?t=1444645147000','http://qimei-app.image.alimmdn.com/poster/aqgy4/4.png?t=1444577635000',NULL,13,2,1,3,12,'OK','2015-10-11 15:28:13'),(14,'Áà±ÊÉÖÂÖ¨ÂØì4','http://qimei-app.image.alimmdn.com/poster/aqgy4/3_1.png?t=1444645242000','http://qimei-app.image.alimmdn.com/poster/aqgy4/3.png?t=1444577635000',NULL,13,2,1,4,1766,'OK','2015-10-11 15:35:14'),(15,NULL,'http://qimei-app.image.alimmdn.com/poster/aqgy4/11.png?t=1444645146000',NULL,NULL,15,2,0,NULL,1397,'OK','2015-10-11 15:36:04'),(16,NULL,'http://qimei-app.image.alimmdn.com/poster/aqgy4/12.png?t=1444645149000',NULL,NULL,15,2,0,NULL,1816,'OK','2015-10-11 15:36:11'),(17,NULL,'http://qimei-app.image.alimmdn.com/poster/aqgy4/6.png?t=1444645147000',NULL,NULL,14,2,0,NULL,979,'OK','2015-10-11 15:36:30'),(18,NULL,'http://qimei-app.image.alimmdn.com/poster/aqgy4/8.png?t=1444645146000',NULL,NULL,15,2,0,NULL,62,'OK','2015-10-11 15:36:40'),(19,NULL,'http://qimei-app.image.alimmdn.com/poster/aqgy4/5.png?t=1444645146000',NULL,NULL,14,2,0,NULL,658,'OK','2015-10-11 15:36:51'),(20,NULL,'http://qimei-app.image.alimmdn.com/poster/aqgy4/4_1.png?t=1444645242000',NULL,NULL,13,2,0,NULL,2242,'OK','2015-10-11 15:37:01'),(21,NULL,'http://qimei-app.image.alimmdn.com/poster/aqgy4/10.png?t=1444645146000',NULL,NULL,15,2,0,NULL,867,'OK','2015-10-11 15:37:12'),(22,NULL,'http://qimei-app.image.alimmdn.com/poster/aqgy4/7.png?t=1444645146000',NULL,NULL,14,2,0,NULL,1672,'OK','2015-10-11 15:37:20'),(23,NULL,'http://qimei-app.image.alimmdn.com/poster/aqgy4/9.png?t=1444645147000',NULL,NULL,15,2,0,NULL,416,'OK','2015-10-11 15:37:27'),(24,NULL,'http://qimei-app.image.alimmdn.com/poster/aqgy4/2.png?t=1444645146000',NULL,NULL,13,2,0,NULL,417,'OK','2015-10-11 15:37:42');
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
  `type` varchar(45) DEFAULT NULL COMMENT 'Ë°£ÊúçÔºåÈûãÂ≠êÔºåÁ≠âÁ±ªÂûã',
  `link` varchar(255) CHARACTER SET latin1 DEFAULT NULL COMMENT 'ÈìæÊé•',
  `status` varchar(45) DEFAULT 'OK' COMMENT 'Áä∂ÊÄÅ',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `taobao_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='ËøôÊòØ‰∏Ä‰∏™ÂèØ‰ª•ÁÇπÂáªÁöÑËß¶ÊéßÁÇπ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_touch`
--

LOCK TABLES `qimei_touch` WRITE;
/*!40000 ALTER TABLE `qimei_touch` DISABLE KEYS */;
INSERT INTO `qimei_touch` VALUES (1,5,0.584,0.483,'Ë°£Êúç','http://item.taobao.com/item.htm?id=44108362215','OK','2015-10-01 12:34:32','44108362215'),(2,7,0.53,0.409,'Ë°£Êúç','http://item.taobao.com/item.htm?id=43864283206','OK','2015-10-03 12:17:53','43864283206'),(3,8,0.106,0.399,'Ë°£Êúç','https://item.taobao.com/item.htm?id=43542224126','OK','2015-10-11 06:17:03','43542224126'),(4,1,0.592,0.308,'Ë°£Êúç','http://item.taobao.com/item.htm?id=43583464736','OK','2015-10-11 06:17:03','43583464736'),(5,4,0.284,0.362,'Ë°£Êúç','http://item.taobao.com/item.htm?id=43736270498','OK','2015-10-11 06:17:03','43736270498'),(6,6,0.397,0.51,'Ë°£Êúç','https://item.taobao.com/item.htm?id=43935631335','OK','2015-10-11 06:17:03','43935631335'),(7,3,0.441,0.472,'Ë°£Êúç','http://item.taobao.com/item.htm?id=44516110533','OK','2015-10-11 06:17:03','44516110533'),(8,2,0.256,0.479,'Ë°£Êúç','https://item.taobao.com/item.htm?id=45480691402','OK','2015-10-11 06:17:03','45480691402'),(9,11,0.578,0.442,'Ë°£Êúç','https://item.taobao.com/item.htm?id=520970157132','OK','2015-10-11 06:17:03','520970157132'),(10,10,0.24,0.416,'Ë°£Êúç','http://item.taobao.com/item.htm?id=44796045486','OK','2015-10-11 06:17:03','44796045486'),(11,9,0.068,0.46,'Ë°£Êúç','https://item.taobao.com/item.htm?id=41808363531','OK','2015-10-11 06:17:03','41808363531'),(12,12,0.331,0.577,'Ë°£Êúç','http://item.taobao.com/item.htm?id=43926362802','OK','2015-10-11 06:17:03','43926362802'),(13,13,NULL,NULL,'Ë°£Êúç','http://item.taobao.com/item.htm?id=37104187209','OK','2015-10-11 15:27:53','37104187209'),(14,14,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=36505118888','OK','2015-10-11 15:27:57','36505118888'),(15,20,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=41134960458','OK','2015-10-11 15:28:00','41134960458'),(16,24,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=37218382450','OK','2015-10-11 15:28:02','37218382450'),(17,15,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=38137358119','OK','2015-10-11 16:11:36','38137358119'),(18,19,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=520787684901','OK','2015-10-11 16:16:13','520787684901'),(19,22,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=38148897927','OK','2015-10-11 16:21:40','38148897927'),(20,23,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=37218382450','OK','2015-10-11 16:25:23','37218382450'),(21,21,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=42143030848','OK','2015-10-11 16:31:19','42143030848'),(22,18,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=41257056687','OK','2015-10-11 16:31:25','41257056687'),(23,17,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=520909616456','OK','2015-10-11 16:31:27','520909616456'),(24,16,NULL,NULL,'Ë°£Êúç','https://item.taobao.com/item.htm?id=38163644847','OK','2015-10-11 16:31:28','38163644847');
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
  `ali_id` varchar(45) DEFAULT NULL COMMENT 'ÈòøÈáåÁöÑÁî®Êà∑ÂîØ‰∏ÄÊ†áËØÜ',
  `ali_nick` varchar(45) DEFAULT NULL COMMENT 'ÈòøÈáåÁî®Êà∑ÁöÑÊòµÁß∞',
  `ali_avatar` varchar(255) DEFAULT NULL COMMENT 'ÈòøÈáåÁî®Êà∑ÁöÑÂ§¥ÂÉè',
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(45) DEFAULT 'ROLE_USER',
  `phone` varchar(45) DEFAULT NULL,
  `openid` varchar(255) DEFAULT NULL COMMENT 'ÂæÆ‰ø°ÁöÑopenIdÂè∑„ÄÇ',
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `subscribe` int(10) DEFAULT NULL COMMENT 'ÊòØÂê¶ËÆ¢ÈòÖ',
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
  `accuracy` double DEFAULT NULL COMMENT 'Âú∞ÁêÜ‰ΩçÁΩÆÁªèÂ∫¶(precision Hibernate‰ºöËé´ÂêçÊä•Èîô)',
  `status` varchar(45) DEFAULT 'OK' COMMENT 'Áä∂ÊÄÅ',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `openid_UNIQUE` (`openid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='Áî®Êà∑Ë°®ÊèèËø∞';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qimei_user`
--

LOCK TABLES `qimei_user` WRITE;
/*!40000 ALTER TABLE `qimei_user` DISABLE KEYS */;
INSERT INTO `qimei_user` VALUES (1,'admin',NULL,NULL,'admin','$2a$10$4ONqBZdBwiIY52RBd11wn.59Y1s5MKm3OFnGJ34kUFQ1eRLU.RqnS','ROLE_ADMIN','123',NULL,NULL,NULL,NULL,'admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-02 03:07:53'),(2,NULL,NULL,NULL,'lishuang','$2a$10$4ONqBZdBwiIY52RBd11wn.59Y1s5MKm3OFnGJ34kUFQ1eRLU.RqnS','ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-11 03:42:45'),(3,'lishuang','ÊùéÁàΩ','LISHUANG_AVATAR',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-12 04:41:08'),(4,'zhaoguoqi','ÊùéÁàΩ','LISHUANG_AVATAR',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-12 06:11:27'),(7,'huang','huang','AVATAR',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-12 16:19:51'),(11,'zqin','Ë¶ÉÂÖÜÂù§','zqin',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-13 02:57:49'),(15,'AAFBInUHAB_gNTmsVz_-zCRK','p**n','http://wwc.taobaocdn.com/avatar/getAvatar.do?userNick=AAFBInUHAB_gNTmsVz_-zCRK&width=160&height=160&type=open&appKey=23179282',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-13 05:57:29'),(16,'AAGRInUHAB_gNTmsVz_-mkGv','h**2','http://wwc.taobaocdn.com/avatar/getAvatar.do?userNick=AAGRInUHAB_gNTmsVz_-mkGv&width=160&height=160&type=open&appKey=23179282',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-17 08:08:27'),(17,'AAEDInUHAB_gNTmsVz_tjiVa','Ëµµ**k','http://wwc.taobaocdn.com/avatar/getAvatar.do?userNick=AAEDInUHAB_gNTmsVz_tjiVa&width=160&height=160&type=open&appKey=23179282',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-17 08:23:37'),(18,'000','zqin','/usr/img',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-24 08:33:13'),(19,'ddd','zqin','/usr/img',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-31 14:43:49'),(20,'fg','ghh','/usr/imggg',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-31 14:44:04'),(21,'gushi','ghh','/usr/imggg',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-31 16:15:52'),(22,'weibo','ghh','/usr/imggg',NULL,NULL,'ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-31 16:16:04'),(23,'zhaoguoqi11','ÊùéÁàΩ','LISHUANG_AVATAR','zhaoguoqi11','$2a$10$wx5/lq.HlJ5hp/UY3YjCMO9.Ynim8nLEFF5.ArHgjZ/xwwhGhcBBS','ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-31 16:16:24'),(24,'zhaoguoqi112','ÊùéÁàΩ','LISHUANG_AVATAR','zhaoguoqi112','$2a$10$vqGbWK4zpPxWtNksLO.dXOYW.2mHT2uzOdNPcWfKMcvNwm.aBIEx6','ROLE_USER',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'OK','2015-10-31 16:16:29');
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

-- Dump completed on 2015-11-01  0:17:43
