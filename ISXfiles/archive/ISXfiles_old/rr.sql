-- MySQL dump 10.13  Distrib 5.1.41, for Win32 (ia32)
--
-- Host: localhost    Database: relregister
-- ------------------------------------------------------
-- Server version	5.1.41

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
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register` (
  `iseappname` varchar(30) NOT NULL,
  `instancename` varchar(30) NOT NULL,
  `instanceversion` varchar(25) NOT NULL,
  `timestamp` date NOT NULL,
  `instanceNode` varchar(20) NOT NULL,
  KEY `instancename` (`instancename`,`instanceversion`),
  KEY `iseappname` (`iseappname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES ('iors_dca','iors_bsi_dca_01','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_02','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_03','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_04','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_05','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_06','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_07','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_08','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_09','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_10','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_11','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_12','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_13','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_14','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_15','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_01','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_02','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_03','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_04','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_05','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_06','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_07','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_08','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_09','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_10','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_11','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_12','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_13','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_14','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_15','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_16','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_17','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_18','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_19','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_20','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_21','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_22','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_23','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_24','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_25','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_26','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_27','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_28','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_29','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_30','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_gct','iors_gct_ora','1.2.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02a_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02a_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02b_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02b_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02c_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02c_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02d_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02d_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02e_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02e_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02f_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02f_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02g_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02g_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02h_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02h_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_ldc','iors_ldc','6.0.2.0','2013-12-09','PC-BSI02E \r'),('iors_moe','iors_moe','3.28.1.0','2013-12-09','PC-BSI02E \r'),('occtr','OCCTR_01p','2.1.3.0','2013-12-09','PC-TR01 \r'),('occtr','OCCTR_01s','2.1.3.0','2013-12-10','PC-TR01 \r'),('occtr','OCCTR_51p','2.1.3.0','2013-12-10','PC-TR01 \r'),('occtr','OCCTR_51s','2.1.3.0','2013-12-10','PC-TR01 \r'),('ttuc','TTUC','2.1.0.0','2013-12-09','PC-TR01 \r'),('ttuc','TTUC_Gemini','2.1.0.0','2013-12-09','PC-TR01 \r'),('occtr','OCCTR_01p','2.1.3.0','2013-12-10','PC-TR02 \r'),('occtr','OCCTR_01s','2.1.3.0','2013-12-10','PC-TR02 \r'),('occtr','OCCTR_51p','2.1.3.0','2013-12-10','PC-TR02 \r'),('occtr','OCCTR_51s','2.1.3.0','2013-12-10','PC-TR02 \r'),('ttuc','TTUC','2.1.0.0','2013-12-10','PC-TR02 \r'),('ttuc','TTUC_Gemini','2.1.0.0','2013-12-10','PC-TR02 \r');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_temp`
--

DROP TABLE IF EXISTS `register_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register_temp` (
  `iseappname` varchar(30) NOT NULL,
  `instancename` varchar(30) NOT NULL,
  `instanceversion` varchar(25) NOT NULL,
  `timestamp` date NOT NULL,
  `instanceNode` varchar(20) NOT NULL,
  KEY `instancename` (`instancename`,`instanceversion`),
  KEY `iseappname` (`iseappname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_temp`
--

LOCK TABLES `register_temp` WRITE;
/*!40000 ALTER TABLE `register_temp` DISABLE KEYS */;
INSERT INTO `register_temp` VALUES ('iors_dca','iors_bsi_dca_01','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_02','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_03','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_04','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_05','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_06','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_07','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_08','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_09','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_10','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_11','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_12','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_13','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_14','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_dca','iors_bsi_dca_15','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_01','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_02','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_03','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_04','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_05','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_06','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_07','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_08','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_09','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_10','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_11','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_12','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_13','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_14','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_15','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_16','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_17','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_18','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_19','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_20','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_21','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_22','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_23','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_24','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_25','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_26','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_27','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_28','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_29','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_ora','iors_bsi_ora_30','3.28.1.0','2013-12-09','PC-BSI02E \r'),('iors_gct','iors_gct_ora','1.2.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02a_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02a_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02b_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02b_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02c_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02c_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02d_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02d_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02e_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02e_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02f_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02f_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02g_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02g_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02h_p','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_irc','iors_irc_bsi02h_s','3.28.0.0','2013-12-09','PC-BSI02E \r'),('iors_ldc','iors_ldc','6.0.2.0','2013-12-09','PC-BSI02E \r'),('iors_moe','iors_moe','3.28.1.0','2013-12-09','PC-BSI02E \r'),('occtr','OCCTR_01p','2.1.3.0','2013-12-09','PC-TR01 \r'),('occtr','OCCTR_01s','2.1.3.0','2013-12-10','PC-TR01 \r'),('occtr','OCCTR_51p','2.1.3.0','2013-12-10','PC-TR01 \r'),('occtr','OCCTR_51s','2.1.3.0','2013-12-10','PC-TR01 \r'),('ttuc','TTUC','2.1.0.0','2013-12-09','PC-TR01 \r'),('ttuc','TTUC_Gemini','2.1.0.0','2013-12-09','PC-TR01 \r'),('occtr','OCCTR_01p','2.1.3.0','2013-12-10','PC-TR02 \r'),('occtr','OCCTR_01s','2.1.3.0','2013-12-10','PC-TR02 \r'),('occtr','OCCTR_51p','2.1.3.0','2013-12-10','PC-TR02 \r'),('occtr','OCCTR_51s','2.1.3.0','2013-12-10','PC-TR02 \r'),('ttuc','TTUC','2.1.0.0','2013-12-10','PC-TR02 \r'),('ttuc','TTUC_Gemini','2.1.0.0','2013-12-10','PC-TR02 \r');
/*!40000 ALTER TABLE `register_temp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-16 17:16:23
