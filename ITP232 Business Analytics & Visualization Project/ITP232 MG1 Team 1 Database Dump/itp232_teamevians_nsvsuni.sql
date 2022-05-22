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
-- Table structure for table `nsvsuni`
--

DROP TABLE IF EXISTS `nsvsuni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsvsuni` (
  `Schools` text,
  `EmploymentRate` double DEFAULT NULL,
  `Year` text,
  `Graduates` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nsvsuni`
--

LOCK TABLES `nsvsuni` WRITE;
/*!40000 ALTER TABLE `nsvsuni` DISABLE KEYS */;
INSERT INTO `nsvsuni` VALUES ('Uni',89.5,'2016-12-12','Uni'),('Uni',89.1,'2015-12-12','Uni'),('Uni',89.2,'2014-12-12','Uni'),('Uni',89.3,'2013-12-12','Uni'),('Uni',91,'2012-12-12','Uni'),('Uni',92.1,'2011-12-12','Uni'),('Poly',95.4,'2016-12-12','Post NS'),('Poly',91.5,'2015-12-12','Post NS'),('Poly',92.4,'2014-12-12','Post NS'),('Poly',92.8,'2013-12-12','Post NS'),('Poly',93.1,'2012-12-12','Post NS'),('Poly',94.7,'2011-12-12','Post NS');
/*!40000 ALTER TABLE `nsvsuni` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:03
