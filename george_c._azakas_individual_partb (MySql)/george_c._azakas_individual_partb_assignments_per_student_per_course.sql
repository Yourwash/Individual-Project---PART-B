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
-- Table structure for table `assignments_per_student_per_course`
--

DROP TABLE IF EXISTS `assignments_per_student_per_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assignments_per_student_per_course` (
  `apspc_assignmentKey` int NOT NULL,
  `apspc_studentKey` bigint NOT NULL,
  `apspc_courseKey` int NOT NULL,
  `apspc_oralMark` int DEFAULT NULL,
  `apspc_totalMark` int DEFAULT NULL,
  PRIMARY KEY (`apspc_assignmentKey`,`apspc_studentKey`,`apspc_courseKey`),
  KEY `fk_assignments_has_students_has_courses_students_has_course_idx` (`apspc_studentKey`,`apspc_courseKey`),
  KEY `fk_assignments_has_students_has_courses_assignments1_idx` (`apspc_assignmentKey`),
  CONSTRAINT `fk_assignments_has_students_has_courses_assignments1` FOREIGN KEY (`apspc_assignmentKey`) REFERENCES `assignments` (`assignmentKey`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments_per_student_per_course`
--

LOCK TABLES `assignments_per_student_per_course` WRITE;
/*!40000 ALTER TABLE `assignments_per_student_per_course` DISABLE KEYS */;
INSERT INTO `assignments_per_student_per_course` VALUES (1,1001090299,1,80,51),(1,1021070292,1,4,45),(1,1041280485,1,0,13),(1,1061010788,1,22,15),(1,1081201082,1,51,62),(1,1101290902,1,80,39),(1,1121141283,1,16,65),(1,1138060989,1,23,9),(1,1148140303,1,98,84),(2,1001090299,1,75,86),(2,1021070292,1,95,1),(2,1041280485,1,38,13),(2,1061010788,1,81,0),(2,1081201082,1,1,77),(2,1101290902,1,73,21),(2,1121141283,1,4,49),(2,1138060989,1,24,5),(2,1148140303,1,65,86),(3,1001090299,1,75,1),(3,1021070292,1,15,18),(3,1041280485,1,78,23),(3,1061010788,1,25,85),(3,1081201082,1,55,37),(3,1101290902,1,92,24),(3,1121141283,1,30,9),(3,1138060989,1,72,97),(3,1148140303,1,87,30),(4,1001090299,1,86,32),(4,1021070292,1,25,83),(4,1041280485,1,84,54),(4,1061010788,1,16,79),(4,1081201082,1,29,22),(4,1101290902,1,19,100),(4,1121141283,1,90,64),(4,1138060989,1,92,90),(4,1148140303,1,29,35),(5,1001090299,1,35,59),(5,1021070292,1,59,68),(5,1041280485,1,59,42),(5,1061010788,1,16,23),(5,1081201082,1,78,38),(5,1101290902,1,44,28),(5,1121141283,1,50,88),(5,1138060989,1,16,23),(5,1148140303,1,97,25),(6,1001090299,1,30,84),(6,1021070292,1,38,99),(6,1041280485,1,41,35),(6,1061010788,1,18,40),(6,1081201082,1,46,6),(6,1101290902,1,13,89),(6,1121141283,1,70,49),(6,1138060989,1,84,1),(6,1148140303,1,39,6),(7,1001090299,1,62,41),(7,1021070292,1,10,95),(7,1041280485,1,89,2),(7,1061010788,1,37,2),(7,1081201082,1,72,21),(7,1101290902,1,69,46),(7,1121141283,1,17,52),(7,1138060989,1,67,43),(7,1148140303,1,40,46),(8,1006240388,1,4,61),(8,1026020598,1,50,97),(8,1046280891,1,82,76),(8,1066220387,1,27,21),(8,1086250189,1,68,94),(8,1106271102,1,0,61),(8,1126111001,1,78,67),(8,1141260290,1,23,87),(9,1006240388,1,8,44),(9,1026020598,1,44,65),(9,1046280891,1,60,73),(9,1066220387,1,34,10),(9,1086250189,1,62,93),(9,1106271102,1,34,29),(9,1126111001,1,96,0),(9,1141260290,1,11,64),(10,1006240388,1,5,79),(10,1026020598,1,5,32),(10,1046280891,1,96,61),(10,1066220387,1,38,66),(10,1086250189,1,89,96),(10,1106271102,1,99,47),(10,1126111001,1,28,64),(10,1141260290,1,94,99),(11,1006240388,1,17,9),(11,1026020598,1,82,51),(11,1046280891,1,91,98),(11,1066220387,1,86,45),(11,1086250189,1,7,80),(11,1106271102,1,6,1),(11,1126111001,1,95,10),(11,1141260290,1,2,31),(12,1006240388,1,41,20),(12,1026020598,1,97,63),(12,1046280891,1,76,76),(12,1066220387,1,59,49),(12,1086250189,1,49,14),(12,1106271102,1,68,28),(12,1126111001,1,71,47),(12,1141260290,1,39,29),(13,1006240388,1,60,45),(13,1026020598,1,23,60),(13,1046280891,1,29,53),(13,1066220387,1,42,94),(13,1086250189,1,81,30),(13,1106271102,1,74,86),(13,1126111001,1,89,71),(13,1141260290,1,42,47),(14,1006240388,1,71,12),(14,1026020598,1,88,70),(14,1046280891,1,63,67),(14,1066220387,1,1,37),(14,1086250189,1,24,8),(14,1106271102,1,40,16),(14,1126111001,1,80,93),(14,1141260290,1,61,4),(15,1011060798,1,4,86),(15,1031260980,1,86,25),(15,1051150793,1,4,42),(15,1071120901,1,96,36),(15,1091280485,1,99,51),(15,1111110284,1,80,8),(15,1131220684,1,97,19),(15,1143110404,1,20,9),(16,1011060798,1,13,34),(16,1031260980,1,62,0),(16,1051150793,1,38,73),(16,1071120901,1,69,91),(16,1091280485,1,86,51),(16,1111110284,1,13,19),(16,1131220684,1,33,38),(16,1143110404,1,5,73),(17,1011060798,1,79,41),(17,1031260980,1,90,77),(17,1051150793,1,45,64),(17,1071120901,1,84,62),(17,1091280485,1,51,54),(17,1111110284,1,61,77),(17,1131220684,1,22,19),(17,1143110404,1,57,50),(18,1011060798,1,36,85),(18,1031260980,1,91,38),(18,1051150793,1,13,76),(18,1071120901,1,89,97),(18,1091280485,1,15,0),(18,1111110284,1,40,6),(18,1131220684,1,2,70),(18,1143110404,1,20,98),(19,1011060798,1,3,15),(19,1031260980,1,15,97),(19,1051150793,1,7,96),(19,1071120901,1,50,17),(19,1091280485,1,28,70),(19,1111110284,1,45,26),(19,1131220684,1,54,22),(19,1143110404,1,13,53),(20,1011060798,1,7,32),(20,1031260980,1,27,82),(20,1051150793,1,46,63),(20,1071120901,1,61,33),(20,1091280485,1,15,68),(20,1111110284,1,39,82),(20,1131220684,1,98,32),(20,1143110404,1,97,2),(21,1011060798,1,47,67),(21,1031260980,1,93,8),(21,1051150793,1,23,71),(21,1071120901,1,69,97),(21,1091280485,1,11,14),(21,1111110284,1,50,37),(21,1131220684,1,25,75),(21,1143110404,1,17,94),(22,1016151184,1,0,35),(22,1036090193,1,64,65),(22,1056250281,1,61,31),(22,1076140696,1,99,81),(22,1096130700,1,53,0),(22,1116180193,1,60,30),(22,1136070601,1,70,40),(22,1146020296,1,30,46),(23,1016151184,1,55,13),(23,1036090193,1,74,0),(23,1056250281,1,85,2),(23,1076140696,1,45,63),(23,1096130700,1,42,53),(23,1116180193,1,39,4),(23,1136070601,1,84,28),(23,1146020296,1,1,17),(24,1016151184,1,26,84),(24,1036090193,1,5,37),(24,1056250281,1,20,71),(24,1076140696,1,20,32),(24,1096130700,1,91,38),(24,1116180193,1,57,70),(24,1136070601,1,39,51),(24,1146020296,1,59,81),(25,1016151184,1,26,15),(25,1036090193,1,21,85),(25,1056250281,1,71,5),(25,1076140696,1,15,15),(25,1096130700,1,55,81),(25,1116180193,1,26,51),(25,1136070601,1,33,43),(25,1146020296,1,29,17),(26,1016151184,1,18,47),(26,1036090193,1,13,86),(26,1056250281,1,90,15),(26,1076140696,1,93,92),(26,1096130700,1,79,6),(26,1116180193,1,28,79),(26,1136070601,1,78,76),(26,1146020296,1,89,29),(27,1016151184,1,88,28),(27,1036090193,1,21,15),(27,1056250281,1,27,49),(27,1076140696,1,53,54),(27,1096130700,1,99,9),(27,1116180193,1,6,16),(27,1136070601,1,65,18),(27,1146020296,1,41,57),(28,1016151184,1,51,88),(28,1036090193,1,81,67),(28,1056250281,1,54,46),(28,1076140696,1,85,47),(28,1096130700,1,64,55),(28,1116180193,1,96,39),(28,1136070601,1,79,21),(28,1146020296,1,29,79),(29,1017230185,2,25,0),(29,1037120391,2,32,87),(29,1057280101,2,22,24),(29,1077060881,2,89,57),(29,1097230787,2,31,91),(29,1117130891,2,32,3),(29,1137281287,2,8,29),(29,1147120989,2,80,90),(30,1017230185,2,38,5),(30,1037120391,2,38,25),(30,1057280101,2,91,86),(30,1077060881,2,40,81),(30,1097230787,2,36,45),(30,1117130891,2,86,39),(30,1137281287,2,16,59),(30,1147120989,2,1,98),(31,1017230185,2,52,71),(31,1037120391,2,4,40),(31,1057280101,2,74,62),(31,1077060881,2,17,24),(31,1097230787,2,100,82),(31,1117130891,2,96,17),(31,1137281287,2,91,84),(31,1147120989,2,19,75),(32,1017230185,2,64,29),(32,1037120391,2,35,44),(32,1057280101,2,33,16),(32,1077060881,2,47,27),(32,1097230787,2,71,67),(32,1117130891,2,5,11),(32,1137281287,2,54,56),(32,1147120989,2,10,92),(33,1017230185,2,62,88),(33,1037120391,2,90,35),(33,1057280101,2,75,67),(33,1077060881,2,22,66),(33,1097230787,2,0,22),(33,1117130891,2,89,36),(33,1137281287,2,50,3),(33,1147120989,2,95,73),(34,1017230185,2,41,36),(34,1037120391,2,11,29),(34,1057280101,2,87,24),(34,1077060881,2,51,99),(34,1097230787,2,12,23),(34,1117130891,2,4,8),(34,1137281287,2,15,84),(34,1147120989,2,56,61),(35,1017230185,2,39,57),(35,1037120391,2,63,48),(35,1057280101,2,79,95),(35,1077060881,2,1,62),(35,1097230787,2,44,17),(35,1117130891,2,30,56),(35,1137281287,2,66,9),(35,1147120989,2,77,96),(36,1002250489,2,8,95),(36,1022260202,2,35,71),(36,1042060184,2,45,97),(36,1062211188,2,67,69),(36,1082161096,2,23,62),(36,1102090494,2,26,25),(36,1122280886,2,38,89),(36,1139311087,2,91,43),(36,1149230492,2,14,81),(37,1002250489,2,35,41),(37,1022260202,2,47,76),(37,1042060184,2,35,88),(37,1062211188,2,34,93),(37,1082161096,2,22,39),(37,1102090494,2,54,93),(37,1122280886,2,90,90),(37,1139311087,2,81,75),(37,1149230492,2,32,26),(38,1002250489,2,91,100),(38,1022260202,2,74,41),(38,1042060184,2,64,46),(38,1062211188,2,22,4),(38,1082161096,2,19,70),(38,1102090494,2,52,20),(38,1122280886,2,52,30),(38,1139311087,2,72,1),(38,1149230492,2,24,71),(39,1002250489,2,45,8),(39,1022260202,2,67,27),(39,1042060184,2,57,58),(39,1062211188,2,80,82),(39,1082161096,2,46,59),(39,1102090494,2,73,25),(39,1122280886,2,28,70),(39,1139311087,2,21,96),(39,1149230492,2,68,35),(40,1002250489,2,20,99),(40,1022260202,2,12,72),(40,1042060184,2,56,34),(40,1062211188,2,40,25),(40,1082161096,2,78,19),(40,1102090494,2,55,98),(40,1122280886,2,17,45),(40,1139311087,2,11,4),(40,1149230492,2,85,100),(41,1002250489,2,50,60),(41,1022260202,2,71,57),(41,1042060184,2,100,89),(41,1062211188,2,68,61),(41,1082161096,2,4,93),(41,1102090494,2,74,85),(41,1122280886,2,40,42),(41,1139311087,2,25,71),(41,1149230492,2,96,82),(42,1002250489,2,82,13),(42,1022260202,2,11,21),(42,1042060184,2,98,48),(42,1062211188,2,98,6),(42,1082161096,2,67,86),(42,1102090494,2,64,100),(42,1122280886,2,66,61),(42,1139311087,2,35,54),(42,1149230492,2,30,96),(43,1007040293,2,88,63),(43,1027160582,2,80,87),(43,1047170591,2,18,16),(43,1067151290,2,36,30),(43,1087070300,2,39,15),(43,1107041094,2,50,48),(43,1127030792,2,23,57),(43,1142200890,2,36,16),(44,1007040293,2,45,42),(44,1027160582,2,77,54),(44,1047170591,2,60,76),(44,1067151290,2,97,9),(44,1087070300,2,59,85),(44,1107041094,2,27,74),(44,1127030792,2,78,63),(44,1142200890,2,62,64),(45,1007040293,2,45,57),(45,1027160582,2,94,46),(45,1047170591,2,94,80),(45,1067151290,2,30,46),(45,1087070300,2,39,78),(45,1107041094,2,47,54),(45,1127030792,2,69,38),(45,1142200890,2,14,53),(46,1007040293,2,22,31),(46,1027160582,2,65,41),(46,1047170591,2,43,89),(46,1067151290,2,61,60),(46,1087070300,2,35,83),(46,1107041094,2,66,100),(46,1127030792,2,73,54),(46,1142200890,2,77,98),(47,1007040293,2,42,95),(47,1027160582,2,50,45),(47,1047170591,2,9,78),(47,1067151290,2,71,40),(47,1087070300,2,10,71),(47,1107041094,2,90,19),(47,1127030792,2,39,46),(47,1142200890,2,95,76),(48,1007040293,2,64,19),(48,1027160582,2,94,76),(48,1047170591,2,54,56),(48,1067151290,2,3,11),(48,1087070300,2,2,70),(48,1107041094,2,59,58),(48,1127030792,2,31,13),(48,1142200890,2,45,14),(49,1007040293,2,57,76),(49,1027160582,2,40,62),(49,1047170591,2,8,6),(49,1067151290,2,11,48),(49,1087070300,2,94,20),(49,1107041094,2,58,36),(49,1127030792,2,52,41),(49,1142200890,2,45,20),(50,1012150590,2,41,38),(50,1032011093,2,39,42),(50,1052131182,2,55,69),(50,1072020598,2,61,96),(50,1092020583,2,1,58),(50,1112250488,2,57,84),(50,1132160395,2,77,58),(50,1144110395,2,19,45),(51,1012150590,2,31,28),(51,1032011093,2,46,36),(51,1052131182,2,7,12),(51,1072020598,2,88,40),(51,1092020583,2,30,30),(51,1112250488,2,43,35),(51,1132160395,2,32,57),(51,1144110395,2,40,20),(52,1012150590,2,23,24),(52,1032011093,2,37,95),(52,1052131182,2,4,53),(52,1072020598,2,32,64),(52,1092020583,2,52,81),(52,1112250488,2,51,8),(52,1132160395,2,65,14),(52,1144110395,2,45,33),(53,1012150590,2,22,64),(53,1032011093,2,54,18),(53,1052131182,2,15,21),(53,1072020598,2,5,92),(53,1092020583,2,36,100),(53,1112250488,2,93,38),(53,1132160395,2,34,98),(53,1144110395,2,54,49),(54,1012150590,2,96,40),(54,1032011093,2,38,87),(54,1052131182,2,58,81),(54,1072020598,2,32,99),(54,1092020583,2,24,88),(54,1112250488,2,15,2),(54,1132160395,2,25,71),(54,1144110395,2,66,100),(55,1012150590,2,22,22),(55,1032011093,2,33,47),(55,1052131182,2,78,88),(55,1072020598,2,44,99),(55,1092020583,2,82,58),(55,1112250488,2,88,40),(55,1132160395,2,9,4),(55,1144110395,2,75,69),(56,1012150590,2,32,11),(56,1032011093,2,32,33),(56,1052131182,2,67,80),(56,1072020598,2,68,73),(56,1092020583,2,98,24),(56,1112250488,2,77,76),(56,1132160395,2,65,93),(56,1144110395,2,39,70),(57,1013070887,3,70,21),(57,1033130292,3,23,84),(57,1053170994,3,18,38),(57,1073081180,3,7,85),(57,1093190780,3,94,40),(57,1113310797,3,7,54),(57,1133240603,3,76,25),(57,1145300894,3,75,43),(58,1013070887,3,84,8),(58,1033130292,3,76,32),(58,1053170994,3,33,55),(58,1073081180,3,52,42),(58,1093190780,3,74,94),(58,1113310797,3,74,96),(58,1133240603,3,57,14),(58,1145300894,3,6,23),(59,1013070887,3,22,31),(59,1033130292,3,57,30),(59,1053170994,3,39,78),(59,1073081180,3,55,57),(59,1093190780,3,8,30),(59,1113310797,3,28,55),(59,1133240603,3,100,61),(59,1145300894,3,65,21),(60,1013070887,3,19,55),(60,1033130292,3,74,35),(60,1053170994,3,95,80),(60,1073081180,3,59,64),(60,1093190780,3,52,13),(60,1113310797,3,79,44),(60,1133240603,3,39,5),(60,1145300894,3,80,65),(61,1013070887,3,21,26),(61,1033130292,3,34,96),(61,1053170994,3,21,55),(61,1073081180,3,2,56),(61,1093190780,3,81,42),(61,1113310797,3,97,90),(61,1133240603,3,17,27),(61,1145300894,3,66,65),(62,1013070887,3,28,8),(62,1033130292,3,84,2),(62,1053170994,3,81,99),(62,1073081180,3,99,59),(62,1093190780,3,76,0),(62,1113310797,3,87,31),(62,1133240603,3,80,19),(62,1145300894,3,60,79),(63,1013070887,3,46,93),(63,1033130292,3,76,6),(63,1053170994,3,97,90),(63,1073081180,3,68,0),(63,1093190780,3,21,56),(63,1113310797,3,19,34),(63,1133240603,3,71,78),(63,1145300894,3,89,42),(64,1018131003,3,34,91),(64,1038150989,3,64,26),(64,1058250890,3,18,66),(64,1078301190,3,23,60),(64,1098230781,3,71,55),(64,1118080202,3,1,43),(64,1138060989,3,75,61),(64,1148140303,3,95,34),(65,1018131003,3,11,19),(65,1038150989,3,70,33),(65,1058250890,3,94,10),(65,1078301190,3,16,39),(65,1098230781,3,28,16),(65,1118080202,3,42,19),(65,1138060989,3,87,76),(65,1148140303,3,42,38),(66,1018131003,3,8,75),(66,1038150989,3,43,66),(66,1058250890,3,0,15),(66,1078301190,3,56,79),(66,1098230781,3,18,26),(66,1118080202,3,100,39),(66,1138060989,3,78,83),(66,1148140303,3,8,29),(67,1018131003,3,16,37),(67,1038150989,3,56,60),(67,1058250890,3,95,48),(67,1078301190,3,46,89),(67,1098230781,3,59,100),(67,1118080202,3,35,22),(67,1138060989,3,0,48),(67,1148140303,3,34,14),(68,1018131003,3,43,10),(68,1038150989,3,85,35),(68,1058250890,3,97,30),(68,1078301190,3,79,17),(68,1098230781,3,16,8),(68,1118080202,3,66,90),(68,1138060989,3,10,87),(68,1148140303,3,81,29),(69,1018131003,3,27,1),(69,1038150989,3,87,22),(69,1058250890,3,62,0),(69,1078301190,3,74,63),(69,1098230781,3,64,31),(69,1118080202,3,41,47),(69,1138060989,3,23,34),(69,1148140303,3,50,11),(70,1018131003,3,83,79),(70,1038150989,3,60,30),(70,1058250890,3,91,79),(70,1078301190,3,90,29),(70,1098230781,3,89,51),(70,1118080202,3,64,53),(70,1138060989,3,95,13),(70,1148140303,3,3,95),(71,1003031203,3,55,95),(71,1023230881,3,12,61),(71,1043110992,3,17,66),(71,1063230302,3,73,72),(71,1083300994,3,38,38),(71,1103200100,3,59,43),(71,1123150995,3,84,28),(71,1140290689,3,89,74),(71,1150110883,3,16,46),(72,1003031203,3,100,70),(72,1023230881,3,13,45),(72,1043110992,3,92,8),(72,1063230302,3,75,65),(72,1083300994,3,38,35),(72,1103200100,3,39,47),(72,1123150995,3,57,69),(72,1140290689,3,60,62),(72,1150110883,3,53,28),(73,1003031203,3,58,10),(73,1023230881,3,24,35),(73,1043110992,3,11,80),(73,1063230302,3,73,73),(73,1083300994,3,8,38),(73,1103200100,3,9,75),(73,1123150995,3,58,13),(73,1140290689,3,0,75),(73,1150110883,3,92,39),(74,1003031203,3,8,21),(74,1023230881,3,51,54),(74,1043110992,3,32,29),(74,1063230302,3,48,65),(74,1083300994,3,42,98),(74,1103200100,3,27,36),(74,1123150995,3,87,13),(74,1140290689,3,33,33),(74,1150110883,3,99,12),(75,1003031203,3,60,38),(75,1023230881,3,26,36),(75,1043110992,3,83,54),(75,1063230302,3,22,10),(75,1083300994,3,99,86),(75,1103200100,3,81,83),(75,1123150995,3,41,17),(75,1140290689,3,99,25),(75,1150110883,3,83,80),(76,1003031203,3,79,49),(76,1023230881,3,28,87),(76,1043110992,3,78,28),(76,1063230302,3,82,11),(76,1083300994,3,60,42),(76,1103200100,3,15,4),(76,1123150995,3,10,64),(76,1140290689,3,10,7),(76,1150110883,3,26,35),(77,1003031203,3,53,10),(77,1023230881,3,75,79),(77,1043110992,3,41,62),(77,1063230302,3,10,81),(77,1083300994,3,78,55),(77,1103200100,3,87,26),(77,1123150995,3,63,21),(77,1140290689,3,79,50),(77,1150110883,3,23,73),(78,1008280793,3,12,10),(78,1028040192,3,16,95),(78,1048140782,3,69,39),(78,1068280487,3,76,82),(78,1088111086,3,97,26),(78,1108031287,3,66,13),(78,1128270795,3,97,86),(78,1143110404,3,67,21),(79,1008280793,3,28,99),(79,1028040192,3,42,27),(79,1048140782,3,61,49),(79,1068280487,3,58,82),(79,1088111086,3,51,11),(79,1108031287,3,4,33),(79,1128270795,3,35,89),(79,1143110404,3,65,74),(80,1008280793,3,72,19),(80,1028040192,3,0,48),(80,1048140782,3,17,99),(80,1068280487,3,84,67),(80,1088111086,3,8,5),(80,1108031287,3,42,35),(80,1128270795,3,39,29),(80,1143110404,3,46,77),(81,1008280793,3,2,82),(81,1028040192,3,59,13),(81,1048140782,3,60,71),(81,1068280487,3,13,57),(81,1088111086,3,66,26),(81,1108031287,3,83,35),(81,1128270795,3,25,68),(81,1143110404,3,78,31),(82,1008280793,3,41,54),(82,1028040192,3,12,29),(82,1048140782,3,81,86),(82,1068280487,3,4,51),(82,1088111086,3,62,72),(82,1108031287,3,55,34),(82,1128270795,3,61,92),(82,1143110404,3,81,71),(83,1008280793,3,3,44),(83,1028040192,3,65,87),(83,1048140782,3,38,54),(83,1068280487,3,55,10),(83,1088111086,3,81,35),(83,1108031287,3,89,52),(83,1128270795,3,18,61),(83,1143110404,3,94,45),(84,1008280793,3,51,72),(84,1028040192,3,61,59),(84,1048140782,3,56,18),(84,1068280487,3,96,43),(84,1088111086,3,75,84),(84,1108031287,3,1,22),(84,1128270795,3,17,8),(84,1143110404,3,77,82),(85,1009010501,4,7,57),(85,1029270300,4,13,81),(85,1049270902,4,25,54),(85,1069220289,4,99,53),(85,1089190183,4,27,98),(85,1109100101,4,1,78),(85,1129100191,4,54,85),(85,1144110395,4,10,43),(86,1009010501,4,30,7),(86,1029270300,4,11,8),(86,1049270902,4,20,20),(86,1069220289,4,40,17),(86,1089190183,4,26,56),(86,1109100101,4,37,37),(86,1129100191,4,74,37),(86,1144110395,4,73,4),(87,1009010501,4,54,27),(87,1029270300,4,17,17),(87,1049270902,4,93,51),(87,1069220289,4,96,73),(87,1089190183,4,19,52),(87,1109100101,4,94,12),(87,1129100191,4,5,71),(87,1144110395,4,67,23),(88,1009010501,4,93,38),(88,1029270300,4,47,76),(88,1049270902,4,59,33),(88,1069220289,4,83,72),(88,1089190183,4,8,86),(88,1109100101,4,75,70),(88,1129100191,4,21,60),(88,1144110395,4,0,96),(89,1009010501,4,33,78),(89,1029270300,4,88,85),(89,1049270902,4,25,56),(89,1069220289,4,50,74),(89,1089190183,4,45,98),(89,1109100101,4,56,79),(89,1129100191,4,96,63),(89,1144110395,4,85,18),(90,1009010501,4,51,3),(90,1029270300,4,43,60),(90,1049270902,4,45,27),(90,1069220289,4,63,77),(90,1089190183,4,81,10),(90,1109100101,4,28,14),(90,1129100191,4,83,30),(90,1144110395,4,71,8),(91,1009010501,4,77,95),(91,1029270300,4,38,39),(91,1049270902,4,40,20),(91,1069220289,4,53,87),(91,1089190183,4,75,39),(91,1109100101,4,5,78),(91,1129100191,4,61,12),(91,1144110395,4,71,26),(92,1014060399,4,51,83),(92,1034290300,4,83,1),(92,1054111200,4,23,79),(92,1074290789,4,37,34),(92,1094110986,4,74,36),(92,1114280803,4,39,55),(92,1134260196,4,80,9),(92,1146020296,4,59,14),(93,1014060399,4,59,25),(93,1034290300,4,37,20),(93,1054111200,4,93,81),(93,1074290789,4,62,33),(93,1094110986,4,44,10),(93,1114280803,4,92,97),(93,1134260196,4,93,62),(93,1146020296,4,30,57),(94,1014060399,4,82,84),(94,1034290300,4,15,69),(94,1054111200,4,30,46),(94,1074290789,4,92,15),(94,1094110986,4,1,79),(94,1114280803,4,38,9),(94,1134260196,4,86,42),(94,1146020296,4,15,30),(95,1014060399,4,37,92),(95,1034290300,4,22,52),(95,1054111200,4,21,69),(95,1074290789,4,97,73),(95,1094110986,4,99,76),(95,1114280803,4,94,69),(95,1134260196,4,8,0),(95,1146020296,4,36,39),(96,1014060399,4,46,11),(96,1034290300,4,38,35),(96,1054111200,4,82,53),(96,1074290789,4,5,84),(96,1094110986,4,35,0),(96,1114280803,4,37,94),(96,1134260196,4,27,96),(96,1146020296,4,0,9),(97,1014060399,4,86,8),(97,1034290300,4,54,5),(97,1054111200,4,60,54),(97,1074290789,4,42,48),(97,1094110986,4,64,76),(97,1114280803,4,37,45),(97,1134260196,4,20,22),(97,1146020296,4,27,96),(98,1014060399,4,98,12),(98,1034290300,4,74,98),(98,1054111200,4,96,29),(98,1074290789,4,89,49),(98,1094110986,4,40,6),(98,1114280803,4,90,53),(98,1134260196,4,37,80),(98,1146020296,4,24,47),(99,1019201298,4,73,3),(99,1039040290,4,89,3),(99,1059301194,4,27,45),(99,1079281201,4,38,46),(99,1099100991,4,62,72),(99,1119170294,4,70,48),(99,1139311087,4,5,92),(99,1149230492,4,88,14),(100,1019201298,4,5,59),(100,1039040290,4,71,24),(100,1059301194,4,38,44),(100,1079281201,4,10,21),(100,1099100991,4,17,92),(100,1119170294,4,74,49),(100,1139311087,4,94,44),(100,1149230492,4,28,22),(101,1019201298,4,96,46),(101,1039040290,4,22,20),(101,1059301194,4,95,54),(101,1079281201,4,86,94),(101,1099100991,4,60,18),(101,1119170294,4,85,13),(101,1139311087,4,86,27),(101,1149230492,4,79,59),(102,1019201298,4,83,14),(102,1039040290,4,92,35),(102,1059301194,4,53,2),(102,1079281201,4,12,38),(102,1099100991,4,30,68),(102,1119170294,4,25,71),(102,1139311087,4,92,43),(102,1149230492,4,22,30),(103,1019201298,4,22,54),(103,1039040290,4,85,54),(103,1059301194,4,25,29),(103,1079281201,4,90,70),(103,1099100991,4,10,87),(103,1119170294,4,30,30),(103,1139311087,4,26,52),(103,1149230492,4,71,93),(104,1019201298,4,64,87),(104,1039040290,4,96,70),(104,1059301194,4,38,69),(104,1079281201,4,22,58),(104,1099100991,4,95,42),(104,1119170294,4,36,90),(104,1139311087,4,9,78),(104,1149230492,4,58,22),(105,1019201298,4,94,85),(105,1039040290,4,79,44),(105,1059301194,4,0,35),(105,1079281201,4,97,20),(105,1099100991,4,42,7),(105,1119170294,4,16,63),(105,1139311087,4,52,37),(105,1149230492,4,12,9),(106,1004231188,4,89,60),(106,1024041292,4,15,1),(106,1044310586,4,86,65),(106,1064060784,4,36,2),(106,1084301288,4,77,26),(106,1104031000,4,96,19),(106,1124100304,4,36,51),(106,1141260290,4,96,100),(107,1004231188,4,72,12),(107,1024041292,4,58,24),(107,1044310586,4,17,49),(107,1064060784,4,28,48),(107,1084301288,4,79,71),(107,1104031000,4,15,42),(107,1124100304,4,30,2),(107,1141260290,4,47,49),(108,1004231188,4,46,20),(108,1024041292,4,100,19),(108,1044310586,4,79,34),(108,1064060784,4,63,82),(108,1084301288,4,91,26),(108,1104031000,4,82,10),(108,1124100304,4,39,49),(108,1141260290,4,41,15),(109,1004231188,4,74,86),(109,1024041292,4,8,69),(109,1044310586,4,3,92),(109,1064060784,4,31,48),(109,1084301288,4,11,24),(109,1104031000,4,19,78),(109,1124100304,4,96,79),(109,1141260290,4,74,90),(110,1004231188,4,18,98),(110,1024041292,4,61,90),(110,1044310586,4,57,20),(110,1064060784,4,42,51),(110,1084301288,4,6,90),(110,1104031000,4,1,11),(110,1124100304,4,60,31),(110,1141260290,4,35,48),(111,1004231188,4,9,25),(111,1024041292,4,56,78),(111,1044310586,4,65,31),(111,1064060784,4,39,17),(111,1084301288,4,89,5),(111,1104031000,4,100,84),(111,1124100304,4,21,60),(111,1141260290,4,36,21),(112,1004231188,4,32,2),(112,1024041292,4,46,54),(112,1044310586,4,98,81),(112,1064060784,4,56,54),(112,1084301288,4,18,26),(112,1104031000,4,81,70),(112,1124100304,4,83,52),(112,1141260290,4,13,41),(113,1010281281,5,53,100),(113,1030050584,5,25,38),(113,1050060795,5,82,66),(113,1070120900,5,57,99),(113,1090011099,5,79,59),(113,1110280698,5,27,55),(113,1130140387,5,63,95),(113,1145300894,5,10,21),(114,1010281281,5,40,86),(114,1030050584,5,32,77),(114,1050060795,5,72,12),(114,1070120900,5,89,70),(114,1090011099,5,16,62),(114,1110280698,5,45,90),(114,1130140387,5,50,25),(114,1145300894,5,75,65),(115,1010281281,5,0,97),(115,1030050584,5,30,54),(115,1050060795,5,19,89),(115,1070120900,5,2,87),(115,1090011099,5,16,68),(115,1110280698,5,57,89),(115,1130140387,5,42,62),(115,1145300894,5,76,71),(116,1010281281,5,43,12),(116,1030050584,5,69,27),(116,1050060795,5,78,90),(116,1070120900,5,95,45),(116,1090011099,5,68,69),(116,1110280698,5,32,83),(116,1130140387,5,36,73),(116,1145300894,5,89,89),(117,1010281281,5,14,83),(117,1030050584,5,84,30),(117,1050060795,5,52,24),(117,1070120900,5,40,23),(117,1090011099,5,66,59),(117,1110280698,5,65,7),(117,1130140387,5,24,94),(117,1145300894,5,83,99),(118,1010281281,5,76,100),(118,1030050584,5,25,26),(118,1050060795,5,5,57),(118,1070120900,5,58,68),(118,1090011099,5,45,73),(118,1110280698,5,41,72),(118,1130140387,5,30,47),(118,1145300894,5,66,7),(119,1010281281,5,77,98),(119,1030050584,5,24,98),(119,1050060795,5,14,58),(119,1070120900,5,19,98),(119,1090011099,5,18,22),(119,1110280698,5,27,33),(119,1130140387,5,88,64),(119,1145300894,5,81,96),(120,1015230288,5,84,79),(120,1035071102,5,92,21),(120,1055170893,5,89,52),(120,1075020593,5,9,5),(120,1095240902,5,5,4),(120,1115220385,5,34,69),(120,1135020597,5,74,87),(120,1147120989,5,22,14),(121,1015230288,5,43,2),(121,1035071102,5,35,54),(121,1055170893,5,22,44),(121,1075020593,5,59,82),(121,1095240902,5,81,97),(121,1115220385,5,30,52),(121,1135020597,5,19,19),(121,1147120989,5,13,6),(122,1015230288,5,22,89),(122,1035071102,5,100,57),(122,1055170893,5,11,52),(122,1075020593,5,56,65),(122,1095240902,5,98,13),(122,1115220385,5,77,79),(122,1135020597,5,28,34),(122,1147120989,5,43,18),(123,1015230288,5,72,46),(123,1035071102,5,97,81),(123,1055170893,5,100,46),(123,1075020593,5,59,84),(123,1095240902,5,2,34),(123,1115220385,5,9,5),(123,1135020597,5,93,32),(123,1147120989,5,69,71),(124,1015230288,5,14,58),(124,1035071102,5,96,100),(124,1055170893,5,84,82),(124,1075020593,5,53,16),(124,1095240902,5,40,20),(124,1115220385,5,33,31),(124,1135020597,5,34,62),(124,1147120989,5,0,82),(125,1015230288,5,44,90),(125,1035071102,5,61,94),(125,1055170893,5,73,70),(125,1075020593,5,35,17),(125,1095240902,5,15,51),(125,1115220385,5,80,17),(125,1135020597,5,39,13),(125,1147120989,5,57,1),(126,1015230288,5,98,69),(126,1035071102,5,100,65),(126,1055170893,5,61,4),(126,1075020593,5,87,20),(126,1095240902,5,46,54),(126,1115220385,5,26,90),(126,1135020597,5,58,18),(126,1147120989,5,98,50),(127,1020060394,5,68,0),(127,1040050801,5,66,13),(127,1060221083,5,67,69),(127,1080280583,5,47,65),(127,1100270980,5,67,7),(127,1120110788,5,76,69),(127,1140290689,5,50,37),(127,1150110883,5,57,94),(128,1020060394,5,70,66),(128,1040050801,5,92,3),(128,1060221083,5,32,52),(128,1080280583,5,48,14),(128,1100270980,5,58,66),(128,1120110788,5,7,57),(128,1140290689,5,51,90),(128,1150110883,5,39,54),(129,1020060394,5,19,94),(129,1040050801,5,62,0),(129,1060221083,5,2,0),(129,1080280583,5,23,78),(129,1100270980,5,66,89),(129,1120110788,5,64,45),(129,1140290689,5,52,6),(129,1150110883,5,78,43),(130,1020060394,5,38,85),(130,1040050801,5,33,24),(130,1060221083,5,18,90),(130,1080280583,5,24,25),(130,1100270980,5,83,69),(130,1120110788,5,14,57),(130,1140290689,5,34,18),(130,1150110883,5,21,41),(131,1020060394,5,36,48),(131,1040050801,5,97,85),(131,1060221083,5,79,27),(131,1080280583,5,39,42),(131,1100270980,5,24,99),(131,1120110788,5,2,93),(131,1140290689,5,1,99),(131,1150110883,5,59,76),(132,1020060394,5,32,17),(132,1040050801,5,82,89),(132,1060221083,5,77,0),(132,1080280583,5,56,52),(132,1100270980,5,60,62),(132,1120110788,5,19,9),(132,1140290689,5,33,65),(132,1150110883,5,45,17),(133,1020060394,5,98,20),(133,1040050801,5,23,65),(133,1060221083,5,82,14),(133,1080280583,5,28,4),(133,1100270980,5,53,77),(133,1120110788,5,54,20),(133,1140290689,5,70,70),(133,1150110883,5,77,11),(134,1005210394,5,59,57),(134,1025251094,5,17,12),(134,1045220392,5,99,97),(134,1065260304,5,47,93),(134,1085021203,5,14,71),(134,1105030800,5,2,55),(134,1125270681,5,65,81),(134,1142200890,5,67,38),(135,1005210394,5,63,29),(135,1025251094,5,100,18),(135,1045220392,5,58,14),(135,1065260304,5,28,36),(135,1085021203,5,90,57),(135,1105030800,5,3,95),(135,1125270681,5,6,2),(135,1142200890,5,88,79),(136,1005210394,5,3,95),(136,1025251094,5,1,71),(136,1045220392,5,49,65),(136,1065260304,5,48,20),(136,1085021203,5,25,47),(136,1105030800,5,10,34),(136,1125270681,5,100,68),(136,1142200890,5,69,88),(137,1005210394,5,3,91),(137,1025251094,5,45,26),(137,1045220392,5,70,76),(137,1065260304,5,36,43),(137,1085021203,5,62,81),(137,1105030800,5,18,65),(137,1125270681,5,49,81),(137,1142200890,5,100,41),(138,1005210394,5,9,41),(138,1025251094,5,62,73),(138,1045220392,5,9,74),(138,1065260304,5,13,84),(138,1085021203,5,55,66),(138,1105030800,5,81,90),(138,1125270681,5,46,81),(138,1142200890,5,62,17),(139,1005210394,5,8,49),(139,1025251094,5,27,5),(139,1045220392,5,72,79),(139,1065260304,5,32,58),(139,1085021203,5,88,49),(139,1105030800,5,67,42),(139,1125270681,5,76,42),(139,1142200890,5,34,95),(140,1005210394,5,80,8),(140,1025251094,5,54,72),(140,1045220392,5,65,26),(140,1065260304,5,48,2),(140,1085021203,5,10,2),(140,1105030800,5,1,100),(140,1125270681,5,35,34),(140,1142200890,5,82,66);
/*!40000 ALTER TABLE `assignments_per_student_per_course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-06  8:47:51
