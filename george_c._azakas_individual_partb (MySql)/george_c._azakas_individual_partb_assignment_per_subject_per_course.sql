-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: george_c._azakas_individual_partb
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `assignment_per_subject_per_course`
--

DROP TABLE IF EXISTS `assignment_per_subject_per_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignment_per_subject_per_course` (
  `apspc_subjectKey` int NOT NULL,
  `apspc_assignmentKey` int NOT NULL,
  `apspc_courseKey` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`apspc_subjectKey`,`apspc_assignmentKey`),
  KEY `aps_assignmentKey_idx` (`apspc_assignmentKey`),
  CONSTRAINT `apspc_assignmentKey` FOREIGN KEY (`apspc_assignmentKey`) REFERENCES `assignments` (`assignmentKey`),
  CONSTRAINT `apspc_subjectKey` FOREIGN KEY (`apspc_subjectKey`) REFERENCES `subjects` (`subjectKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignment_per_subject_per_course`
--

LOCK TABLES `assignment_per_subject_per_course` WRITE;
/*!40000 ALTER TABLE `assignment_per_subject_per_course` DISABLE KEYS */;
INSERT INTO `assignment_per_subject_per_course` VALUES (1,1,'1'),(1,2,'1'),(1,3,'1'),(1,4,'1'),(1,5,'1'),(1,6,'1'),(1,7,'1'),(1,29,'2'),(1,30,'2'),(1,31,'2'),(1,32,'2'),(1,33,'2'),(1,34,'2'),(1,35,'2'),(1,57,'3'),(1,58,'3'),(1,59,'3'),(1,60,'3'),(1,61,'3'),(1,62,'3'),(1,63,'3'),(1,85,'4'),(1,86,'4'),(1,87,'4'),(1,88,'4'),(1,89,'4'),(1,90,'4'),(1,91,'4'),(1,113,'5'),(1,114,'5'),(1,115,'5'),(1,116,'5'),(1,117,'5'),(1,118,'5'),(1,119,'5'),(2,8,'1'),(2,9,'1'),(2,10,'1'),(2,11,'1'),(2,12,'1'),(2,13,'1'),(2,14,'1'),(2,36,'2'),(2,37,'2'),(2,38,'2'),(2,39,'2'),(2,40,'2'),(2,41,'2'),(2,42,'2'),(2,64,'3'),(2,65,'3'),(2,66,'3'),(2,67,'3'),(2,68,'3'),(2,69,'3'),(2,70,'3'),(2,92,'4'),(2,93,'4'),(2,94,'4'),(2,95,'4'),(2,96,'4'),(2,97,'4'),(2,98,'4'),(2,120,'5'),(2,121,'5'),(2,122,'5'),(2,123,'5'),(2,124,'5'),(2,125,'5'),(2,126,'5'),(3,15,'1'),(3,16,'1'),(3,17,'1'),(3,18,'1'),(3,19,'1'),(3,20,'1'),(3,21,'1'),(3,43,'2'),(3,44,'2'),(3,45,'2'),(3,46,'2'),(3,47,'2'),(3,48,'2'),(3,49,'2'),(3,71,'3'),(3,72,'3'),(3,73,'3'),(3,74,'3'),(3,75,'3'),(3,76,'3'),(3,77,'3'),(3,99,'4'),(3,100,'4'),(3,101,'4'),(3,102,'4'),(3,103,'4'),(3,104,'4'),(3,105,'4'),(3,127,'5'),(3,128,'5'),(3,129,'5'),(3,130,'5'),(3,131,'5'),(3,132,'5'),(3,133,'5'),(4,22,'1'),(4,23,'1'),(4,24,'1'),(4,25,'1'),(4,26,'1'),(4,27,'1'),(4,28,'1'),(4,50,'2'),(4,51,'2'),(4,52,'2'),(4,53,'2'),(4,54,'2'),(4,55,'2'),(4,56,'2'),(4,78,'3'),(4,79,'3'),(4,80,'3'),(4,81,'3'),(4,82,'3'),(4,83,'3'),(4,84,'3'),(4,106,'4'),(4,107,'4'),(4,108,'4'),(4,109,'4'),(4,110,'4'),(4,111,'4'),(4,112,'4'),(4,134,'5'),(4,135,'5'),(4,136,'5'),(4,137,'5'),(4,138,'5'),(4,139,'5'),(4,140,'5');
/*!40000 ALTER TABLE `assignment_per_subject_per_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-31  0:47:42
