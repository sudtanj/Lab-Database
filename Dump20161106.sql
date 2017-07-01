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
-- Temporary view structure for view `convenientsupply`
--

DROP TABLE IF EXISTS `convenientsupply`;
/*!50001 DROP VIEW IF EXISTS `convenientsupply`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `convenientsupply` AS SELECT 
 1 AS `pnum`,
 1 AS `pname`,
 1 AS `jnum`,
 1 AS `jname`,
 1 AS `city`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `part` VALUES ('P1','Shaft',NULL,'40','Paris'),('P2','Bolt','Green','17','Paris'),('P3','Screw','Green','17','Rome'),('P4','Chain','Black','55',NULL),('P5','Cam','Blue','19 ','Paris'),('P6','Screw','Red',NULL,'London');
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
INSERT INTO `project` VALUES ('J1','Sorter','Paris'),('J2','Display','Rome'),('J3','OCR','Athens'),('J4','Console','Athens'),('J5 ','RAID','London'),('J6 ','EDS','Oslo'),('J7','VCR','London'),('J8','Display',NULL);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `screw_part`
--

DROP TABLE IF EXISTS `screw_part`;
/*!50001 DROP VIEW IF EXISTS `screw_part`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `screw_part` AS SELECT 
 1 AS `PNUM`,
 1 AS `PNAME`,
 1 AS `COLOUR`,
 1 AS `WEIGHT`,
 1 AS `CITY`*/;
SET character_set_client = @saved_cs_client;

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
INSERT INTO `supplier` VALUES ('S1','Smith',20,'London'),('S2','Jones',10,'Paris'),('S3','Bake',10,'Paris'),('S4','Clark',20,'London'),('S5','Adams',30,'Athens'),('S6','Kuhn',NULL,'Berlin'),('S7','Thomas',0,'London'),('S8','Mill',5,NULL);
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

--
-- Final view structure for view `convenientsupply`
--

/*!50001 DROP VIEW IF EXISTS `convenientsupply`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `convenientsupply` AS select `part`.`PNUM` AS `pnum`,`part`.`PNAME` AS `pname`,`project`.`JNUM` AS `jnum`,`project`.`JNAME` AS `jname`,`part`.`CITY` AS `city` from (`part` join `project`) where (`part`.`CITY` = `project`.`CITY`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `screw_part`
--

/*!50001 DROP VIEW IF EXISTS `screw_part`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `screw_part` AS select `part`.`PNUM` AS `PNUM`,`part`.`PNAME` AS `PNAME`,`part`.`COLOUR` AS `COLOUR`,`part`.`WEIGHT` AS `WEIGHT`,`part`.`CITY` AS `CITY` from `part` where ((`part`.`PNAME` = 'Screw') and (`part`.`WEIGHT` is not null)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-06 10:31:26
