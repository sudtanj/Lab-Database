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
-- Table structure for table `RoomBar`
--

DROP TABLE IF EXISTS `RoomBar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RoomBar` (
  `BeverageQTY` varchar(45) DEFAULT NULL,
  `BeverageList_idBeverage` int(11) NOT NULL,
  `Room_idRoom` int(11) NOT NULL,
  PRIMARY KEY (`BeverageList_idBeverage`,`Room_idRoom`),
  KEY `fk_RoomBar_Room1_idx` (`Room_idRoom`),
  CONSTRAINT `fk_RoomBar_BeverageList1` FOREIGN KEY (`BeverageList_idBeverage`) REFERENCES `BeverageList` (`idBeverage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_RoomBar_Room1` FOREIGN KEY (`Room_idRoom`) REFERENCES `Room` (`idRoom`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoomBar`
--

LOCK TABLES `RoomBar` WRITE;
/*!40000 ALTER TABLE `RoomBar` DISABLE KEYS */;
INSERT INTO `RoomBar` VALUES ('2',1001,1),('2',1001,2),('2',1001,3),('2',1001,4),('1',1001,5),('2',1002,1),('2',1002,2),('2',1002,3),('2',1002,4),('1',1002,5),('2',1003,1),('2',1003,2),('2',1003,3),('2',1003,4),('1',1003,5),('2',1004,3),('2',1004,4),('2',1005,3),('2',1005,4),('2',1006,3),('2',1006,4),('2',1007,4);
/*!40000 ALTER TABLE `RoomBar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:57:45
