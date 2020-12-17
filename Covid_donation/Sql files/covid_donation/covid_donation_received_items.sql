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
-- Table structure for table `received_items`
--

DROP TABLE IF EXISTS `received_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `received_items` (
  `item_no` int NOT NULL AUTO_INCREMENT,
  `itemname` varchar(35) NOT NULL,
  `quantity` int NOT NULL,
  `donatedby` int NOT NULL,
  `receivedby` int NOT NULL,
  `donor_type` varchar(35) NOT NULL,
  `received_date` date NOT NULL,
  PRIMARY KEY (`item_no`),
  KEY `fk3` (`donatedby`),
  KEY `fk2` (`receivedby`),
  CONSTRAINT `fk2` FOREIGN KEY (`receivedby`) REFERENCES `requested_items` (`requestedby`),
  CONSTRAINT `fk3` FOREIGN KEY (`donatedby`) REFERENCES `donated_items` (`donatedby`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `received_items`
--

LOCK TABLES `received_items` WRITE;
/*!40000 ALTER TABLE `received_items` DISABLE KEYS */;
INSERT INTO `received_items` VALUES (1,'Mask',900,102,401,'SelfDonor','2020-08-05'),(2,'Sanitzer',500,103,402,'SelfDonor','2020-07-25'),(5,'Sanitizer',1000,101,405,'SelfDonor','2020-10-07'),(8,'Sanitizer',1000,206,409,'CharityDonor','2020-10-14');
/*!40000 ALTER TABLE `received_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 11:21:51
