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
  `studentKey` int NOT NULL,
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
INSERT INTO `students` VALUES (1,'Violette','Murcott','2009-12-13',2250.00),(2,'Henri','Boagey','2015-01-31',0.00),(3,'Wildon','Dallimare','2011-11-10',2250.00),(4,'Les','Bilbee','2007-06-05',0.00),(5,'Kate','Jerschke','2012-02-16',2250.00),(6,'Evelyn','Pales','1991-03-05',2250.00),(7,'Rafi','Castiglioni','1991-07-22',1250.00),(8,'Valry','Wines','1994-09-16',1250.00),(9,'Liesa','Critzen','1995-12-08',2500.00),(10,'Daniella','Ellingsworth','2014-01-06',1250.00),(11,'Onfroi','Benoiton','2011-11-08',2250.00),(12,'Tybi','Peddersen','2020-05-14',1250.00),(13,'Jenilee','Graine','2000-03-20',2500.00),(14,'Adrian','MacBain','2001-11-17',1250.00),(15,'Zebadiah','Deme','2014-09-09',0.00),(16,'Liuka','Jaksic','2006-03-04',2500.00),(17,'Reggi','O\'Geneay','2007-02-01',1250.00),(18,'Millicent','Bagger','1992-08-09',1250.00),(19,'Joby','Sainter','2007-01-08',2500.00),(20,'Nye','Londors','2017-11-19',0.00),(21,'Bailey','McKeag','1997-05-09',2500.00),(22,'Eimile','Eblein','2000-02-01',1250.00),(23,'Westbrooke','Hailey','2018-07-20',2250.00),(24,'Raimund','Greensides','2018-07-15',1250.00),(25,'Annelise','Pinckstone','2017-04-25',1250.00),(26,'Fredra','Normavell','2020-08-05',0.00),(27,'Celeste','Djordjevic','2021-12-26',2250.00),(28,'Miguelita','Bagshaw','2002-09-24',2500.00),(29,'Eddy','Hearl','2012-01-10',2500.00),(30,'Toiboid','Howse','1995-01-26',0.00),(31,'Myrwyn','Tenman','2010-05-21',2500.00),(32,'Lock','Lanchbury','2009-08-10',0.00),(33,'Faber','Bowart','2005-02-20',2250.00),(34,'Wyatt','Sloss','2004-03-01',2250.00),(35,'Monah','Terren','2009-12-18',0.00),(36,'Ethel','MacGuiness','1997-05-27',2500.00),(37,'Quintin','Wragg','1993-01-30',0.00),(38,'Demetra','Michael','2014-06-10',2250.00),(39,'Alley','Mitroshinov','2011-08-04',0.00),(40,'Lavina','Rubenchik','1998-01-16',2500.00),(41,'Sheff','Suttling','1999-01-25',2500.00),(42,'Sylvan','Muckart','2006-06-21',1250.00),(43,'Idelle','Miquelet','2011-08-23',1250.00),(44,'Dall','Uridge','2015-02-10',2250.00),(45,'Gilberto','Bowe','2013-02-05',1250.00),(46,'Winny','Doppler','2011-09-22',0.00),(47,'Rhona','Dane','2016-12-14',2250.00),(48,'Pepi','Vedenisov','2012-07-31',2250.00),(49,'Darrelle','Chooter','2019-01-02',2500.00),(50,'Alvina','Friedenbach','2007-06-30',0.00),(51,'Francoise','Conner','2019-09-24',0.00),(52,'Alphonso','Trill','2018-03-31',2250.00),(53,'Leigh','Ibert','2003-05-20',2500.00),(54,'Bevvy','Gillicuddy','2004-05-05',2250.00),(55,'Theodora','Livingstone','1998-10-02',2500.00),(56,'Tatiana','Chetwind','2019-02-28',0.00),(57,'Antin','Eggle','2015-08-02',2250.00),(58,'Lauri','Terrelly','2010-04-28',2500.00),(59,'Sissy','Blomfield','1994-10-08',1250.00),(60,'Merle','Mankor','2018-01-29',2500.00),(61,'Jesse','Baily','2005-05-13',2500.00),(62,'Minnaminnie','Beange','2010-12-28',1250.00),(63,'Cleon','Pavelka','2008-02-23',0.00),(64,'Isis','Ollis','2006-12-10',2500.00),(65,'Dallas','Grossman','2011-03-26',2250.00),(66,'Roseann','Cristoferi','2021-03-05',2250.00),(67,'Edd','Budd','1997-07-21',2250.00),(68,'Xylia','MacNeilage','2004-02-29',0.00),(69,'Louella','Ferrari','2021-02-27',2250.00),(70,'Tilda','Moseby','1993-12-30',1250.00),(71,'Lavinia','Sebyer','2017-09-24',2250.00),(72,'Lorraine','Pedgrift','2003-11-25',2500.00),(73,'Eadie','Alaway','2020-07-23',1250.00),(74,'Diane-marie','Minton','2011-04-29',2250.00),(75,'Lian','Gooderridge','2020-05-11',2500.00),(76,'Jareb','Milligan','2005-11-05',2250.00),(77,'Niles','Sicily','2003-02-06',2500.00),(78,'Corey','Riggs','1994-07-08',2500.00),(79,'Benny','Syde','2006-02-08',2250.00),(80,'Minda','Wadforth','2014-10-07',0.00),(81,'Katleen','Hayer','1992-09-20',1250.00),(82,'Hunt','Jikylls','1997-04-28',1250.00),(83,'Bobbie','Gatecliffe','2016-01-10',0.00),(84,'Roxi','Rowberry','2014-05-25',0.00),(85,'Joannes','Crimp','2001-02-02',0.00),(86,'Romy','Fessier','2018-04-01',0.00),(87,'Prue','Deniske','2014-11-27',0.00),(88,'Freeland','Yerill','2008-07-16',1250.00),(89,'Filip','Dankov','1994-07-14',0.00),(90,'Blair','Leibold','2016-11-04',2250.00),(91,'Willi','Leyrroyd','2000-03-23',1250.00),(92,'Gordon','Laurenty','2008-08-05',1250.00),(93,'Honoria','Cushion','2021-03-30',1250.00),(94,'Hunt','Dwelly','2003-11-29',1250.00),(95,'Angele','Vautrey','1993-10-30',0.00),(96,'Irma','Tidder','2016-05-01',2250.00),(97,'Hope','Doumerc','2010-09-11',0.00),(98,'Trixy','Wastall','2016-11-17',0.00),(99,'Arlyn','Galier','2002-02-21',0.00),(100,'Barn','Duffer','2020-12-19',1250.00),(101,'Cherice','Mulles','2007-05-27',2250.00),(102,'Tito','Foulsham','2001-07-14',0.00),(103,'Barnaby','Scotchmur','2012-12-30',1250.00),(104,'Nanny','Pitkin','1998-07-06',0.00),(105,'Wadsworth','Parslow','2008-03-22',2250.00),(106,'Richmond','Flescher','2018-07-19',2250.00),(107,'Brandie','Enbury','2005-05-11',2250.00),(108,'Carlos','Baford','1999-05-05',2250.00),(109,'Robbert','Pichmann','2021-02-02',2500.00),(110,'Iorgo','Debney','2000-06-28',2500.00),(111,'Doria','Fairlamb','1992-10-11',2500.00),(112,'Sauncho','Doveston','2006-02-12',1250.00),(113,'Sarge','Polleye','2005-01-15',1250.00),(114,'Tomas','Keppin','2016-08-12',2500.00),(115,'Joni','Cobello','2019-10-04',0.00),(116,'Lura','Terlinden','2003-11-29',0.00),(117,'Hedwiga','Pevie','2001-01-09',0.00),(118,'Dael','Paff','1991-08-26',2250.00),(119,'Dorthea','Kumaar','1992-10-16',0.00),(120,'Mia','Abramamov','2018-02-16',1250.00),(121,'Hendrika','Cushe','2000-12-04',1250.00),(122,'Mufinella','Saice','2018-07-18',2250.00),(123,'Tersina','Lanfare','2003-01-03',2500.00),(124,'Juditha','Tingcomb','1992-11-29',1250.00),(125,'Olia','Gladdis','2010-12-26',2250.00),(126,'Dunc','Isenor','1994-12-21',0.00),(127,'Hebert','Dullard','2010-05-08',0.00),(128,'Teddie','Garrud','1994-04-20',0.00),(129,'Lorine','Ashplant','2019-03-16',1250.00),(130,'Patrice','Corby','2012-09-24',2250.00),(131,'Dannel','Hugh','2003-11-10',1250.00),(132,'Steffane','Renny','2013-04-15',0.00),(133,'Anatollo','Scobie','2010-04-06',1250.00),(134,'Vidovic','Dawltrey','1990-03-15',2250.00),(135,'Kimbra','Wade','2022-04-24',2500.00),(136,'Dorise','Ansett','2002-11-02',1250.00),(137,'Brita','Arnet','2006-02-28',1250.00),(138,'Dorolisa','Stanbury','2019-11-11',0.00),(139,'Sophia','Isaaksohn','1993-09-16',2250.00),(140,'Rowan','Spurrior','1997-02-02',1250.00),(141,'Fanni','Boseley','1996-05-02',2250.00),(142,'Bernardine','Neem','2008-07-01',1250.00),(143,'Juli','McPhelimy','1998-04-28',2250.00),(144,'Elli','Vesco','1993-03-23',1250.00),(145,'Luciano','Elcum','2018-04-30',0.00),(146,'Brynne','Pail','2021-06-12',0.00),(147,'Vaughan','Matisoff','2013-04-07',0.00),(148,'Toinette','Jandak','2009-11-19',2250.00),(149,'Barclay','Stoop','1994-02-03',2250.00),(150,'Eldridge','Elfes','2008-06-06',2250.00),(1904951000,'WQE','QWEQ','1995-04-19',0.00),(1904951234,'sda','ASDA','1995-04-19',0.00);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-22  3:56:37
