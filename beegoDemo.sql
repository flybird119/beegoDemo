CREATE DATABASE  IF NOT EXISTS `shop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `shop`;
-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (i686)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `ecs_users`
--

DROP TABLE IF EXISTS `ecs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_users`
--

LOCK TABLES `ecs_users` WRITE;
/*!40000 ALTER TABLE `ecs_users` DISABLE KEYS */;
INSERT INTO `ecs_users` VALUES (1,'ces@qq.com','ces111','554fcae493e564ee0dc75bdf2ebf94ca','','',0,'1960-03-03',0.00,0.00,98388,15390,1,0,1245048540,'0000-00-00 00:00:00','0.0.0.0',11,0,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL),(2,'vip@ecshop.com','vip','232059cb5361a9336ccf1b8c2ba7657a','','',0,'1949-01-01',0.00,0.00,0,0,0,0,0,'0000-00-00 00:00:00','',0,0,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL),(3,'text@ecshop.com','text','1cb251ec0d568de6a929b520c4aed8d1','','',0,'1949-01-01',0.00,0.00,0,0,2,0,1242973574,'0000-00-00 00:00:00','0.0.0.0',2,0,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL),(5,'zuanshi@ecshop.com','zuanshi','815a71fb334412e7ba4595741c5a111d','','',0,'1949-01-01',0.00,10000.00,0,0,0,0,0,'0000-00-00 00:00:00','',0,3,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL),(6,'983041673@qq.com','shuye','8b39335faac7ccdd025459f7cbde2ea7','','',0,'1962-01-01',0.00,0.00,0,0,3,1424318127,1425365427,'0000-00-00 00:00:00','127.0.0.1',18,0,0,'1876','0',0,0,'','983041673@qq.com','983041673','983041673','983041673','983041673',0,0.00,'motto','983041673'),(7,'dfaf@qq.com','su','','','',0,'0000-00-00',0.00,0.00,0,0,0,0,0,'0000-00-00 00:00:00','',0,0,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL),(8,'admin@qq.com','admin','','','',0,'0000-00-00',0.00,0.00,0,0,0,0,0,'0000-00-00 00:00:00','',0,0,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL),(9,'yefatboy@gmail.com','法撒旦分','','','',0,'0000-00-00',0.00,0.00,0,0,0,0,0,'0000-00-00 00:00:00','',0,0,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL),(10,'admin@qq.com','11','','','',0,'0000-00-00',0.00,0.00,0,0,0,0,0,'0000-00-00 00:00:00','',0,0,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL),(11,'ces@qq.com','super','','','',0,'0000-00-00',0.00,0.00,0,0,0,0,0,'0000-00-00 00:00:00','',0,0,0,NULL,'0',0,0,'','','','','','',0,0.00,NULL,NULL);
/*!40000 ALTER TABLE `ecs_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-03-15 18:45:05
