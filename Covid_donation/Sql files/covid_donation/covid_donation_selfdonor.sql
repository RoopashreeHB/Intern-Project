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
-- Table structure for table `selfdonor`
--

DROP TABLE IF EXISTS `selfdonor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `selfdonor` (
  `sdonor_id` int NOT NULL AUTO_INCREMENT,
  `sfname` varchar(35) NOT NULL,
  `slname` varchar(35) NOT NULL,
  `sphno` decimal(10,0) NOT NULL,
  `semail` varchar(45) NOT NULL,
  `saddress` varchar(50) NOT NULL,
  `spswd` varchar(20) NOT NULL,
  PRIMARY KEY (`sdonor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selfdonor`
--

LOCK TABLES `selfdonor` WRITE;
/*!40000 ALTER TABLE `selfdonor` DISABLE KEYS */;
INSERT INTO `selfdonor` VALUES (101,'sushma','Prabhu',9008285643,'sushma@gmail.com','Tumkur','sushma'),(102,'Akash','k',9817215643,'akash97@gmail.com','Banglore','akash'),(103,'Rashmi','Gowda',9092887263,'rashmi.gowda@gmail.com','Mysore','rashmi'),(104,'Kiran','Kumar',8270192943,'kiran43@gmail.com','Banglore','kiran'),(105,'Karan','J',9027472819,'karan.32@gmail.com','Banglore','karan'),(107,'Amar','Kumar',9876523019,'amar@gmail.com','Mysore','null'),(108,'Ramu','K',8725012789,'ramu@gmail.com','Banglore','null'),(109,'Rekha','L',9803712543,'rekha@gmail.com','Mysore','null');
/*!40000 ALTER TABLE `selfdonor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 11:21:58
