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
-- Table structure for table `yx_basic_wage_change_by_industry`
--

DROP TABLE IF EXISTS `yx_basic_wage_change_by_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_basic_wage_change_by_industry` (
  `Occupations` text,
  `Year` int(11) DEFAULT NULL,
  `Basic wage change by industry (cents)` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_basic_wage_change_by_industry`
--

LOCK TABLES `yx_basic_wage_change_by_industry` WRITE;
/*!40000 ALTER TABLE `yx_basic_wage_change_by_industry` DISABLE KEYS */;
INSERT INTO `yx_basic_wage_change_by_industry` VALUES ('Manufacturing',2007,3.7),('Manufacturing',2008,4),('Manufacturing',2009,0.7),('Manufacturing',2010,3.6),('Manufacturing',2011,4),('Manufacturing',2012,4.3),('Manufacturing',2013,4.6),('Manufacturing',2014,4.3),('Manufacturing',2015,3.8),('Construction',2007,3.9),('Construction',2008,3.9),('Construction',2009,1.5),('Construction',2010,3.5),('Construction',2011,3.9),('Construction',2012,3.6),('Construction',2013,5.2),('Construction',2014,3.8),('Construction',2015,3.3),('Services',2007,4.6),('Services',2008,4.6),('Services',2009,1.5),('Services',2010,4),('Services',2011,4.5),('Services',2012,4.6),('Services',2013,5.2),('Services',2014,5.1),('Services',2015,4.4),('Wholesale and Retail Trade',2007,4.2),('Wholesale and Retail Trade',2008,4.3),('Wholesale and Retail Trade',2009,1.4),('Wholesale and Retail Trade',2010,3.6),('Wholesale and Retail Trade',2011,4.1),('Wholesale and Retail Trade',2012,4.2),('Wholesale and Retail Trade',2013,5.5),('Wholesale and Retail Trade',2014,4.5),('Wholesale and Retail Trade',2015,3.7),('Transportation and Storage',2007,3.8),('Transportation and Storage',2008,4.1),('Transportation and Storage',2009,0.4),('Transportation and Storage',2010,2.9),('Transportation and Storage',2011,3.8),('Transportation and Storage',2012,4.7),('Transportation and Storage',2013,5.2),('Transportation and Storage',2014,4.3),('Transportation and Storage',2015,3.6),('Accomodation and Food Services',2007,3.4),('Accomodation and Food Services',2008,3),('Accomodation and Food Services',2009,1.7),('Accomodation and Food Services',2010,2.9),('Accomodation and Food Services',2011,3.8),('Accomodation and Food Services',2012,3.4),('Accomodation and Food Services',2013,5.1),('Accomodation and Food Services',2014,3.9),('Accomodation and Food Services',2015,3.2),('Information and Communications',2007,5.4),('Information and Communications',2008,5.2),('Information and Communications',2009,1.1),('Information and Communications',2010,4),('Information and Communications',2011,4.5),('Information and Communications',2012,4.6),('Information and Communications',2013,4.7),('Information and Communications',2014,4.6),('Information and Communications',2015,4),('Financial and Insurance Services',2007,6.8),('Financial and Insurance Services',2008,6.2),('Financial and Insurance Services',2009,1.9),('Financial and Insurance Services',2010,6),('Financial and Insurance Services',2011,7.4),('Financial and Insurance Services',2012,5.1),('Financial and Insurance Services',2013,4.7),('Financial and Insurance Services',2014,5.6),('Financial and Insurance Services',2015,5.3),('Real Estate Services',2007,3.4),('Real Estate Services',2008,3.6),('Real Estate Services',2009,1.3),('Real Estate Services',2010,3.3),('Real Estate Services',2011,4.1),('Real Estate Services',2012,4.6),('Real Estate Services',2013,6),('Real Estate Services',2014,6.7),('Real Estate Services',2015,4.4),('Professional Services',2007,5.9),('Professional Services',2008,6.5),('Professional Services',2009,1.7),('Professional Services',2010,5.7),('Professional Services',2011,5),('Professional Services',2012,4.7),('Professional Services',2013,4.8),('Professional Services',2014,4.4),('Professional Services',2015,4.2),('Administrative and Support Services',2007,3.6),('Administrative and Support Services',2008,3.3),('Administrative and Support Services',2009,1.3),('Administrative and Support Services',2010,2.8),('Administrative and Support Services',2011,3.5),('Administrative and Support Services',2012,4.8),('Administrative and Support Services',2013,6.4),('Administrative and Support Services',2014,8.5),('Administrative and Support Services',2015,6.3),('Community, Social and Personal Services',2007,4.6),('Community, Social and Personal Services',2008,4.4),('Community, Social and Personal Services',2009,2.4),('Community, Social and Personal Services',2010,4.3),('Community, Social and Personal Services',2011,4.2),('Community, Social and Personal Services',2012,5),('Community, Social and Personal Services',2013,4.8),('Community, Social and Personal Services',2014,5.4),('Community, Social and Personal Services',2015,5.1);
/*!40000 ALTER TABLE `yx_basic_wage_change_by_industry` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:01:59
