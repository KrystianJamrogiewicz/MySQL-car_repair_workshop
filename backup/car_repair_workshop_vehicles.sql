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
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `year_of_production` year DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`),
  UNIQUE KEY `vehicle_id` (`vehicle_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `vehicles_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (1,1,'Toyota','Corolla',2015),(2,1,'Honda','Civic',2013),(3,2,'Ford','Mustang',2014),(4,3,'BMW','3 Series',2011),(5,4,'Mercedes-Benz','C-customersClass',2020),(6,5,'Volkswagen','Golf',2017),(7,6,'Honda','Civic',2018),(8,6,'Ford','Mustang',2019),(9,7,'BMW','1 Series',2008),(10,8,'Mercedes-Benz','A-Class',2015),(11,8,'Volkswagen','Golf',2019),(12,8,'Nissan','Altima',2016),(13,8,'Chevrolet','Silverado',2014),(14,9,'Hyundai','Sonata',2011),(15,10,'Kia','Sorento',2010),(16,10,'Subaru','Outback',2009),(17,10,'Mazda','CX-5',2013),(18,11,'Jeep','Wrangler',2013),(19,12,'Lexus','RX',2019),(20,12,'Acura','TLX',2020),(21,13,'Buick','Enclave',2021),(22,14,'Cadillac','Escalade',2020),(23,14,'Dodge','Charger',2014),(24,14,'GMC','Sierra',2009),(25,14,'Honda','Pilot',2010),(26,15,'Hyundai','Tucson',2012),(27,16,'Infiniti','QX60',2016),(28,16,'Jaguar','F-PACE',2015),(29,16,'Jeep','Grand Cherokee',2011),(30,17,'Kia','Telluride',2020),(31,18,'Land Rover','Range Rover',2010),(32,19,'Lexus','LX',2022),(33,19,'Lincoln','Navigator',2009),(34,19,'Maserati','Ghibli',2013),(35,19,'Mazda','CX-9',2020),(36,20,'McLaren','720S',2017);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
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
