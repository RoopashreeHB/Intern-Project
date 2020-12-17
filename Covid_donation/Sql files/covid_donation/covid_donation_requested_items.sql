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
-- Table structure for table `requested_items`
--

DROP TABLE IF EXISTS `requested_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requested_items` (
  `item_no` int NOT NULL AUTO_INCREMENT,
  `itemname` varchar(35) NOT NULL,
  `quantity` int NOT NULL,
  `requestedby` int NOT NULL,
  `status` varchar(40) DEFAULT 'Pending',
  `requested_date` date NOT NULL,
  PRIMARY KEY (`item_no`),
  KEY `fk1` (`requestedby`),
  CONSTRAINT `fk1` FOREIGN KEY (`requestedby`) REFERENCES `receiver` (`receiver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requested_items`
--

LOCK TABLES `requested_items` WRITE;
/*!40000 ALTER TABLE `requested_items` DISABLE KEYS */;
INSERT INTO `requested_items` VALUES (1,'Mask',900,401,'Received','2020-06-23'),(3,'Sanitizer',500,402,'Received','2020-08-03'),(4,'Money',20000,403,'Pending','2020-07-13'),(5,'Sanitizer',1000,405,'Received','2020-08-23'),(7,'Money',10000,407,'Received','2020-09-17'),(8,'Mask',3000,408,'Pending','2020-09-27'),(9,'Sanitizer',1000,409,'Received','2020-10-12'),(10,'Sanitizer',1000,410,'Pending','2020-10-07'),(11,'Food',0,411,'Pending','2020-10-14'),(12,'Sanitizer',1000,412,'Pending','2020-10-15');
/*!40000 ALTER TABLE `requested_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 11:21:57
