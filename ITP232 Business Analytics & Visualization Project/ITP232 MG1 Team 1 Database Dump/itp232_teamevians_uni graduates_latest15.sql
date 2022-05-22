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
-- Table structure for table `uni graduates_latest15`
--

DROP TABLE IF EXISTS `uni graduates_latest15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni graduates_latest15` (
  `NumberofYears` int(11) DEFAULT NULL,
  `Degree` text,
  `NTU` text,
  `NUS` text,
  `SMU` text,
  `EmploymentNo` int(11) DEFAULT NULL,
  `EmploymentRate(%)` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni graduates_latest15`
--

LOCK TABLES `uni graduates_latest15` WRITE;
/*!40000 ALTER TABLE `uni graduates_latest15` DISABLE KEYS */;
INSERT INTO `uni graduates_latest15` VALUES (3,'Bachelor of Accountancy','NTU','','',366,96.1),(3,'Bachelor of Arts','','NUS','',252,65.3),(3,'Bachelor of Business Administration (Accountancy)','','NUS','',44,89.8),(3,'Bachelor of Business Administration; Bachelor of Business',' NTU','NUS','',352,81.1),(3,'Bachelor of Science','','NUS','',140,61.4),(3,'Bachelor of Accountancy','','','SMU',171,91.4),(3,'Bachelor of Arts (Chinese) (Honours)','NTU','','',69,75.8),(3,'Bachelor of Arts (Economics) (Honours)','NTU','','',76,78.4),(3,'Bachelor of Arts (Education) / Bachelor of Arts with Diploma in Education','NTU','','',242,100),(3,'Bachelor of Arts (Honours)','','NUS','',95,76.6),(3,'Bachelor of Arts (Sociology) (Honours)','NTU','','',38,67.9),(3,'Bachelor of Business Administration (Accountancy) (Honours)','','NUS','',79,96.3),(3,'Bachelor of Business Administration (Honours); Bachelor of Business Management','','NUS',' SMU',526,87.5),(3,'Bachelor of Communication Studies (Honours)','NTU','','',88,77.9),(3,'Bachelor of Computing (Honours)','','NUS','',201,87.8),(3,'Bachelor of Dental Surgery','','NUS','',31,100),(3,'Bachelor of Engineering (Aerospace Engineering)','NTU','','',43,82.7),(3,'Bachelor of Engineering (Biomedical Engineering); Bachelor of Engineering (Bioengineering)',' NTU','NUS','',99,72.3),(3,'Bachelor of Engineering (Chemical & Biomolecular Engineering)','NTU','','',89,76.1),(3,'Bachelor of Engineering (Chemical)','','NUS','',133,76.4),(3,'Bachelor of Engineering (Civil)',' NTU','NUS','',172,94.5),(3,'Bachelor of Engineering (Computer Science)','NTU','','',223,93.7),(4,'Bachelor of Engineering (Computer); Bachelor of Engineering (Computer Engineering)',' NTU','NUS','',200,90.5),(4,'Bachelor of Engineering (Electrical); Bachelor of Engineering (Electrical & Electronic Engineering)',' NTU','NUS','',520,88.3),(4,'Bachelor of Engineering (Environmental)',' NTU','NUS','',76,87.4),(4,'Bachelor of Engineering (Industrial & Systems Engineering)','','NUS','',55,96.5),(4,'Bachelor of Engineering (Information Engineering and Media)','NTU','','',41,73.2),(4,'Bachelor of Engineering (Materials Engineering)','NTU','','',129,77.7),(4,'Bachelor of Engineering (Materials Science & Engineering)','','NUS','',31,73.8),(4,'Bachelor of Engineering (Mechanical)',' NTU','NUS','',527,88.1),(4,'Bachelor of Fine Arts (Arts, Design & Media)','NTU','','',68,68),(4,'Bachelor of Science (Biological Sciences) (Honours)','NTU','','',115,60.8),(4,'Bachelor of Science (Chemistry & Biological Chemistry) (Honours)','NTU','','',84,68.3),(4,'Bachelor of Science (Economics)','','','SMU',120,83.9),(4,'Bachelor of Science (Education) / Bachelor of Science with Diploma in Education','NTU','','',99,100),(4,'Bachelor of Science (Honours)','','NUS','',295,75.8),(4,'Bachelor of Science (Information Systems Management)','','','SMU',158,80.6),(4,'Bachelor of Science (Maritime Studies)','NTU','','',37,92.5),(4,'Bachelor of Science (Mathematical Sciences)','NTU','','',55,79.7),(4,'Bachelor of Science (Mathematics & Economics)','NTU','','',60,87),(4,'Bachelor of Science (Nursing)','','NUS','',43,95.6),(4,'Bachelor of Science (Project & Facilities Management)','','NUS','',80,94.1),(4,'Bachelor of Science (Real Estate)','','NUS','',91,89.2),(4,'Bachelor of Social Sciences (Honours); Bachelor of Social Sciences','','NUS',' SMU',465,80.7),(4,'Bachelor of Accountancy & Bachelor of Business','NTU','','',109,95.6);
/*!40000 ALTER TABLE `uni graduates_latest15` ENABLE KEYS */;
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
