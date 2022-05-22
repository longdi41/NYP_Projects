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
-- Table structure for table `employed residents by qualifications_mabel`
--

DROP TABLE IF EXISTS `employed residents by qualifications_mabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employed residents by qualifications_mabel` (
  `Year` int(11) DEFAULT NULL,
  `Gender` text,
  `Qualifications` text,
  `Number of Employed Residents` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employed residents by qualifications_mabel`
--

LOCK TABLES `employed residents by qualifications_mabel` WRITE;
/*!40000 ALTER TABLE `employed residents by qualifications_mabel` DISABLE KEYS */;
INSERT INTO `employed residents by qualifications_mabel` VALUES (2006,'Male ','Diploma & Professional Qualification',162200),(2007,'Male ','Diploma & Professional Qualification',159000),(2008,'Male ','Diploma & Professional Qualification',170300),(2009,'Male ','Diploma & Professional Qualification',176900),(2010,'Male ','Diploma & Professional Qualification',195300),(2011,'Male ','Diploma & Professional Qualification',202000),(2012,'Male ','Diploma & Professional Qualification',209800),(2013,'Male ','Diploma & Professional Qualification',207000),(2014,'Male ','Diploma & Professional Qualification',223200),(2015,'Male ','Diploma & Professional Qualification',222000),(2006,'Male ','Degree ',243200),(2007,'Male ','Degree ',240300),(2008,'Male ','Degree ',268700),(2009,'Male ','Degree ',280800),(2010,'Male ','Degree ',302100),(2011,'Male ','Degree ',307100),(2012,'Male ','Degree ',327200),(2013,'Male ','Degree ',350600),(2014,'Male ','Degree ',363300),(2015,'Male ','Degree ',368600),(2006,'Female','Diploma & Professional Qualification',123900),(2007,'Female','Diploma & Professional Qualification',130600),(2008,'Female','Diploma & Professional Qualification',142800),(2009,'Female','Diploma & Professional Qualification',141800),(2010,'Female','Diploma & Professional Qualification',160700),(2011,'Female','Diploma & Professional Qualification',163300),(2012,'Female','Diploma & Professional Qualification',173400),(2013,'Female','Diploma & Professional Qualification',171500),(2014,'Female','Diploma & Professional Qualification',187700),(2015,'Female','Diploma & Professional Qualification',191600),(2006,'Female','Degree ',181200),(2007,'Female','Degree ',181800),(2008,'Female','Degree ',210900),(2009,'Female','Degree ',221300),(2010,'Female','Degree ',242500),(2011,'Female','Degree ',262200),(2012,'Female','Degree ',274600),(2013,'Female','Degree ',298500),(2014,'Female','Degree ',308500),(2015,'Female','Degree ',325500);
/*!40000 ALTER TABLE `employed residents by qualifications_mabel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:01
