-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Table structure for table `blog_table`
--

DROP TABLE IF EXISTS `blog_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `desc` varchar(512) NOT NULL,
  PRIMARY KEY (`id`,`username`,`desc`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_table`
--

LOCK TABLES `blog_table` WRITE;
/*!40000 ALTER TABLE `blog_table` DISABLE KEYS */;
INSERT INTO `blog_table` VALUES (20,'foodUser','Food is a vital part of our daily lives. It nourishes us, provides us with energy and is often a source of comfort and enjoyment. From savory dishes to sweet desserts, there\'s something for everyone. Whether it\'s trying a new recipe or visiting a local restaurant, exploring new foods is always an exciting adventure. So, why not make the most of each meal and savor every bite?'),(21,'sportsUser','Sports bring people together and foster a sense of community. They provide a way to stay active and healthy, while also offering an escape from the stresses of daily life. Whether it\'s playing pickup games with friends, watching a live match, or joining a league, sports offer endless opportunities for fun and competition. So, grab a ball, lace up your sneakers, and get out there! Embrace the thrill of the game and enjoy the camaraderie that comes with being a sports fan.'),(22,'writerUser','Literature has the power to transport us to different worlds, to make us see life from different perspectives, and to spark our imaginations. From classic novels to contemporary poetry, there is something for everyone. Reading can be a source of comfort and escapism, as well as a means of personal growth and self-discovery. So, why not curl up with a good book today? Let literature take you on an unforgettable journey of the mind and heart.'),(23,'historyUser','​\n\nHistory is more than just dates and events. It\'s the story of humanity, a record of our triumphs and failures, and a window into the past. By studying history, we can gain a better understanding of the world today and where it\'s headed in the future. From ancient civilizations to modern wars, history is full of fascinating stories waiting to be discovered. So, take a journey back in time and explore the rich tapestry of human experience. You may be surprised at what you find.'),(24,'scienceUser','Science is the pursuit of knowledge and understanding of the natural world. It offers answers to the mysteries of life, explains how the universe works, and drives technological advancements. From physics to biology, chemistry to astronomy, science is a field that never ceases to amaze and inspire. Whether you\'re a researcher or simply a curious observer, there\'s always something new to learn and discover in the world of science. '),(25,'computerScientistUser','Computer Science is the study of computers and computational systems. It\'s a rapidly growing field that\'s changing the world, from artificial intelligence and machine learning to cyber security and cloud computing. With its endless possibilities, computer science offers a wealth of opportunities for innovation and problem-solving. Embrace the future and explore the exciting world of computer science today.');
/*!40000 ALTER TABLE `blog_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-17 19:37:01
