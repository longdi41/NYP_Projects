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
-- Table structure for table `change in employment by sector_mabel`
--

DROP TABLE IF EXISTS `change in employment by sector_mabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `change in employment by sector_mabel` (
  `Industry` text,
  `Sub Industry` text,
  `Year` int(11) DEFAULT NULL,
  `Number of Employed People` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `change in employment by sector_mabel`
--

LOCK TABLES `change in employment by sector_mabel` WRITE;
/*!40000 ALTER TABLE `change in employment by sector_mabel` DISABLE KEYS */;
INSERT INTO `change in employment by sector_mabel` VALUES ('Manufacturing ','Manufacturing ',2006,41600),('Construction ','Construction ',2006,20500),('Services','Wholesale & Retail Trade',2006,18500),('Services','Transportation & Storage ',2006,6000),('Services','Accomodation & Food',2006,12600),('Services','Information & Communications ',2006,6500),('Services','Financial & Insurance',2006,11300),('Services','Professional & Admin Support',2006,29600),('Services','Real Estate',2006,4500),('Services','Community, Social & Personal',2006,3000),('Manufacturing ','Manufacturing ',2007,49300),('Construction ','Construction ',2007,40400),('Services','Wholesale & Retail Trade',2007,19900),('Services','Transportation & Storage ',2007,5000),('Services','Accomodation & Food',2007,16300),('Services','Information & Communications ',2007,6300),('Services','Financial & Insurance',2007,21900),('Services','Professional & Admin Support',2007,33000),('Services','Real Estate',2007,8600),('Services','Community, Social & Personal',2007,5600),('Manufacturing ','Manufacturing ',2008,19500),('Construction ','Construction ',2008,64000),('Services','Wholesale & Retail Trade',2008,16400),('Services','Transportation & Storage ',2008,13700),('Services','Accomodation & Food',2008,16900),('Services','Information & Communications ',2008,5700),('Services','Financial & Insurance',2008,11500),('Services','Professional & Admin Support',2008,29200),('Services','Real Estate',2008,6900),('Services','Community, Social & Personal',2008,6600),('Manufacturing ','Manufacturing ',2009,-43900),('Construction ','Construction ',2009,24000),('Services','Wholesale & Retail Trade',2009,5700),('Services','Transportation & Storage ',2009,-2400),('Services','Accomodation & Food',2009,3200),('Services','Information & Communications ',2009,2900),('Services','Financial & Insurance',2009,2200),('Services','Professional & Admin Support',2009,12100),('Services','Real Estate',2009,3000),('Services','Community, Social & Personal',2009,5200),('Manufacturing ','Manufacturing ',2010,-800),('Construction ','Construction ',2010,3400),('Services','Wholesale & Retail Trade',2010,14500),('Services','Transportation & Storage ',2010,6200),('Services','Accomodation & Food',2010,12700),('Services','Information & Communications ',2010,8800),('Services','Financial & Insurance',2010,11400),('Services','Professional & Admin Support',2010,22800),('Services','Real Estate',2010,2200),('Services','Community, Social & Personal',2010,7400),('Manufacturing ','Manufacturing ',2011,3400),('Construction ','Construction ',2011,22000),('Services','Wholesale & Retail Trade',2011,15900),('Services','Transportation & Storage ',2011,6700),('Services','Accomodation & Food',2011,9200),('Services','Information & Communications ',2011,8000),('Services','Financial & Insurance',2011,10900),('Services','Professional & Admin Support',2011,18000),('Services','Real Estate',2011,3100),('Services','Community, Social & Personal',2011,7500),('Manufacturing ','Manufacturing ',2012,11400),('Construction ','Construction ',2012,39100),('Services','Wholesale & Retail Trade',2012,10100),('Services','Transportation & Storage ',2012,8600),('Services','Accomodation & Food',2012,8000),('Services','Information & Communications ',2012,900),('Services','Financial & Insurance',2012,6500),('Services','Professional & Admin Support',2012,17700),('Services','Real Estate',2012,4800),('Services','Community, Social & Personal',2012,9000),('Manufacturing ','Manufacturing ',2013,5300),('Construction ','Construction ',2013,35200),('Services','Wholesale & Retail Trade',2013,13100),('Services','Transportation & Storage ',2013,8800),('Services','Accomodation & Food',2013,9700),('Services','Information & Communications ',2013,8100),('Services','Financial & Insurance',2013,4600),('Services','Professional & Admin Support',2013,26300),('Services','Real Estate',2013,400),('Services','Community, Social & Personal',2013,8500),('Manufacturing ','Manufacturing ',2014,-4400),('Construction ','Construction ',2014,14300),('Services','Wholesale & Retail Trade',2014,20500),('Services','Transportation & Storage ',2014,7500),('Services','Accomodation & Food',2014,9100),('Services','Information & Communications ',2014,6400),('Services','Financial & Insurance',2014,9300),('Services','Professional & Admin Support',2014,27600),('Services','Real Estate',2014,6900),('Services','Community, Social & Personal',2014,8500),('Manufacturing ','Manufacturing ',2015,-22100),('Construction ','Construction ',2015,8600),('Services','Wholesale & Retail Trade',2015,-9400),('Services','Transportation & Storage ',2015,3100),('Services','Accomodation & Food',2015,4800),('Services','Information & Communications ',2015,5400),('Services','Financial & Insurance',2015,4500),('Services','Professional & Admin Support',2015,9800),('Services','Real Estate',2015,-5100),('Services','Community, Social & Personal',2015,7300);
/*!40000 ALTER TABLE `change in employment by sector_mabel` ENABLE KEYS */;
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
