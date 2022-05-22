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
-- Table structure for table `yx_overall_enrolment`
--

DROP TABLE IF EXISTS `yx_overall_enrolment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_overall_enrolment` (
  `Year` int(11) DEFAULT NULL,
  `University` text,
  `Gender` text,
  `Polytechnic` text,
  `Poly_Enrol` int(11) DEFAULT NULL,
  `Uni_Enrol` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_overall_enrolment`
--

LOCK TABLES `yx_overall_enrolment` WRITE;
/*!40000 ALTER TABLE `yx_overall_enrolment` DISABLE KEYS */;
INSERT INTO `yx_overall_enrolment` VALUES (2005,'NUS','Female','SP',5019,11326),(2005,'NUS','Male','SP',8334,10779),(2006,'NUS','Female','SP',5084,11766),(2006,'NUS','Male','SP',8572,12070),(2007,'NUS','Female','SP',5249,12396),(2007,'NUS','Male','SP',9150,11182),(2008,'NUS','Female','SP',5605,12663),(2008,'NUS','Male','SP',9381,11423),(2009,'NUS','Female','SP',6034,12944),(2009,'NUS','Male','SP',9489,11854),(2010,'NUS','Female','SP',6453,13067),(2010,'NUS','Male','SP',9475,12122),(2011,'NUS','Female','SP',6432,13066),(2011,'NUS','Male','SP',9517,12447),(2012,'NUS','Female','SP',6327,13295),(2012,'NUS','Male','SP',9645,12684),(2013,'NUS','Female','SP',6167,13532),(2013,'NUS','Male','SP',9711,12624),(2014,'NUS','Female','SP',6175,14042),(2014,'NUS','Male','SP',9730,12755),(2005,'NTU','Female','NP',6500,8094),(2005,'NTU','Male','NP',7215,9683),(2006,'NTU','Female','NP',6719,8797),(2006,'NTU','Male','NP',7539,10317),(2007,'NTU','Female','NP',7007,9769),(2007,'NTU','Male','NP',7680,10437),(2008,'NTU','Female','NP',7214,10409),(2008,'NTU','Male','NP',7909,10688),(2009,'NTU','Female','NP',7436,11105),(2009,'NTU','Male','NP',7711,11345),(2010,'NTU','Female','NP',7655,11389),(2010,'NTU','Male','NP',8288,11476),(2011,'NTU','Female','NP',7703,11354),(2011,'NTU','Male','NP',8351,11686),(2012,'NTU','Female','NP',7788,11386),(2012,'NTU','Male','NP',8642,11476),(2013,'NTU','Female','NP',7866,11517),(2013,'NTU','Male','NP',8715,11260),(2014,'NTU','Female','NP',7758,11623),(2014,'NTU','Male','NP',8469,11398),(2005,'SMU','Female','TP',6776,2239),(2005,'SMU','Male','TP',6806,1542),(2006,'SMU','Female','TP',7236,2429),(2006,'SMU','Male','TP',7290,2100),(2007,'SMU','Female','TP',7541,2758),(2007,'SMU','Male','TP',7702,2420),(2008,'SMU','Female','TP',7587,2993),(2008,'SMU','Male','TP',8028,2278),(2009,'SMU','Female','TP',7676,3295),(2009,'SMU','Male','TP',8115,3426),(2010,'SMU','Female','TP',7804,3525),(2010,'SMU','Male','TP',8129,3196),(2011,'SMU','Female','TP',7894,3523),(2011,'SMU','Male','TP',8126,3330),(2012,'SMU','Female','TP',7855,3684),(2012,'SMU','Male','TP',8150,3424),(2013,'SMU','Female','TP',7934,3789),(2013,'SMU','Male','TP',8316,3508),(2014,'SMU','Female','TP',7900,3883),(2014,'SMU','Male','TP',8238,3632);
/*!40000 ALTER TABLE `yx_overall_enrolment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:03
