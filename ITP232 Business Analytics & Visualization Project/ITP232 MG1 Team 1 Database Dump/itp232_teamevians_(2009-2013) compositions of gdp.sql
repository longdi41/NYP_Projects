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
-- Table structure for table `(2009-2013) compositions of gdp`
--

DROP TABLE IF EXISTS `(2009-2013) compositions of gdp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `(2009-2013) compositions of gdp` (
  `Year` int(11) DEFAULT NULL,
  `Type of composition` text,
  `% of composition` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `(2009-2013) compositions of gdp`
--

LOCK TABLES `(2009-2013) compositions of gdp` WRITE;
/*!40000 ALTER TABLE `(2009-2013) compositions of gdp` DISABLE KEYS */;
INSERT INTO `(2009-2013) compositions of gdp` VALUES (2009,'Government expenditure',15),(2009,'Total Trade ',10),(2009,'Investment ',25),(2009,'Consumption',50),(2010,'Government expenditure',15),(2010,'Total Trade ',18),(2010,'Investment ',24),(2010,'Consumption',43),(2011,'Government expenditure',15),(2011,'Total Trade ',18),(2011,'Investment ',24),(2011,'Consumption',43),(2012,'Government expenditure',15),(2012,'Total Trade ',10),(2012,'Investment ',30),(2012,'Consumption',45),(2013,'Government expenditure',15),(2013,'Total Trade ',10),(2013,'Investment ',30),(2013,'Consumption',45);
/*!40000 ALTER TABLE `(2009-2013) compositions of gdp` ENABLE KEYS */;
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
