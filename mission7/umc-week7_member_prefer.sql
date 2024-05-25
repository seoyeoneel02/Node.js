-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: umc-database-week7.cx64ak0w82c4.ap-northeast-2.rds.amazonaws.com    Database: umc-week7
-- ------------------------------------------------------
-- Server version	8.0.35

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `member_prefer`
--

DROP TABLE IF EXISTS `member_prefer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member_prefer` (
  `id` bigint NOT NULL COMMENT 'index',
  `member_id` bigint DEFAULT NULL COMMENT 'index',
  `category_id` bigint DEFAULT NULL COMMENT 'index',
  `created_at` datetime(6) DEFAULT NULL COMMENT '생성일',
  `updated_at` datetime(6) DEFAULT NULL COMMENT '수정일',
  PRIMARY KEY (`id`),
  KEY `member_id` (`member_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `member_prefer_ibfk_1` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `member_prefer_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `food_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='선호 음식';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_prefer`
--

LOCK TABLES `member_prefer` WRITE;
/*!40000 ALTER TABLE `member_prefer` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_prefer` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-26  0:08:32
