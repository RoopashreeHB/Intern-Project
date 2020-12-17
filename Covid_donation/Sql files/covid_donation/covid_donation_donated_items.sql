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
-- Table structure for table `donated_items`
--

DROP TABLE IF EXISTS `donated_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donated_items` (
  `item_no` int NOT NULL AUTO_INCREMENT,
  `itemname` varchar(35) NOT NULL,
  `quantity` int NOT NULL,
  `donatedby` int NOT NULL,
  `donated_date` date NOT NULL,
  `status` varchar(40) DEFAULT 'Pending',
  PRIMARY KEY (`item_no`),
  UNIQUE KEY `donatedby` (`donatedby`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donated_items`
--

LOCK TABLES `donated_items` WRITE;
/*!40000 ALTER TABLE `donated_items` DISABLE KEYS */;
INSERT INTO `donated_items` VALUES (1,'Sanitizer',1000,101,'2020-08-13','Donated'),(2,'Sanitizer',900,102,'2020-06-13','Donated'),(3,'Food',0,103,'2020-08-13','Donated'),(4,'Mask ',1000,104,'2020-06-13','Pending'),(5,'Mask ',1000,105,'2020-07-13','Pending'),(6,'Money',40000,201,'2020-07-13','Donated'),(8,'Money',20000,204,'2020-07-23','Pending'),(9,'Food',0,203,'2020-07-13','Pending'),(10,'Food',0,205,'2020-08-13','Pending'),(12,'Mask',3000,107,'2020-09-09','Pending'),(13,'Sanitizer',1000,206,'2020-10-01','Donated'),(14,'Mask',1000,207,'2020-10-09','Pending'),(15,'Mask',1000,208,'2020-10-01','Pending'),(16,'Mask',1000,108,'2020-10-15','Pending'),(17,'money',10000,209,'2020-10-15','Pending'),(18,'Food',0,109,'2020-10-15','Pending');
/*!40000 ALTER TABLE `donated_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 11:21:49
