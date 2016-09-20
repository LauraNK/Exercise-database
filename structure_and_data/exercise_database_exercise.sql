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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exercise`
--

LOCK TABLES `exercise` WRITE;
/*!40000 ALTER TABLE `exercise` DISABLE KEYS */;
INSERT INTO `exercise` VALUES (1,'Air squat','Stand with your feet slightly wider than hip width apart. Turn your toes out slightly and place your weight into your heels. Look straight ahead and keep your chest up as you bend your knees. Push your butt back as if you\'re about to sit in a chair. Make sure your knees track over your ankles.',3,1,4,NULL,'2'),(2,'Forearm plank','Lie facedown on a mat and place your elbows under your shoulders with your forearms on the floor. With your legs extended, tuck your toes and contract your core. Lift your body off the ground so only your toes and forearms are touching, creating a straight line from your shoulders to your heels. ',1,1,4,NULL,'2'),(3,'Push-up','Get into a high plank position, with your hands slightly wider than shoulder width apart. Your body should be in a straight line from your head to your heels. Contract your core, look slightly ahead of you and bend your elbows until they are at a 90 degree angle. Push up to the starting position, making sure to keep your body in a straight line.',4,1,4,NULL,'2'),(4,'Wall push-up','Stand at arms length from the wall with your feet shoulder width apart. Place your hands on the wall at shoulder width apart and bend at the elbows until your elbows are at a 90 degree angle. Pause for 1 second, and then push against the wall until you\'re back at the starting position. To make this more challenging, move your feet further from the wall.',4,1,4,NULL,'1'),(5,'Knee push-up','Kneel on a mat and put your hands on the ground slightly wider than shoulder width apart. Walk your hands out until there is a straight line from your head to the back of your knees. Look slightly in front of you, and bend your elbows until they are at a 90 degree angle. Avoid bending at the hips, focus on keeping that straight line. Pause at the bottom for 1 second, then pushup back up to the starting position.',4,1,4,NULL,'1'),(6,'Spiderman push-up','Start in a regular pushup position, with your hands slightly wider than shoulder width and a straight line from your head to your heels. As you bend at the elbows, bring your right knee up to your right elbow. Place your foot back at the starting position as you push back up. Alter sides with each repetition. ',4,1,4,NULL,'3'),(7,'Triceps push-up','Start in a regular pushup position, with your hands slightly closer together (directly under your shoulders). With a straight line from your head to your heels, bend at the elbows, keeping them directly at your sides. Once your upper arms and elbows are parallel with your sides, pause for one second and push back up to the starting position.',4,1,4,NULL,'3'),(8,'Forearm plank from knees','Start with your knees and forearms on the mat, with a straight line from your head to the back of your knees. Avoid hinging at the hips, make sure to keep that straight line.',1,1,4,NULL,'1'),(9,'Forearm plank with arm reach','Begin in a regular plank position, with your forearms and toes on the ground and a straight line from your head to your heels. Slowly lift one arm off the ground and extend it in front of you. Pause for 2-3 seconds, then bring it back to the starting position. Alter arms with each repetition. \n',1,1,4,NULL,'3'),(10,'High plank/Push-up plank','Face your mat, with your toes on the ground and your hands slightly wider than shoulder width apart. Make sure not to over extend your elbows, and focus on keeping a straight line from your head to your heels. ',1,1,4,NULL,'2');
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

-- Dump completed on 2016-09-20  0:05:57
