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
-- Table structure for table `(jl) long term unemployment rate`
--

DROP TABLE IF EXISTS `(jl) long term unemployment rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `(jl) long term unemployment rate` (
  `Year` int(11) DEFAULT NULL,
  `Residents` double DEFAULT NULL,
  `Primary` double DEFAULT NULL,
  `LowerSec` double DEFAULT NULL,
  `Sec` double DEFAULT NULL,
  `PostSec` double DEFAULT NULL,
  `Dip` double DEFAULT NULL,
  `Deg` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `(jl) long term unemployment rate`
--

LOCK TABLES `(jl) long term unemployment rate` WRITE;
/*!40000 ALTER TABLE `(jl) long term unemployment rate` DISABLE KEYS */;
INSERT INTO `(jl) long term unemployment rate` VALUES (2010,0.7,0.9,0.8,0.7,0.7,0.6,0.6),(2011,0.6,0.6,0.5,0.7,0.5,0.6,0.5),(2012,0.6,0.6,0.6,0.6,0.7,0.6,0.6),(2013,0.6,0.5,0.4,0.6,0.7,0.6,0.8),(2014,0.6,0.5,0.5,0.5,0.6,0.5,0.6),(2015,0.6,0.4,0.5,0.5,0.6,0.5,0.8);
/*!40000 ALTER TABLE `(jl) long term unemployment rate` ENABLE KEYS */;
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
