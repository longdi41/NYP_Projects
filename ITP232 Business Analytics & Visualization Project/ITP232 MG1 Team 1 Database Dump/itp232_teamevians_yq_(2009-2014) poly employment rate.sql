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
-- Table structure for table `yq_(2009-2014) poly employment rate`
--

DROP TABLE IF EXISTS `yq_(2009-2014) poly employment rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yq_(2009-2014) poly employment rate` (
  `Year` int(11) DEFAULT NULL,
  `Course` text,
  `Instituition` text,
  `% of employment` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yq_(2009-2014) poly employment rate`
--

LOCK TABLES `yq_(2009-2014) poly employment rate` WRITE;
/*!40000 ALTER TABLE `yq_(2009-2014) poly employment rate` DISABLE KEYS */;
INSERT INTO `yq_(2009-2014) poly employment rate` VALUES (2009,'Built Environment','Poly',74.2),(2009,'Information & Digital Technologies ','Poly',66.7),(2009,'Applied Sciences ','Poly',60.2),(2009,'Health Sciences ','Poly',83.8),(2009,'Business, Management, Design & Others','Poly',58.3),(2009,'Hybrid Courses','Poly',78.6),(2009,'Engineering','Poly',70.5),(2009,'Maritime','Poly',92.5),(2010,'Built Environment','Poly',73),(2010,'Information & Digital Technologies ','Poly',70.6),(2010,'Applied Sciences ','Poly',72.4),(2010,'Health Sciences ','Poly',82.9),(2010,'Business, Management, Design & Others','Poly',68.7),(2010,'Hybrid Courses','Poly',80),(2010,'Engineering','Poly',76.8),(2010,'Maritime','Poly',81),(2011,'Built Environment','Poly',71.6),(2011,'Information & Digital Technologies ','Poly',72.6),(2011,'Applied Sciences ','Poly',67.9),(2011,'Health Sciences ','Poly',91.5),(2011,'Business, Management, Design & Others','Poly',64),(2011,'Hybrid Courses','Poly',70.1),(2011,'Engineering','Poly',79.6),(2011,'Maritime','Poly',90),(2012,'Built Environment','Poly',72.6),(2012,'Information & Digital Technologies ','Poly',69.7),(2012,'Applied Sciences ','Poly',70.1),(2012,'Health Sciences ','Poly',91.9),(2012,'Business, Management, Design & Others','Poly',59.6),(2012,'Hybrid Courses','Poly',65.9),(2012,'Engineering','Poly',80),(2012,'Maritime','Poly',81.3),(2013,'Built Environment','Poly',74.5),(2013,'Information & Digital Technologies ','Poly',64.9),(2013,'Applied Sciences ','Poly',62.2),(2013,'Health Sciences ','Poly',91.4),(2013,'Business, Management, Design & Others','Poly',58.4),(2013,'Hybrid Courses','Poly',63.5),(2013,'Engineering','Poly',77.6),(2013,'Maritime','Poly',84),(2014,'Built Environment','Poly',73.5),(2014,'Information & Digital Technologies ','Poly',68),(2014,'Applied Sciences ','Poly',65.4),(2014,'Health Sciences ','Poly',92),(2014,'Business, Management, Design & Others','Poly',63.4),(2014,'Hybrid Courses','Poly',64),(2014,'Engineering','Poly',78),(2014,'Maritime','Poly',80);
/*!40000 ALTER TABLE `yq_(2009-2014) poly employment rate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:00
