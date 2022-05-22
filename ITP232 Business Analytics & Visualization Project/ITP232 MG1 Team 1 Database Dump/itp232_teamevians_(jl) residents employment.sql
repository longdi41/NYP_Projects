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
-- Table structure for table `(jl) residents employment`
--

DROP TABLE IF EXISTS `(jl) residents employment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `(jl) residents employment` (
  `Year` int(11) DEFAULT NULL,
  `Status` text,
  `Total` double DEFAULT NULL,
  `Residents` double DEFAULT NULL,
  `Primary` double DEFAULT NULL,
  `LowerSec` double DEFAULT NULL,
  `UpperSec` double DEFAULT NULL,
  `PostSec` double DEFAULT NULL,
  `Diploma` double DEFAULT NULL,
  `Degree` double DEFAULT NULL,
  `DipLF` double DEFAULT NULL,
  `DegLF` double DEFAULT NULL,
  `ForeignLF` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `(jl) residents employment`
--

LOCK TABLES `(jl) residents employment` WRITE;
/*!40000 ALTER TABLE `(jl) residents employment` DISABLE KEYS */;
INSERT INTO `(jl) residents employment` VALUES (2010,'Employed',3047.2,1962.9,255,179.7,393.1,234.5,356,544.6,370.3,565.4,1088.7),(2010,'Unemployed',88.8,84.4,12,8.6,17.2,11.5,14.3,20.8,370.3,565.4,1088.7),(2011,'Employed',3149.7,1998.9,251.9,175.4,402.2,234.8,365.4,569.3,378.9,589.2,1157),(2011,'Unemployed',87.4,81.2,9.9,9.5,17.9,10.5,13.5,19.9,378.9,589.2,1157),(2012,'Employed',3274.7,2040.6,248.7,172.1,391.7,243.1,383.3,601.8,396.8,622.3,1242.2),(2012,'Unemployed',87.1,79,11.1,6.9,16.2,10.9,13.5,20.5,396.8,622.3,1242.2),(2013,'Employed',3352.9,2056.1,241.8,164.6,384.5,237.6,378.5,649.1,394,673.5,1304.9),(2013,'Unemployed',90.7,82.6,9.5,7.1,16.1,10,15.5,24.4,394,673.5,1304.9),(2014,'Employed',3440.2,2103.5,242.3,162.6,375.4,240.5,410.9,671.8,426.1,699,1345.6),(2014,'Unemployed',90.7,81.8,8.5,6.3,14.7,9.9,15.2,27.2,426.1,699,1345.6),(2015,'Employed',3516,2147.8,242.5,150.7,390.6,256.4,413.6,694.1,431,719.5,1378.3),(2015,'Unemployed',94.6,84.5,8.2,6,16.2,11.3,17.4,25.4,431,719.5,1378.3);
/*!40000 ALTER TABLE `(jl) residents employment` ENABLE KEYS */;
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
