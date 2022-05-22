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
-- Table structure for table `yx_poly_enrolment`
--

DROP TABLE IF EXISTS `yx_poly_enrolment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_poly_enrolment` (
  `Year` int(11) DEFAULT NULL,
  `Polytechnic` text,
  `Poly Enrolment` int(11) DEFAULT NULL,
  `Gender` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_poly_enrolment`
--

LOCK TABLES `yx_poly_enrolment` WRITE;
/*!40000 ALTER TABLE `yx_poly_enrolment` DISABLE KEYS */;
INSERT INTO `yx_poly_enrolment` VALUES (2005,'SP',5019,'Female'),(2005,'SP',8334,'Male'),(2006,'SP',5084,'Female'),(2006,'SP',8572,'Male'),(2007,'SP',5249,'Female'),(2007,'SP',9150,'Male'),(2008,'SP',5605,'Female'),(2008,'SP',9381,'Male'),(2009,'SP',6034,'Female'),(2009,'SP',9489,'Male'),(2010,'SP',6453,'Female'),(2010,'SP',9475,'Male'),(2011,'SP',6432,'Female'),(2011,'SP',9517,'Male'),(2012,'SP',6327,'Female'),(2012,'SP',9645,'Male'),(2013,'SP',6167,'Female'),(2013,'SP',9711,'Male'),(2014,'SP',6175,'Female'),(2014,'SP',9730,'Male'),(2005,'NP',6500,'Female'),(2005,'NP',7215,'Male'),(2006,'NP',6719,'Female'),(2006,'NP',7539,'Male'),(2007,'NP',7007,'Female'),(2007,'NP',7680,'Male'),(2008,'NP',7214,'Female'),(2008,'NP',7909,'Male'),(2009,'NP',7436,'Female'),(2009,'NP',7711,'Male'),(2010,'NP',7655,'Female'),(2010,'NP',8288,'Male'),(2011,'NP',7703,'Female'),(2011,'NP',8351,'Male'),(2012,'NP',7788,'Female'),(2012,'NP',8642,'Male'),(2013,'NP',7866,'Female'),(2013,'NP',8715,'Male'),(2014,'NP',7758,'Female'),(2014,'NP',8469,'Male'),(2005,'TP',6776,'Female'),(2005,'TP',6806,'Male'),(2006,'TP',7236,'Female'),(2006,'TP',7290,'Male'),(2007,'TP',7541,'Female'),(2007,'TP',7702,'Male'),(2008,'TP',7587,'Female'),(2008,'TP',8028,'Male'),(2009,'TP',7676,'Female'),(2009,'TP',8115,'Male'),(2010,'TP',7804,'Female'),(2010,'TP',8129,'Male'),(2011,'TP',7894,'Female'),(2011,'TP',8126,'Male'),(2012,'TP',7855,'Female'),(2012,'TP',8150,'Male'),(2013,'TP',7934,'Female'),(2013,'TP',8316,'Male'),(2014,'TP',7900,'Female'),(2014,'TP',8238,'Male'),(2005,'NYP',8010,'Female'),(2005,'NYP',6633,'Male'),(2006,'NYP',7913,'Female'),(2006,'NYP',7088,'Male'),(2007,'NYP',7732,'Female'),(2007,'NYP',7142,'Male'),(2008,'NYP',7866,'Female'),(2008,'NYP',7359,'Male'),(2009,'NYP',8150,'Female'),(2009,'NYP',7506,'Male'),(2010,'NYP',8387,'Female'),(2010,'NYP',7796,'Male'),(2011,'NYP',8440,'Female'),(2011,'NYP',7968,'Male'),(2012,'NYP',8197,'Female'),(2012,'NYP',7879,'Male'),(2013,'NYP',8242,'Female'),(2013,'NYP',8024,'Male'),(2014,'NYP',8189,'Female'),(2014,'NYP',7903,'Male'),(2005,'RP',1759,'Female'),(2005,'RP',1828,'Male'),(2006,'RP',2790,'Female'),(2006,'RP',2689,'Male'),(2007,'RP',4205,'Female'),(2007,'RP',3882,'Male'),(2008,'RP',5257,'Female'),(2008,'RP',4931,'Male'),(2009,'RP',6304,'Female'),(2009,'RP',5875,'Male'),(2010,'RP',6729,'Female'),(2010,'RP',6274,'Male'),(2011,'RP',7209,'Female'),(2011,'RP',6718,'Male'),(2012,'RP',7583,'Female'),(2012,'RP',6937,'Male'),(2013,'RP',7910,'Female'),(2013,'RP',7085,'Male'),(2014,'RP',7914,'Female'),(2014,'RP',7038,'Male');
/*!40000 ALTER TABLE `yx_poly_enrolment` ENABLE KEYS */;
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
