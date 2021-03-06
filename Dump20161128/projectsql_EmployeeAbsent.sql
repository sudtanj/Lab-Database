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
-- Table structure for table `EmployeeAbsent`
--

DROP TABLE IF EXISTS `EmployeeAbsent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmployeeAbsent` (
  `idEmployeeAbsent` int(11) NOT NULL AUTO_INCREMENT,
  `Checkin` time(6) DEFAULT NULL,
  `Checkout` time(6) DEFAULT NULL,
  PRIMARY KEY (`idEmployeeAbsent`),
  CONSTRAINT `idEmployeeAbsent` FOREIGN KEY (`idEmployeeAbsent`) REFERENCES `Employee` (`EID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmployeeAbsent`
--

LOCK TABLES `EmployeeAbsent` WRITE;
/*!40000 ALTER TABLE `EmployeeAbsent` DISABLE KEYS */;
INSERT INTO `EmployeeAbsent` VALUES (1,'07:00:00.000000','19:00:00.000000'),(2,'19:00:00.000000','07:00:00.000000'),(3,'09:00:00.000000','17:00:00.000000'),(4,'06:30:00.000000','20:00:00.000000'),(5,'19:30:00.000000','07:00:00.000000'),(6,'07:00:00.000000','16:00:00.000000'),(7,'08:00:00.000000','18:00:00.000000'),(8,'19:30:00.000000','06:30:00.000000'),(9,'20:00:00.000000','06:00:00.000000'),(10,'21:00:00.000000','05:00:00.000000');
/*!40000 ALTER TABLE `EmployeeAbsent` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:57:55
