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
-- Table structure for table `BeverageList`
--

DROP TABLE IF EXISTS `BeverageList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BeverageList` (
  `idBeverage` int(11) NOT NULL,
  `BeverageBrandName` varchar(45) DEFAULT NULL,
  `BeveragePrice` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idBeverage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BeverageList`
--

LOCK TABLES `BeverageList` WRITE;
/*!40000 ALTER TABLE `BeverageList` DISABLE KEYS */;
INSERT INTO `BeverageList` VALUES (1001,'CocaCola','1'),(1002,'Fanta','1'),(1003,'Sprite','1'),(1004,'Carlsberg','2'),(1005,'Heineken','2'),(1006,'Rootbeer','1.5'),(1007,'Equil','2.5');
/*!40000 ALTER TABLE `BeverageList` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `Customer_has_Food`
--

DROP TABLE IF EXISTS `Customer_has_Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer_has_Food` (
  `Customer_IDCUSTOMER` int(11) NOT NULL,
  `Food_idFood` int(11) NOT NULL,
  PRIMARY KEY (`Customer_IDCUSTOMER`,`Food_idFood`),
  KEY `fk_Customer_has_Food_Food1_idx` (`Food_idFood`),
  KEY `fk_Customer_has_Food_Customer1_idx` (`Customer_IDCUSTOMER`),
  CONSTRAINT `fk_Customer_has_Food_Customer1` FOREIGN KEY (`Customer_IDCUSTOMER`) REFERENCES `Customer` (`IDCUSTOMER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Customer_has_Food_Food1` FOREIGN KEY (`Food_idFood`) REFERENCES `Food` (`idFood`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer_has_Food`
--

LOCK TABLES `Customer_has_Food` WRITE;
/*!40000 ALTER TABLE `Customer_has_Food` DISABLE KEYS */;
INSERT INTO `Customer_has_Food` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10);
/*!40000 ALTER TABLE `Customer_has_Food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employee` (
  `EID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Gender` tinyint(1) DEFAULT NULL,
  `DepartmentId` int(11) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Salaries` int(11) DEFAULT NULL,
  `Nationality` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `StateID` int(11) DEFAULT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB AUTO_INCREMENT=734736984 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'Richard','Montgomery',1,524448010,'1985-06-05',601,'USA','129A',67473),(2,'Patrick','Weaver',1,266960250,'1989-09-28',713,'USA','128TN',57747),(3,'Douglas','Garret',1,266960250,'1993-03-06',415,'USA','77791WI',2890),(4,'Ruth','Simpson',0,455626111,'1989-10-31',723,'USA','5003NY',96109),(5,'Patrick','Frazier',1,524562096,'1990-11-13',673,'USA','2100TN',27041),(6,'Juan','Dean',1,613621498,'1987-06-17',314,'USA','318NC',11377),(7,'Emily','Rose',0,669967924,'1994-10-27',573,'USA','6269CO',38242),(8,'Irene','Day',0,686634904,'1981-05-16',652,'USA','6691CA',27356),(9,'Adam','Reid',1,732259416,'1984-03-03',560,'USA','717CO',80256),(10,'Kimberly','Meyer',0,734736983,'1989-05-11',579,'USA','9529MS',92346);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `Food`
--

DROP TABLE IF EXISTS `Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Food` (
  `idFood` int(11) NOT NULL AUTO_INCREMENT,
  `FoodName` varchar(45) DEFAULT NULL,
  `FoodPrice` int(11) DEFAULT NULL,
  `FoodCalories` int(11) DEFAULT NULL,
  `FoodType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFood`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Food`
--

LOCK TABLES `Food` WRITE;
/*!40000 ALTER TABLE `Food` DISABLE KEYS */;
INSERT INTO `Food` VALUES (1,'Fried Rice',2,100,'Fast Food'),(2,'Pizza',5,235,'Fast Food'),(3,'CheeseBurger',4,210,'Fast Food'),(4,'Plain Soup',1,50,'Comfort food'),(5,'Carbonara',4,100,'Fast Food'),(6,'Steak',6,183,'Comfort food'),(7,' Boiled Egg',1,80,'Comfort food'),(8,'Omelette',1,82,'Comfort food'),(9,'Bread',1,162,'Comfort food'),(10,'Chickenrice',2,125,'Comfort food');
/*!40000 ALTER TABLE `Food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FoodIngredients`
--

DROP TABLE IF EXISTS `FoodIngredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FoodIngredients` (
  `idFoodIngredients` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `QTY` varchar(45) DEFAULT NULL,
  `Food_idFood` int(11) NOT NULL,
  PRIMARY KEY (`idFoodIngredients`,`Food_idFood`),
  KEY `fk_FoodIngredients_Food1_idx` (`Food_idFood`),
  CONSTRAINT `fk_FoodIngredients_Food1` FOREIGN KEY (`Food_idFood`) REFERENCES `Food` (`idFood`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FoodIngredients`
--

LOCK TABLES `FoodIngredients` WRITE;
/*!40000 ALTER TABLE `FoodIngredients` DISABLE KEYS */;
INSERT INTO `FoodIngredients` VALUES (1,'Rice','125',10),(2,'Cheese','100',3),(3,'Meat','300',6),(4,'Chicken','150',1),(5,'Tomato','50',4),(6,'Rice','150',1),(7,'Chicken','100',4),(8,'Tomato','75',2),(9,'Cheese','150',2),(10,'Flour','200',3),(11,'Flour','300',2),(12,'Egg','50',8),(13,'Meat','150',2),(14,'Chicken','200',5),(15,'Egg','50',7),(16,'Tomato','125',3),(17,'Meat','125',3),(18,'Flour','125',9),(19,'Cheese','75',9),(20,'Chicken','100',2),(21,'Pasta','150',5),(22,'Cheese','100',5),(23,'Meat','75',5),(24,'Chicken','150',10);
/*!40000 ALTER TABLE `FoodIngredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Package`
--

DROP TABLE IF EXISTS `Package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Package` (
  `idPackage` int(11) NOT NULL,
  `PackageName` varchar(45) DEFAULT NULL,
  `PackageDescription` tinytext,
  `PackagePrice` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPackage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Package`
--

LOCK TABLES `Package` WRITE;
/*!40000 ALTER TABLE `Package` DISABLE KEYS */;
INSERT INTO `Package` VALUES (0,'No Package','No package selected by the customer',0),(1,'President','Royal Suite + Breakfast + Facility + All Room Service',500),(2,'Luxury','Suite + Breakfast + Facility + 4x any Food Service',450),(3,'Family','Deluxe + Breakfast + Facility',125),(4,'Solo','Budget + Breakfast + Facility',65),(5,'Transit','Budget + Breakfast',55);
/*!40000 ALTER TABLE `Package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Package_has_FacilityUsage`
--

DROP TABLE IF EXISTS `Package_has_FacilityUsage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Package_has_FacilityUsage` (
  `Package_idPackage` int(11) NOT NULL,
  `FacilityUsage_IDFACILITY` int(11) NOT NULL,
  `FacilityUsage_Employee_EID` int(11) NOT NULL,
  `FacilityUsage_Customer_IDCUSTOMER` int(11) NOT NULL,
  PRIMARY KEY (`Package_idPackage`,`FacilityUsage_IDFACILITY`,`FacilityUsage_Employee_EID`,`FacilityUsage_Customer_IDCUSTOMER`),
  KEY `fk_Package_has_FacilityUsage_FacilityUsage1_idx` (`FacilityUsage_IDFACILITY`,`FacilityUsage_Employee_EID`,`FacilityUsage_Customer_IDCUSTOMER`),
  KEY `fk_Package_has_FacilityUsage_Package1_idx` (`Package_idPackage`),
  CONSTRAINT `fk_Package_has_FacilityUsage_FacilityUsage1` FOREIGN KEY (`FacilityUsage_IDFACILITY`, `FacilityUsage_Employee_EID`, `FacilityUsage_Customer_IDCUSTOMER`) REFERENCES `FacilityUsage` (`IDFACILITY`, `Employee_EID`, `Customer_IDCUSTOMER`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Package_has_FacilityUsage_Package1` FOREIGN KEY (`Package_idPackage`) REFERENCES `Package` (`idPackage`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Package_has_FacilityUsage`
--

LOCK TABLES `Package_has_FacilityUsage` WRITE;
/*!40000 ALTER TABLE `Package_has_FacilityUsage` DISABLE KEYS */;
/*!40000 ALTER TABLE `Package_has_FacilityUsage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Package_has_Food`
--

DROP TABLE IF EXISTS `Package_has_Food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Package_has_Food` (
  `Package_idPackage` int(11) NOT NULL,
  `Food_idFood` int(11) NOT NULL,
  PRIMARY KEY (`Package_idPackage`,`Food_idFood`),
  KEY `fk_Package_has_Food_Food1_idx` (`Food_idFood`),
  KEY `fk_Package_has_Food_Package1_idx` (`Package_idPackage`),
  CONSTRAINT `fk_Package_has_Food_Food1` FOREIGN KEY (`Food_idFood`) REFERENCES `Food` (`idFood`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Package_has_Food_Package1` FOREIGN KEY (`Package_idPackage`) REFERENCES `Package` (`idPackage`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Package_has_Food`
--

LOCK TABLES `Package_has_Food` WRITE;
/*!40000 ALTER TABLE `Package_has_Food` DISABLE KEYS */;
/*!40000 ALTER TABLE `Package_has_Food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Package_has_Room`
--

DROP TABLE IF EXISTS `Package_has_Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Package_has_Room` (
  `Package_idPackage` int(11) NOT NULL,
  `Room_idRoom` int(11) NOT NULL,
  `Room_Customer_IDCUSTOMER` int(11) NOT NULL,
  PRIMARY KEY (`Package_idPackage`,`Room_idRoom`,`Room_Customer_IDCUSTOMER`),
  KEY `fk_Package_has_Room_Room1_idx` (`Room_idRoom`,`Room_Customer_IDCUSTOMER`),
  KEY `fk_Package_has_Room_Package1_idx` (`Package_idPackage`),
  CONSTRAINT `fk_Package_has_Room_Package1` FOREIGN KEY (`Package_idPackage`) REFERENCES `Package` (`idPackage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Package_has_Room_Room1` FOREIGN KEY (`Room_idRoom`, `Room_Customer_IDCUSTOMER`) REFERENCES `Room` (`idRoom`, `Customer_IDCUSTOMER`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Package_has_Room`
--

LOCK TABLES `Package_has_Room` WRITE;
/*!40000 ALTER TABLE `Package_has_Room` DISABLE KEYS */;
/*!40000 ALTER TABLE `Package_has_Room` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room` (
  `idRoom` int(11) NOT NULL,
  `RoomType` varchar(45) DEFAULT NULL,
  `RoomPrice` int(11) DEFAULT NULL,
  `RoomFloor` int(11) DEFAULT NULL,
  `Customer_IDCUSTOMER` int(11) NOT NULL,
  `Occupy` tinyint(1) DEFAULT NULL,
  `Breakfast` tinyint(1) DEFAULT NULL,
  `RoomDescription` varchar(45) DEFAULT NULL,
  `RoomNote` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idRoom`,`Customer_IDCUSTOMER`),
  KEY `fk_Room_Customer1_idx` (`Customer_IDCUSTOMER`),
  CONSTRAINT `fk_Room_Customer1` FOREIGN KEY (`Customer_IDCUSTOMER`) REFERENCES `Customer` (`IDCUSTOMER`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
INSERT INTO `Room` VALUES (1,'Superior',100,2,1,NULL,1,NULL,NULL),(2,'Deluxe',110,3,2,NULL,1,NULL,NULL),(3,'Suite',300,4,3,NULL,1,NULL,NULL),(4,'Royal Suite',450,5,4,NULL,1,NULL,NULL),(5,'Budget',50,1,5,NULL,0,NULL,NULL),(6,'Superior',100,2,6,NULL,1,NULL,NULL),(7,'Deluxe',110,3,7,NULL,1,NULL,NULL),(8,'Suite',300,4,8,NULL,1,NULL,NULL),(9,'Royal Suite',450,5,9,NULL,1,NULL,NULL),(10,'Budget',50,1,10,NULL,0,NULL,NULL);
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2016-11-28  6:56:32
