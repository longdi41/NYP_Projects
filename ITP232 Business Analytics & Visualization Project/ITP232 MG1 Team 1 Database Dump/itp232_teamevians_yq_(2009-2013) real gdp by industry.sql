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
-- Table structure for table `yq_(2009-2013) real gdp by industry`
--

DROP TABLE IF EXISTS `yq_(2009-2013) real gdp by industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yq_(2009-2013) real gdp by industry` (
  `Year` int(11) DEFAULT NULL,
  `Sector` text,
  `Real GDP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yq_(2009-2013) real gdp by industry`
--

LOCK TABLES `yq_(2009-2013) real gdp by industry` WRITE;
/*!40000 ALTER TABLE `yq_(2009-2013) real gdp by industry` DISABLE KEYS */;
INSERT INTO `yq_(2009-2013) real gdp by industry` VALUES (2009,'Manufacturing ',100),(2010,'Manufacturing ',130),(2011,'Manufacturing ',137),(2012,'Manufacturing ',126),(2013,'Manufacturing ',118),(2009,'Construction',140),(2010,'Construction',150),(2011,'Construction',158),(2012,'Construction',170),(2013,'Construction',178),(2009,'Wholesale Retail trade',100),(2010,'Wholesale Retail trade',110),(2011,'Wholesale Retail trade',112),(2012,'Wholesale Retail trade',110),(2013,'Wholesale Retail trade',109),(2009,'Transportation & Storage',94),(2010,'Transportation & Storage',105),(2011,'Transportation & Storage',105),(2012,'Transportation & Storage',100),(2013,'Transportation & Storage',101),(2009,'Information & Communications',130),(2010,'Information & Communications',120),(2011,'Information & Communications',120),(2012,'Information & Communications',124),(2013,'Information & Communications',121),(2009,'Finance & Insurance',118),(2010,'Finance & Insurance',122),(2011,'Finance & Insurance',140),(2012,'Finance & Insurance',135),(2013,'Finance & Insurance',145),(2009,'Business Services ',120),(2010,'Business Services ',120),(2011,'Business Services ',125),(2012,'Business Services ',138),(2013,'Business Services ',125);
/*!40000 ALTER TABLE `yq_(2009-2013) real gdp by industry` ENABLE KEYS */;
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
