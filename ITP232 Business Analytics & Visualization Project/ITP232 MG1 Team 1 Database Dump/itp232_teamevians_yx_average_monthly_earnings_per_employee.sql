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
-- Table structure for table `yx_average_monthly_earnings_per_employee`
--

DROP TABLE IF EXISTS `yx_average_monthly_earnings_per_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_average_monthly_earnings_per_employee` (
  `Year` int(11) DEFAULT NULL,
  `Gender` text,
  `Annual` int(11) DEFAULT NULL,
  `1st Quarter` int(11) DEFAULT NULL,
  `2nd Quarter` int(11) DEFAULT NULL,
  `3rd Quarter` int(11) DEFAULT NULL,
  `4th Quarter` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_average_monthly_earnings_per_employee`
--

LOCK TABLES `yx_average_monthly_earnings_per_employee` WRITE;
/*!40000 ALTER TABLE `yx_average_monthly_earnings_per_employee` DISABLE KEYS */;
INSERT INTO `yx_average_monthly_earnings_per_employee` VALUES (2006,'Males',4081,4259,3794,3572,4517),(2007,'Males',4335,4484,4127,4014,4717),(2008,'Males',4560,4942,4241,4238,4820),(2009,'Males',4436,4787,4137,4092,4730),(2010,'Males',4686,4955,4380,4310,5098),(2011,'Males',4964,5351,4653,4546,5304),(2012,'Males',5080,5418,4778,4688,5436),(2013,'Males',5291,5661,4978,4844,5682),(2014,'Males',5412,5845,5100,4957,5475),(2006,'Females',2966,3078,2744,2704,3341),(2007,'Females',3148,3257,2967,2890,3478),(2008,'Females',3332,3622,3079,3052,3576),(2009,'Females',3247,3457,3025,2976,3530),(2010,'Females',3434,3598,3203,3145,3791),(2011,'Females',3650,3943,3390,3316,3951),(2012,'Females',3735,3960,3498,3422,4061),(2013,'Females',3909,4186,3637,3540,4271),(2014,'Females',4006,4329,3755,3639,4302);
/*!40000 ALTER TABLE `yx_average_monthly_earnings_per_employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:04
