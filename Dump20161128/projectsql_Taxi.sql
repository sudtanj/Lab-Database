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
-- Table structure for table `Taxi`
--

DROP TABLE IF EXISTS `Taxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Taxi` (
  `idTaxi` int(11) NOT NULL AUTO_INCREMENT,
  `PlateNumber` varchar(45) DEFAULT NULL,
  `CarType` varchar(45) DEFAULT NULL,
  `CarBrand` varchar(45) DEFAULT NULL,
  `DriverLicenseID` int(11) DEFAULT NULL,
  `Available Status` tinyint(1) DEFAULT NULL,
  `Customer_IDCUSTOMER` int(11) NOT NULL,
  PRIMARY KEY (`idTaxi`,`Customer_IDCUSTOMER`),
  KEY `fk_Taxi_Customer1_idx` (`Customer_IDCUSTOMER`),
  CONSTRAINT `fk_Taxi_Customer1` FOREIGN KEY (`Customer_IDCUSTOMER`) REFERENCES `Customer` (`IDCUSTOMER`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Taxi`
--

LOCK TABLES `Taxi` WRITE;
/*!40000 ALTER TABLE `Taxi` DISABLE KEYS */;
INSERT INTO `Taxi` VALUES (1,'9119','C-Class','Mercedes-Benz',708660863,1,1),(2,'6796','Vios','Toyota',857645141,1,2),(3,'6674','Prius','Toyota',196467719,1,3),(4,'4827','E-Class','Mercedes-Benz',922807023,1,4),(5,'5046','Avanza','Toyota',973106304,1,5),(6,'7140','Sunny','Nissan',984435413,1,6),(7,'2218','Alphard','Toyota',742023332,0,7),(8,'5541','Cedric','Nissan',664479702,0,8),(9,'5947','Almera','Nissan',303911195,0,9),(10,'2333','Starex','Hyundai',183607366,1,10);
/*!40000 ALTER TABLE `Taxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:58:05
