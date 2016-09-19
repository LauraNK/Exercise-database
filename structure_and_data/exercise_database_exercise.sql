CREATE DATABASE  IF NOT EXISTS `exercise_database` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `exercise_database`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: exercise_database
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `exercise`
--

DROP TABLE IF EXISTS `exercise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exercise` (
  `exercise_id` int(11) NOT NULL AUTO_INCREMENT,
  `exercise_name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `bodypart_id` int(11) DEFAULT NULL,
  `equipment_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `visual` varchar(500) DEFAULT NULL,
  `difficulty_id` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`exercise_id`),
  KEY `bodypart_id` (`bodypart_id`),
  KEY `equipment_id` (`equipment_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `exercise_ibfk_1` FOREIGN KEY (`bodypart_id`) REFERENCES `bodypart` (`bodypart_id`),
  CONSTRAINT `exercise_ibfk_2` FOREIGN KEY (`equipment_id`) REFERENCES `equipment` (`equipment_id`),
  CONSTRAINT `exercise_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `exercise_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise`
--

LOCK TABLES `exercise` WRITE;
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
INSERT INTO `exercise` VALUES (1,'Air squat','Stand with your feet slightly wider than hip width apart. Turn your toes out slightly and place your weight into your heels. Look straight ahead and keep your chest up as you bend your knees. Push your butt back as if you\'re about to sit in a chair. Make sure your knees track over your ankles.',3,1,4,NULL,NULL),(2,'Forearm plank','Lie facedown on a mat and place your elbows under your shoulders with your forearms on the floor. With your legs extended, tuck your toes and contract your core. Lift your body off the ground so only your toes and forearms are touching, creating a straight line from your shoulders to your heels. ',1,1,4,NULL,NULL);
/*!40000 ALTER TABLE `exercise` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-19 11:35:54
