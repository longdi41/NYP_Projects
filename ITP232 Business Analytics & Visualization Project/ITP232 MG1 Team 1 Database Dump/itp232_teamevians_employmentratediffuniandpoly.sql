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
-- Table structure for table `employmentratediffuniandpoly`
--

DROP TABLE IF EXISTS `employmentratediffuniandpoly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employmentratediffuniandpoly` (
  `School` text,
  `Categories` text,
  `EmploymentRate(%)` double DEFAULT NULL,
  `Year` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employmentratediffuniandpoly`
--

LOCK TABLES `employmentratediffuniandpoly` WRITE;
/*!40000 ALTER TABLE `employmentratediffuniandpoly` DISABLE KEYS */;
INSERT INTO `employmentratediffuniandpoly` VALUES ('Degree','Business',89.7,'2014-12-12'),('Degree','Science',83.3,'2014-12-13'),('Degree','IT',87.8,'2014-12-14'),('Degree','Engineering',83.7,'2014-12-15'),('Poly','Business',55.9,'2014-12-16'),('Poly','Science',66.4,'2014-12-17'),('Poly','IT',72.4,'2014-12-18'),('Poly','Engineering',63,'2014-12-19'),('Degree','Business',97.9,'2015-12-20'),('Degree','Science',81.9,'2015-12-21'),('Degree','IT',94,'2015-12-22'),('Degree','Engineering',85.6,'2015-12-23'),('Poly','Business',49.2,'2015-12-24'),('Poly','Science',65.3,'2015-12-25'),('Poly','IT',65.5,'2015-12-26'),('Poly','Engineering',63.8,'2015-12-27'),('Poly','Business',57.7,'2013-12-28'),('Poly','Science',72.1,'2013-12-29'),('Poly','IT',54.9,'2013-12-30'),('Poly','Engineering',72.3,'2013-12-31'),('Degree','Business',85.1,'2013-12-31'),('Degree','Science',72.8,'2013-12-31'),('Degree','IT',83,'2013-12-31'),('Degree','Engineering',79.01,'2013-12-31'),('Poly','Business',57.8,'2012-12-31'),('Poly','Science',73.5,'2012-12-31'),('Poly','IT',61.6,'2012-12-31'),('Poly','Engineering',74.5,'2012-12-31'),('Degree','Business',84.4,'2012-12-31'),('Degree','Science',79.4,'2012-12-31'),('Degree','IT',87.5,'2012-12-31'),('Degree','Engineering',82.9,'2012-12-31'),('Poly','Business',60.9,'2011-12-31'),('Poly','Science',75.9,'2011-12-31'),('Poly','IT',65.6,'2011-12-31'),('Poly','Engineering',76,'2011-12-31'),('Degree','Business',85.8,'2011-12-31'),('Degree','Science',81.6,'2011-12-31'),('Degree','IT',85.8,'2011-12-31'),('Degree','Engineering',84.6,'2011-12-31');
/*!40000 ALTER TABLE `employmentratediffuniandpoly` ENABLE KEYS */;
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
