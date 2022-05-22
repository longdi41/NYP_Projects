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
-- Table structure for table `jobvacancybyindustry_mabel`
--

DROP TABLE IF EXISTS `jobvacancybyindustry_mabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobvacancybyindustry_mabel` (
  `lndustry` text,
  `Sub Category` text,
  `Year` int(11) DEFAULT NULL,
  `Number of Job Vacancies` int(11) DEFAULT NULL,
  `Job Vacancy Rate` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobvacancybyindustry_mabel`
--

LOCK TABLES `jobvacancybyindustry_mabel` WRITE;
/*!40000 ALTER TABLE `jobvacancybyindustry_mabel` DISABLE KEYS */;
INSERT INTO `jobvacancybyindustry_mabel` VALUES ('Manufacturing ','Manufacturing',2006,8300,2.2),('Manufacturing ','Manufacturing',2007,8600,2.2),('Manufacturing ','Manufacturing',2008,6500,1.6),('Manufacturing ','Manufacturing',2009,4700,1.2),('Manufacturing ','Manufacturing',2010,8200,2.1),('Manufacturing ','Manufacturing',2011,8900,2.3),('Manufacturing ','Manufacturing',2012,7100,1.8),('Manufacturing ','Manufacturing',2013,7800,1.9),('Manufacturing ','Manufacturing',2014,8500,2.1),('Manufacturing ','Manufacturing',2015,7000,1.8),('Construction','Construction',2006,1600,1.1),('Construction','Construction',2007,2400,1.5),('Construction','Construction',2008,3000,1.6),('Construction','Construction',2009,1900,0.8),('Construction','Construction',2010,2700,1.2),('Construction','Construction',2011,3600,1.5),('Construction','Construction',2012,3400,1.2),('Construction','Construction',2013,3800,1.3),('Construction','Construction',2014,3600,1.2),('Construction','Construction',2015,2900,0.9),('Services','Wholesale & Retail Trade',2006,3100,2),('Services','Wholesale & Retail Trade',2007,4100,2.4),('Services','Wholesale & Retail Trade',2008,3800,2),('Services','Wholesale & Retail Trade',2009,2900,1.6),('Services','Wholesale & Retail Trade',2010,4800,2.4),('Services','Wholesale & Retail Trade',2011,5700,2.6),('Services','Wholesale & Retail Trade',2012,5900,2.7),('Services','Wholesale & Retail Trade',2013,7000,3),('Services','Wholesale & Retail Trade',2014,7900,3.3),('Services','Wholesale & Retail Trade',2015,7200,2.9),('Services','Transport & Storage',2006,2700,2.6),('Services','Transport & Storage',2007,3100,2.9),('Services','Transport & Storage',2008,2300,2),('Services','Transport & Storage',2009,1500,1.3),('Services','Transport & Storage',2010,3100,2.5),('Services','Transport & Storage',2011,3500,2.6),('Services','Transport & Storage',2012,3300,2.4),('Services','Transport & Storage',2013,3800,2.6),('Services','Transport & Storage',2014,4200,2.8),('Services','Transport & Storage',2015,3800,2.4),('Services','Accomodation & Food',2006,2200,3.2),('Services','Accomodation & Food',2007,2400,3.2),('Services','Accomodation & Food',2008,2500,3),('Services','Accomodation & Food',2009,2100,2.4),('Services','Accomodation & Food',2010,3900,4.1),('Services','Accomodation & Food',2011,4300,4.1),('Services','Accomodation & Food',2012,4900,4.4),('Services','Accomodation & Food',2013,6200,5.3),('Services','Accomodation & Food',2014,7400,5.9),('Services','Accomodation & Food',2015,7200,5.4),('Services','Information & Communications',2006,1000,2.4),('Services','Information & Communications',2007,1200,2.7),('Services','Information & Communications',2008,1400,2.9),('Services','Information & Communications',2009,800,1.6),('Services','Information & Communications',2010,1400,2.7),('Services','Information & Communications',2011,1700,2.9),('Services','Information & Communications',2012,1500,2.4),('Services','Information & Communications',2013,1700,2.8),('Services','Information & Communications',2014,2400,3.5),('Services','Information & Communications',2015,2800,3.8),('Services','Finance and Insurance ',2006,1600,1.9),('Services','Finance and Insurance ',2007,2600,2.6),('Services','Finance and Insurance ',2008,1900,1.9),('Services','Finance and Insurance ',2009,1300,1.3),('Services','Finance and Insurance ',2010,2500,2.4),('Services','Finance and Insurance ',2011,2800,2.5),('Services','Finance and Insurance ',2012,2500,2),('Services','Finance and Insurance ',2013,2800,2.2),('Services','Finance and Insurance ',2014,3800,2.9),('Services','Finance and Insurance ',2015,3700,2.8),('Services','Real Estate ',2006,600,1.5),('Services','Real Estate ',2007,900,2.1),('Services','Real Estate ',2008,900,1.9),('Services','Real Estate ',2009,900,1.9),('Services','Real Estate ',2010,1400,2.8),('Services','Real Estate ',2011,1900,3.5),('Services','Real Estate ',2012,1800,3.1),('Services','Real Estate ',2013,2100,3.5),('Services','Real Estate ',2014,2300,3.9),('Services','Real Estate ',2015,2200,3.8),('Services','Professional',2006,1800,2.8),('Services','Professional',2007,2700,3.5),('Services','Professional',2008,2600,2.8),('Services','Professional',2009,1500,1.5),('Services','Professional',2010,2000,1.9),('Services','Professional',2011,2500,2.2),('Services','Professional',2012,2500,2),('Services','Professional',2013,2900,2.2),('Services','Professional',2014,3500,2.7),('Services','Professional',2015,4100,3),('Services','Admin & Support',2006,2000,3.7),('Services','Admin & Support',2007,2800,4.2),('Services','Admin & Support',2008,3100,4),('Services','Admin & Support',2009,2200,2.6),('Services','Admin & Support',2010,3200,3.4),('Services','Admin & Support',2011,4500,4.4),('Services','Admin & Support',2012,3700,3.5),('Services','Admin & Support',2013,4400,3.8),('Services','Admin & Support',2014,5400,4.5),('Services','Admin & Support',2015,5300,3.9),('Services','Community, Social & Personal',2006,6000,3),('Services','Community, Social & Personal',2007,7400,3.5),('Services','Community, Social & Personal',2008,9300,4.1),('Services','Community, Social & Personal',2009,10200,4.2),('Services','Community, Social & Personal',2010,10600,3.9),('Services','Community, Social & Personal',2011,12600,4.3),('Services','Community, Social & Personal',2012,11200,3.6),('Services','Community, Social & Personal',2013,12400,3.9),('Services','Community, Social & Personal',2014,13700,4.1),('Services','Community, Social & Personal',2015,12600,3.7);
/*!40000 ALTER TABLE `jobvacancybyindustry_mabel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:06
