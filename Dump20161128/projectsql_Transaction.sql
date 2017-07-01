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
-- Table structure for table `Transaction`
--

DROP TABLE IF EXISTS `Transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transaction` (
  `idTransaction` int(11) NOT NULL,
  `TransactionDate` date DEFAULT NULL,
  `TransactionAmount` varchar(20) NOT NULL,
  `TransactionType` varchar(45) DEFAULT NULL,
  `Customer_IDCUSTOMER` int(11) NOT NULL,
  `Package_idPackage` int(11) DEFAULT NULL,
  `SpecialDiscount` int(11) DEFAULT NULL,
  PRIMARY KEY (`idTransaction`,`Customer_IDCUSTOMER`),
  KEY `fk_Transaction_Customer1_idx` (`Customer_IDCUSTOMER`),
  KEY `fk_Transaction_Package1_idx` (`Package_idPackage`),
  CONSTRAINT `fk_Transaction_Customer1` FOREIGN KEY (`Customer_IDCUSTOMER`) REFERENCES `Customer` (`IDCUSTOMER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Transaction_Package1` FOREIGN KEY (`Package_idPackage`) REFERENCES `Package` (`idPackage`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transaction`
--

LOCK TABLES `Transaction` WRITE;
/*!40000 ALTER TABLE `Transaction` DISABLE KEYS */;
INSERT INTO `Transaction` VALUES (1,'2016-02-01','250','Room',1,1,0),(2,'2016-02-01','200','Room',2,0,10),(3,'2016-02-03','20','Food',1,1,0),(4,'2016-02-04','5','Food',2,5,0),(5,'2016-12-01','4','Food',3,2,0),(6,'2016-04-10','1','Food',4,4,0),(7,'2016-06-23','4','Food',5,0,0),(8,'2016-05-25','6','Food',6,0,0),(9,'2016-04-16','1','Food',7,0,0),(10,'2016-03-26','1','Food',8,0,0),(11,'2016-02-10','1','Food',9,0,0),(12,'2016-02-20','2','Food',10,0,0);
/*!40000 ALTER TABLE `Transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:57:20
