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
-- Table structure for table `yx_industry_salaries`
--

DROP TABLE IF EXISTS `yx_industry_salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yx_industry_salaries` (
  `Industry` text,
  `Position` text,
  `Qualification` text,
  `Experience (Years)` text,
  `Min. Salary` text,
  `Max. Salary` text,
  `Experience (> 5 Years)` text,
  `Min. Salary (> 5 Years)` text,
  `Max. Salary (> 5 Years)` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yx_industry_salaries`
--

LOCK TABLES `yx_industry_salaries` WRITE;
/*!40000 ALTER TABLE `yx_industry_salaries` DISABLE KEYS */;
INSERT INTO `yx_industry_salaries` VALUES ('Adminstration & Office Support','HR Assistant','Diploma','0-5','1800','3000','> 5','',''),('Adminstration & Office Support','HR Executive/Senior HR Executive','Diploma/Degree','0-5','2400','3500','> 5','3200','4000'),('Adminstration & Office Support','HR Business Partner','Diploma/Degree','0-5','','','> 5','6500','10000'),('Adminstration & Office Support','Senior HR Business Partner','Diploma/Degree','0-5','','','> 5','8000','14000'),('Adminstration & Office Support','HR Manager','Diploma/Degree','0-5','','','> 5','5500','9000'),('Adminstration & Office Support','HR Director','Diploma/Degree','0-5','','','> 5','8000','16000'),('Sales & Customer Service','Customer Service Executive','Diploma','0-5','1500','3000','> 5','',''),('Sales & Customer Service','Telemarketer','Diploma','0-5','1500','2500','>5','',''),('Sales & Customer Service','Call Center Officer ','Diploma','0-5','1500','2500','> 5','',''),('Sales & Customer Service','Customer Service/Call Centre Manager','Diploma/Degree','0-5','','','> 5','3500','5000'),('Sales & Customer Service','Key Account Executive','Diploma/Degree','0-5','2800','4000','> 5','3200','4500'),('Sales & Customer Service','Key Account Manager','Diploma/Degree','0-5','','','> 5','3800','6000'),('Sales & Customer Service','Key Account Director/Account Director','Diploma/Degree','0-5','','','> 5','7000','15000'),('Marketing & Communications','PR Coordinator/Assistant','Diploma','0-5','1800','2500','> 5','',''),('Marketing & Communications','PR Executive','Degree','0-5','3000','4500','> 5','',''),('Marketing & Communications','PR Manager','Bachelor\'s/Master\'s Degree','0-5','','','> 5','5000','8500'),('Marketing & Communications','PR Director','Bachelor\'s/Master\'s Degree','0-5','','','> 5','10000','15000'),('Marketing & Communications','Corporate Communications Manager','Bachelor\'s/Master\'s Degree','0-5','','','> 5','6500','13000'),('Marketing & Communications','Corporate Communications Director','Bachelor\'s/Master\'s Degree','0-5','','','> 5','10000','17000'),('Marketing & Communications','Content Manager/Digital Content Manager','Bachelor\'s/Master\'s Degree','0-5','','','> 5','5000','8500'),('Marketing & Communications','Digital Marketing Manager','Bachelor\'s/Master\'s Degree','0-5','','','> 5','6500','10000'),('Engineering & Technical','Technican/Technical Specialist','NTC/Higher Nitec in Engineering','0-5','1500','3000','> 5','3500','5500'),('Engineering & Technical','Assistant/Associate Engineer/Engineering Assistant','NTC/Higher Nitic/Diploma in Engineering','0-5','2000','3500','> 5','4000','5000'),('Engineering & Technical','Quality Assurance Assistant Engineer','Diploma/Degree in Engineering or Quality Assurance Management','0-5','2500','3500','> 5','4000','5000'),('Engineering & Technical','Pipping Supervisor','NTC/Higher Nitec/Diploma','0-5','2500','3500','> 5','4000','6000'),('Engineering & Technical','Industrial Engineer','Degree in Industrial/Manufacturing Engineering','0-5','3000','5000','> 5','5500','6500'),('Engineering & Technical','Construction Manager','Degree in Engineering','0-5','5000','6500','> 5','7000','12000'),('Engineering & Technical','Project Manager','Degree in Engineering','0-5','5000','6500','> 5','7000','12000'),('Information Technology','Network Engineer','Bachelor\'s Degree in Computer Science/IT','0-5','','3000','> 5','6000','8000');
/*!40000 ALTER TABLE `yx_industry_salaries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-08  8:02:02
