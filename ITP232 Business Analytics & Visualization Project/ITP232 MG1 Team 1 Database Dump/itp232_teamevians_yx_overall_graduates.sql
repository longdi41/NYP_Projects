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
-- Table structure for table `yx_overall_graduates`
--

DROP TABLE IF EXISTS `yx_overall_graduates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_overall_graduates` (
  `Universities` text,
  `UniGender` text,
  `UniGraduates` int(11) DEFAULT NULL,
  `Polytechnics` text,
  `PolyGender` text,
  `PolyGraduates` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_overall_graduates`
--

LOCK TABLES `yx_overall_graduates` WRITE;
/*!40000 ALTER TABLE `yx_overall_graduates` DISABLE KEYS */;
INSERT INTO `yx_overall_graduates` VALUES ('NUS','Female',3051,'SP','Female',1821,2005),('NUS','Male',2524,'SP','Male',2716,2005),('NUS','Female',3055,'SP','Female',1574,2006),('NUS','Male',2566,'SP','Male',2529,2006),('NUS','Female',2943,'SP','Female',1532,2007),('NUS','Male',2557,'SP','Male',2421,2007),('NUS','Female',2982,'SP','Female',1644,2008),('NUS','Male',2619,'SP','Male',2606,2008),('NUS','Female',3012,'SP','Female',1610,2009),('NUS','Male',2767,'SP','Male',2724,2009),('NUS','Female',3124,'SP','Female',1700,2010),('NUS','Male',2709,'SP','Male',2927,2010),('NUS','Female',3403,'SP','Female',1982,2011),('NUS','Male',2685,'SP','Male',2939,2011),('NUS','Female',3149,'SP','Female',2060,2012),('NUS','Male',3246,'SP','Male',2956,2012),('NUS','Female',3281,'SP','Female',2141,2013),('NUS','Male',3114,'SP','Male',2941,2013),('NUS','Female',3224,'SP','Female',1995,2014),('NUS','Male',2986,'SP','Male',3031,2014),('NTU','Female',1964,'NP','Female',2068,2005),('NTU','Male',2084,'NP','Male',2075,2005),('NTU','Female',1974,'NP','Female',1990,2006),('NTU','Male',2267,'NP','Male',2094,2006),('NTU','Female',2127,'NP','Female',1911,2007),('NTU','Male',2718,'NP','Male',2102,2007),('NTU','Female',2286,'NP','Female',2247,2008),('NTU','Male',2522,'NP','Male',2257,2008),('NTU','Female',2570,'NP','Female',2186,2009),('NTU','Male',2488,'NP','Male',2395,2009),('NTU','Female',2544,'NP','Female',2237,2010),('NTU','Male',2868,'NP','Male',2197,2010),('NTU','Female',2951,'NP','Female',2437,2011),('NTU','Male',2782,'NP','Male',2420,2011),('NTU','Female',2909,'NP','Female',2432,2012),('NTU','Male',2898,'NP','Male',2523,2012),('NTU','Female',3310,'NP','Female',2420,2013),('NTU','Male',3166,'NP','Male',2563,2013),('NTU','Female',2951,'NP','Female',2513,2014),('NTU','Male',3042,'NP','Male',2653,2014),('SMU','Female',315,'TP','Female',1921,2005),('SMU','Male',93,'TP','Male',1712,2005),('SMU','Female',399,'TP','Female',1860,2006),('SMU','Male',166,'TP','Male',1858,2006),('SMU','Female',500,'TP','Female',2003,2007),('SMU','Male',326,'TP','Male',1925,2007),('SMU','Female',686,'TP','Female',2399,2008),('SMU','Male',377,'TP','Male',2166,2008),('SMU','Female',562,'TP','Female',2396,2009),('SMU','Male',548,'TP','Male',2419,2009),('SMU','Female',546,'TP','Female',2429,2010),('SMU','Male',660,'TP','Male',2419,2010),('SMU','Female',831,'TP','Female',2429,2011),('SMU','Male',673,'TP','Male',2591,2011),('SMU','Female',919,'TP','Female',2545,2012),('SMU','Male',684,'TP','Male',2588,2012),('SMU','Female',834,'TP','Female',2447,2013),('SMU','Male',825,'TP','Male',2439,2013),('SMU','Female',772,'TP','Female',2559,2014),('SMU','Male',830,'TP','Male',2653,2014);
/*!40000 ALTER TABLE `yx_overall_graduates` ENABLE KEYS */;
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
