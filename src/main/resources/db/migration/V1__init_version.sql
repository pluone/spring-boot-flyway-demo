-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: local
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `t_eve`
--

DROP TABLE IF EXISTS `t_eve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_eve` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(45) NOT NULL,
  `fileDate` char(8) NOT NULL,
  `acqCode` char(11) NOT NULL COMMENT '受理方标识码',
  `seqNo` char(6) NOT NULL COMMENT '系统跟踪号',
  `cendt` char(10) NOT NULL COMMENT '交易传输时间',
  `cardNbr` char(19) NOT NULL COMMENT '主账号',
  `amount` decimal(12,2) NOT NULL COMMENT '交易金额',
  `crFlag` char(1) NOT NULL COMMENT '交易金额符号',
  `msgType` char(4) NOT NULL COMMENT '消息类型',
  `procCode` char(6) NOT NULL COMMENT '交易类型码',
  `merType` char(4) NOT NULL COMMENT '商户类型',
  `term` char(8) NOT NULL COMMENT '受卡机终端标识码',
  `retSeqNo` char(12) NOT NULL COMMENT '检索参考号',
  `conMode` char(2) NOT NULL COMMENT '服务点条件码',
  `autResp` char(6) NOT NULL COMMENT '授权应答码',
  `forCode` char(11) NOT NULL COMMENT '发送方标识码',
  `clrDate` char(4) NOT NULL COMMENT '清算日期',
  `oldSeqNo` char(6) NOT NULL COMMENT '原始交易的系统跟踪号',
  `openBrNo` char(6) NOT NULL COMMENT '发卡网点号',
  `tranBrNo` char(6) NOT NULL COMMENT '交易网点',
  `erVind` char(1) NOT NULL COMMENT '冲正、撤销标志',
  `transType` char(4) NOT NULL COMMENT '主机交易类型',
  PRIMARY KEY (`id`),
  KEY `index_fileDate` (`fileDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_redis_key`
--

DROP TABLE IF EXISTS `t_redis_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_redis_key` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `redis_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `redis_key_UNIQUE` (`redis_key`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'local'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13 22:10:05
