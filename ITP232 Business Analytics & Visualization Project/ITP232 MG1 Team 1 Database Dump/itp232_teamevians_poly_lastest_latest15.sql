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
-- Table structure for table `poly_lastest_latest15`
--

DROP TABLE IF EXISTS `poly_lastest_latest15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `poly_lastest_latest15` (
  `Categories` text,
  `Courses` text,
  `NYP` text,
  `NP` text,
  `RP` text,
  `SP` text,
  `TP` text,
  `EmploymentNumber` text,
  `EmploymentPercentage` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poly_lastest_latest15`
--

LOCK TABLES `poly_lastest_latest15` WRITE;
/*!40000 ALTER TABLE `poly_lastest_latest15` DISABLE KEYS */;
INSERT INTO `poly_lastest_latest15` VALUES ('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Aeronautical & Aerospace Technology; Aeronautical Engineering; Aerospace Engineering; Aerospace Technology','NYP',' NP',' RP',' SP',' TP','40','71.4'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Aerospace Avionics; Aerospace Electronics; Aerospace Systems and Management','NYP',' NP',' RP',' SP',' TP','36','64.3'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Automation & Mechatronic Systems; Mechatronic Engineering; Mechatronics; Mechatronics & Robotics; Mechatronics Engineering','NYP',' NP','',' SP',' TP','90','73.8'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Bioelectronics; Bioengineering; Biomedical Electronics; Biomedical Engineering; Biomedical Informatics & Engineering','NYP',' NP',' RP',' SP',' TP','47','49.5'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Chemical & Biomolecular Engineering; Chemical Engineering','','NP','',' SP',' TP','s','s'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Communications and Automation Electronics; Computer Engineering; Electronic & Computer Engineering; Electronics; Electronics & Communication Engineering; Electronics, Computer & Communications Engineering; Media & Communication Technology; Microelectronics','NYP',' NP',' RP',' SP',' TP','165','65.2'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Digital & Precision Engineering','NYP','','','','','42','91.3'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Electrical & Electronic Engineering; Electrical Engineering; Electrical Engineering with Eco-Design','NYP',' NP','',' SP','','77','65.8'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Facilities Management for Business; Hotel & Leisure Facilities Management; Integrated Facility Design & Management; Integrated Facility Management; Leisure & Business Facilities Management; Property Development & Facilities Management','','NP','',' SP',' TP','76','62.3'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Green Building & Sustainability; Intelligent Building Technology','','','','','TP','33','67.3'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Infocomm & Network Engineering; Info-Communication Engineering & Design; Info-Communications; Information Communication Technology','','','','SP',' TP','37','68.5'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Mechanical Engineering','','NP','',' SP','','52','66.7'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Multimedia & InfoComm Technology; Telematics & Media Technology','NYP','','','','','33','53.2'),('BUILT ENVIRONMENT, ENGINEERING & MARITIME','Supply Chain Management','','','RP','','','37','82.2'),('INFORMATION & DIGITAL TECHNOLOGIES','Cyber & Digital Security; Digital Forensics; Infocomm Security Management; Information Security; Network Systems and Security','NYP',' NP','',' SP',' TP','32','82.1'),('INFORMATION & DIGITAL TECHNOLOGIES','Digital Media; Interactive & Digital Media; Multimedia & Animation; Multimedia Technology','','NP',' RP',' SP','','s','s'),('INFORMATION & DIGITAL TECHNOLOGIES','Information Technology','NYP',' NP',' RP',' SP',' TP','106','62.7'),('APPLIED SCIENCES','Applied Food Science & Nutrition; Food Science; Food Science & Nutrition; Food Science & Technology','NYP','','',' SP',' TP','62','50'),('APPLIED SCIENCES','Biomedical Lab Technology; Biomedical Science; Biomedical Sciences','','NP',' RP',' SP',' TP','45','39.8'),('APPLIED SCIENCES','Biotechnology; Molecular Biotechnology','NYP',' NP',' RP',' SP',' TP','63','45'),('APPLIED SCIENCES','Pharmaceutical Science; Pharmaceutical Sciences; Pharmacy Science','NYP',' NP',' RP','',' TP','128','59.5'),('HEALTH SCIENCES','Diagnostic Radiography; Radiation Therapy','NYP','','','','','31','96.9'),('HEALTH SCIENCES','Health Management and Promotion; Healthcare Administration','','','RP','','','36','64.3'),('HEALTH SCIENCES','Health Sciences (Nursing); Nursing','NYP',' NP','','','','544','90.5'),('HEALTH SCIENCES','Optometry','','NP','',' SP','','46','85.2'),('BUSINESS, MANAGEMENT, DESIGN & OTHERS','Accountancy; Accountancy & Finance; Accounting & Finance','NYP',' NP','',' SP',' TP','78','55.7'),('BUSINESS, MANAGEMENT, DESIGN & OTHERS','Advertising & Public Relations; Communications & Media Management; Mass Communication; Mass Media Management; Media & Communication; Media Studies & Management; New Media','NYP',' NP',' RP',' SP',' TP','72','34.4'),('BUSINESS, MANAGEMENT, DESIGN & OTHERS','Animation & 3D; Digital Animation; Digital Media Design; Digital Media Design (Animation); Digital Visual Effects; Film, Sound & Video; Motion Graphics & Broadcast Design; Moving Images; Visual Effects & Motion Graphics','NYP',' NP','',' SP',' TP','65','55.1'),('BUSINESS, MANAGEMENT, DESIGN & OTHERS','Business; Business Administration; Business Management; Business Studies; International Business','NYP',' NP','',' SP',' TP','126','41.4'),('BUSINESS, MANAGEMENT, DESIGN & OTHERS','Child Psychology & Early Education; Early Childhood Education; Early Childhood Studies','','NP','','',' TP','104','80'),('BUSINESS, MANAGEMENT, DESIGN & OTHERS','Creative Media Design; Visual Communication; Visual Communication & Media Design','NYP','','',' SP',' TP','50','52.6'),('BUSINESS, MANAGEMENT, DESIGN & OTHERS','Customer Relationship and Service Management','','','RP','','','55','61.8'),('BUSINESS, MANAGEMENT, DESIGN & OTHERS','Hospitality & Tourism Management; Hospitality and Resort Management; Hotel and Hospitality Management; Integrated Events & Project Management; Integrated Events Management; Leisure & Resort Management; Tourism & Resort Management','NYP',' NP',' RP',' SP',' TP','219','49.1'),('BUSINESS, MANAGEMENT, DESIGN & OTHERS','Interior Architecture & Design; Interior Design; Retail & Hospitality Design; Space & Interior Design','NYP','','',' SP',' TP','57','79.2'),('BUSINESS, MANAGEMENT, DESIGN & OTHERS','Marketing; Retail Management','NYP','','','',' TP','38','50'),('HYBRID COURSES','Business Application; Business Computing; Business Informatics; Business Information Systems; Business Information Technology','NYP',' NP',' RP',' SP',' TP','148','48.2'),('HYBRID COURSES','Financial Business Informatics; Financial Informatics','NYP',' NP','',' SP',' TP','35','57.4');
/*!40000 ALTER TABLE `poly_lastest_latest15` ENABLE KEYS */;
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
