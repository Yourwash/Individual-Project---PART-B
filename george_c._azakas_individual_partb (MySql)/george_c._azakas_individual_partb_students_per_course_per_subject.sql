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
-- Table structure for table `students_per_course_per_subject`
--

DROP TABLE IF EXISTS `students_per_course_per_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_per_course_per_subject` (
  `spcps_studentKey` bigint NOT NULL,
  `spcps_courseKey` int NOT NULL,
  `spcps_subjectKey` int NOT NULL,
  PRIMARY KEY (`spcps_studentKey`,`spcps_courseKey`,`spcps_subjectKey`),
  KEY `fk_students_has_stream_stream1_idx` (`spcps_courseKey`,`spcps_subjectKey`),
  KEY `fk_students_has_stream_students1_idx` (`spcps_studentKey`),
  CONSTRAINT `fk_students_has_stream_stream1` FOREIGN KEY (`spcps_courseKey`, `spcps_subjectKey`) REFERENCES `course_stream` (`cs_courseKey`, `cs_subjectKey`),
  CONSTRAINT `fk_students_has_stream_students1` FOREIGN KEY (`spcps_studentKey`) REFERENCES `students` (`studentKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_per_course_per_subject`
--

LOCK TABLES `students_per_course_per_subject` WRITE;
/*!40000 ALTER TABLE `students_per_course_per_subject` DISABLE KEYS */;
INSERT INTO `students_per_course_per_subject` VALUES (1001090299,1,1),(1021070292,1,1),(1041280485,1,1),(1061010788,1,1),(1081201082,1,1),(1101290902,1,1),(1121141283,1,1),(1138060989,1,1),(1148140303,1,1),(1006240388,1,2),(1026020598,1,2),(1046280891,1,2),(1066220387,1,2),(1086250189,1,2),(1106271102,1,2),(1126111001,1,2),(1141260290,1,2),(1011060798,1,3),(1031260980,1,3),(1051150793,1,3),(1071120901,1,3),(1091280485,1,3),(1111110284,1,3),(1131220684,1,3),(1143110404,1,3),(1016151184,1,4),(1036090193,1,4),(1056250281,1,4),(1076140696,1,4),(1096130700,1,4),(1116180193,1,4),(1136070601,1,4),(1146020296,1,4),(1017230185,2,1),(1037120391,2,1),(1057280101,2,1),(1077060881,2,1),(1097230787,2,1),(1117130891,2,1),(1137281287,2,1),(1147120989,2,1),(1002250489,2,2),(1022260202,2,2),(1042060184,2,2),(1062211188,2,2),(1082161096,2,2),(1102090494,2,2),(1122280886,2,2),(1139311087,2,2),(1149230492,2,2),(1007040293,2,3),(1027160582,2,3),(1047170591,2,3),(1067151290,2,3),(1087070300,2,3),(1107041094,2,3),(1127030792,2,3),(1142200890,2,3),(1012150590,2,4),(1032011093,2,4),(1052131182,2,4),(1072020598,2,4),(1092020583,2,4),(1112250488,2,4),(1132160395,2,4),(1144110395,2,4),(1013070887,3,1),(1033130292,3,1),(1053170994,3,1),(1073081180,3,1),(1093190780,3,1),(1113310797,3,1),(1133240603,3,1),(1145300894,3,1),(1018131003,3,2),(1038150989,3,2),(1058250890,3,2),(1078301190,3,2),(1098230781,3,2),(1118080202,3,2),(1138060989,3,2),(1148140303,3,2),(1003031203,3,3),(1023230881,3,3),(1043110992,3,3),(1063230302,3,3),(1083300994,3,3),(1103200100,3,3),(1123150995,3,3),(1140290689,3,3),(1150110883,3,3),(1008280793,3,4),(1028040192,3,4),(1048140782,3,4),(1068280487,3,4),(1088111086,3,4),(1108031287,3,4),(1128270795,3,4),(1143110404,3,4),(1009010501,4,1),(1029270300,4,1),(1049270902,4,1),(1069220289,4,1),(1089190183,4,1),(1109100101,4,1),(1129100191,4,1),(1144110395,4,1),(1014060399,4,2),(1034290300,4,2),(1054111200,4,2),(1074290789,4,2),(1094110986,4,2),(1114280803,4,2),(1134260196,4,2),(1146020296,4,2),(1019201298,4,3),(1039040290,4,3),(1059301194,4,3),(1079281201,4,3),(1099100991,4,3),(1119170294,4,3),(1139311087,4,3),(1149230492,4,3),(1004231188,4,4),(1024041292,4,4),(1044310586,4,4),(1064060784,4,4),(1084301288,4,4),(1104031000,4,4),(1124100304,4,4),(1141260290,4,4),(1010281281,5,1),(1030050584,5,1),(1050060795,5,1),(1070120900,5,1),(1090011099,5,1),(1110280698,5,1),(1130140387,5,1),(1145300894,5,1),(1015230288,5,2),(1035071102,5,2),(1055170893,5,2),(1075020593,5,2),(1095240902,5,2),(1115220385,5,2),(1135020597,5,2),(1147120989,5,2),(1020060394,5,3),(1040050801,5,3),(1060221083,5,3),(1080280583,5,3),(1100270980,5,3),(1120110788,5,3),(1140290689,5,3),(1150110883,5,3),(1005210394,5,4),(1025251094,5,4),(1045220392,5,4),(1065260304,5,4),(1085021203,5,4),(1105030800,5,4),(1125270681,5,4),(1142200890,5,4);
/*!40000 ALTER TABLE `students_per_course_per_subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-31  0:47:43
