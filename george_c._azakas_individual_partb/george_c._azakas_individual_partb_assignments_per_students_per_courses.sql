-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: george_c._azakas_individual_partb
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
-- Table structure for table `assignments_per_students_per_courses`
--

DROP TABLE IF EXISTS `assignments_per_students_per_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments_per_students_per_courses` (
  `assignments_assignmentKey` int NOT NULL,
  `students_per_courses_students_studentKey` int NOT NULL,
  `students_per_courses_courses_courseKey` int NOT NULL,
  PRIMARY KEY (`assignments_assignmentKey`,`students_per_courses_students_studentKey`,`students_per_courses_courses_courseKey`),
  KEY `fk_assignments_has_students_per_courses_students_per_course_idx` (`students_per_courses_students_studentKey`,`students_per_courses_courses_courseKey`),
  KEY `fk_assignments_has_students_per_courses_assignments1_idx` (`assignments_assignmentKey`),
  CONSTRAINT `fk_assignments_has_students_per_courses_assignments1` FOREIGN KEY (`assignments_assignmentKey`) REFERENCES `assignments` (`assignmentKey`),
  CONSTRAINT `fk_assignments_has_students_per_courses_students_per_courses1` FOREIGN KEY (`students_per_courses_students_studentKey`, `students_per_courses_courses_courseKey`) REFERENCES `students_per_courses` (`students_studentKey`, `courses_courseKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments_per_students_per_courses`
--

LOCK TABLES `assignments_per_students_per_courses` WRITE;
/*!40000 ALTER TABLE `assignments_per_students_per_courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments_per_students_per_courses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-20  6:43:37
