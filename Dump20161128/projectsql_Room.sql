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
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room` (
  `idRoom` int(11) NOT NULL,
  `RoomType` varchar(45) DEFAULT NULL,
  `RoomPrice` int(11) DEFAULT NULL,
  `RoomFloor` int(11) DEFAULT NULL,
  `Customer_IDCUSTOMER` int(11) NOT NULL,
  `Occupy` tinyint(1) DEFAULT NULL,
  `Breakfast` tinyint(1) DEFAULT NULL,
  `RoomDescription` varchar(45) DEFAULT NULL,
  `RoomNote` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRoom`,`Customer_IDCUSTOMER`),
  KEY `fk_Room_Customer1_idx` (`Customer_IDCUSTOMER`),
  CONSTRAINT `fk_Room_Customer1` FOREIGN KEY (`Customer_IDCUSTOMER`) REFERENCES `Customer` (`IDCUSTOMER`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
INSERT INTO `Room` VALUES (1,'Superior',100,2,1,NULL,1,NULL,NULL),(2,'Deluxe',110,3,2,NULL,1,NULL,NULL),(3,'Suite',300,4,3,NULL,1,NULL,NULL),(4,'Royal Suite',450,5,4,NULL,1,NULL,NULL),(5,'Budget',50,1,5,NULL,0,NULL,NULL),(6,'Superior',100,2,6,NULL,1,NULL,NULL),(7,'Deluxe',110,3,7,NULL,1,NULL,NULL),(8,'Suite',300,4,8,NULL,1,NULL,NULL),(9,'Royal Suite',450,5,9,NULL,1,NULL,NULL),(10,'Budget',50,1,10,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:58:00
