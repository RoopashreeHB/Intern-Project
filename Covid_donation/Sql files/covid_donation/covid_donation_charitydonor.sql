-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: covid_donation
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `charitydonor`
--

DROP TABLE IF EXISTS `charitydonor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `charitydonor` (
  `cdonor_id` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(35) NOT NULL,
  `cphno` decimal(10,0) NOT NULL,
  `cemail` varchar(45) NOT NULL,
  `caddress` varchar(50) NOT NULL,
  `cpswd` varchar(20) NOT NULL,
  PRIMARY KEY (`cdonor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `charitydonor`
--

LOCK TABLES `charitydonor` WRITE;
/*!40000 ALTER TABLE `charitydonor` DISABLE KEYS */;
INSERT INTO `charitydonor` VALUES (201,'charity1',9008825643,'charity@gmail.com','Mysore','charity1'),(203,'charity3',8676109643,'charity3@gmail.com','Raichur','charity3'),(204,'charity4',8726501292,'charity4@gmail.com','Banglore','charity4'),(205,'charity5',9837673818,'charity5@gmail.com','Banglore','charity5'),(206,'charityn',9083721092,'charityn@gmail.com','Banglore','null'),(207,'charityk',9083021345,'charityk@gmail.com','Mysore','null'),(208,'charityh',8384721092,'charityh@gmail.com','Manglore','null'),(209,'charityn',9820126721,'charity@gmail.com','Banglore','null');
/*!40000 ALTER TABLE `charitydonor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 11:21:55
