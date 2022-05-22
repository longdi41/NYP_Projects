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
-- Table structure for table `yq_(2009-2014) uni employment rate`
--

DROP TABLE IF EXISTS `yq_(2009-2014) uni employment rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yq_(2009-2014) uni employment rate` (
  `Year` int(11) DEFAULT NULL,
  `Faculty` text,
  `Instituition` text,
  `Employment rate %` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yq_(2009-2014) uni employment rate`
--

LOCK TABLES `yq_(2009-2014) uni employment rate` WRITE;
/*!40000 ALTER TABLE `yq_(2009-2014) uni employment rate` DISABLE KEYS */;
INSERT INTO `yq_(2009-2014) uni employment rate` VALUES (2009,'Engineering','University',86),(2009,'Arts & Social Sciences','University',79.1),(2009,'Law','University',100),(2009,'Sciences ','University',96),(2009,'Dentistry','University',100),(2009,'Business','University',88.2),(2009,'Computing ','University',84.4),(2009,'Design & Environment','University',87.9),(2009,'Economics','University',90.8),(2009,'Information Systems','University',78.1),(2010,'Engineering','University',88.1),(2010,'Arts & Social Sciences','University',76.9),(2010,'Law','University',100),(2010,'Sciences ','University',78.6),(2010,'Dentistry','University',100),(2010,'Business','University',91.7),(2010,'Computing ','University',89.4),(2010,'Design & Environment','University',91.7),(2010,'Economics','University',92.6),(2010,'Information Systems','University',94),(2011,'Engineering','University',88.6),(2011,'Arts & Social Sciences','University',82),(2011,'Law','University',100),(2011,'Sciences ','University',82.5),(2011,'Dentistry','University',100),(2011,'Business','University',91.9),(2011,'Computing ','University',93.3),(2011,'Design & Environment','University',96.6),(2011,'Economics','University',90.5),(2011,'Information Systems','University',95.3),(2012,'Engineering','University',87.9),(2012,'Arts & Social Sciences','University',79.8),(2012,'Law','University',98.1),(2012,'Sciences ','University',84.9),(2012,'Dentistry','University',100),(2012,'Business','University',94.5),(2012,'Computing ','University',91.2),(2012,'Design & Environment','University',84),(2012,'Economics','University',83.5),(2012,'Information Systems','University',85.4),(2013,'Engineering','University',84.9),(2013,'Arts & Social Sciences','University',73.8),(2013,'Law','University',98.2),(2013,'Sciences ','University',83.2),(2013,'Dentistry','University',100),(2013,'Business','University',91.3),(2013,'Computing ','University',82.1),(2013,'Design & Environment','University',79.9),(2013,'Economics','University',91.3),(2013,'Information Systems','University',90.2),(2014,'Engineering','University',83.8),(2014,'Arts & Social Sciences','University',74),(2014,'Law','University',97.6),(2014,'Sciences ','University',78.9),(2014,'Dentistry','University',100),(2014,'Business','University',90.3),(2014,'Computing ','University',86.4),(2014,'Design & Environment','University',84.4),(2014,'Economics','University',86.5),(2014,'Information Systems','University',82.4);
/*!40000 ALTER TABLE `yq_(2009-2014) uni employment rate` ENABLE KEYS */;
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
