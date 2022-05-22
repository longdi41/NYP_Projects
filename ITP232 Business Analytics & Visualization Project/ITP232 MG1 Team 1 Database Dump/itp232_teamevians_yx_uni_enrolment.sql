-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: itp232_teamevians
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `yx_uni_enrolment`
--

DROP TABLE IF EXISTS `yx_uni_enrolment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_uni_enrolment` (
  `Universities` text,
  `Gender` text,
  `Enrolment` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_uni_enrolment`
--

LOCK TABLES `yx_uni_enrolment` WRITE;
/*!40000 ALTER TABLE `yx_uni_enrolment` DISABLE KEYS */;
INSERT INTO `yx_uni_enrolment` VALUES ('NUS','Female',11326,2005),('NUS','Male',10779,2005),('NUS','Female',11766,2006),('NUS','Male',11070,2006),('NUS','Female',12396,2007),('NUS','Male',11182,2007),('NUS','Female',12663,2008),('NUS','Male',11423,2008),('NUS','Female',12944,2009),('NUS','Male',11854,2009),('NUS','Female',13067,2010),('NUS','Male',12122,2010),('NUS','Female',25513,2011),('NUS','Male',12447,2011),('NUS','Female',13295,2012),('NUS','Male',12684,2012),('NUS','Female',13532,2013),('NUS','Male',12624,2013),('NUS','Female',14042,2014),('NUS','Male',12755,2014),('NTU','Female',8094,2005),('NTU','Male',9683,2005),('NTU','Female',8797,2006),('NTU','Male',10317,2006),('NTU','Female',9769,2007),('NTU','Male',10437,2007),('NTU','Female',10409,2008),('NTU','Male',10688,2008),('NTU','Female',11105,2009),('NTU','Male',11345,2009),('NTU','Female',11389,2010),('NTU','Male',11473,2010),('NTU','Female',11354,2011),('NTU','Male',11686,2011),('NTU','Female',11386,2012),('NTU','Male',11476,2012),('NTU','Female',11517,2013),('NTU','Male',11260,2013),('NTU','Female',11623,2014),('NTU','Male',11398,2014),('SMU','Female',2239,2005),('SMU','Male',1542,2005),('SMU','Female',2429,2006),('SMU','Male',2100,2006),('SMU','Female',2758,2007),('SMU','Male',2420,2007),('SMU','Female',2993,2008),('SMU','Male',2728,2008),('SMU','Female',3295,2009),('SMU','Male',2406,2009),('SMU','Female',3525,2010),('SMU','Male',3196,2010),('SMU','Female',3523,2011),('SMU','Male',3330,2011),('SMU','Female',3684,2012),('SMU','Male',3424,2012),('SMU','Female',3789,2013),('SMU','Male',3508,2013),('SMU','Female',3883,2014),('SMU','Male',3632,2014);
/*!40000 ALTER TABLE `yx_uni_enrolment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:05
