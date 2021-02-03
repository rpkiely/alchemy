-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: ships
-- ------------------------------------------------------
-- Server version       5.7.32

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
-- Current Database: `ships`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ships` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ships`;

--
-- Table structure for table `arms`
--

DROP TABLE IF EXISTS `arms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arms` (
  `id` int(3) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `qty` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arms`
--

LOCK TABLES `arms` WRITE;
/*!40000 ALTER TABLE `arms` DISABLE KEYS */;
INSERT INTO `arms` VALUES (2,'turbo lasers',2),(1,'turbo lasers',60),(1,'ion cannons',60),(1,'tractor beams',10);
/*!40000 ALTER TABLE `arms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spacecraft`
--

DROP TABLE IF EXISTS `spacecraft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spacecraft` (
  `id` int(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `crew` int(5) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `arms_id` int(3) DEFAULT NULL,
  `value` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spacecraft`
--

LOCK TABLES `spacecraft` WRITE;
/*!40000 ALTER TABLE `spacecraft` DISABLE KEYS */;
INSERT INTO `spacecraft` VALUES (1,'Devastator','Star Destroyer',35000,'http://url..','operational',1,1999),(2,'Red Five','Tie Fighter',1,'http://url..','damaged',2,12);
/*!40000 ALTER TABLE `spacecraft` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-03 20:23:38
