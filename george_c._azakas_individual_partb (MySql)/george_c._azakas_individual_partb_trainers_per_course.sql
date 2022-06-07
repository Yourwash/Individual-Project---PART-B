-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: george_c._azakas_individual_partb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `trainers_per_course`
--

DROP TABLE IF EXISTS `trainers_per_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainers_per_course` (
  `tpc_trainerKey` int NOT NULL,
  `tpc_courseKey` int NOT NULL,
  PRIMARY KEY (`tpc_trainerKey`,`tpc_courseKey`),
  KEY `fk_trainers_has_courses_courses1_idx` (`tpc_courseKey`),
  KEY `fk_trainers_has_courses_trainers_idx` (`tpc_trainerKey`),
  CONSTRAINT `fk_trainers_has_courses_courses1` FOREIGN KEY (`tpc_courseKey`) REFERENCES `courses` (`courseKey`),
  CONSTRAINT `fk_trainers_has_courses_trainers` FOREIGN KEY (`tpc_trainerKey`) REFERENCES `trainers` (`trainerKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers_per_course`
--

LOCK TABLES `trainers_per_course` WRITE;
/*!40000 ALTER TABLE `trainers_per_course` DISABLE KEYS */;
INSERT INTO `trainers_per_course` VALUES (4001,1),(4002,1),(4003,1),(4004,1),(4005,1),(4001,2),(4002,2),(4003,2),(4004,2),(4005,2),(4001,3),(4002,3),(4003,3),(4004,3),(4005,3),(4006,3),(4007,3),(4008,3),(4009,3),(4010,3),(4011,3),(4012,3),(4001,4),(4002,4),(4003,4),(4004,4),(4005,4),(4006,4),(4007,4),(4008,4),(4009,4),(4010,4),(4011,4),(4012,4),(4001,5),(4003,5),(4004,5),(4006,5),(4007,5),(4008,5),(4009,5),(4010,5),(4011,5),(4012,5);
/*!40000 ALTER TABLE `trainers_per_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07  5:49:17
