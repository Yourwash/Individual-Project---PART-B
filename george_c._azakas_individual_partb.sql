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
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments` (
  `assignmentKey` int NOT NULL,
  `asgnTitle` varchar(45) DEFAULT NULL,
  `asgnDescription` mediumtext,
  `subDateTime` datetime DEFAULT NULL,
  `oralMark` int DEFAULT NULL,
  `totalMark` int DEFAULT NULL,
  `courseKey` int DEFAULT NULL,
  `subjectKey` int DEFAULT NULL,
  PRIMARY KEY (`assignmentKey`),
  KEY `courseKey_idx` (`courseKey`),
  KEY `subjectKey_idx` (`subjectKey`),
  CONSTRAINT `courseKey` FOREIGN KEY (`courseKey`) REFERENCES `courses` (`courseKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `subjectKey` FOREIGN KEY (`subjectKey`) REFERENCES `subjects` (`subjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assignmentsperstudentpercourse`
--

DROP TABLE IF EXISTS `assignmentsperstudentpercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignmentsperstudentpercourse` (
  `apspcKey` int NOT NULL,
  `student` int DEFAULT NULL,
  `course` int DEFAULT NULL,
  `assignments` int DEFAULT NULL,
  PRIMARY KEY (`apspcKey`),
  KEY `studentKey_idx` (`student`),
  KEY `apspc_courseKey_idx` (`course`),
  KEY `assignmentKey_idx` (`assignments`),
  CONSTRAINT `apspc_courseKey` FOREIGN KEY (`course`) REFERENCES `courses` (`courseKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `apspc_studentKey` FOREIGN KEY (`student`) REFERENCES `students` (`studentKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `assignmentKey` FOREIGN KEY (`assignments`) REFERENCES `assignments` (`assignmentKey`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignmentsperstudentpercourse`
--

LOCK TABLES `assignmentsperstudentpercourse` WRITE;
/*!40000 ALTER TABLE `assignmentsperstudentpercourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `assignmentsperstudentpercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `courseKey` int NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `type` tinyint DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `stream` int DEFAULT NULL,
  PRIMARY KEY (`courseKey`),
  KEY `subKeys_idx` (`stream`),
  CONSTRAINT `subKeys` FOREIGN KEY (`stream`) REFERENCES `subjects` (`subjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stdspercourse`
--

DROP TABLE IF EXISTS `stdspercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stdspercourse` (
  `stdsPerCourseKey` int NOT NULL,
  `course` int DEFAULT NULL,
  `student` int DEFAULT NULL,
  PRIMARY KEY (`stdsPerCourseKey`),
  KEY `courseKey_idx` (`course`),
  KEY `studentKey_idx` (`student`),
  CONSTRAINT `spc_course_Key` FOREIGN KEY (`course`) REFERENCES `courses` (`courseKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `studentKey` FOREIGN KEY (`student`) REFERENCES `students` (`studentKey`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stdspercourse`
--

LOCK TABLES `stdspercourse` WRITE;
/*!40000 ALTER TABLE `stdspercourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `stdspercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `studentKey` int NOT NULL,
  `stdFirstName` varchar(45) NOT NULL,
  `stdLastName` varchar(45) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `tuitionFees` decimal(11,2) NOT NULL,
  PRIMARY KEY (`studentKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subjectKey` int NOT NULL,
  `subTitle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`subjectKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainerpercourse`
--

DROP TABLE IF EXISTS `trainerpercourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainerpercourse` (
  `trainerPerCourse` int NOT NULL,
  `course` int DEFAULT NULL,
  `trainer` int DEFAULT NULL,
  PRIMARY KEY (`trainerPerCourse`),
  KEY `courseKey_idx` (`course`),
  KEY `trainerKey_idx` (`trainer`),
  CONSTRAINT `tpc_courseKey` FOREIGN KEY (`course`) REFERENCES `courses` (`courseKey`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `trainerKey` FOREIGN KEY (`trainer`) REFERENCES `trainers` (`trainerKey`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainerpercourse`
--

LOCK TABLES `trainerpercourse` WRITE;
/*!40000 ALTER TABLE `trainerpercourse` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainerpercourse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainers` (
  `trainerKey` int NOT NULL,
  `trnFirstName` varchar(45) DEFAULT NULL,
  `trnLastName` varchar(45) DEFAULT NULL,
  `subject` int DEFAULT NULL,
  PRIMARY KEY (`trainerKey`),
  KEY `subject_idx` (`subject`),
  CONSTRAINT `subject` FOREIGN KEY (`subject`) REFERENCES `subjects` (`subjectKey`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainers`
--

LOCK TABLES `trainers` WRITE;
/*!40000 ALTER TABLE `trainers` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-16  6:40:19
