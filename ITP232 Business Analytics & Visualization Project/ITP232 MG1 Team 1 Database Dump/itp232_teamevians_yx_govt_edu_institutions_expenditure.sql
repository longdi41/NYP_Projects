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
-- Table structure for table `yx_govt_edu_institutions_expenditure`
--

DROP TABLE IF EXISTS `yx_govt_edu_institutions_expenditure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_govt_edu_institutions_expenditure` (
  `Year` text,
  `Educational Institutions` text,
  `Expenditure` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_govt_edu_institutions_expenditure`
--

LOCK TABLES `yx_govt_edu_institutions_expenditure` WRITE;
/*!40000 ALTER TABLE `yx_govt_edu_institutions_expenditure` DISABLE KEYS */;
INSERT INTO `yx_govt_edu_institutions_expenditure` VALUES ('2006-01-01','Primary Schools',1290409),('2006-01-01','Secondary Schools',1561500),('2006-01-01','Junior Colleges / Centralised Institute',271046),('2006-01-01','Institute of Technical Education',249154),('2006-01-01','Polytechnics',728741),('2006-01-01','Universities',1719156),('2006-01-01','Others',531711),('2007-01-01','Primary Schools',1496718),('2007-01-01','Secondary Schools',1780889),('2007-01-01','Junior Colleges / Centralised Institute',340681),('2007-01-01','Institute of Technical Education',253506),('2007-01-01','Polytechnics',816913),('2007-01-01','Universities',1491382),('2007-01-01','Others',605536),('2008-01-01','Primary Schools',1553535),('2008-01-01','Secondary Schools',1859599),('2008-01-01','Junior Colleges / Centralised Institute',316184),('2008-01-01','Institute of Technical Education',281262),('2008-01-01','Polytechnics',946113),('2008-01-01','Universities',1808987),('2008-01-01','Others',710841),('2009-01-01','Primary Schools',1573321),('2009-01-01','Secondary Schools',1924142),('2009-01-01','Junior Colleges / Centralised Institute',311770),('2009-01-01','Institute of Technical Education',262509),('2009-01-01','Polytechnics',944810),('2009-01-01','Others',806550),('2010-01-01','Primary Schools',1839190),('2010-01-01','Secondary Schools',2220430),('2010-01-01','Junior Colleges / Centralised Institute',348039),('2010-01-01','Institute of Technical Education',328067),('2010-01-01','Polytechnics',1124873),('2010-01-01','Universities',2305921),('2010-01-01','Others',832189),('2011-01-01','Primary Schools',1820988),('2011-01-01','Secondary Schools',2181167),('2011-01-01','Junior Colleges / Centralised Institute',336063),('2011-01-01','Institute of Technical Education',346106),('2011-01-01','Polytechnics',1180981),('2011-01-01','Universities',2973812),('2011-01-01','Others',858676),('2012-01-01','Primary Schools',1946159),('2012-01-01','Secondary Schools',2314237),('2012-01-01','Junior Colleges / Centralised Institute',365825),('2012-01-01','Institute of Technical Education',351658),('2012-01-01','Polytechnics',1196035),('2012-01-01','Universities',2536971),('2012-01-01','Others',926427),('2013-01-01','Primary Schools',2185580),('2013-01-01','Secondary Schools',2523528),('2013-01-01','Junior Colleges / Centralised Institute',389037),('2013-01-01','Institute of Technical Education',376896),('2013-01-01','Polytechnics',1297647),('2013-01-01','Universities',2969921),('2013-01-01','Others',922259),('2014-01-01','Primary Schools',2263510),('2014-01-01','Secondary Schools',2607555),('2014-01-01','Junior Colleges / Centralised Institute',394321),('2014-01-01','Institute of Technical Education',399949),('2014-01-01','Polytechnics',1339298),('2014-01-01','Universities',2736642),('2014-01-01','Others',971170),('2015-01-01','Primary Schools',2489907),('2015-01-01','Secondary Schools',2743889),('2015-01-01','Junior Colleges / Centralised Institute',424775),('2015-01-01','Institute of Technical Education',457351),('2015-01-01','Polytechnics',1411274),('2015-01-01','Universities',2818275),('2015-01-01','Others',1054529);
/*!40000 ALTER TABLE `yx_govt_edu_institutions_expenditure` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:00
