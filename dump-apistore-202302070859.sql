-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 34.171.89.130    Database: apistore
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.1-MariaDB-1:10.11.1+maria~deb11

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `hired_at` date DEFAULT NULL,
  `hourly_wage` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Amy Heston','2021-02-03',22),(2,'Kyle Sanders','2021-09-09',19),(3,'Humphrey Whittaker','2020-07-24',18),(4,'Thomas May','2021-04-26',24),(5,'Tracy Hopkins','2020-09-28',19),(6,'Emil Chandler','2021-01-01',22),(7,'Gregory Malgham','2020-07-09',24);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `quantity` int(10) unsigned DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'devices overthrown','whether sea extravagant erring spirit hies',17,'2021-11-09'),(2,'natural never','cap pe appears goes stately thrice',22,'2021-06-14'),(3,'eight nine','move hide hate utter rosencrantz',18,'2022-04-19'),(4,'valenced r','moving admirable apprehension paragon animals quintessence',15,'2020-09-06'),(5,'though blast','soldiers request never swear sword already',20,'2022-11-18'),(6,'countrymen soft','weed roots lethe wharf wouldst',7,'2020-09-20'),(7,'t before','function suiting weep cue drown',14,'2021-11-17'),(8,'tried grapple','capable inexplicable dumbshows noise whipped erdoing',20,'2022-06-11'),(9,'lest convert','kibe overcame cannot because twill',29,'2021-08-12'),(10,'giving personal','card equivocation undo years taken',20,'2021-09-08'),(11,'broad flush','your better wisdoms freely affair follows',20,'2022-05-10'),(12,'fathoms roar','makers adam profession heathen scripture digged',8,'2020-06-23'),(13,'threatening bisson','meant wreck beshrew jealousy proper age',1,'2020-11-03'),(14,'tutor special','branches argal goodman delver nill',4,'2021-01-07'),(15,'instant tetter','by laboursome petition hard beseech',15,'2022-10-04'),(16,'hilts edified','knew hands none methought lifted its',1,'2022-01-26'),(17,'flourishes define','spend cousin son aside kin',26,'2021-12-22'),(18,'every censure','quite ladies deject wretched suck honey',24,'2021-11-13'),(19,'servants tend','events harbingers preceding still fates',24,'2020-11-25'),(20,'contracted brow','carp reach windlasses assays bias',12,'2021-03-19'),(21,'deer hart','sworn hillo boy wonderful reveal secret',3,'2020-07-02'),(22,'stars trains','term obsequious persever obstinate condolement impious',16,'2020-02-22'),(23,'speechless orb','clamour unless mortal milch burning turned',27,'2022-01-12'),(24,'on t','shirt knees knocking piteous purport',10,'2020-01-16'),(25,'remedy living','torrent tempest whirlwind acquire beget temperance',26,'2020-11-29'),(26,'wills contrary','letter ambassador overlooked pirate appointment',9,'2022-08-02'),(27,'entertainment new','art scholar looks mark most harrows',24,'2021-10-29'),(28,'happiness often','knew hands none methought lifted',5,'2021-05-01'),(29,'dupp chamber','earth together demonstrated unto climatures',11,'2020-08-03'),(30,'desperation brain','witness gentlemen marvel two their',5,'2022-02-18');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'apistore'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-07  8:59:31
