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
-- Table structure for table `yq_uni grads vs poly grads employment rate_v1 (csv version)`
--

DROP TABLE IF EXISTS `yq_uni grads vs poly grads employment rate_v1 (csv version)`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yq_uni grads vs poly grads employment rate_v1 (csv version)` (
  `Year` int(11) DEFAULT NULL,
  `Institution` text,
  `Proportion of Employment of Graduates` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yq_uni grads vs poly grads employment rate_v1 (csv version)`
--

LOCK TABLES `yq_uni grads vs poly grads employment rate_v1 (csv version)` WRITE;
/*!40000 ALTER TABLE `yq_uni grads vs poly grads employment rate_v1 (csv version)` DISABLE KEYS */;
INSERT INTO `yq_uni grads vs poly grads employment rate_v1 (csv version)` VALUES (2007,'University',94.5),(2007,'Polytechnic',93),(2008,'University',91.3),(2008,'Polytechnic',89.8),(2009,'University',90.6),(2009,'Polytechnic',88.5),(2010,'University',90.7),(2010,'Polytechnic',91.5),(2011,'University',91.4),(2011,'Polytechnic',92.1),(2012,'University',91),(2012,'Polytechnic',91),(2013,'University',89.3),(2013,'Polytechnic',89.8),(2014,'University',89.1),(2014,'Polytechnic',89.2);
/*!40000 ALTER TABLE `yq_uni grads vs poly grads employment rate_v1 (csv version)` ENABLE KEYS */;
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
