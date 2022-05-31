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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `studentKey` bigint NOT NULL,
  `stdFirstName` varchar(45) DEFAULT NULL,
  `stdLastName` varchar(45) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `tuitionFees` decimal(11,2) DEFAULT NULL,
  PRIMARY KEY (`studentKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1001090299,'Violette','Murcott','1999-02-09',2500.00),(1002250489,'Henri','Boagey','1989-04-25',2500.00),(1003031203,'Wildon','Dallimare','2003-12-03',2250.00),(1004231188,'Les','Bilbee','1988-11-23',1250.00),(1005210394,'Kate','Jerschke','1994-03-21',2250.00),(1006240388,'Evelyn','Pales','1988-03-24',2500.00),(1007040293,'Rafi','Castiglioni','1993-02-04',1250.00),(1008280793,'Valry','Wines','1993-07-28',2250.00),(1009010501,'Liesa','Critzen','2001-05-01',0.00),(1010281281,'Daniella','Ellingsworth','1981-12-28',2500.00),(1011060798,'Onfroi','Benoiton','1998-07-06',1250.00),(1012150590,'Tybi','Peddersen','1990-05-15',0.00),(1013070887,'Jenilee','Graine','1987-08-07',0.00),(1014060399,'Adrian','MacBain','1999-03-06',1250.00),(1015230288,'Zebadiah','Deme','1988-02-23',0.00),(1016151184,'Liuka','Jaksic','1984-11-15',1250.00),(1017230185,'Reggi','O\'Geneay','1985-01-23',0.00),(1018131003,'Millicent','Bagger','2003-10-13',2250.00),(1019201298,'Joby','Sainter','1998-12-20',0.00),(1020060394,'Nye','Londors','1994-03-06',2500.00),(1021070292,'Bailey','McKeag','1992-02-07',2250.00),(1022260202,'Eimile','Eblein','2002-02-26',2500.00),(1023230881,'Westbrooke','Hailey','1981-08-23',0.00),(1024041292,'Raimund','Greensides','1992-12-04',1250.00),(1025251094,'Annelise','Pinckstone','1994-10-25',2250.00),(1026020598,'Fredra','Normavell','1998-05-02',1250.00),(1027160582,'Celeste','Djordjevic','1982-05-16',1250.00),(1028040192,'Miguelita','Bagshaw','1992-01-04',2250.00),(1029270300,'Eddy','Hearl','2000-03-27',0.00),(1030050584,'Toiboid','Howse','1984-05-05',1250.00),(1031260980,'Myrwyn','Tenman','1980-09-26',0.00),(1032011093,'Lock','Lanchbury','1993-10-01',1250.00),(1033130292,'Faber','Bowart','1992-02-13',1250.00),(1034290300,'Wyatt','Sloss','2000-03-29',2500.00),(1035071102,'Monah','Terren','2002-11-07',1250.00),(1036090193,'Ethel','MacGuiness','1993-01-09',1250.00),(1037120391,'Quintin','Wragg','1991-03-12',0.00),(1038150989,'Demetra','Michael','1989-09-15',1250.00),(1039040290,'Alley','Mitroshinov','1990-02-04',1250.00),(1040050801,'Lavina','Rubenchik','2001-08-05',2500.00),(1041280485,'Sheff','Suttling','1985-04-28',0.00),(1042060184,'Sylvan','Muckart','1984-01-06',2500.00),(1043110992,'Idelle','Miquelet','1992-09-11',2250.00),(1044310586,'Dall','Uridge','1986-05-31',2500.00),(1045220392,'Gilberto','Bowe','1992-03-22',2500.00),(1046280891,'Winny','Doppler','1991-08-28',0.00),(1047170591,'Rhona','Dane','1991-05-17',2250.00),(1048140782,'Pepi','Vedenisov','1982-07-14',2500.00),(1049270902,'Darrelle','Chooter','2002-09-27',1250.00),(1050060795,'Alvina','Friedenbach','1995-07-06',2500.00),(1051150793,'Francoise','Conner','1993-07-15',0.00),(1052131182,'Alphonso','Trill','1982-11-13',2500.00),(1053170994,'Leigh','Ibert','1994-09-17',1250.00),(1054111200,'Bevvy','Gillicuddy','2000-12-11',1250.00),(1055170893,'Theodora','Livingstone','1993-08-17',1250.00),(1056250281,'Tatiana','Chetwind','1981-02-25',2500.00),(1057280101,'Antin','Eggle','2001-01-28',2250.00),(1058250890,'Lauri','Terrelly','1990-08-25',2250.00),(1059301194,'Sissy','Blomfield','1994-11-30',0.00),(1060221083,'Merle','Mankor','1983-10-22',2250.00),(1061010788,'Jesse','Baily','1988-07-01',2500.00),(1062211188,'Minnaminnie','Beange','1988-11-21',2250.00),(1063230302,'Cleon','Pavelka','2002-03-23',1250.00),(1064060784,'Isis','Ollis','1984-07-06',1250.00),(1065260304,'Dallas','Grossman','2004-03-26',0.00),(1066220387,'Roseann','Cristoferi','1987-03-22',1250.00),(1067151290,'Edd','Budd','1990-12-15',0.00),(1068280487,'Xylia','MacNeilage','1987-04-28',1250.00),(1069220289,'Louella','Ferrari','1989-02-22',2500.00),(1070120900,'Tilda','Moseby','2000-09-12',2500.00),(1071120901,'Lavinia','Sebyer','2001-09-12',1250.00),(1072020598,'Lorraine','Pedgrift','1998-05-02',1250.00),(1073081180,'Eadie','Alaway','1980-11-08',2250.00),(1074290789,'Diane-marie','Minton','1989-07-29',2500.00),(1075020593,'Lian','Gooderridge','1993-05-02',0.00),(1076140696,'Jareb','Milligan','1996-06-14',2250.00),(1077060881,'Niles','Sicily','1981-08-06',0.00),(1078301190,'Corey','Riggs','1990-11-30',2250.00),(1079281201,'Benny','Syde','2001-12-28',1250.00),(1080280583,'Minda','Wadforth','1983-05-28',2250.00),(1081201082,'Katleen','Hayer','1982-10-20',2250.00),(1082161096,'Hunt','Jikylls','1996-10-16',1250.00),(1083300994,'Bobbie','Gatecliffe','1994-09-30',2500.00),(1084301288,'Roxi','Rowberry','1988-12-30',2250.00),(1085021203,'Joannes','Crimp','2003-12-02',2500.00),(1086250189,'Romy','Fessier','1989-01-25',2500.00),(1087070300,'Prue','Deniske','2000-03-07',0.00),(1088111086,'Freeland','Yerill','1986-10-11',2500.00),(1089190183,'Filip','Dankov','1983-01-19',2500.00),(1090011099,'Blair','Leibold','1999-10-01',1250.00),(1091280485,'Willi','Leyrroyd','1985-04-28',2500.00),(1092020583,'Gordon','Laurenty','1983-05-02',0.00),(1093190780,'Honoria','Cushion','1980-07-19',2500.00),(1094110986,'Hunt','Dwelly','1986-09-11',2500.00),(1095240902,'Angele','Vautrey','2002-09-24',2500.00),(1096130700,'Irma','Tidder','2000-07-13',1250.00),(1097230787,'Hope','Doumerc','1987-07-23',0.00),(1098230781,'Trixy','Wastall','1981-07-23',1250.00),(1099100991,'Arlyn','Galier','1991-09-10',2250.00),(1100270980,'Barn','Duffer','1980-09-27',2500.00),(1101290902,'Cherice','Mulles','2002-09-29',0.00),(1102090494,'Tito','Foulsham','1994-04-09',2250.00),(1103200100,'Barnaby','Scotchmur','2000-01-20',2500.00),(1104031000,'Nanny','Pitkin','2000-10-03',0.00),(1105030800,'Wadsworth','Parslow','2000-08-03',2500.00),(1106271102,'Richmond','Flescher','2002-11-27',1250.00),(1107041094,'Brandie','Enbury','1994-10-04',2250.00),(1108031287,'Carlos','Baford','1987-12-03',0.00),(1109100101,'Robbert','Pichmann','2001-01-10',2250.00),(1110280698,'Iorgo','Debney','1998-06-28',0.00),(1111110284,'Doria','Fairlamb','1984-02-11',0.00),(1112250488,'Sauncho','Doveston','1988-04-25',2250.00),(1113310797,'Sarge','Polleye','1997-07-31',0.00),(1114280803,'Tomas','Keppin','2003-08-28',1250.00),(1115220385,'Joni','Cobello','1985-03-22',1250.00),(1116180193,'Lura','Terlinden','1993-01-18',2250.00),(1117130891,'Hedwiga','Pevie','1991-08-13',2250.00),(1118080202,'Dael','Paff','2002-02-08',1250.00),(1119170294,'Dorthea','Kumaar','1994-02-17',1250.00),(1120110788,'Mia','Abramamov','1988-07-11',2250.00),(1121141283,'Hendrika','Cushe','1983-12-14',0.00),(1122280886,'Mufinella','Saice','1986-08-28',2250.00),(1123150995,'Tersina','Lanfare','1995-09-15',1250.00),(1124100304,'Juditha','Tingcomb','2004-03-10',1250.00),(1125270681,'Olia','Gladdis','1981-06-27',2250.00),(1126111001,'Dunc','Isenor','2001-10-11',2250.00),(1127030792,'Hebert','Dullard','1992-07-03',2250.00),(1128270795,'Teddie','Garrud','1995-07-27',2250.00),(1129100191,'Lorine','Ashplant','1991-01-10',2250.00),(1130140387,'Patrice','Corby','1987-03-14',2500.00),(1131220684,'Dannel','Hugh','1984-06-22',0.00),(1132160395,'Steffane','Renny','1995-03-16',0.00),(1133240603,'Anatollo','Scobie','2003-06-24',2250.00),(1134260196,'Vidovic','Dawltrey','1996-01-26',2500.00),(1135020597,'Kimbra','Wade','1997-05-02',2500.00),(1136070601,'Dorise','Ansett','2001-06-07',2500.00),(1137281287,'Brita','Arnet','1987-12-28',0.00),(1138060989,'Dorolisa','Stanbury','1989-09-06',2500.00),(1139311087,'Sophia','Isaaksohn','1987-10-31',2500.00),(1140290689,'Rowan','Spurrior','1989-06-29',2500.00),(1141260290,'Fanni','Boseley','1990-02-26',0.00),(1142200890,'Bernardine','Neem','1990-08-20',1250.00),(1143110404,'Juli','McPhelimy','2004-04-11',1250.00),(1144110395,'Elli','Vesco','1995-03-11',2250.00),(1145300894,'Luciano','Elcum','1994-08-30',2250.00),(1146020296,'Brynne','Pail','1996-02-02',0.00),(1147120989,'Vaughan','Matisoff','1989-09-12',2250.00),(1148140303,'Toinette','Jandak','2003-03-14',2500.00),(1149230492,'Barclay','Stoop','1992-04-23',2250.00),(1150110883,'Eldridge','Elfes','1983-08-11',2500.00);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `StudentKeyGeneratorOnInsert` BEFORE INSERT ON `students` FOR EACH ROW BEGIN
declare temp_day char(2);
declare temp_month char(2);
declare temp_year char(2);
declare temp_date char(6);
declare temp_partial_pk char(4);
declare temp_pk char(10);
set temp_day = SUBSTRING(new.dateOfBirth, 9, 2);
set temp_month = SUBSTRING(new.dateOfBirth, 6, 2);
set temp_year = SUBSTRING(new.dateOfBirth, 3, 2);
set temp_date = CONCAT(temp_day,temp_month,temp_year);
set temp_partial_pk = CAST(new.studentKey AS char(4));
set temp_pk = CONCAT(temp_partial_pk,temp_date);
set new.studentKey = CAST(temp_pk AS UNSIGNED);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `StudentKeyGeneratorOnUpdate` BEFORE UPDATE ON `students` FOR EACH ROW BEGIN
declare temp_day char(2);
declare temp_month char(2);
declare temp_year char(2);
declare temp_date char(6);
declare temp_partial_pk char(4);
declare temp_pk char(10);
set temp_day = SUBSTRING(new.dateOfBirth, 9, 2);
set temp_month = SUBSTRING(new.dateOfBirth, 6, 2);
set temp_year = SUBSTRING(new.dateOfBirth, 3, 2);
set temp_date = CONCAT(temp_day,temp_month,temp_year);
set temp_partial_pk = CAST(new.studentKey AS char(4));
set temp_pk = CONCAT(temp_partial_pk,temp_date);
set new.studentKey = CAST(temp_pk AS UNSIGNED);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-31  6:26:22
