-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: mysql8.db4free.net    Database: projectsql
-- ------------------------------------------------------
-- Server version	8.0.0-dmr

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Food`
--

DROP TABLE IF EXISTS `Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Food` (
  `idFood` int(11) NOT NULL AUTO_INCREMENT,
  `FoodName` varchar(45) DEFAULT NULL,
  `FoodPrice` int(11) DEFAULT NULL,
  `FoodCalories` int(11) DEFAULT NULL,
  `FoodType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFood`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food`
--

LOCK TABLES `Food` WRITE;
/*!40000 ALTER TABLE `Food` DISABLE KEYS */;
INSERT INTO `Food` VALUES (1,'Fried Rice',2,100,'Fast Food'),(2,'Pizza',5,235,'Fast Food'),(3,'CheeseBurger',4,210,'Fast Food'),(4,'Plain Soup',1,50,'Comfort food'),(5,'Carbonara',4,100,'Fast Food'),(6,'Steak',6,183,'Comfort food'),(7,' Boiled Egg',1,80,'Comfort food'),(8,'Omelette',1,82,'Comfort food'),(9,'Bread',1,162,'Comfort food'),(10,'Chickenrice',2,125,'Comfort food');
/*!40000 ALTER TABLE `Food` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:58:20
