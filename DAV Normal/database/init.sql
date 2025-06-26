-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: dav
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_address` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Gopalapuram'),(2,'Thoraipakkam');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branches`
--

LOCK TABLES `branches` WRITE;
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
INSERT INTO `branches` VALUES (1,'PCM'),(2,'Commerce');
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_teachers`
--

DROP TABLE IF EXISTS `class_teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_teachers` (
  `class_name` varchar(10) NOT NULL,
  `class_teacher_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_teachers`
--

LOCK TABLES `class_teachers` WRITE;
/*!40000 ALTER TABLE `class_teachers` DISABLE KEYS */;
INSERT INTO `class_teachers` VALUES ('10A','Mr. Karthik'),('11B','Ms. Angayarkanni');
/*!40000 ALTER TABLE `class_teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classes`
--

DROP TABLE IF EXISTS `classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classes` (
  `class_name` varchar(10) NOT NULL,
  `class_teacher_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classes`
--

LOCK TABLES `classes` WRITE;
/*!40000 ALTER TABLE `classes` DISABLE KEYS */;
INSERT INTO `classes` VALUES ('10A','Mr.Karthik'),('11B','Ms.Angayarkanni');
/*!40000 ALTER TABLE `classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_instructors`
--

DROP TABLE IF EXISTS `course_instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_instructors` (
  `course` varchar(50) NOT NULL,
  `instructor` varchar(50) NOT NULL,
  PRIMARY KEY (`course`,`instructor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_instructors`
--

LOCK TABLES `course_instructors` WRITE;
/*!40000 ALTER TABLE `course_instructors` DISABLE KEYS */;
INSERT INTO `course_instructors` VALUES ('Math','Mr.Karthik'),('Physics','Ms.Ambujavali'),('Physics','Ms.Angayarkanni');
/*!40000 ALTER TABLE `course_instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_class_teacher_prebcnf`
--

DROP TABLE IF EXISTS `student_class_teacher_prebcnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_class_teacher_prebcnf` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `class_name` varchar(10) DEFAULT NULL,
  `class_teacher_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_class_teacher_prebcnf`
--

LOCK TABLES `student_class_teacher_prebcnf` WRITE;
/*!40000 ALTER TABLE `student_class_teacher_prebcnf` DISABLE KEYS */;
INSERT INTO `student_class_teacher_prebcnf` VALUES (1,'Saksham','10A','Mr. Karthik'),(2,'Shamsher','10A','Mr. Kathik'),(3,'Akshaj','11B','Ms. Angayarkanni');
/*!40000 ALTER TABLE `student_class_teacher_prebcnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course_instructor_pre5nf`
--

DROP TABLE IF EXISTS `student_course_instructor_pre5nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_course_instructor_pre5nf` (
  `student` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `instructor` varchar(50) NOT NULL,
  PRIMARY KEY (`student`,`course`,`instructor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course_instructor_pre5nf`
--

LOCK TABLES `student_course_instructor_pre5nf` WRITE;
/*!40000 ALTER TABLE `student_course_instructor_pre5nf` DISABLE KEYS */;
INSERT INTO `student_course_instructor_pre5nf` VALUES ('Akshaj','Math','Mr.Karthik'),('Akshaj','Physics','Ms.Angayarkanni'),('Saksham','Math','Mr.Karhtik'),('Saksham','Physics','Ms.Ambujavali');
/*!40000 ALTER TABLE `student_course_instructor_pre5nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_courses`
--

DROP TABLE IF EXISTS `student_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_courses` (
  `student` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  PRIMARY KEY (`student`,`course`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_courses`
--

LOCK TABLES `student_courses` WRITE;
/*!40000 ALTER TABLE `student_courses` DISABLE KEYS */;
INSERT INTO `student_courses` VALUES ('Akshaj','Math'),('Akshaj','Physics'),('Saksham','Math'),('Saksham','Physics');
/*!40000 ALTER TABLE `student_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_hobbies_4nf`
--

DROP TABLE IF EXISTS `student_hobbies_4nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_hobbies_4nf` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `hobby` varchar(50) NOT NULL,
  PRIMARY KEY (`student_id`,`hobby`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_hobbies_4nf`
--

LOCK TABLES `student_hobbies_4nf` WRITE;
/*!40000 ALTER TABLE `student_hobbies_4nf` DISABLE KEYS */;
INSERT INTO `student_hobbies_4nf` VALUES (1,'Saksham','Football'),(1,'Saksham','Painting');
/*!40000 ALTER TABLE `student_hobbies_4nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_hobbies_languages_pre4nf`
--

DROP TABLE IF EXISTS `student_hobbies_languages_pre4nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_hobbies_languages_pre4nf` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `hobby` varchar(50) NOT NULL,
  `language` varchar(50) NOT NULL,
  PRIMARY KEY (`student_id`,`hobby`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_hobbies_languages_pre4nf`
--

LOCK TABLES `student_hobbies_languages_pre4nf` WRITE;
/*!40000 ALTER TABLE `student_hobbies_languages_pre4nf` DISABLE KEYS */;
INSERT INTO `student_hobbies_languages_pre4nf` VALUES (1,'Saksham','Football','English'),(1,'Saksham','Football','Hindi'),(1,'Shamsher','Painting','English'),(1,'Shamsher','Painting','Kannada');
/*!40000 ALTER TABLE `student_hobbies_languages_pre4nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_instructors`
--

DROP TABLE IF EXISTS `student_instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_instructors` (
  `student` varchar(50) NOT NULL,
  `instructor` varchar(50) NOT NULL,
  PRIMARY KEY (`student`,`instructor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_instructors`
--

LOCK TABLES `student_instructors` WRITE;
/*!40000 ALTER TABLE `student_instructors` DISABLE KEYS */;
INSERT INTO `student_instructors` VALUES ('Akshaj','Mr.Karthik'),('Akshaj','Ms.Angayarkanni'),('Saksham','Mr.Karthik'),('Saksham','Ms.Ambujavali');
/*!40000 ALTER TABLE `student_instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_languages_4nf`
--

DROP TABLE IF EXISTS `student_languages_4nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_languages_4nf` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `language` varchar(50) NOT NULL,
  PRIMARY KEY (`student_id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_languages_4nf`
--

LOCK TABLES `student_languages_4nf` WRITE;
/*!40000 ALTER TABLE `student_languages_4nf` DISABLE KEYS */;
INSERT INTO `student_languages_4nf` VALUES (1,'Saksham','English'),(1,'Saksham','Hindi');
/*!40000 ALTER TABLE `student_languages_4nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_subjects_1nf`
--

DROP TABLE IF EXISTS `student_subjects_1nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_subjects_1nf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `student_subjects_1nf_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students_1nf` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_subjects_1nf`
--

LOCK TABLES `student_subjects_1nf` WRITE;
/*!40000 ALTER TABLE `student_subjects_1nf` DISABLE KEYS */;
INSERT INTO `student_subjects_1nf` VALUES (1,1,'Physics'),(2,1,'Chemistry'),(3,1,'Math'),(4,2,'Business'),(5,2,'Accounts'),(6,2,'Economics');
/*!40000 ALTER TABLE `student_subjects_1nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_subjects_2nf`
--

DROP TABLE IF EXISTS `student_subjects_2nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_subjects_2nf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `subject_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `subject_id` (`subject_id`),
  CONSTRAINT `student_subjects_2nf_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students_2nf` (`id`),
  CONSTRAINT `student_subjects_2nf_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_subjects_2nf`
--

LOCK TABLES `student_subjects_2nf` WRITE;
/*!40000 ALTER TABLE `student_subjects_2nf` DISABLE KEYS */;
INSERT INTO `student_subjects_2nf` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6);
/*!40000 ALTER TABLE `student_subjects_2nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_1nf`
--

DROP TABLE IF EXISTS `students_1nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_1nf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `roll_number` varchar(20) DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `address` text,
  `branch` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_1nf`
--

LOCK TABLES `students_1nf` WRITE;
/*!40000 ALTER TABLE `students_1nf` DISABLE KEYS */;
INSERT INTO `students_1nf` VALUES (1,'Saksham Chaturvedi','R001',11,'A','Gopalapuram','PCM'),(2,'Shamsher Sirohi','R002',12,'B','Thoraipakkam','Commerce');
/*!40000 ALTER TABLE `students_1nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_2nf`
--

DROP TABLE IF EXISTS `students_2nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_2nf` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `roll_number` varchar(20) DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  `branch_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `address_id` (`address_id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `students_2nf_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `addresses` (`id`),
  CONSTRAINT `students_2nf_ibfk_2` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_2nf`
--

LOCK TABLES `students_2nf` WRITE;
/*!40000 ALTER TABLE `students_2nf` DISABLE KEYS */;
INSERT INTO `students_2nf` VALUES (1,'Saksham Chaturvedi','R001',11,'A',1,1),(2,'Shamsher Sirohi','R002',12,'B',2,2);
/*!40000 ALTER TABLE `students_2nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_3nf`
--

DROP TABLE IF EXISTS `students_3nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_3nf` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `class_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_3nf`
--

LOCK TABLES `students_3nf` WRITE;
/*!40000 ALTER TABLE `students_3nf` DISABLE KEYS */;
INSERT INTO `students_3nf` VALUES (1,'Saksham','10A'),(2,'Shamsher','10A'),(3,'Akshaj','11B');
/*!40000 ALTER TABLE `students_3nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_bcnf`
--

DROP TABLE IF EXISTS `students_bcnf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_bcnf` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `class_name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_bcnf`
--

LOCK TABLES `students_bcnf` WRITE;
/*!40000 ALTER TABLE `students_bcnf` DISABLE KEYS */;
INSERT INTO `students_bcnf` VALUES (1,'Saksham','10A'),(2,'Shamsher','10A'),(3,'Akshaj','11B');
/*!40000 ALTER TABLE `students_bcnf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_pre3nf`
--

DROP TABLE IF EXISTS `students_pre3nf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_pre3nf` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `class_name` varchar(10) DEFAULT NULL,
  `class_teacher_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_pre3nf`
--

LOCK TABLES `students_pre3nf` WRITE;
/*!40000 ALTER TABLE `students_pre3nf` DISABLE KEYS */;
INSERT INTO `students_pre3nf` VALUES (1,'Saksham ','10A','Mr.Karthik'),(2,'Shamsher','10A','Mr.Karthik'),(3,'Akshaj','11B','Ms.Angayarkanni');
/*!40000 ALTER TABLE `students_pre3nf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students_unf`
--

DROP TABLE IF EXISTS `students_unf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_unf` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `roll_number` varchar(20) DEFAULT NULL,
  `grade` int DEFAULT NULL,
  `class` varchar(10) DEFAULT NULL,
  `address` text,
  `branch` varchar(20) DEFAULT NULL,
  `subject1` varchar(50) DEFAULT NULL,
  `subject2` varchar(50) DEFAULT NULL,
  `subject3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students_unf`
--

LOCK TABLES `students_unf` WRITE;
/*!40000 ALTER TABLE `students_unf` DISABLE KEYS */;
INSERT INTO `students_unf` VALUES (1,'Saksham Chaturvedi','R001',11,'A','Gopalapuram','PCM','Physics','Chemistry','Math'),(2,'Shamsher Sirohi','R002',12,'B','Thoraipakkam','Commerce','Business','Accounts','Economics');
/*!40000 ALTER TABLE `students_unf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Physics'),(2,'Chemistry'),(3,'Math'),(4,'Business'),(5,'Accounts'),(6,'Economics');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-25 16:05:37
