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
-- Table structure for table `numofgrad_v2_mabel`
--

DROP TABLE IF EXISTS `numofgrad_v2_mabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `numofgrad_v2_mabel` (
  `Year` int(11) DEFAULT NULL,
  `Sex` text,
  `Education Type` text,
  `Name of Institution` text,
  `Number of Graduates` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `numofgrad_v2_mabel`
--

LOCK TABLES `numofgrad_v2_mabel` WRITE;
/*!40000 ALTER TABLE `numofgrad_v2_mabel` DISABLE KEYS */;
INSERT INTO `numofgrad_v2_mabel` VALUES (2006,'Male ','University ','NUS',2566),(2006,'Female','University ','NUS',3055),(2007,'Male','University','NUS',2557),(2007,'Female','University','NUS',2943),(2008,'Male','University','NUS',2619),(2008,'Female','University','NUS',2982),(2009,'Male','University','NUS',2767),(2009,'Female','University','NUS',3012),(2010,'Male','University','NUS ',2709),(2010,'Female','University','NUS ',3124),(2011,'Male ','University','NUS',2685),(2011,'Female','University','NUS ',3403),(2012,'Male','University','NUS ',2820),(2012,'Female','University','NUS ',3149),(2013,'Male','University ','NUS ',3114),(2013,'Female','University ','NUS',3281),(2014,'Male','University ','NUS ',2986),(2014,'Female','University ','NUS',3224),(2015,'Male','University ','NUS ',2987),(2015,'Female','University ','NUS',3192),(2006,'Male ','University ','NTU',2267),(2006,'Female','University ','NTU',1974),(2007,'Male','University','NTU',2718),(2007,'Female','University','NTU',2127),(2008,'Male','University','NTU',2522),(2008,'Female','University','NTU',2286),(2009,'Male','University','NTU',2488),(2009,'Female','University','NTU',2570),(2010,'Male','University','NTU',2868),(2010,'Female','University','NTU',2544),(2011,'Male ','University','NTU',2782),(2011,'Female','University','NTU',2951),(2012,'Male','University','NTU',2898),(2012,'Female','University','NTU',2909),(2013,'Male','University ','NTU',3166),(2013,'Female','University ','NTU',3310),(2014,'Male','University ','NTU',3042),(2014,'Female','University ','NTU',2951),(2015,'Male','University ','NTU',2979),(2015,'Female','University ','NTU',2777),(2006,'Male ','University ','SMU',166),(2006,'Female','University ','SMU',399),(2007,'Male','University','SMU',326),(2007,'Female','University','SMU',500),(2008,'Male','University','SMU',424),(2008,'Female','University','SMU',686),(2009,'Male','University','SMU',548),(2009,'Female','University','SMU',562),(2010,'Male','University','SMU',660),(2010,'Female','University','SMU',546),(2011,'Male ','University','SMU',673),(2011,'Female','University','SMU',831),(2012,'Male','University','SMU',684),(2012,'Female','University','SMU',919),(2013,'Male','University ','SMU',825),(2013,'Female','University ','SMU',834),(2014,'Male','University ','SMU',830),(2014,'Female','University ','SMU',772),(2015,'Male','University ','SMU',799),(2015,'Female','University ','SMU',840),(2006,'Male ','University ','SIT',0),(2006,'Female','University ','SIT',0),(2007,'Male','University','SIT',0),(2007,'Female','University','SIT',0),(2008,'Male','University','SIT',0),(2008,'Female','University','SIT',0),(2009,'Male','University','SIT',0),(2009,'Female','University','SIT',0),(2010,'Male','University','SIT',0),(2010,'Female','University','SIT',0),(2011,'Male ','University','SIT',0),(2011,'Female','University','SIT',0),(2012,'Male','University','SIT',99),(2012,'Female','University','SIT',134),(2013,'Male','University ','SIT',399),(2013,'Female','University ','SIT',559),(2014,'Male','University ','SIT',653),(2014,'Female','University ','SIT',583),(2015,'Male','University ','SIT',762),(2015,'Female','University ','SIT',602),(2006,'Male ','University ','SUTD',0),(2006,'Female','University ','SUTD',0),(2007,'Male','University','SUTD',0),(2007,'Female','University','SUTD',0),(2008,'Male','University','SUTD',0),(2008,'Female','University','SUTD',0),(2009,'Male','University','SUTD',0),(2009,'Female','University','SUTD',0),(2010,'Male','University','SUTD',0),(2010,'Female','University','SUTD',0),(2011,'Male ','University','SUTD',0),(2011,'Female','University','SUTD',0),(2012,'Male','University','SUTD',0),(2012,'Female','University','SUTD',0),(2013,'Male','University ','SUTD',0),(2013,'Female','University ','SUTD',0),(2014,'Male','University ','SUTD',0),(2014,'Female','University ','SUTD',0),(2015,'Male','University ','SUTD',162),(2015,'Female','University ','SUTD',136),(2006,'Male ','University ','UniSIM',0),(2006,'Female','University ','UniSIM',0),(2007,'Male','University','UniSIM',0),(2007,'Female','University','UniSIM',0),(2008,'Male','University','UniSIM',0),(2008,'Female','University','UniSIM',0),(2009,'Male','University','UniSIM',0),(2009,'Female','University','UniSIM',0),(2010,'Male','University','UniSIM',0),(2010,'Female','University','UniSIM',0),(2011,'Male ','University','UniSIM',0),(2011,'Female','University','UniSIM',0),(2012,'Male','University','UniSIM',0),(2012,'Female','University','UniSIM',0),(2013,'Male','University ','UniSIM',0),(2013,'Female','University ','UniSIM',0),(2014,'Male','University ','UniSIM',0),(2014,'Female','University ','UniSIM',0),(2015,'Male','University ','UniSIM',0),(2015,'Female','University ','UniSIM',0),(2006,'Male ','Polytechnic','Singapore',2529),(2006,'Female','Polytechnic','Singapore',1574),(2007,'Male','Polytechnic','Singapore',2421),(2007,'Female','Polytechnic','Singapore',1532),(2008,'Male','Polytechnic','Singapore',2606),(2008,'Female','Polytechnic','Singapore',1644),(2009,'Male','Polytechnic','Singapore',2724),(2009,'Female','Polytechnic','Singapore',1610),(2010,'Male','Polytechnic','Singapore',2927),(2010,'Female','Polytechnic','Singapore',1700),(2011,'Male ','Polytechnic','Singapore',2939),(2011,'Female','Polytechnic','Singapore',1982),(2012,'Male','Polytechnic','Singapore',2956),(2012,'Female','Polytechnic','Singapore',2060),(2013,'Male','Polytechnic','Singapore',2941),(2013,'Female','Polytechnic','Singapore',2141),(2014,'Male','Polytechnic','Singapore',3031),(2014,'Female','Polytechnic','Singapore',1995),(2015,'Male','Polytechnic','Singapore',3069),(2015,'Female','Polytechnic','Singapore',1988),(2006,'Male ','Polytechnic','Ngee Ann',2094),(2006,'Female','Polytechnic','Ngee Ann',1990),(2007,'Male','Polytechnic','Ngee Ann',2102),(2007,'Female','Polytechnic','Ngee Ann',1911),(2008,'Male','Polytechnic','Ngee Ann',2257),(2008,'Female','Polytechnic','Ngee Ann',2247),(2009,'Male','Polytechnic','Ngee Ann',2395),(2009,'Female','Polytechnic','Ngee Ann',2186),(2010,'Male','Polytechnic','Ngee Ann',2300),(2010,'Female','Polytechnic','Ngee Ann',2237),(2011,'Male ','Polytechnic','Ngee Ann',2420),(2011,'Female','Polytechnic','Ngee Ann',2437),(2012,'Male','Polytechnic','Ngee Ann',2523),(2012,'Female','Polytechnic','Ngee Ann',2432),(2013,'Male','Polytechnic','Ngee Ann',2563),(2013,'Female','Polytechnic','Ngee Ann',2420),(2014,'Male','Polytechnic','Ngee Ann',2653),(2014,'Female','Polytechnic','Ngee Ann',2513),(2015,'Male','Polytechnic','Ngee Ann',2614),(2015,'Female','Polytechnic','Ngee Ann',2568),(2006,'Male ','Polytechnic','Temasek',1858),(2006,'Female','Polytechnic','Temasek',1860),(2007,'Male','Polytechnic','Temasek',1925),(2007,'Female','Polytechnic','Temasek',2003),(2008,'Male','Polytechnic','Temasek',2166),(2008,'Female','Polytechnic','Temasek',2399),(2009,'Male','Polytechnic','Temasek',2419),(2009,'Female','Polytechnic','Temasek',2396),(2010,'Male','Polytechnic','Temasek',2419),(2010,'Female','Polytechnic','Temasek',2429),(2011,'Male ','Polytechnic','Temasek',2591),(2011,'Female','Polytechnic','Temasek',2429),(2012,'Male','Polytechnic','Temasek',2588),(2012,'Female','Polytechnic','Temasek',2545),(2013,'Male','Polytechnic','Temasek',2439),(2013,'Female','Polytechnic','Temasek',2447),(2014,'Male','Polytechnic','Temasek',2557),(2014,'Female','Polytechnic','Temasek',2559),(2015,'Male','Polytechnic','Temasek',2590),(2015,'Female','Polytechnic','Temasek',2529),(2006,'Male ','Polytechnic','Nanyang ',1729),(2006,'Female','Polytechnic','Nanyang ',2385),(2007,'Male','Polytechnic','Nanyang ',1946),(2007,'Female','Polytechnic','Nanyang ',2645),(2008,'Male','Polytechnic','Nanyang ',2056),(2008,'Female','Polytechnic','Nanyang ',2391),(2009,'Male','Polytechnic','Nanyang ',2109),(2009,'Female','Polytechnic','Nanyang ',2279),(2010,'Male','Polytechnic','Nanyang ',1981),(2010,'Female','Polytechnic','Nanyang ',2502),(2011,'Male ','Polytechnic','Nanyang ',2293),(2011,'Female','Polytechnic','Nanyang ',2536),(2012,'Male','Polytechnic','Nanyang ',2321),(2012,'Female','Polytechnic','Nanyang ',2644),(2013,'Male','Polytechnic','Nanyang ',2417),(2013,'Female','Polytechnic','Nanyang ',2729),(2014,'Male','Polytechnic','Nanyang ',2380),(2014,'Female','Polytechnic','Nanyang ',2603),(2015,'Male','Polytechnic','Nanyang ',2242),(2015,'Female','Polytechnic','Nanyang ',2400),(2006,'Male ','Polytechnic','Republic',328),(2006,'Female','Polytechnic','Republic',291),(2007,'Male','Polytechnic','Republic',493),(2007,'Female','Polytechnic','Republic',435),(2008,'Male','Polytechnic','Republic',736),(2008,'Female','Polytechnic','Republic',815),(2009,'Male','Polytechnic','Republic',987),(2009,'Female','Polytechnic','Republic',1119),(2010,'Male','Polytechnic','Republic',1359),(2010,'Female','Polytechnic','Republic',1594),(2011,'Male ','Polytechnic','Republic',1569),(2011,'Female','Polytechnic','Republic',1722),(2012,'Male','Polytechnic','Republic',1847),(2012,'Female','Polytechnic','Republic',2083),(2013,'Male','Polytechnic','Republic',1937),(2013,'Female','Polytechnic','Republic',2123),(2014,'Male','Polytechnic','Republic',2088),(2014,'Female','Polytechnic','Republic',2342),(2015,'Male','Polytechnic','Republic',2135),(2015,'Female','Polytechnic','Republic',2496);
/*!40000 ALTER TABLE `numofgrad_v2_mabel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:04