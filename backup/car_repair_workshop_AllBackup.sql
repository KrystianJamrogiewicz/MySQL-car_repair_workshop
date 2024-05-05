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

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `service_id` int NOT NULL AUTO_INCREMENT,
  `vehicle_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `name_of_service` varchar(50) DEFAULT NULL,
  `description_of_service` varchar(200) DEFAULT NULL,
  `price_pln` decimal(10,2) DEFAULT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`service_id`),
  UNIQUE KEY `service_id` (`service_id`),
  KEY `vehicle_id` (`vehicle_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `services_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`),
  CONSTRAINT `services_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,1,1,'Periodic inspection','Oil and filter change',200.00,'2023-04-01'),(2,2,1,'Brake repair','Replacement of pads and discs',500.00,'2023-05-15'),(3,3,2,'Air conditioning service','Disinfection and refilling of coolant',150.00,'2023-06-10'),(4,4,3,'Timing belt replacement','Replacement of timing belt and water pump',800.00,'2023-07-20'),(5,5,4,'Computer diagnostics','Reading and clearing errors',100.00,'2023-08-05'),(6,6,5,'Tire change','Installation of summer tires',300.00,'2023-09-01'),(7,7,6,'Oil change','Regular oil and filter change',100.00,'2023-04-01'),(8,8,6,'Brake repair','Replacement of brake pads and discs',300.00,'2023-05-15'),(9,9,7,'Tire rotation','Rotation of tires for even wear',50.00,'2023-06-10'),(10,10,7,'Engine tune-up','Spark plug replacement and engine diagnostics',200.00,'2023-07-20'),(11,11,8,'Windshield replacement','Replacement of cracked or damaged windshield',500.00,'2023-08-05'),(12,12,8,'Battery replacement','Replacement of vehicle battery',150.00,'2023-09-01'),(13,13,9,'Transmission fluid change','Flushing and refilling of transmission fluid',250.00,'2023-10-15'),(14,14,9,'Coolant flush','Flushing and refilling of coolant system',150.00,'2023-11-20'),(15,15,10,'Air filter replacement','Replacement of engine air filter',75.00,'2023-12-01'),(16,16,10,'Wiper blade replacement','Replacement of worn wiper blades',40.00,'2024-01-10'),(17,17,11,'Headlight restoration','Restoration of cloudy or faded headlights',100.00,'2024-02-15'),(18,18,11,'Cabin air filter replacement','Replacement of cabin air filter',60.00,'2024-03-20'),(19,19,12,'Wheel alignment','Adjustment of wheel alignment for proper tire wear',150.00,'2024-04-01'),(20,20,12,'Fuel system cleaning','Cleaning of fuel injectors and throttle body',200.00,'2024-04-15'),(21,21,13,'Serpentine belt replacement','Replacement of serpentine belt and tensioner',150.00,'2024-03-10'),(22,22,13,'Differential fluid change','Flushing and refilling of differential fluid',100.00,'2024-03-20'),(23,23,14,'Spark plug replacement','Replacement of spark plugs',150.00,'2024-04-05'),(24,24,14,'Ignition coil replacement','Replacement of ignition coils',200.00,'2024-02-01'),(25,25,15,'Brake fluid flush','Flushing and refilling of brake fluid',100.00,'2024-01-15'),(26,26,15,'Power steering fluid change','Flushing and refilling of power steering fluid',75.00,'2021-11-20'),(27,27,16,'Timing belt replacement','Replacement of timing belt and water pump',500.00,'2022-12-01'),(28,28,16,'Valve cover gasket replacement','Replacement of valve cover gasket',150.00,'2023-01-10'),(29,29,17,'Oxygen sensor replacement','Replacement of oxygen sensors',200.00,'2023-02-15'),(30,30,17,'Mass air flow sensor replacement','Replacement of mass air flow sensor',150.00,'2020-03-20'),(31,31,18,'Catalytic converter replacement','Replacement of catalytic converter',800.00,'2021-04-01'),(32,32,18,'Muffler replacement','Replacement of muffler and exhaust system',400.00,'2020-05-15'),(33,33,19,'Radiator replacement','Replacement of radiator and coolant hoses',300.00,'2020-06-10'),(34,34,19,'Water pump replacement','Replacement of water pump',250.00,'2021-07-20'),(35,35,20,'Alternator replacement','Replacement of alternator and battery cables',300.00,'2022-08-05'),(36,36,20,'Starter replacement','Replacement of starter motor',250.00,'2023-09-01'),(37,7,6,'Tire rotation','Rotation of tires for even wear',50.00,'2023-10-15'),(38,8,6,'Windshield wiper replacement','Replacement of worn wiper blades',40.00,'2021-11-20'),(39,9,7,'Headlight restoration','Restoration of cloudy or faded headlights',100.00,'2023-12-01'),(40,10,7,'Cabin air filter replacement','Replacement of cabin air filter',60.00,'2021-01-10'),(41,11,8,'Wheel alignment','Adjustment of wheel alignment for proper tire wear',150.00,'2021-02-15'),(42,12,8,'Fuel system cleaning','Cleaning of fuel injectors and throttle body',200.00,'2021-03-20'),(43,13,9,'Serpentine belt replacement','Replacement of serpentine belt and tensioner',150.00,'2021-04-01'),(44,14,9,'Differential fluid change','Flushing and refilling of differential fluid',100.00,'2021-05-15'),(45,15,10,'Spark plug replacement','Replacement of spark plugs',150.00,'2021-06-10'),(46,16,10,'Ignition coil replacement','Replacement of ignition coils',200.00,'2021-07-20'),(47,17,11,'Brake fluid flush','Flushing and refilling of brake fluid',100.00,'2021-08-05'),(48,18,11,'Power steering fluid change','Flushing and refilling of power steering fluid',75.00,'2021-09-01'),(49,19,12,'Timing belt replacement','Replacement of timing belt and water pump',500.00,'2021-10-15'),(50,20,12,'Valve cover gasket replacement','Replacement of valve cover gasket',150.00,'2021-11-20'),(51,21,13,'Oxygen sensor replacement','Replacement of oxygen sensors',200.00,'2021-12-01'),(52,22,13,'Mass air flow sensor replacement','Replacement of mass air flow sensor',150.00,'2023-01-10'),(53,23,14,'Catalytic converter replacement','Replacement of catalytic converter',800.00,'2023-02-15'),(54,24,14,'Muffler replacement','Replacement of muffler and exhaust system',400.00,'2023-03-20'),(55,25,15,'Radiator replacement','Replacement of radiator and coolant hoses',300.00,'2023-04-01'),(56,26,15,'Water pump replacement','Replacement of water pump',250.00,'2023-05-15'),(57,27,16,'Alternator replacement','Replacement of alternator and battery cables',300.00,'2023-06-10'),(58,28,16,'Starter replacement','Replacement of starter motor',250.00,'2023-07-20'),(59,29,17,'Battery replacement','Replacement of vehicle battery',150.00,'2023-08-05'),(60,30,17,'Transmission fluid change','Flushing and refilling of transmission fluid',250.00,'2023-09-01'),(61,31,18,'Coolant flush','Flushing and refilling of coolant system',150.00,'2023-10-15'),(62,32,18,'Air filter replacement','Replacement of engine air filter',75.00,'2023-11-20'),(63,33,19,'Oil change','Regular oil and filter change',100.00,'2023-12-01'),(64,34,19,'Brake repair','Replacement of brake pads and discs',300.00,'2022-01-10'),(65,35,20,'Tire rotation','Rotation of tires for even wear',50.00,'2022-02-15'),(66,36,20,'Windshield wiper replacement','Replacement of worn wiper blades',40.00,'2022-03-20');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2024-05-05 17:23:27
