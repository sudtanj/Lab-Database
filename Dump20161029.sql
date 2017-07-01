-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: lab
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part` (
  `PNUM` varchar(50) NOT NULL,
  `PNAME` varchar(45) DEFAULT NULL,
  `COLOUR` varchar(45) DEFAULT NULL,
  `WEIGHT` varchar(45) DEFAULT NULL,
  `CITY` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES ('P1','Nut','Red','12','London'),('P2','Bolt','Green','17','Paris'),('P3','Screw','Blue','17','Rome'),('P4','Screw','Red','14','London'),('P5','Cam','Blue','19 ','Paris'),('P6','Cog','Red','19','London'),('P7','Shaft',NULL,'40','Paris'),('P8','Chain','Black','55',NULL);
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `JNUM` varchar(50) NOT NULL,
  `JNAME` varchar(45) DEFAULT NULL,
  `CITY` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`JNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('J1','Sorter','Paris'),('J2','Display','Rome'),('J3','OCR','Athens'),('J4','Console','Athens'),('J5 ','RAID','London'),('J6 ','EDS','Oslo'),('J7','Tape','London'),('J8','Display',NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `SNUM` varchar(50) NOT NULL,
  `SNAME` varchar(50) NOT NULL,
  `STATUS` int(5) unsigned DEFAULT NULL,
  `CITY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('S1','Smith',20,'London'),('S2','Jones',10,'Paris'),('S3','Bake',30,'Paris'),('S4','Clark',20,'London'),('S5','Adams',30,'Athens'),('S6','Kuhn',NULL,'Berlin'),('S7','Thomas',0,'London'),('S8','Mill',5,NULL);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supply` (
  `SNUM` varchar(50) NOT NULL,
  `PNUM` varchar(45) NOT NULL,
  `QTY` varchar(45) DEFAULT NULL,
  `JNUM` varchar(45) NOT NULL,
  PRIMARY KEY (`SNUM`,`JNUM`,`PNUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES ('S1','P1','200','J1'),('S1','P2','200','J1'),('S1','P1','700','J4'),('S2','P3','400','J1'),('S2','P3','200','J2'),('S2','P5','100','J2'),('S2','P3','200','J3'),('S2','P3','500','J4'),('S2','P3','600','J5'),('S2','P3','400','J6'),('S2','P3','800','J7'),('S3','P3','200','J1'),('S3','P4','500','J2'),('S4','P6','300','J3'),('S4','P6','300','J7'),('S5','P2','200','J2'),('S5','P6','200','J2'),('S5','P1','100','J4'),('S5','P2','100','J4'),('S5','P3','200','J4'),('S5','P4','800','J4'),('S5','P5','400','J4'),('S5','P6','500','J4'),('S5','P5','500','J5'),('S5','P5','100','J7'),('S8','P8','200','J8');
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-29 18:04:52
