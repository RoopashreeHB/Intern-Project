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
-- Table structure for table `receiver`
--

DROP TABLE IF EXISTS `receiver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receiver` (
  `receiver_id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(35) NOT NULL,
  `lname` varchar(35) NOT NULL,
  `phno` decimal(10,0) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(50) NOT NULL,
  `Pswd` varchar(20) DEFAULT 'Pending',
  PRIMARY KEY (`receiver_id`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receiver`
--

LOCK TABLES `receiver` WRITE;
/*!40000 ALTER TABLE `receiver` DISABLE KEYS */;
INSERT INTO `receiver` VALUES (401,'Ram','Kumar',7264291809,'ram.98@gmail.com','Tumkur','ram'),(402,'Rekha','Raj',9011829310,'rekha.9@gmail.com','Banglore','rekha'),(403,'Amar','Kumar',8675101809,'amar.kumar@gmail.com','Mysore','amar'),(405,'Kavya','y',9897273091,'kavya.89@gmail.com','Banglore','kavya'),(407,'Vinutha','H',7827019210,'vinutha@gmail.com','Manglore','null'),(408,'Harsha','C',8902738271,'harsha@gmail.com','Tumkur','null'),(409,'Veda','Murthy',9826019219,'veda.m@gmail.com','Ramnagr','null'),(410,'Bhavya','K',9883610291,'bhavya@gmail.com','Banglore','null'),(411,'Manu','L',8873601929,'Manu@gmail.com','Banglore','null'),(412,'Roopa','H',8972124512,'rupa@gmail.com','Tumkur','null');
/*!40000 ALTER TABLE `receiver` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 11:21:54
