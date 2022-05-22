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
-- Table structure for table `yx_industry_labour_cost`
--

DROP TABLE IF EXISTS `yx_industry_labour_cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_industry_labour_cost` (
  `Industry` text,
  `Total Labour Cost` int(11) DEFAULT NULL,
  `Basic Wage Overtime & Other Regular Payments` int(11) DEFAULT NULL,
  `Annual Variable Component (Annual Wage Supplements)` int(11) DEFAULT NULL,
  `Employer CPF Contributons` int(11) DEFAULT NULL,
  `Levy` int(11) DEFAULT NULL,
  `Medical Cost & Other Insurance` int(11) DEFAULT NULL,
  `Net Training Cost` int(11) DEFAULT NULL,
  `Other Labour Costs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_industry_labour_cost`
--

LOCK TABLES `yx_industry_labour_cost` WRITE;
/*!40000 ALTER TABLE `yx_industry_labour_cost` DISABLE KEYS */;
INSERT INTO `yx_industry_labour_cost` VALUES ('Manufacturing',51669,36172,6398,3379,1869,832,254,2767),('Construction',32489,22114,1959,1171,3721,551,193,2780),('Services',71854,50449,11206,4885,921,946,505,2942),('Wholesale & Retail Trade',57937,41347,7735,3819,1189,737,245,2865),('Transportation & Storage',55671,40130,6695,4033,1244,908,337,2325),('Accomodation & Food Services',27550,20625,1950,1646,1736,302,190,1102),('Information And Communications',89853,67617,11339,6228,438,1241,532,2458),('Financial And Insurance Services ',164496,109996,34332,8333,190,2211,645,8789),('Real Estate Services',49242,35028,7520,3585,1230,505,257,1116),('Professional Services',94884,69436,12269,5572,867,1335,533,4872),('Administrative And Support Services ',30138,23356,1522,2049,1297,449,66,1399),('Community, Social And Personal Services',72679,49260,12914,6285,558,868,953,1841),('Others',60033,38400,12081,5421,793,687,1025,1546);
/*!40000 ALTER TABLE `yx_industry_labour_cost` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:02
