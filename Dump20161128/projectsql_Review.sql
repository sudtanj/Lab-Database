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
-- Table structure for table `Review`
--

DROP TABLE IF EXISTS `Review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Review` (
  `idReview` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_IDCUSTOMER` int(11) NOT NULL,
  `Customer_FIRSTNAME` varchar(45) NOT NULL,
  `Customer_LASTNAME` varchar(45) NOT NULL,
  `Room_idRoom` int(11) NOT NULL,
  `Room_Customer_IDCUSTOMER` int(11) NOT NULL,
  `ReviewRate` int(11) DEFAULT NULL,
  `ReviewDescription` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idReview`,`Room_idRoom`,`Room_Customer_IDCUSTOMER`),
  KEY `fk_Review_Customer1_idx` (`Customer_IDCUSTOMER`,`Customer_FIRSTNAME`,`Customer_LASTNAME`),
  KEY `fk_Review_Room1_idx` (`Room_idRoom`,`Room_Customer_IDCUSTOMER`),
  CONSTRAINT `fk_Review_Customer1` FOREIGN KEY (`Customer_IDCUSTOMER`, `Customer_FIRSTNAME`, `Customer_LASTNAME`) REFERENCES `Customer` (`IDCUSTOMER`, `FIRSTNAME`, `LASTNAME`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Review`
--

LOCK TABLES `Review` WRITE;
/*!40000 ALTER TABLE `Review` DISABLE KEYS */;
INSERT INTO `Review` VALUES (1,2,'Denise','Davidson',2,2,8,''),(2,6,'Bosena','Denisova',6,6,6,NULL),(3,4,'Dewei','Li',4,4,10,NULL),(4,5,'Hui','Yu',5,5,7,NULL),(5,7,'Glyceria','Ilyina',7,7,9,NULL),(6,3,'Leo','Don',3,3,8,NULL),(7,1,'Edward','Poe',1,1,8,NULL),(8,10,'Mamoru','Kizawa',10,10,5,NULL),(9,9,'Clemence','Patel',9,9,9,NULL),(10,8,'Amber','Duplessis',8,8,10,NULL);
/*!40000 ALTER TABLE `Review` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:57:34
