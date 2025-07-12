-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: sample
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `car_info`
--

DROP TABLE IF EXISTS `car_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_info` (
  `ownername` varchar(20) DEFAULT NULL,
  `car_no` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `colour` varchar(50) DEFAULT NULL,
  UNIQUE KEY `car_no` (`car_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_info`
--

LOCK TABLES `car_info` WRITE;
/*!40000 ALTER TABLE `car_info` DISABLE KEYS */;
INSERT INTO `car_info` VALUES ('satish borde','MH-16-FJ-3403','SCOTDA','WHITE'),('nitish kular','JK-76-UU-8765','NEXA','MARUN'),('swapnil savarkar','MH-18-BD-6543','FARARI','SILVER'),('ram sadaphal','MH-15-VM-9012','CRETA','BLACK'),('shubham gandhi','MH-04-HT-7856','THAR','BLACK'),('prasad patil','MH-21-NM-3611','ZEN','BLUE'),('raghu dharwe','MH-12-WS-3063','INDICA','WHITE'),('mahesh gunjal','MH-22-US-3023','BMW','BLACK'),('ajit kale','MH-20-RN-6870','JAGVAR','BLACK'),('nilesh shinde','MH-07-DH-8080','BUGATTI','PURPLE'),('satyam shinde','MH-08-HL-9546','TOYOTA','MARUN'),('satyam shinde','MH-88-HL-9546','TOYOTA','MARUN');
/*!40000 ALTER TABLE `car_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machine`
--

DROP TABLE IF EXISTS `machine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `machine` (
  `mac_no` int DEFAULT NULL,
  `mac_name` varchar(50) DEFAULT NULL,
  `mac_type` varchar(50) DEFAULT NULL,
  `mac_cost` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machine`
--

LOCK TABLES `machine` WRITE;
/*!40000 ALTER TABLE `machine` DISABLE KEYS */;
INSERT INTO `machine` VALUES (11,'bicycle','simple',95400),(12,'wheel barrow','compound',29256),(13,'crane','compound ',356796),(14,'car jack','simple ',197160),(15,'lawn mover','compound',343440),(16,'sewing machine',' compound',89231),(17,'elevators','compound',24804),(11,'bicycle','simple',1590000),(12,'wheel barrow','compound',487600),(13,'crane','compound ',5946600),(14,'car jack','simple ',3286000),(15,'lawn mover','compound',5724000),(16,'sewing machine',' compound',1487180),(17,'elevators','compound',413400);
/*!40000 ALTER TABLE `machine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owner_info`
--

DROP TABLE IF EXISTS `owner_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owner_info` (
  `Licence_no` varchar(50) NOT NULL,
  `ownername` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owner_info`
--

LOCK TABLES `owner_info` WRITE;
/*!40000 ALTER TABLE `owner_info` DISABLE KEYS */;
INSERT INTO `owner_info` VALUES ('MH-2120130030266','satish borde','ahilayanagar','8605878890'),('JK-0220130108016 ','nitish kular','jharkhand','7658394055'),('MH-0220130106155','swapnil savarkar','sangli','7645321098'),('MH-0820130031574','samrudh londhe','sambhajinagar','9876508326'),('MH-0820130031807 ','ram sadaphal','nashik','8345227654'),('MH-0820130032591','shubham gandhi','mumbai','8867500043'),('MH-2120130030261','prasad patil','kolhapur','9211334466'),('MH-2120130030262','raghu dharwe','pune','8966443388'),('MH-2120130030263','mahesh gunjal','beed','9066700431'),('MH-2120130030264','ajit kale','solapur','8867504032'),('MH-2120130030265','nilesh shinde','nagpur','7860954657');
/*!40000 ALTER TABLE `owner_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part` (
  `mac_no` int DEFAULT NULL,
  `part_no` varchar(50) DEFAULT NULL,
  `part_name` varchar(50) DEFAULT NULL,
  `part_desc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES (11,'L2','HANDLE','CONTROL BALANCE'),(12,'L3','AXLE','SECOND CLASS LEVER'),(13,'L4','HOOK','MACHINE USED TO MOVE'),(14,'L5','PUMP','HYDRALLIC FORM'),(15,'L6','POWER ENGINE','HYDRALLIC FORM'),(16,'L7','MACHINE BODY','WHEELING FUNCTION'),(17,'L8','ELECTRIC MOTOR','POWER CONTROLAR'),(11,'L2','HANDLE','CONTROL BALANCE'),(12,'L3','AXLE','SECOND CLASS LEVER'),(13,'L4','HOOK','MACHINE USED TO MOVE'),(14,'L5','PUMP','HYDRALLIC FORM'),(15,'L6','POWER ENGINE','HYDRALLIC FORM'),(16,'L7','MACHINE BODY','WHEELING FUNCTION'),(17,'L8','ELECTRIC MOTOR','POWER CONTROLAR');
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_no` int NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`product_no`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`product_no`) REFERENCES `wholesaler` (`wholesale_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (101,'dress'),(102,'electronic gadgets'),(103,'books'),(104,'dress'),(105,'footwear'),(106,'books'),(107,'footwear');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wholesaler`
--

DROP TABLE IF EXISTS `wholesaler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wholesaler` (
  `wholesale_no` int NOT NULL,
  `wholesale_name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`wholesale_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wholesaler`
--

LOCK TABLES `wholesaler` WRITE;
/*!40000 ALTER TABLE `wholesaler` DISABLE KEYS */;
INSERT INTO `wholesaler` VALUES (101,'hiten kumar','shiv nagar','satara'),(102,'satish raj','chatt. chawk','sambhajinagar'),(103,'raghu sayam','ahilyadevi chawk','ahmednagar'),(104,'nilesh yadav','paravaranagar','ahmednagar'),(105,'suyash shinde','koli wada','raigad'),(106,'sanjay sud','loni','ahmednagar'),(107,'sujit gade','fc road','pune'),(108,'sandip more','viman nagar','pune'),(109,'sandip more','viman nagar','pune');
/*!40000 ALTER TABLE `wholesaler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-12 11:38:18
