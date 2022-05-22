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
-- Table structure for table `yx_poly_enrolment_backup`
--

DROP TABLE IF EXISTS `yx_poly_enrolment_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_poly_enrolment_backup` (
  `Polytechnics` text,
  `Gender` text,
  `Enrolment` int(11) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_poly_enrolment_backup`
--

LOCK TABLES `yx_poly_enrolment_backup` WRITE;
/*!40000 ALTER TABLE `yx_poly_enrolment_backup` DISABLE KEYS */;
INSERT INTO `yx_poly_enrolment_backup` VALUES ('SP','Female',1725,2005),('SP','Male',2820,2005),('SP','Female',1719,2006),('SP','Male',3027,2006),('SP','Female',1804,2007),('SP','Male',3202,2007),('SP','Female',2069,2008),('SP','Male',3124,2008),('SP','Female',2152,2009),('SP','Male',3137,2009),('SP','Female',2260,2010),('SP','Male',3169,2010),('SP','Female',2115,2011),('SP','Male',3233,2011),('SP','Female',2094,2012),('SP','Male',3313,2012),('SP','Female',2071,2013),('SP','Male',3293,2013),('SP','Female',2092,2014),('SP','Male',3220,2014),('NP','Female',2363,2005),('NP','Male',2438,2005),('NP','Female',2336,2006),('NP','Male',2613,2006),('NP','Female',2355,2007),('NP','Male',2516,2007),('NP','Female',2578,2008),('NP','Male',2700,2008),('NP','Female',2572,2009),('NP','Male',2728,2009),('NP','Female',2573,2010),('NP','Male',2814,2010),('NP','Female',2643,2011),('NP','Male',2823,2011),('NP','Female',2682,2012),('NP','Male',2879,2012),('NP','Female',2620,2013),('NP','Male',2867,2013),('NP','Female',2512,2014),('NP','Male',2633,2014),('TP','Female',2510,2005),('TP','Male',2265,2005),('TP','Female',2448,2006),('TP','Male',2561,2006),('TP','Female',2399,2007),('TP','Male',2434,2007),('TP','Female',2489,2008),('TP','Male',2534,2008),('TP','Female',2545,2009),('TP','Male',2535,2009),('TP','Female',2604,2010),('TP','Male',2463,2010),('TP','Female',2666,2011),('TP','Male',2711,2011),('TP','Female',2652,2012),('TP','Male',2718,2012),('TP','Female',2630,2013),('TP','Male',2740,2013),('TP','Female',2654,2014),('TP','Male',2616,2014),('NYP','Female',2590,2005),('NYP','Male',2403,2005),('NYP','Female',2511,2006),('NYP','Male',2441,2006),('NYP','Female',2683,2007),('NYP','Male',2282,2007),('NYP','Female',2700,2008),('NYP','Male',2579,2008),('NYP','Female',2782,2009),('NYP','Male',2556,2009),('NYP','Female',2933,2010),('NYP','Male',2549,2010),('NYP','Female',2797,2011),('NYP','Male',2741,2011),('NYP','Female',2615,2012),('NYP','Male',2501,2012),('NYP','Female',2915,2013),('NYP','Male',2689,2013),('NYP','Female',2756,2014),('NYP','Male',2593,2014),('RP','Female',948,2005),('RP','Male',844,2005),('RP','Female',1380,2006),('RP','Male',1240,2006),('RP','Female',1947,2007),('RP','Male',1794,2007),('RP','Female',2117,2008),('RP','Male',1948,2008),('RP','Female',2447,2009),('RP','Male',2170,2009),('RP','Female',2292,2010),('RP','Male',2050,2010),('RP','Female',2580,2011),('RP','Male',2428,2011),('RP','Female',2834,2012),('RP','Male',2466,2012),('RP','Female',2706,2013),('RP','Male',2348,2013),('RP','Female',2523,2014),('RP','Male',2178,2014);
/*!40000 ALTER TABLE `yx_poly_enrolment_backup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:01
