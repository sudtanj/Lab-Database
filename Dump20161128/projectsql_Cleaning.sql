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
-- Table structure for table `Cleaning`
--

DROP TABLE IF EXISTS `Cleaning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cleaning` (
  `idCleaning` int(11) NOT NULL AUTO_INCREMENT,
  `Room_idRoom` int(11) NOT NULL,
  `Room_Customer_IDCUSTOMER` int(11) NOT NULL,
  `CleaningStart` time(6) DEFAULT NULL,
  `CleaningEnd` time(6) DEFAULT NULL,
  `Employee_EID` int(11) NOT NULL,
  PRIMARY KEY (`idCleaning`,`Room_idRoom`,`Room_Customer_IDCUSTOMER`,`Employee_EID`),
  KEY `fk_Cleaning_Room1_idx` (`Room_idRoom`,`Room_Customer_IDCUSTOMER`),
  KEY `fk_Cleaning_Employee1_idx` (`Employee_EID`),
  CONSTRAINT `fk_Cleaning_Employee1` FOREIGN KEY (`Employee_EID`) REFERENCES `Employee` (`EID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cleaning_Room1` FOREIGN KEY (`Room_idRoom`, `Room_Customer_IDCUSTOMER`) REFERENCES `Room` (`idRoom`, `Customer_IDCUSTOMER`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cleaning`
--

LOCK TABLES `Cleaning` WRITE;
/*!40000 ALTER TABLE `Cleaning` DISABLE KEYS */;
INSERT INTO `Cleaning` VALUES (1001,1,1,'12:00:00.000000','15:00:00.000000',1),(1002,2,2,'07:00:00.000000','09:00:00.000000',2),(1003,3,3,'09:00:00.000000','12:00:00.000000',3),(1004,4,4,'15:00:00.000000','18:00:00.000000',4),(1005,5,5,'18:00:00.000000','21:00:00.000000',5);
/*!40000 ALTER TABLE `Cleaning` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:58:35
