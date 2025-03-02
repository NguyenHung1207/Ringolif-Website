-- MySQL dump 10.13  Distrib 9.0.1, for macos13.6 (arm64)
--
-- Host: 127.0.0.1    Database: ringolift
-- ------------------------------------------------------
-- Server version	9.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `question_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,'dog',1,'2024-12-29 13:26:18','2024-12-29 13:26:18'),(2,'dog',2,'2024-12-29 13:26:23','2024-12-29 13:26:23'),(3,'dog',3,'2024-12-29 13:26:25','2024-12-29 13:26:25'),(4,'dog',4,'2024-12-29 13:26:27','2024-12-29 13:26:27'),(5,'dog',5,'2024-12-29 13:26:29','2024-12-29 13:26:29'),(6,'dog',6,'2024-12-29 13:26:31','2024-12-29 13:26:31'),(7,'dog',7,'2024-12-29 13:26:34','2024-12-29 13:26:34'),(8,'dog',8,'2024-12-29 13:26:36','2024-12-29 13:26:36'),(9,'dog',9,'2024-12-29 13:26:38','2024-12-29 13:26:38'),(10,'dog',10,'2024-12-29 13:26:40','2024-12-29 13:26:40'),(11,'cat',1,'2024-12-29 13:26:47','2024-12-29 13:26:47'),(12,'bird',1,'2024-12-29 13:26:51','2024-12-29 13:26:51'),(13,'fish',1,'2024-12-29 13:26:54','2024-12-29 13:26:54'),(14,'rabbit',2,'2024-12-29 13:27:00','2024-12-29 13:27:00'),(15,'turtle',2,'2024-12-29 13:27:03','2024-12-29 13:27:03'),(16,'parrot',2,'2024-12-29 13:27:06','2024-12-29 13:27:06'),(18,'hamster',3,'2024-12-29 13:27:31','2024-12-29 13:27:31'),(19,'lizard',3,'2024-12-29 13:27:36','2024-12-29 13:27:36'),(20,'horse',3,'2024-12-29 13:27:39','2024-12-29 13:27:39'),(21,'fox',4,'2024-12-29 13:27:44','2024-12-29 13:27:44'),(22,'elephant',4,'2024-12-29 13:27:47','2024-12-29 13:27:47'),(23,'dolphin',4,'2024-12-29 13:27:51','2024-12-29 13:27:51'),(24,'goat',5,'2024-12-29 13:27:57','2024-12-29 13:27:57'),(25,'sheep',5,'2024-12-29 13:28:00','2024-12-29 13:28:00'),(26,'cow',5,'2024-12-29 13:28:03','2024-12-29 13:28:03'),(27,'kitten',6,'2024-12-29 13:28:08','2024-12-29 13:28:08'),(28,'pony',6,'2024-12-29 13:28:11','2024-12-29 13:28:11'),(29,'duck',6,'2024-12-29 13:28:14','2024-12-29 13:28:14'),(30,'fox',7,'2024-12-29 13:28:21','2024-12-29 13:28:21'),(31,'raccoon',7,'2024-12-29 13:28:24','2024-12-29 13:28:24'),(32,'squirrel',7,'2024-12-29 13:28:27','2024-12-29 13:28:27'),(33,'guinea pig',8,'2024-12-29 13:28:35','2024-12-29 13:28:35'),(34,'piglet',8,'2024-12-29 13:28:40','2024-12-29 13:28:40'),(35,'canary',8,'2024-12-29 13:28:44','2024-12-29 13:28:44'),(36,'cat',9,'2024-12-29 13:28:49','2024-12-29 13:28:49'),(37,'crow',9,'2024-12-29 13:28:52','2024-12-29 13:28:52'),(38,'goat',9,'2024-12-29 13:28:56','2024-12-29 13:28:56'),(39,'bear',10,'2024-12-29 13:29:02','2024-12-29 13:29:02'),(40,'owl',10,'2024-12-29 13:29:05','2024-12-29 13:29:05'),(41,'kangaroo',10,'2024-12-29 13:29:09','2024-12-29 13:29:09');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_genre`
--

DROP TABLE IF EXISTS `book_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `genre_type` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `genre_type` (`genre_type`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_genre`
--

LOCK TABLES `book_genre` WRITE;
/*!40000 ALTER TABLE `book_genre` DISABLE KEYS */;
INSERT INTO `book_genre` VALUES (1,'HORROR','2024-11-23 08:16:37','2024-11-23 08:16:37'),(2,'FANTASY','2024-11-23 08:16:37','2024-11-23 08:16:37'),(3,'SCIENCE_FICTION','2024-11-23 08:16:37','2024-11-23 08:16:37'),(4,'ROMANCE','2024-11-23 08:16:37','2024-11-23 08:16:37'),(5,'MYSTERY','2024-11-23 08:16:37','2024-11-23 08:16:37'),(6,'THRILLER','2024-11-23 08:16:37','2024-11-23 08:16:37'),(7,'HISTORICAL','2024-11-23 08:16:37','2024-11-23 08:16:37'),(8,'ADVENTURE','2024-11-23 08:16:37','2024-11-23 08:16:37'),(9,'DYSTOPIAN','2024-11-23 08:16:37','2024-11-23 08:16:37'),(10,'BIOGRAPHY','2024-11-23 08:16:37','2024-11-23 08:16:37'),(11,'AUTOBIOGRAPHY','2024-11-23 08:16:37','2024-11-23 08:16:37'),(12,'SELF_HELP','2024-11-23 08:16:37','2024-11-23 08:16:37'),(13,'NON_FICTION','2024-11-23 08:16:37','2024-11-23 08:16:37'),(14,'POETRY','2024-11-23 08:16:37','2024-11-23 08:16:37'),(15,'CLASSICS','2024-11-23 08:16:37','2024-11-23 08:16:37'),(16,'DRAMA','2024-11-23 08:16:37','2024-11-23 08:16:37'),(17,'YOUNG_ADULT','2024-11-23 08:16:37','2024-11-23 08:16:37'),(18,'COMICS','2024-11-23 08:16:37','2024-11-23 08:16:37'),(19,'GRAPHIC_NOVEL','2024-11-23 08:16:37','2024-11-23 08:16:37'),(20,'LITERARY_FICTION','2024-11-23 08:16:37','2024-11-23 08:16:37');
/*!40000 ALTER TABLE `book_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `genre_id` int DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  `num_of_pages` int DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `description` text,
  `cover_image` varchar(255) DEFAULT NULL,
  `content_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `book_genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Artificial Intelligence: The Future','Emily Zhang',7,'2021-03-10','978-0-262-13472-9',310,'Tech Insights','A comprehensive guide to understanding AI and its impact on the world.','https://example.com/images/artificial-intelligence.jpg','artificial-intelligence.txt','2024-12-14 10:13:32','2024-12-14 10:13:32');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapter_progress`
--

DROP TABLE IF EXISTS `chapter_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapter_progress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `chapter_id` int DEFAULT NULL,
  `unlocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `chapter_id` (`chapter_id`),
  CONSTRAINT `chapter_progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `chapter_progress_ibfk_2` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter_progress`
--

LOCK TABLES `chapter_progress` WRITE;
/*!40000 ALTER TABLE `chapter_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapter_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapters` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` VALUES (1,'Chapter 1','https://www.vec.ca/wp-content/uploads/2019/03/English-Language-Level-System.jpg','Description 1','2024-12-15 16:52:06','2024-12-15 16:52:06'),(2,'Chapter 2','https://www.vec.ca/wp-content/uploads/2019/03/English-Language-Level-System.jpg','Description 2',NULL,NULL),(3,'Chapter 3','https://www.vec.ca/wp-content/uploads/2019/03/English-Language-Level-System.jpg','Description 3',NULL,NULL),(4,'Chapter 4','https://www.vec.ca/wp-content/uploads/2019/03/English-Language-Level-System.jpg','Description 4',NULL,NULL);
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `daily_progress`
--

DROP TABLE IF EXISTS `daily_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_progress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `time_spent` int DEFAULT NULL,
  `lesson_count` int DEFAULT NULL,
  `word_count` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `daily_progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_progress`
--

LOCK TABLES `daily_progress` WRITE;
/*!40000 ALTER TABLE `daily_progress` DISABLE KEYS */;
INSERT INTO `daily_progress` VALUES (40,20,0,6,0,'2024-12-29 21:01:36','2024-12-29 21:21:57'),(41,20,0,0,0,'2024-12-30 09:02:35','2024-12-30 09:02:35');
/*!40000 ALTER TABLE `daily_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `stars` int DEFAULT NULL,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `lesson_id` (`lesson_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_status`
--

DROP TABLE IF EXISTS `friend_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_type` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_type` (`status_type`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_status`
--

LOCK TABLES `friend_status` WRITE;
/*!40000 ALTER TABLE `friend_status` DISABLE KEYS */;
INSERT INTO `friend_status` VALUES (1,'PENDING','2024-11-23 08:16:37','2024-11-23 08:16:37'),(2,'REJECTED','2024-11-23 08:16:37','2024-11-23 08:16:37'),(3,'BLOCKED','2024-11-23 08:16:37','2024-11-23 08:16:37'),(4,'ACCEPTED','2024-11-23 08:16:37','2024-11-23 08:16:37');
/*!40000 ALTER TABLE `friend_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friends` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int DEFAULT NULL,
  `receiver_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friends_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friends_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `friend_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
INSERT INTO `friends` VALUES (2,1,6,1,'2024-12-14 12:31:48','2024-12-14 12:31:48'),(3,6,1,1,'2024-12-14 14:19:15','2024-12-14 14:19:15');
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goals`
--

DROP TABLE IF EXISTS `goals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `time_spent` int DEFAULT NULL,
  `lesson_count` int DEFAULT NULL,
  `word_count` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `goals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goals`
--

LOCK TABLES `goals` WRITE;
/*!40000 ALTER TABLE `goals` DISABLE KEYS */;
INSERT INTO `goals` VALUES (2,1000,5,20,'2024-11-23 17:39:19','2024-11-24 09:26:52',20),(3,102,23,2787,'2024-11-24 09:26:10','2024-11-24 09:26:10',NULL),(4,102,23,2787,'2024-12-16 21:49:20','2024-12-16 21:49:20',NULL),(5,102,23,2787,'2024-12-16 21:49:27','2024-12-16 21:49:27',NULL),(6,102,23,2787,'2024-12-16 21:49:30','2024-12-16 21:49:30',NULL),(7,102,23,2787,'2024-12-16 21:49:39','2024-12-16 21:49:39',NULL),(8,102,23,2787,'2024-12-16 21:49:42','2024-12-16 21:49:42',NULL),(9,102,23,2787,'2024-12-16 21:50:11','2024-12-16 21:50:11',NULL),(10,102,23,2787,'2024-12-16 21:50:11','2024-12-16 21:50:11',NULL),(11,102,23,2787,'2024-12-16 21:50:30','2024-12-16 21:50:30',NULL),(12,102,23,2787,'2024-12-16 21:50:30','2024-12-16 21:50:30',NULL),(13,102,23,2787,'2024-12-16 21:50:50','2024-12-16 21:50:50',NULL),(14,102,23,2787,'2024-12-16 21:50:50','2024-12-16 21:50:50',NULL),(15,102,23,2787,'2024-12-16 21:51:05','2024-12-16 21:51:05',NULL),(16,102,23,2787,'2024-12-16 21:51:09','2024-12-16 21:51:09',NULL),(17,102,23,2787,'2024-12-16 21:51:13','2024-12-16 21:51:13',NULL),(18,102,23,2787,'2024-12-16 21:51:56','2024-12-16 21:51:56',NULL),(19,102,23,2787,'2024-12-16 21:52:02','2024-12-16 21:52:02',NULL),(20,102,23,2787,'2024-12-16 21:52:08','2024-12-16 21:52:08',NULL),(21,102,23,2787,'2024-12-16 21:52:17','2024-12-16 21:52:17',NULL),(22,102,23,2787,'2024-12-16 21:52:47','2024-12-16 21:52:47',NULL),(23,102,23,2787,'2024-12-16 22:08:07','2024-12-16 22:08:07',NULL);
/*!40000 ALTER TABLE `goals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_progress`
--

DROP TABLE IF EXISTS `lesson_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_progress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `correct_count` int DEFAULT NULL,
  `incorrect_count` int DEFAULT NULL,
  `time_spent` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `lesson_id` (`lesson_id`),
  CONSTRAINT `lesson_progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `lesson_progress_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_progress`
--

LOCK TABLES `lesson_progress` WRITE;
/*!40000 ALTER TABLE `lesson_progress` DISABLE KEYS */;
INSERT INTO `lesson_progress` VALUES (1,20,1,1,9,0,'2024-12-29 21:22:09','2024-12-29 21:22:09');
/*!40000 ALTER TABLE `lesson_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson_questions`
--

DROP TABLE IF EXISTS `lesson_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson_questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lesson_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lesson_id` (`lesson_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `lesson_questions_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `lesson_questions_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson_questions`
--

LOCK TABLES `lesson_questions` WRITE;
/*!40000 ALTER TABLE `lesson_questions` DISABLE KEYS */;
INSERT INTO `lesson_questions` VALUES (1,1,1,'2024-12-29 13:31:16','2024-12-29 13:31:16'),(2,1,2,'2024-12-29 13:31:18','2024-12-29 13:31:18'),(3,1,3,'2024-12-29 13:31:19','2024-12-29 13:31:19'),(4,1,4,'2024-12-29 13:31:21','2024-12-29 13:31:21'),(5,1,5,'2024-12-29 13:31:22','2024-12-29 13:31:22'),(6,1,6,'2024-12-29 13:31:25','2024-12-29 13:31:25'),(7,1,7,'2024-12-29 13:31:26','2024-12-29 13:31:26'),(8,1,8,'2024-12-29 13:31:27','2024-12-29 13:31:27'),(9,1,9,'2024-12-29 13:31:30','2024-12-29 13:31:30'),(10,1,10,'2024-12-29 13:31:32','2024-12-29 13:31:32');
/*!40000 ALTER TABLE `lesson_questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lessons`
--

DROP TABLE IF EXISTS `lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lessons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `chapter_id` int DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chapter_id` (`chapter_id`),
  CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lessons`
--

LOCK TABLES `lessons` WRITE;
/*!40000 ALTER TABLE `lessons` DISABLE KEYS */;
INSERT INTO `lessons` VALUES (51,'Lesson Title 1',2,'This is a description for lesson 2, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(52,'Lesson Title 2',2,'This is a description for lesson 2, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(53,'Lesson Title 3',2,'This is a description for lesson 3, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(54,'Lesson Title 4',2,'This is a description for lesson 4, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(55,'Lesson Title 5',2,'This is a description for lesson 5, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(56,'Lesson Title 6',2,'This is a description for lesson 6, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(57,'Lesson Title 7',2,'This is a description for lesson 7, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(58,'Lesson Title 8',2,'This is a description for lesson 8, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(59,'Lesson Title 9',2,'This is a description for lesson 9, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(80,'Lesson Title 10',2,'This is a description for lesson 10, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(61,'Lesson Title 11',2,'This is a description for lesson 11, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(62,'Lesson Title 12',2,'This is a description for lesson 12, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(63,'Lesson Title 13',2,'This is a description for lesson 13, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(64,'Lesson Title 14',2,'This is a description for lesson 14, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(65,'Lesson Title 15',2,'This is a description for lesson 15, and it is amazing!','2024-12-29 13:30:59','2024-12-29 13:30:59'),(66,'Lesson Title 16',2,'This is a description for lesson 16, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(67,'Lesson Title 17',2,'This is a description for lesson 17, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(68,'Lesson Title 18',2,'This is a description for lesson 18, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(69,'Lesson Title 19',2,'This is a description for lesson 19, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(90,'Lesson Title 20',2,'This is a description for lesson 20, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(91,'Lesson Title 21',2,'This is a description for lesson 21, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(92,'Lesson Title 22',2,'This is a description for lesson 22, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(93,'Lesson Title 23',2,'This is a description for lesson 23, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(94,'Lesson Title 24',2,'This is a description for lesson 24, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(95,'Lesson Title 25',2,'This is a description for lesson 25, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(96,'Lesson Title 26',2,'This is a description for lesson 26, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(97,'Lesson Title 27',2,'This is a description for lesson 27, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(98,'Lesson Title 28',2,'This is a description for lesson 28, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(99,'Lesson Title 29',2,'This is a description for lesson 29, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00'),(100,'Lesson Title 30',2,'This is a description for lesson 30, and it is amazing!','2024-12-29 13:31:00','2024-12-29 13:31:00');
/*!40000 ALTER TABLE `lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sender_id` int DEFAULT NULL,
  `receiver_id` int DEFAULT NULL,
  `message_text` text,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mistakes`
--

DROP TABLE IF EXISTS `mistakes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mistakes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `lesson_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `your_answer` text,
  `active` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `lesson_id` (`lesson_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `mistakes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `mistakes_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`),
  CONSTRAINT `mistakes_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mistakes`
--

LOCK TABLES `mistakes` WRITE;
/*!40000 ALTER TABLE `mistakes` DISABLE KEYS */;
INSERT INTO `mistakes` VALUES (1,20,1,1,'Con me may',1,'2024-12-12 00:00:00','2024-12-29 20:13:21'),(11,20,1,2,'parrot',1,'2024-12-29 20:45:57','2024-12-29 20:46:02'),(12,20,1,7,'Không chọn',1,'2024-12-29 20:45:57','2024-12-29 20:46:10'),(13,20,1,6,'Không chọn',0,'2024-12-29 20:45:57','2024-12-29 20:45:57'),(14,20,1,5,'Không chọn',0,'2024-12-29 20:45:57','2024-12-29 20:45:57'),(15,20,1,1,'fish',0,'2024-12-29 20:45:57','2024-12-29 20:45:57'),(16,20,1,4,'Không chọn',0,'2024-12-29 20:45:57','2024-12-29 20:45:57'),(17,20,1,9,'Không chọn',0,'2024-12-29 20:45:57','2024-12-29 20:45:57'),(18,20,1,8,'Không chọn',0,'2024-12-29 20:45:57','2024-12-29 20:45:57'),(19,20,1,10,'owl',0,'2024-12-29 20:45:57','2024-12-29 20:45:57'),(20,20,1,2,'parrot',0,'2024-12-29 21:01:37','2024-12-29 21:01:37'),(21,20,1,1,'fish',0,'2024-12-29 21:01:37','2024-12-29 21:01:37'),(22,20,1,6,'Không chọn',0,'2024-12-29 21:01:37','2024-12-29 21:01:37'),(23,20,1,10,'owl',0,'2024-12-29 21:01:37','2024-12-29 21:01:37'),(24,20,1,4,'Không chọn',0,'2024-12-29 21:01:37','2024-12-29 21:01:37'),(25,20,1,5,'Không chọn',0,'2024-12-29 21:01:37','2024-12-29 21:01:37'),(26,20,1,7,'Không chọn',0,'2024-12-29 21:01:37','2024-12-29 21:01:37'),(27,20,1,9,'Không chọn',0,'2024-12-29 21:01:37','2024-12-29 21:01:37'),(28,20,1,8,'Không chọn',0,'2024-12-29 21:01:37','2024-12-29 21:01:37'),(29,20,1,7,'Không chọn',0,'2024-12-29 21:01:58','2024-12-29 21:01:58'),(30,20,1,1,'fish',0,'2024-12-29 21:01:58','2024-12-29 21:01:58'),(31,20,1,8,'Không chọn',0,'2024-12-29 21:01:58','2024-12-29 21:01:58'),(32,20,1,2,'parrot',0,'2024-12-29 21:01:58','2024-12-29 21:01:58'),(33,20,1,10,'owl',0,'2024-12-29 21:01:58','2024-12-29 21:01:58'),(34,20,1,9,'Không chọn',0,'2024-12-29 21:01:58','2024-12-29 21:01:58'),(35,20,1,4,'Không chọn',0,'2024-12-29 21:01:59','2024-12-29 21:01:59'),(36,20,1,6,'Không chọn',0,'2024-12-29 21:01:59','2024-12-29 21:01:59'),(37,20,1,5,'Không chọn',0,'2024-12-29 21:01:59','2024-12-29 21:01:59'),(38,20,1,2,'parrot',0,'2024-12-29 21:22:11','2024-12-29 21:22:11'),(39,20,1,1,'fish',0,'2024-12-29 21:22:11','2024-12-29 21:22:11'),(40,20,1,5,'Không chọn',0,'2024-12-29 21:22:11','2024-12-29 21:22:11'),(41,20,1,7,'Không chọn',0,'2024-12-29 21:22:11','2024-12-29 21:22:11'),(42,20,1,6,'Không chọn',0,'2024-12-29 21:22:11','2024-12-29 21:22:11'),(43,20,1,4,'Không chọn',0,'2024-12-29 21:22:11','2024-12-29 21:22:11'),(44,20,1,9,'Không chọn',0,'2024-12-29 21:22:11','2024-12-29 21:22:11'),(45,20,1,8,'Không chọn',0,'2024-12-29 21:22:11','2024-12-29 21:22:11'),(46,20,1,10,'owl',0,'2024-12-29 21:22:11','2024-12-29 21:22:11');
/*!40000 ALTER TABLE `mistakes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_type`
--

DROP TABLE IF EXISTS `notification_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `noti_type` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `noti_type` (`noti_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_type`
--

LOCK TABLES `notification_type` WRITE;
/*!40000 ALTER TABLE `notification_type` DISABLE KEYS */;
INSERT INTO `notification_type` VALUES (1,'ACTIVITY','2024-11-23 08:16:37','2024-11-23 08:16:37'),(2,'ACHIEVEMENT','2024-11-23 08:16:37','2024-11-23 08:16:37');
/*!40000 ALTER TABLE `notification_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `content` text,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `notifications_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `notification_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_of_speech`
--

DROP TABLE IF EXISTS `part_of_speech`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part_of_speech` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pos_type` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pos_type` (`pos_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_of_speech`
--

LOCK TABLES `part_of_speech` WRITE;
/*!40000 ALTER TABLE `part_of_speech` DISABLE KEYS */;
INSERT INTO `part_of_speech` VALUES (1,'NOUN','2024-11-23 08:16:37','2024-11-23 08:16:37'),(2,'PRONOUN','2024-11-23 08:16:37','2024-11-23 08:16:37'),(3,'VERB','2024-11-23 08:16:37','2024-11-23 08:16:37'),(4,'ADJECTIVE','2024-11-23 08:16:37','2024-11-23 08:16:37'),(5,'ADVERB','2024-11-23 08:16:37','2024-11-23 08:16:37'),(6,'PREPOSITION','2024-11-23 08:16:37','2024-11-23 08:16:37'),(7,'CONJUNCTION','2024-11-23 08:16:37','2024-11-23 08:16:37'),(8,'INTERJECTION','2024-11-23 08:16:37','2024-11-23 08:16:37'),(9,'DETERMINER','2024-11-23 08:16:37','2024-11-23 08:16:37'),(10,'ARTICLE','2024-11-23 08:16:37','2024-11-23 08:16:37');
/*!40000 ALTER TABLE `part_of_speech` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_type`
--

DROP TABLE IF EXISTS `question_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ques_type` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ques_type` (`ques_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_type`
--

LOCK TABLES `question_type` WRITE;
/*!40000 ALTER TABLE `question_type` DISABLE KEYS */;
INSERT INTO `question_type` VALUES (1,'MULTIPLE_CHOICE','2024-11-23 08:16:37','2024-11-23 08:16:37'),(2,'FILL_IN_THE_BLANK','2024-11-23 08:16:37','2024-11-23 08:16:37');
/*!40000 ALTER TABLE `question_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `audio_url` varchar(255) DEFAULT NULL,
  `hint` text,
  `type_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `correct_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `question_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'I saw a ______ in the park yesterday.',NULL,'dog',1,'2024-12-29 13:24:39','2024-12-29 13:24:39','dog'),(2,'My neighbor has a ______ as a pet.',NULL,'dog',1,'2024-12-29 13:24:49','2024-12-29 13:24:49','dog'),(3,'He takes his ______ for a walk every morning.',NULL,'dog',1,'2024-12-29 13:24:53','2024-12-29 13:24:53','dog'),(4,'A ______ is known as man\'s best friend.',NULL,'dog',1,'2024-12-29 13:24:57','2024-12-29 13:24:57','dog'),(5,'The ______ barked loudly at the stranger.',NULL,'dog',1,'2024-12-29 13:25:00','2024-12-29 13:25:00','dog'),(6,'She bought a ______ from the animal shelter.',NULL,'dog',1,'2024-12-29 13:25:08','2024-12-29 13:25:08','dog'),(7,'The little ______ wagged its tail happily.',NULL,'dog',1,'2024-12-29 13:25:12','2024-12-29 13:25:12','dog'),(8,'I adopted a ______ for my kids to play with.',NULL,'dog',1,'2024-12-29 13:25:16','2024-12-29 13:25:16','dog'),(9,'The ______ chased the ball across the yard.',NULL,'dog',1,'2024-12-29 13:25:20','2024-12-29 13:25:20','dog'),(10,'He trained his ______ to sit and stay on command.',NULL,'dog',1,'2024-12-29 13:25:24','2024-12-29 13:25:24','dog');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'USER'),(2,'ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answers`
--

DROP TABLE IF EXISTS `user_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_answers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer_text` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `question_id` (`question_id`),
  CONSTRAINT `user_answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answers`
--

LOCK TABLES `user_answers` WRITE;
/*!40000 ALTER TABLE `user_answers` DISABLE KEYS */;
INSERT INTO `user_answers` VALUES (19,20,1,'dog','2024-12-29 16:30:36','2024-12-30 19:03:43'),(20,20,2,'rabbit','2024-12-29 16:32:03','2024-12-30 19:03:47'),(21,20,10,'owl','2024-12-29 16:38:28','2024-12-29 16:38:28'),(22,20,3,'lizard','2024-12-29 17:26:30','2024-12-30 19:03:51'),(23,20,5,'','2024-12-29 17:30:29','2024-12-29 17:30:29'),(24,20,4,'','2024-12-29 17:30:29','2024-12-29 17:30:29'),(25,20,6,'','2024-12-29 17:30:29','2024-12-29 17:30:29'),(26,20,7,'','2024-12-29 17:30:29','2024-12-29 17:30:29'),(27,20,8,'','2024-12-29 17:30:29','2024-12-29 17:30:29'),(28,20,9,'','2024-12-29 17:30:29','2024-12-29 17:30:29');
/*!40000 ALTER TABLE `user_answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_gender`
--

DROP TABLE IF EXISTS `user_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gender_type` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gender_type` (`gender_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_gender`
--

LOCK TABLES `user_gender` WRITE;
/*!40000 ALTER TABLE `user_gender` DISABLE KEYS */;
INSERT INTO `user_gender` VALUES (1,'MALE','2024-11-23 08:16:37','2024-11-23 08:16:37'),(2,'FEMALE','2024-11-23 08:16:37','2024-11-23 08:16:37'),(3,'OTHER','2024-11-23 08:16:37','2024-11-23 08:16:37');
/*!40000 ALTER TABLE `user_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `gender_id` int DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `goal_id` int DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `google_id` int DEFAULT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `gender_id` (`gender_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `user_gender` (`id`),
  CONSTRAINT `users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (30,'katelynscott','kelly97@yahoo.com','Thomas','Cohen','1988-03-30 00:00:00',3,'https://placeimg.com/917/729/any',NULL,'(r1RHsqw17aB',0,8869,'bc5095f4-3516-4ffa-9ad9-7ff79485b7c0','2024-11-23 21:46:29','2024-11-23 21:46:29',NULL),(5,'con_me_may','con_me_may@yahoo.com','Thomas','Cohen','1988-03-30 00:00:00',3,'https://placeimg.com/917/729/any',NULL,'(r1RHsqw17aB',0,8869,'bc5095f4-3516-4ffa-9ad9-7ff79485b7c0','2024-12-14 12:17:33','2024-12-14 12:17:33',NULL),(6,'thang_cha_may','thang_cha_may@yahoo.com','Thomas','Cohen','1988-03-30 00:00:00',3,'https://placeimg.com/917/729/any',NULL,'(r1RHsqw17aB',0,8869,'bc5095f4-3516-4ffa-9ad9-7ff79485b7c0','2024-12-14 12:31:42','2024-12-14 12:31:42',NULL),(8,'thang_cha_may_aaa','thang_cha_may_aaa@yahoo.com','Thomas','Cohen','1988-03-30 00:00:00',3,'https://placeimg.com/917/729/any',NULL,'(r1RHsqw17aB',0,8869,'bc5095f4-3516-4ffa-9ad9-7ff79485b7c0','2024-12-15 16:51:14','2024-12-15 16:51:14',NULL),(10,'con_me_may_beo_aaa','con_me_may_beo_aaa@yahoo.com','Thomas','Cohen','1988-03-30 00:00:00',3,'https://placeimg.com/917/729/any',NULL,'(r1RHsqw17aB',0,8869,'bc5095f4-3516-4ffa-9ad9-7ff79485b7c0','2024-12-15 17:21:54','2024-12-15 17:21:54',NULL),(12,'con_me_may_beo_aaaaa','con_me_may_beo_aaaaa@yahoo.com','Thomas','Cohen','1988-03-30 00:00:00',3,'https://placeimg.com/917/729/any',NULL,'(r1RHsqw17aB',0,8869,'bc5095f4-3516-4ffa-9ad9-7ff79485b7c0','2024-12-15 17:23:16','2024-12-15 17:23:16',NULL),(14,'con_me_may_beo_aaaaa_fuck_you','con_me_may_beo_aaaaa_fuck_you@yahoo.com','Thomas','Cohen','1988-03-30 00:00:00',3,'https://placeimg.com/917/729/any',NULL,'(r1RHsqw17aB',0,8869,'bc5095f4-3516-4ffa-9ad9-7ff79485b7c0','2024-12-15 17:28:47','2024-12-15 17:28:47',1),(15,'con_me_may_beo_aaaaa_fuck_you_im_me_di','con_me_may_beo_aaaaa_fuck_you_im_me_di@yahoo.com','Thomas','Cohen','1988-03-30 00:00:00',3,'https://placeimg.com/917/729/any',NULL,'(r1RHsqw17aB',0,8869,'bc5095f4-3516-4ffa-9ad9-7ff79485b7c0','2024-12-15 17:46:11','2024-12-15 17:46:11',NULL),(17,'con_me_may_beo_aaaaa_fuck_you_im_me_di_con_cho','con_me_may_beo_aaaaa_fuck_you_im_me_di_con_cho@yahoo.com','Thomas','Cohen','1988-03-30 00:00:00',3,'https://placeimg.com/917/729/any',NULL,'(r1RHsqw17aB',0,8869,'bc5095f4-3516-4ffa-9ad9-7ff79485b7c0','2024-12-15 17:46:55','2024-12-15 17:46:55',1),(19,'shiroinu','shiroinu@gmail.com','Shiro','Inu','2024-12-27 17:00:00',2,NULL,NULL,'$2a$10$PBgxHRNBrCm07EVSAipvoeJ63C434p0JT4Fdo5/9KqzzktMbqYVOK',1,NULL,'eyJhbGciOiJIUzUxMiJ9.eyJ1c2VybmFtZSI6InNoaXJvaW51Iiwic3ViIjoic2hpcm9pbnUiLCJleHAiOjE3MzU0MTcxNTV9.Bv-b8qLHMxwsGKolRmDh2NgIbLJ_I4r07k_0L2NfN9C0Xjeo_aVl4q6Ix-lCuajrh-N8r5SYNI1koXGVnvhyUQ','2024-12-28 03:19:10','2024-12-28 03:19:16',1),(20,'allforest02','allforest02@gmail.com','Kiet','Tuan','2019-03-13 17:00:00',1,'https://raw.githubusercontent.com/shadow578/Project-Padoru/refs/heads/master/Padoru/dragon-maid-tooru.png',NULL,'$2a$10$JsnqvOcq5Klgv3yk2T2truC2yXnMQB4VSmu037V37S6hZJ//MGMRG',1,NULL,'eyJhbGciOiJIUzUxMiJ9.eyJ1c2VybmFtZSI6ImFsbGZvcmVzdDAyIiwic3ViIjoiYWxsZm9yZXN0MDIiLCJleHAiOjE3MzU2NDY2MTF9.s8MKSJju2VLQ7d2VGsd4mAOrlA-oSp-rx0mOMyRK8tRMT2aCEcZcozHVTA55Hf4nF2XzHZsMDRGFu8UDynTMdg','2024-12-28 03:23:48','2024-12-30 19:03:31',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word_progress`
--

DROP TABLE IF EXISTS `word_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `word_progress` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `word_id` int DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  `note` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `word_id` (`word_id`),
  KEY `status_id` (`status_id`),
  CONSTRAINT `word_progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `word_progress_ibfk_2` FOREIGN KEY (`word_id`) REFERENCES `words` (`id`),
  CONSTRAINT `word_progress_ibfk_3` FOREIGN KEY (`status_id`) REFERENCES `word_status` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word_progress`
--

LOCK TABLES `word_progress` WRITE;
/*!40000 ALTER TABLE `word_progress` DISABLE KEYS */;
/*!40000 ALTER TABLE `word_progress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `word_status`
--

DROP TABLE IF EXISTS `word_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `word_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_type` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_type` (`status_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `word_status`
--

LOCK TABLES `word_status` WRITE;
/*!40000 ALTER TABLE `word_status` DISABLE KEYS */;
INSERT INTO `word_status` VALUES (1,'FORGOT','2024-11-23 08:16:37','2024-11-23 08:16:37'),(2,'LEARNED','2024-11-23 08:16:37','2024-11-23 08:16:37');
/*!40000 ALTER TABLE `word_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `words`
--

DROP TABLE IF EXISTS `words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `words` (
  `id` int NOT NULL AUTO_INCREMENT,
  `word` varchar(255) NOT NULL,
  `meaning` varchar(255) NOT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `part_of_speech_id` int DEFAULT NULL,
  `pronunciation` varchar(255) DEFAULT NULL,
  `audio_url` varchar(255) DEFAULT NULL,
  `example_sentence` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `part_of_speech_id` (`part_of_speech_id`),
  CONSTRAINT `words_ibfk_1` FOREIGN KEY (`part_of_speech_id`) REFERENCES `part_of_speech` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `words`
--

LOCK TABLES `words` WRITE;
/*!40000 ALTER TABLE `words` DISABLE KEYS */;
INSERT INTO `words` VALUES (2,'catalyst','Something that causes a significant change or action','Science',2,'ˈkætəˌlɪst','https://example.com/audio/catalyst.mp3','Her speech was a catalyst for change in the community.','2024-11-24 09:12:47','2024-11-24 09:16:38');
/*!40000 ALTER TABLE `words` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ringolift'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-30 19:28:11
