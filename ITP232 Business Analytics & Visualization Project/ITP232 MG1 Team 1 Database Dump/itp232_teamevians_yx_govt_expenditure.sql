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
-- Table structure for table `yx_govt_expenditure`
--

DROP TABLE IF EXISTS `yx_govt_expenditure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_govt_expenditure` (
  `Year` int(11) DEFAULT NULL,
  `Sector Group` text,
  `Sector` text,
  `Operating Expenditure` text,
  `Path` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_govt_expenditure`
--

LOCK TABLES `yx_govt_expenditure` WRITE;
/*!40000 ALTER TABLE `yx_govt_expenditure` DISABLE KEYS */;
INSERT INTO `yx_govt_expenditure` VALUES (1997,'Social Development','Education','3348',1),(1997,'Social Development','National Development','441',2),(1997,'Social Development','Health','896',3),(1997,'Social Development','Environment and Water Resources','318',4),(1997,'Social Development','Culture, Community and Youth','na',5),(1997,'Social Development','Social and Family Development','290',6),(1997,'Social Development','Communications and Information','186',7),(1997,'Social Development','Manpower (Financial Security)','na',8),(1997,'Security and External Relations','Defence','6097',9),(1997,'Security and External Relations','Home Affairs','994',10),(1997,'Security and External Relations','Foreign Affairs','143',11),(1997,'Economic Development','Transport','314',12),(1997,'Economic Development','Trade and Industry','341',13),(1997,'Economic Development','Manpower (excl. Financial Security)','53',14),(1997,'Economic Development','Info-Communications and Media Development','na',15),(1997,'Government Administration','Finance','298',16),(1997,'Government Administration','Law','89',17),(1997,'Government Administration','Organs of State','150',18),(1997,'Government Administration','Prime Minister\'s Office','121',19),(1998,'Social Development','Education','3167',20),(1998,'Social Development','National Development','402',21),(1998,'Social Development','Health','992',22),(1998,'Social Development','Environment and Water Resources','314',23),(1998,'Social Development','Culture, Community and Youth','na',24),(1998,'Social Development','Social and Family Development','363',25),(1998,'Social Development','Communications and Information','194',26),(1998,'Social Development','Manpower (Financial Security)','na',27),(1998,'Security and External Relations','Defence','6481',28),(1998,'Security and External Relations','Home Affairs','1032',29),(1998,'Security and External Relations','Foreign Affairs','148',30),(1998,'Economic Development','Transport','442',31),(1998,'Economic Development','Trade and Industry','315',32),(1998,'Economic Development','Manpower (excl. Financial Security)','136',33),(1998,'Economic Development','Info-Communications and Media Development','na',34),(1998,'Government Administration','Finance','310',35),(1998,'Government Administration','Law','97',36),(1998,'Government Administration','Organs of State','135',37),(1998,'Government Administration','Prime Minister\'s Office','123',38),(1999,'Social Development','Education','3257',39),(1999,'Social Development','National Development','358',40),(1999,'Social Development','Health','936',41),(1999,'Social Development','Environment and Water Resources','329',42),(1999,'Social Development','Culture, Community and Youth','na',43),(1999,'Social Development','Social and Family Development','310',44),(1999,'Social Development','Communications and Information','220',45),(1999,'Social Development','Manpower (Financial Security)','na',46),(1999,'Security and External Relations','Defence','6647',47),(1999,'Security and External Relations','Home Affairs','1101',48),(1999,'Security and External Relations','Foreign Affairs','153',49),(1999,'Economic Development','Transport','409',50),(1999,'Economic Development','Trade and Industry','366',51),(1999,'Economic Development','Manpower (excl. Financial Security)','91',52),(1999,'Economic Development','Info-Communications and Media Development','na',53),(1999,'Government Administration','Finance','339',54),(1999,'Government Administration','Law','109',55),(1999,'Government Administration','Organs of State','136',56),(1999,'Government Administration','Prime Minister\'s Office','108',57),(2000,'Social Development','Education','4277',58),(2000,'Social Development','National Development','325',59),(2000,'Social Development','Health','1072',60),(2000,'Social Development','Environment and Water Resources','390',61),(2000,'Social Development','Culture, Community and Youth','na',62),(2000,'Social Development','Social and Family Development','377',63),(2000,'Social Development','Communications and Information','213',64),(2000,'Social Development','Manpower (Financial Security)','na',65),(2000,'Security and External Relations','Defence','6561',66),(2000,'Security and External Relations','Home Affairs','1300',67),(2000,'Security and External Relations','Foreign Affairs','180',68),(2000,'Economic Development','Transport','2390',69),(2000,'Economic Development','Trade and Industry','412',70),(2000,'Economic Development','Manpower (excl. Financial Security)','107',71),(2000,'Economic Development','Info-Communications and Media Development','na',72),(2000,'Government Administration','Finance','388',73),(2000,'Government Administration','Law','120',3);
/*!40000 ALTER TABLE `yx_govt_expenditure` ENABLE KEYS */;
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
