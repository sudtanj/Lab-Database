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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `IDCUSTOMER` int(11) NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` varchar(45) NOT NULL,
  `LASTNAME` varchar(45) NOT NULL,
  `GENDER` tinyint(1) DEFAULT NULL,
  `ADDRESS` varchar(45) DEFAULT NULL,
  `NATIONALITY` varchar(45) DEFAULT NULL,
  `POSTCODE` int(11) DEFAULT NULL,
  `ONLINEBOOK` tinyint(1) DEFAULT NULL,
  `CREDITCARDNUMBER` varchar(12) DEFAULT NULL,
  `Package_idPackage` int(11) DEFAULT NULL,
  `InPackage` tinyint(1) DEFAULT NULL,
  `Checkin` date DEFAULT NULL,
  `Checkout` date DEFAULT NULL,
  `PhoneticName` varchar(45) DEFAULT NULL,
  `MiddleName` varchar(45) DEFAULT NULL,
  `StateID` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDCUSTOMER`,`FIRSTNAME`,`LASTNAME`),
  KEY `fk_Customer_Package1_idx` (`Package_idPackage`),
  CONSTRAINT `fk_Customer_Package1` FOREIGN KEY (`Package_idPackage`) REFERENCES `Package` (`idPackage`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'Edward','Poe',1,NULL,'USA',60605,0,'4532871440',1,NULL,'2016-02-01','2016-02-10','Eddie','Allen',54128),(2,'Denise','Davidson',0,NULL,'USA',27305,1,'5353988245',5,NULL,'2016-02-01','2016-02-01','Denise','Jacqueline',18965),(3,'Leo ','Don',1,NULL,'Australia',61633,1,'5177028057',2,NULL,'2016-11-30','2016-12-04','Leo',NULL,85692),(4,'Dewei','Li',1,NULL,'Canada',91971,0,'4556623807',4,NULL,'2016-04-09','2016-04-14','Dewie','Hsueh',69562),(5,'Hui','Yu',0,NULL,'Canada',73753,0,'4532183908',0,NULL,'2016-06-22','2016-06-26','Hui','Tsu',12135),(6,'Bosena','Denisova',0,NULL,'Russia',82097,1,'4916865403',0,NULL,'2016-05-23','2016-05-19','Denis',NULL,56584),(7,'Glyceria','Ilyina',0,NULL,'Norway',47402,1,'5412603957',0,NULL,'2016-04-14','2016-04-19','Ilyi',NULL,75629),(8,'Amber','Duplessis',0,NULL,'France',33660,0,'4532999443',0,NULL,'2016-03-25','2016-02-14','Amber','Charbonneau',25686),(9,'Clemence','Patel',0,NULL,'France',78120,1,'5496456449',0,NULL,'2016-02-09','2016-02-25','Clement','de Launay',58415),(10,'Mamoru','Kizawa',1,NULL,'Japan',10004,1,'3536239985',0,NULL,'2016-02-19','2016-02-25','Mamoru',NULL,56982);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:57:11
