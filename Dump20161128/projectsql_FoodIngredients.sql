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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28  6:58:15
