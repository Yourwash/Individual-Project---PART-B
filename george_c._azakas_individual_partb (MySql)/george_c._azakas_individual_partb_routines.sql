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
-- Temporary view structure for view `trainers_per_course_list`
--

DROP TABLE IF EXISTS `trainers_per_course_list`;
/*!50001 DROP VIEW IF EXISTS `trainers_per_course_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `trainers_per_course_list` AS SELECT 
 1 AS `Trainer``s First Name`,
 1 AS `Trainer``s Last Name`,
 1 AS `Trainer``s Key`,
 1 AS `Course Tittle`,
 1 AS `Course Key`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `assignments_per_course_list`
--

DROP TABLE IF EXISTS `assignments_per_course_list`;
/*!50001 DROP VIEW IF EXISTS `assignments_per_course_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `assignments_per_course_list` AS SELECT 
 1 AS `Assignment Title`,
 1 AS `Description`,
 1 AS `Submision Date`,
 1 AS `Assignment Key`,
 1 AS `Course Tittle`,
 1 AS `Course Key`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `students_per_course_list`
--

DROP TABLE IF EXISTS `students_per_course_list`;
/*!50001 DROP VIEW IF EXISTS `students_per_course_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `students_per_course_list` AS SELECT 
 1 AS `stdFirstName`,
 1 AS `stdLastName`,
 1 AS `studentKey`,
 1 AS `title`,
 1 AS `courseKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `returnee_students_list`
--

DROP TABLE IF EXISTS `returnee_students_list`;
/*!50001 DROP VIEW IF EXISTS `returnee_students_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `returnee_students_list` AS SELECT 
 1 AS `spc_studentKey`,
 1 AS `count(spc_courseKey)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `assignments_per_student_per_course_list`
--

DROP TABLE IF EXISTS `assignments_per_student_per_course_list`;
/*!50001 DROP VIEW IF EXISTS `assignments_per_student_per_course_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `assignments_per_student_per_course_list` AS SELECT 
 1 AS `assignmentKey`,
 1 AS `asgnTitle`,
 1 AS `asgnDescription`,
 1 AS `subDateTime`,
 1 AS `apspc_oralMark`,
 1 AS `apspc_totalMark`,
 1 AS `stdFirstName`,
 1 AS `stdLastName`,
 1 AS `studentKey`,
 1 AS `title`,
 1 AS `courseKey`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `trainers_per_course_list`
--

/*!50001 DROP VIEW IF EXISTS `trainers_per_course_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `trainers_per_course_list` AS select `trainers`.`trnFirstName` AS `Trainer``s First Name`,`trainers`.`trnLastName` AS `Trainer``s Last Name`,`trainers`.`trainerKey` AS `Trainer``s Key`,`courses`.`title` AS `Course Tittle`,`courses`.`courseKey` AS `Course Key` from ((`trainers_per_course` left join `trainers` on((`trainers`.`trainerKey` = `trainers_per_course`.`tpc_trainerKey`))) left join `courses` on((`courses`.`courseKey` = `trainers_per_course`.`tpc_courseKey`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `assignments_per_course_list`
--

/*!50001 DROP VIEW IF EXISTS `assignments_per_course_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `assignments_per_course_list` AS select `assignments`.`asgnTitle` AS `Assignment Title`,`assignments`.`asgnDescription` AS `Description`,`assignments`.`subDateTime` AS `Submision Date`,`assignments`.`assignmentKey` AS `Assignment Key`,`courses`.`title` AS `Course Tittle`,`courses`.`courseKey` AS `Course Key` from ((`assignments_per_course` left join `assignments` on((`assignments`.`assignmentKey` = `assignments_per_course`.`apc_assignmentKey`))) left join `courses` on((`courses`.`courseKey` = `assignments_per_course`.`apc_assignmentKey`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `students_per_course_list`
--

/*!50001 DROP VIEW IF EXISTS `students_per_course_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `students_per_course_list` AS select `students`.`stdFirstName` AS `stdFirstName`,`students`.`stdLastName` AS `stdLastName`,`students`.`studentKey` AS `studentKey`,`courses`.`title` AS `title`,`courses`.`courseKey` AS `courseKey` from ((`students_per_course` left join `students` on((`students`.`studentKey` = `students_per_course`.`spc_studentKey`))) left join `courses` on((`courses`.`courseKey` = `students_per_course`.`spc_courseKey`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `returnee_students_list`
--

/*!50001 DROP VIEW IF EXISTS `returnee_students_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `returnee_students_list` AS select `students_per_course`.`spc_studentKey` AS `spc_studentKey`,count(`students_per_course`.`spc_courseKey`) AS `count(spc_courseKey)` from `students_per_course` group by `students_per_course`.`spc_studentKey` having (count(`students_per_course`.`spc_courseKey`) > 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `assignments_per_student_per_course_list`
--

/*!50001 DROP VIEW IF EXISTS `assignments_per_student_per_course_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `assignments_per_student_per_course_list` AS select `assignments`.`assignmentKey` AS `assignmentKey`,`assignments`.`asgnTitle` AS `asgnTitle`,`assignments`.`asgnDescription` AS `asgnDescription`,`assignments`.`subDateTime` AS `subDateTime`,`assignments_per_student_per_course`.`apspc_oralMark` AS `apspc_oralMark`,`assignments_per_student_per_course`.`apspc_totalMark` AS `apspc_totalMark`,`students`.`stdFirstName` AS `stdFirstName`,`students`.`stdLastName` AS `stdLastName`,`students`.`studentKey` AS `studentKey`,`courses`.`title` AS `title`,`courses`.`courseKey` AS `courseKey` from (((`assignments_per_student_per_course` left join `assignments` on((`assignments`.`assignmentKey` = `assignments_per_student_per_course`.`apspc_assignmentKey`))) left join `courses` on((`courses`.`courseKey` = `assignments_per_student_per_course`.`apspc_courseKey`))) left join `students` on((`students`.`studentKey` = `assignments_per_student_per_course`.`apspc_studentKey`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'george_c._azakas_individual_partb'
--

--
-- Dumping routines for database 'george_c._azakas_individual_partb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-31  0:47:43
