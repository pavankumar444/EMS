-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 62.72.28.52    Database: u276789778_payroll
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `EMS_employees`
--

DROP TABLE IF EXISTS `EMS_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EMS_employees` (
  `EMS_id` int(11) NOT NULL AUTO_INCREMENT,
  `EMS_employee_id` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `email` varchar(150) NOT NULL,
  `date_of_joining` date NOT NULL,
  `work_location` varchar(300) NOT NULL,
  `annual_ctc` int(100) NOT NULL,
  `personal_email` varchar(45) NOT NULL,
  `age` int(100) NOT NULL,
  `fathers_name` varchar(45) NOT NULL,
  `pan` varchar(45) NOT NULL,
  `address_line1` varchar(500) NOT NULL DEFAULT 'null',
  `address_line2` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `pincode` varchar(45) NOT NULL,
  `status` tinyint(2) DEFAULT 1,
  `organization_id` int(11) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `password` varchar(45) NOT NULL,
  `user_role` varchar(45) DEFAULT 'ems_employee',
  PRIMARY KEY (`EMS_id`),
  UNIQUE KEY `employee_id_UNIQUE` (`EMS_employee_id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `organization_id_idx` (`organization_id`),
  KEY `organization_id` (`organization_id`),
  KEY `orga` (`organization_id`),
  KEY `DESIGNATION_ID_idx` (`designation_id`),
  KEY `Department_Id_idx` (`department_id`),
  CONSTRAINT `fk_department_id` FOREIGN KEY (`department_id`) REFERENCES `EMS_department` (`department_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_designation_id` FOREIGN KEY (`designation_id`) REFERENCES `EMS_designation` (`designation_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_organization_id_EMS` FOREIGN KEY (`organization_id`) REFERENCES `EMS_organization` (`organization_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-24 10:33:41
