-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: quiz_module
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `quiz_settings`
--

DROP TABLE IF EXISTS `quiz_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_settings` (
  `quiz_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `quiz_name` varchar(30) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `activity_points` smallint(6) NOT NULL,
  `duration` time DEFAULT NULL,
  `max_no_of_attempts` smallint(5) unsigned DEFAULT NULL,
  `level_override` tinyint(3) unsigned DEFAULT NULL,
  `slug` varchar(85) NOT NULL,
  `description` text,
  `meta_keywords` varchar(100) DEFAULT NULL,
  `meta_description` text,
  `icon` varchar(85) DEFAULT NULL,
  `instructions` longtext,
  `pass_percentage` float NOT NULL,
  `is_available_pre_signup` tinyint(3) unsigned DEFAULT NULL,
  `is_available_via_slug` tinyint(3) unsigned DEFAULT NULL,
  `is_available_dashboard` tinyint(3) unsigned DEFAULT NULL,
  `is_timer_enabled` tinyint(4) DEFAULT NULL,
  `is_shuffle_questions` tinyint(4) DEFAULT NULL,
  `is_shuffle_answers` tinyint(4) DEFAULT NULL,
  `is_display_score` tinyint(4) DEFAULT NULL,
  `is_allow_attempt_review` tinyint(4) DEFAULT NULL,
  `is_show_correct_answers_passed` tinyint(4) DEFAULT NULL,
  `is_show_correct_answers_failed` tinyint(4) DEFAULT NULL,
  `is_show_answer_explanations` tinyint(4) DEFAULT NULL,
  `is_enable_save_resume` tinyint(4) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(45) NOT NULL,
  `modified_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(45) DEFAULT NULL,
  `modified_count` int(11) DEFAULT NULL,
  `category_id` int(11) unsigned NOT NULL,
  `level_id` int(11) unsigned NOT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`quiz_id`),
  UNIQUE KEY `slug_UNIQUE` (`slug`),
  KEY `category_ref_idx` (`category_id`),
  KEY `level_ref_idx` (`level_id`),
  CONSTRAINT `category_ref` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  CONSTRAINT `level_ref` FOREIGN KEY (`level_id`) REFERENCES `levels` (`level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_settings`
--

LOCK TABLES `quiz_settings` WRITE;
/*!40000 ALTER TABLE `quiz_settings` DISABLE KEYS */;
INSERT INTO `quiz_settings` VALUES (1,'Basic Java','Java, Basic',1,'00:30:00',3,0,'https://qa.revature.com/Revature Pro/quiz1/','This Quiz is about checking basic Understanding of Java Programms','Java, Basic','Programms','document/icons/icon1','Negative Marks are there. Every incorrect 3 question 1 point will reduced',85,0,1,1,1,1,1,1,1,1,1,1,0,'2020-02-17 03:07:37','Sivakami','2020-02-17 03:07:37','Sivakami',1,1,1,0),(2,'dfjdsfkj','ss',12,'00:45:00',4,0,'https://qa.revature.com/Revature ','This Quiz is about checking basic Understanding of Java Programms','java, basic','Programssdf','document/icons/icon1','Negative Marks are there. Every incorrect 3 question 1 point will reduced',85,0,1,0,1,1,1,1,1,1,1,1,1,'2020-02-18 05:51:00','Shivira','2020-02-18 05:51:00','shivira',1,3,3,0),(3,'MySQL','MySQL, Basic',10,'01:30:00',3,0,'https://qa.revature.com/Revature Pro/quiz2/','This Quiz is about checking basic Understanding of MySQL and Query','MySQL, Basic','This Quiz is about checking basic Understanding of MySQL and Query','document/icons/icon2','Negative Marks are there. Every incorrect 3 question 1 point will reduced',85,0,1,1,1,1,1,1,1,1,1,1,0,'2020-02-17 03:07:37','Sivakami','2020-02-17 03:07:37','Sivakami',1,1,1,0),(4,'JQuery','JQuery, Basic',10,'01:00:00',3,0,'https://qa.revature.com/Revature Pro/quiz4/','This Quiz is about checking basic Understanding JQuery','JQuery, Basic','This Quiz is about checking basic Understanding of JQuery','document/icons/icon4','Negative Marks are there. Every incorrect 3 question 1 point will reduced',85,0,1,1,1,1,1,1,1,1,1,1,0,'2020-02-17 03:07:37','Sivakami','2020-02-17 03:07:37','Sivakami',1,1,1,0),(5,'Basic JavaScript','JavaScript, Basic',1,'00:30:00',3,0,'https://qa.revature.com/Revature Pro/quiz5/','This Quiz is about checking basic Understanding of JavaScript Concepts','JavaScript, Basic','Programms','document/icons/icon5','Negative Marks are there. Every incorrect 3 question 1 point will reduced',85,0,1,1,1,1,1,1,1,1,1,1,0,'2020-02-17 03:07:37','Sivakami','2020-02-17 03:07:37','Sivakami',1,1,1,0),(8,'Basic Java','Java, Basic',1,'00:30:00',3,0,'https://qa.revature.com/Revature Pro/quiz8/','This Quiz is about checking basic Understanding of Java Programms','Java, Basic','Programms','document/icons/icon1','Negative Marks are there. Every incorrect 3 question 1 point will reduced',85,0,1,1,1,1,1,1,1,1,1,1,0,'2020-02-17 03:07:37','Sivakami','2020-02-17 03:07:37','Sivakami',1,1,1,0),(64,'Basic Java','Java, Basic',1,'00:30:00',3,0,'https://qa.revature.com/Revaturepro/85585/','This Quiz is about checking basic Understanding of Java Programms','Java, Basic','Programms','C:\\Users\\training\\Picture\\icon1','Negative Marks are there. Every incorrect 3 question 1 point will reduced',85,0,1,1,1,1,1,1,1,1,1,1,0,'2020-02-21 11:44:37','Sivakami',NULL,NULL,1,2,2,0);
/*!40000 ALTER TABLE `quiz_settings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-21 18:36:35
