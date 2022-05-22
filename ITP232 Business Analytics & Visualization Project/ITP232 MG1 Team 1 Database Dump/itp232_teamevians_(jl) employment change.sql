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
-- Table structure for table `(jl) employment change`
--

DROP TABLE IF EXISTS `(jl) employment change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `(jl) employment change` (
  `Year` int(11) DEFAULT NULL,
  `Industry` text,
  `Total` double DEFAULT NULL,
  `Local` double DEFAULT NULL,
  `Foreign` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `(jl) employment change`
--

LOCK TABLES `(jl) employment change` WRITE;
/*!40000 ALTER TABLE `(jl) employment change` DISABLE KEYS */;
INSERT INTO `(jl) employment change` VALUES (2010,'Manufacturing',-0.8,-0.1,-0.7),(2010,'Construction',3.4,-0.4,3.8),(2010,'Services',112.6,56.3,56.2),(2011,'Manufacturing',3.4,-2.8,6.1),(2011,'Construction',22,2.4,19.6),(2011,'Services',96.1,37.5,58.6),(2012,'Manufacturing',11.4,2.1,9.4),(2012,'Construction',39.1,4.2,34.9),(2012,'Services',77,51,26.1),(2013,'Manufacturing',5.3,0.9,4.4),(2013,'Construction',35.2,3.7,31.6),(2013,'Services',94.1,77.1,17),(2014,'Manufacturing',-4.4,1.1,-5.4),(2014,'Construction',14.3,4.6,9.7),(2014,'Services',119.7,90.1,29.5),(2015,'Manufacturing',-22.1,-7.3,-14.8),(2015,'Construction',8.6,1.8,6.8),(2015,'Services',45.5,6,39.6);
/*!40000 ALTER TABLE `(jl) employment change` ENABLE KEYS */;
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
