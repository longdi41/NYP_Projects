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
-- Table structure for table `yx_average_monthly_earnings_per_employee_rate_of_change`
--

DROP TABLE IF EXISTS `yx_average_monthly_earnings_per_employee_rate_of_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_average_monthly_earnings_per_employee_rate_of_change` (
  `Gender` text,
  `Year` int(11) DEFAULT NULL,
  `Annual Change (%) Over Corresponding Period of Previous Year` text,
  `1st Quarter Change (%)` text,
  `2nd Quarter Change (%)` text,
  `3rd Quarter Change (%)` text,
  `4th Quarter Change (%)` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_average_monthly_earnings_per_employee_rate_of_change`
--

LOCK TABLES `yx_average_monthly_earnings_per_employee_rate_of_change` WRITE;
/*!40000 ALTER TABLE `yx_average_monthly_earnings_per_employee_rate_of_change` DISABLE KEYS */;
INSERT INTO `yx_average_monthly_earnings_per_employee_rate_of_change` VALUES ('Males',2005,'3.60%','4.80%','2.70%','4.70%','2.30%'),('Males',2006,'0.30%','2.80%','3.60%','2.80%','2.80%'),('Males',2007,'6.20%','5.30%','8.80%','7.00%','4.40%'),('Males',2008,'5.20%','10.20%','2.80%','5.60%','2.20%'),('Males',2009,'-2.70%','-3.10%','-2.50%','-3.40%','-1.90%'),('Males',2010,'5.60%','3.50%','5.90%','5.30%','7.80%'),('Males',2011,'5.90%','8.00%','6.20%','5.50%','0.40%'),('Males',2012,'2.30%','2.30%','1.30%','2.70%','2.50%'),('Males',2013,'4.30%','4.20%','4.50%','4.20%','4.70%'),('Males',2014,'2.30%','2.30%','3.30%','2.50%','0.80%'),('Females',2005,'3.30%','4.90%','2.40%','4.30%','0.20%'),('Females',2006,'3.50%','3.40%','4.30%','2.90%','3.50%'),('Females',2007,'6.10%','5.80%','8.10%','6.90%','4.10%'),('Females',2008,'5.80%','11.20%','3.80%','5.60%','2.80%'),('Females',2009,'-2.60%','-4.60%','1.80%','-2.50%','-1.30%'),('Females',2010,'5.80%','4.10%','5.90%','5.70%','7.40%'),('Females',2011,'6.30%','9.60%','5.80%','5.40%','4.20%'),('Females',2012,'2.30%','0.40%','3.20%','3.20%','2.80%'),('Females',2013,'4.70%','5.70%','0.40%','3.40%','5.20%'),('Females',2014,'2.50%','3.40%','3.20%','2.80%','0.70%');
/*!40000 ALTER TABLE `yx_average_monthly_earnings_per_employee_rate_of_change` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:07
