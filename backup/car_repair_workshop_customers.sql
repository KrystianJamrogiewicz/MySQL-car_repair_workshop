CREATE DATABASE  IF NOT EXISTS `car_repair_workshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `car_repair_workshop`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: car_repair_workshop
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Artur','Boruc','132476001','artur.boruc@example.com'),(2,'Adam','Malysz','637947009','adam.malysz@example.com'),(3,'Andrzej','Golota','874678754','andrzej.golota@example.com'),(4,'Mariusz','Pudzianowski','333222111','mariusz.pudzianowski@example.com'),(5,'Robert','Lewandowski','111222333','robert.lewandowski@example.com'),(6,'John','Doe','123456789','john.doe@example.com'),(7,'Jane','Smith','987654321','jane.smith@example.com'),(8,'Michael','Johnson','456789123','michael.johnson@example.com'),(9,'Emily','Brown','789123456','emily.brown@example.com'),(10,'David','Wilson','159753852','david.wilson@example.com'),(11,'Sarah','Davis','753951852','sarah.davis@example.com'),(12,'Daniel','Taylor','951753852','daniel.taylor@example.com'),(13,'Olivia','Anderson','753951852','olivia.anderson@example.com'),(14,'William','Thompson','951753852','william.thompson@example.com'),(15,'Sophia','Garcia','753951852','sophia.garcia@example.com'),(16,'Alexander','Lee','951753852','alexander.lee@example.com'),(17,'Isabella','Hernandez','753951852','isabella.hernandez@example.com'),(18,'Jacob','Gonzalez','951753852','jacob.gonzalez@example.com'),(19,'Emma','Diaz','753951852','emma.diaz@example.com'),(20,'Benjamin','Reyes','951753852','benjamin.reyes@example.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-05 17:22:12
