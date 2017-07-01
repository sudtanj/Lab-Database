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
-- Table structure for table `FacilityUsage`
--

DROP TABLE IF EXISTS `FacilityUsage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FacilityUsage` (
  `IDFACILITY` int(11) NOT NULL AUTO_INCREMENT,
  `FACILITYNAME` varchar(45) DEFAULT NULL,
  `FACILITYPRICE` int(11) DEFAULT NULL,
  `Employee_EID` int(11) NOT NULL,
  `Customer_IDCUSTOMER` int(11) NOT NULL,
  `FacilityDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDFACILITY`,`Employee_EID`,`Customer_IDCUSTOMER`),
  KEY `fk_Facility_Employee_idx` (`Employee_EID`),
  KEY `fk_FacilityUsage_Customer1_idx` (`Customer_IDCUSTOMER`),
  CONSTRAINT `fk_FacilityUsage_Customer1` FOREIGN KEY (`Customer_IDCUSTOMER`) REFERENCES `Customer` (`IDCUSTOMER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Facility_Employee` FOREIGN KEY (`Employee_EID`) REFERENCES `Employee` (`EID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1006 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FacilityUsage`
--

LOCK TABLES `FacilityUsage` WRITE;
/*!40000 ALTER TABLE `FacilityUsage` DISABLE KEYS */;
INSERT INTO `FacilityUsage` VALUES (1001,'Swimming Pool',5,1,1,NULL),(1002,'Gym',10,2,2,NULL),(1003,'Sauna',15,3,3,NULL),(1004,'Billiard',4,4,4,NULL),(1005,'Laundry',2,5,5,NULL);
/*!40000 ALTER TABLE `FacilityUsage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:58:30
