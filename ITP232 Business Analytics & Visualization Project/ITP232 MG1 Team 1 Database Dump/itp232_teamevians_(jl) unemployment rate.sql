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
-- Table structure for table `(jl) unemployment rate`
--

DROP TABLE IF EXISTS `(jl) unemployment rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `(jl) unemployment rate` (
  `Year` int(11) DEFAULT NULL,
  `Total` double DEFAULT NULL,
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
-- Dumping data for table `(jl) unemployment rate`
--

LOCK TABLES `(jl) unemployment rate` WRITE;
/*!40000 ALTER TABLE `(jl) unemployment rate` DISABLE KEYS */;
INSERT INTO `(jl) unemployment rate` VALUES (2010,2.8,3.1,3.2,3.6,3.3,3.8,2.9,2.8),(2011,2.7,2.9,2.6,3,3.5,3.2,2.7,2.6),(2012,2.6,2.8,2.5,2.8,2.9,3.5,2.8,2.7),(2013,2.6,2.8,2.3,2.5,2.9,3.5,2.7,2.8),(2014,2.6,2.7,2.3,2.8,2.8,2.7,2.9,2.9),(2015,2.6,2.8,2.4,2.6,2.7,3,2.9,2.8);
/*!40000 ALTER TABLE `(jl) unemployment rate` ENABLE KEYS */;
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
