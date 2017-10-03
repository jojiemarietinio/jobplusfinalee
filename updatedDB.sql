CREATE DATABASE  IF NOT EXISTS `jobplusfinale` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jobplusfinale`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: jobplusfinale
-- ------------------------------------------------------
-- Server version	5.6.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_calendars`
--

DROP TABLE IF EXISTS `app_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_calendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_calendars`
--

LOCK TABLES `app_calendars` WRITE;
/*!40000 ALTER TABLE `app_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_notifications`
--

DROP TABLE IF EXISTS `app_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_notifications`
--

LOCK TABLES `app_notifications` WRITE;
/*!40000 ALTER TABLE `app_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `application_id` int(11) NOT NULL AUTO_INCREMENT,
  `applicant` int(11) NOT NULL,
  `job` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `is_accepted` tinyint(1) NOT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (27,1,1,'2017-03-06 18:27:13',1),(28,2,1,'2017-09-12 03:25:04',1),(29,3,3,'2017-09-26 02:21:39',0),(30,2,10,'2017-09-29 13:11:08',1),(31,3,5,'2017-09-29 13:14:17',1),(32,2,2,'2017-10-02 03:13:28',1),(33,2,8,'2017-10-03 01:16:56',1),(34,2,5,'2017-10-03 09:30:06',1),(35,2,11,'2017-10-03 14:35:00',1),(36,2,12,'2017-10-04 12:18:18',1),(37,2,13,'2017-10-04 17:16:03',1);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attainment`
--

DROP TABLE IF EXISTS `attainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attainment` (
  `attainment_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`attainment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attainment`
--

LOCK TABLES `attainment` WRITE;
/*!40000 ALTER TABLE `attainment` DISABLE KEYS */;
INSERT INTO `attainment` VALUES (1,'Highschool'),(2,'College');
/*!40000 ALTER TABLE `attainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bot_temp_storage`
--

DROP TABLE IF EXISTS `bot_temp_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bot_temp_storage` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tracker` int(10) unsigned NOT NULL,
  `facebook_id` bigint(20) unsigned NOT NULL,
  `job_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bot_temp_storage`
--

LOCK TABLES `bot_temp_storage` WRITE;
/*!40000 ALTER TABLE `bot_temp_storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `bot_temp_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Household'),(2,'Construction'),(3,'Personel'),(4,'Maintenance');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degrees`
--

DROP TABLE IF EXISTS `degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `degrees` (
  `degree_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`degree_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degrees`
--

LOCK TABLES `degrees` WRITE;
/*!40000 ALTER TABLE `degrees` DISABLE KEYS */;
INSERT INTO `degrees` VALUES (1,'Bachelor of Applied Science'),(2,'Bachelor of Architecture'),(3,'Bachelor of Arts'),(4,'Bachelor of Business Administration'),(5,'Bachelor of Commerce'),(6,'Bachelor of Science');
/*!40000 ALTER TABLE `degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `edu_field`
--

DROP TABLE IF EXISTS `edu_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `edu_field` (
  `edu_field_id` int(11) NOT NULL,
  `degree_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`edu_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `edu_field`
--

LOCK TABLES `edu_field` WRITE;
/*!40000 ALTER TABLE `edu_field` DISABLE KEYS */;
INSERT INTO `edu_field` VALUES (1,6,'Information Technology'),(2,6,'Computer Science');
/*!40000 ALTER TABLE `edu_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education` (
  `education_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attainment` int(1) NOT NULL,
  `school` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start` int(4) NOT NULL,
  `end` int(4) NOT NULL,
  `degree_id` int(11) DEFAULT NULL,
  `field_study` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`education_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (54,2,'University of San Jose- Recoletos',2013,2016,6,'1'),(55,1,'SPC',2016,2025,NULL,NULL);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_calendars`
--

DROP TABLE IF EXISTS `emp_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_calendars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `work_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_calendars`
--

LOCK TABLES `emp_calendars` WRITE;
/*!40000 ALTER TABLE `emp_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp_notifications`
--

DROP TABLE IF EXISTS `emp_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emp_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_notifications`
--

LOCK TABLES `emp_notifications` WRITE;
/*!40000 ALTER TABLE `emp_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `emp_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiences` (
  `experience_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `employer` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year` int(11) NOT NULL,
  PRIMARY KEY (`experience_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_address`
--

DROP TABLE IF EXISTS `job_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lat` float NOT NULL,
  `lng` float NOT NULL,
  `locality` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_address`
--

LOCK TABLES `job_address` WRITE;
/*!40000 ALTER TABLE `job_address` DISABLE KEYS */;
INSERT INTO `job_address` VALUES (1,10.3125,123.898,'Cebu City','M. Gotianuy St, Cebu City, Cebu, Philippines'),(2,10.3126,123.879,'Cebu City','Good Shepherd St, Cebu City, Cebu, Philippines'),(3,10.3127,123.879,'Cebu City','Guadalupe, Cebu City, Cebu, Philippines'),(4,10.3128,123.879,'Cebu City','Guadalupe, Cebu City, Cebu, Philippines'),(5,10.3097,123.892,'Cebu City','Vicente Sotto Hospital, Cebu City, Cebu, Philippines'),(6,10.3097,123.892,'Cebu City','Vicente Sotto Hospital, Cebu City, Cebu, Philippines'),(7,10.3097,123.892,'Cebu City','Capitol Site, Cebu City, Cebu, Philippines'),(8,10.3097,123.892,'Cebu City','Vicente Sotto Hospital, Cebu City, Cebu, Philippines'),(9,10.3116,123.878,'Cebu City','Guadalupe, Cebu City, Cebu, Philippines'),(10,10.3096,123.892,'Cebu City','Vicente Sotto Hospital, Cebu City, Cebu, Philippines'),(11,10.3099,123.892,'Cebu City','Capitol Site, Cebu City, Cebu, Philippines'),(12,10.3133,123.88,'Cebu City','Guadalupe, Cebu City, Cebu, Philippines'),(13,10.3126,123.88,'Cebu City','Guadalupe, Cebu City, Cebu, Philippines'),(14,10.3123,123.879,'Cebu City','Good Shepherd St, Cebu City, Cebu, Philippines');
/*!40000 ALTER TABLE `job_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_cancelled`
--

DROP TABLE IF EXISTS `job_cancelled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_cancelled` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `reason` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_cancelled`
--

LOCK TABLES `job_cancelled` WRITE;
/*!40000 ALTER TABLE `job_cancelled` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_cancelled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_feeds`
--

DROP TABLE IF EXISTS `job_feeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `location_points` int(5) NOT NULL,
  `skill_points` int(5) NOT NULL,
  `history_points` int(5) NOT NULL,
  `result` float NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_feeds`
--

LOCK TABLES `job_feeds` WRITE;
/*!40000 ALTER TABLE `job_feeds` DISABLE KEYS */;
INSERT INTO `job_feeds` VALUES (8,9,15,30,25,23.2,2),(9,10,15,30,25,23.2,2),(10,8,13,24,25,20.8,2),(11,2,15,30,25,23.3333,2),(12,5,15,30,25,23.2,2),(13,2,95,0,0,0,3),(14,5,96,0,0,0,3),(15,8,97,0,0,0,3),(16,9,96,0,0,0,3),(17,11,13,30,50,31.1333,2),(18,12,13,30,25,22.8,2),(19,13,13,24,25,20.7333,2);
/*!40000 ALTER TABLE `job_feeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_nearby`
--

DROP TABLE IF EXISTS `job_nearby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_nearby` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `location_points` int(5) NOT NULL,
  `skill_points` int(5) NOT NULL,
  `history_points` int(5) NOT NULL,
  `result` float NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_nearby`
--

LOCK TABLES `job_nearby` WRITE;
/*!40000 ALTER TABLE `job_nearby` DISABLE KEYS */;
INSERT INTO `job_nearby` VALUES (1,1,30,30,16,25.3333,1),(2,2,48,30,10,29.3333,3),(3,3,48,30,10,29.3333,3),(4,2,95,0,0,0,3),(5,5,48,30,10,29.3333,3),(6,8,49,30,10,29.5,3),(7,9,48,30,10,29.3333,3);
/*!40000 ALTER TABLE `job_nearby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_recommended`
--

DROP TABLE IF EXISTS `job_recommended`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_recommended` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `location_points` int(5) NOT NULL,
  `skill_points` int(5) NOT NULL,
  `history_points` int(5) NOT NULL,
  `result` float NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_recommended`
--

LOCK TABLES `job_recommended` WRITE;
/*!40000 ALTER TABLE `job_recommended` DISABLE KEYS */;
INSERT INTO `job_recommended` VALUES (1,5,22,50,10,27.3,2),(3,9,22,50,10,27.3,2),(4,10,22,50,10,27.3,2),(7,5,73,0,0,0,2),(9,5,29,50,10,29.6,3),(11,9,29,50,10,29.6,3),(12,11,20,50,20,30.0333,2),(13,12,20,50,10,26.7,2);
/*!40000 ALTER TABLE `job_recommended` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_skills`
--

DROP TABLE IF EXISTS `job_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_skills` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `job_id` int(10) NOT NULL,
  `skill_id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_skills`
--

LOCK TABLES `job_skills` WRITE;
/*!40000 ALTER TABLE `job_skills` DISABLE KEYS */;
INSERT INTO `job_skills` VALUES (1,1,3),(2,4,1),(3,5,1),(4,6,1),(5,7,2),(6,8,3),(7,9,1),(8,10,1),(9,11,1),(10,12,2),(11,13,6);
/*!40000 ALTER TABLE `job_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_type`
--

DROP TABLE IF EXISTS `job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_type` (
  `jobtype_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`jobtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_type`
--

LOCK TABLES `job_type` WRITE;
/*!40000 ALTER TABLE `job_type` DISABLE KEYS */;
INSERT INTO `job_type` VALUES (1,'One time'),(2,'Daily'),(3,'Weekly');
/*!40000 ALTER TABLE `job_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `address_id` int(11) NOT NULL,
  `job_type_id` int(11) NOT NULL,
  `title` varchar(225) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `paytype` int(11) NOT NULL,
  `salary` double(8,2) NOT NULL,
  `is_all_day` tinyint(1) NOT NULL,
  `slot` int(11) NOT NULL,
  `date_posted` date NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,2,'1',1,1,'Looking for a Child care worker','Child is 5 years of age, playful and energetic.','2017-03-06 18:16:00','2017-03-06 20:00:04',1,500.00,1,0,'2017-03-06'),(2,2,'1',1,1,'Child care worker','I need yaya','2017-09-16 10:00:00','2017-09-16 12:00:00',1,500.00,1,0,'2017-09-15'),(5,2,'1',6,1,'Dishwasher','I need 2 dishwashers','2017-09-28 09:00:00','2017-09-28 12:00:00',2,300.00,1,0,'2017-09-27'),(8,2,'1',9,2,'Child Care Worker','I need two yayas','2017-09-28 09:00:00','2017-09-30 17:00:00',2,300.00,1,1,'2017-09-27'),(9,2,'1',10,1,'cdscd','dcsd','2017-09-28 09:00:00','2017-09-28 12:00:00',2,300.00,1,2,'2017-09-27'),(10,2,'1',11,1,'I need dishwasher','need dishwasher','2017-09-29 13:00:00','2017-09-29 17:00:00',2,300.00,1,0,'2017-09-29'),(11,2,'1',12,1,'I need Dishwasher','I need two dishwashers','2017-10-04 08:00:00','2017-10-04 12:00:00',2,300.00,1,1,'2017-10-03'),(12,2,'1',13,1,'I need housekeeper','Two housekeeper is needed for 1 day','2017-10-04 14:00:00','2017-10-04 17:00:00',2,300.00,1,1,'2017-10-04'),(13,2,'2',14,1,'Painter','Two painters','2017-10-04 17:20:00','2017-10-04 17:25:00',2,250.00,1,1,'2017-10-04');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobwallet`
--

DROP TABLE IF EXISTS `jobwallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobwallet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `credits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobwallet_user_id_foreign` (`user_id`),
  CONSTRAINT `jobwallet_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobwallet`
--

LOCK TABLES `jobwallet` WRITE;
/*!40000 ALTER TABLE `jobwallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobwallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_from_sender` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_from_receiver` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table',1),('2014_10_12_100000_create_password_resets_table',1),('2016_09_12_031805_create_jobs_table',1),('2016_09_12_035543_create_categories_table',1),('2016_09_12_041852_create_works_table',1),('2016_09_13_095422_create_skills_table',1),('2016_09_13_095439_create_schedules_table',1),('2016_09_13_095517_create_paytypes_table',1),('2016_09_13_095558_create_experiences_table',1),('2016_09_13_095638_create_degrees_table',1),('2016_09_13_095652_create_education_table',1),('2016_09_13_095734_create_profiles_table',1),('2016_09_13_095755_create_reviews_table',1),('2016_09_13_100131_create_emp__notifications_table',1),('2016_09_13_100145_create_app__notifications_table',1),('2016_09_14_090116_create_prof_educations_table',1),('2016_09_14_125745_create_prof_experiences_table',1),('2016_09_14_125756_create_prof_skills_table',1),('2016_09_16_083427_create_app__calendars_table',1),('2016_09_16_083428_create_emp__calendars_table',1),('2016_10_02_222038_create_statuses_table',1),('2017_08_06_183712_create_bot_temp_storage_table',2),('2017_08_07_183714_create_works_table',2),('2017_08_07_201210_create_job_cancelled_table',2),('2017_09_19_212521_update_schedule_table',2),('2017_09_27_153600_create_jobwallet_table',3),('2017_09_27_161313_create_jobwallet_table',4),('2017_09_27_211707_create_jobwallet_table',5),('2017_09_27_212440_create_transactions_table',6),('2014_10_28_175635_create_threads_table',7),('2014_10_28_175710_create_messages_table',7),('2014_10_28_180224_create_participants_table',7),('2014_11_03_154831_add_soft_deletes_to_participants_table',7),('2014_12_04_124531_add_softdeletes_to_threads_table',7),('2017_03_30_152742_add_soft_deletes_to_messages_table',7),('2017_10_02_044758_create_products_table',7),('2017_10_02_045100_create_payments_table',8),('2017_10_02_225601_create_orders_table',9),('2015_10_05_110608_create_messages_table',10),('2015_10_05_110622_create_conversations_table',10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(8,2) unsigned DEFAULT NULL,
  `payment_status` int(10) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (41,NULL,21.00,0,'2017-10-02 16:49:38','2017-10-02 16:49:38',NULL),(42,NULL,22.00,0,'2017-10-02 16:49:38','2017-10-02 16:49:38',NULL),(43,NULL,23.00,0,'2017-10-02 16:49:38','2017-10-02 16:49:38',NULL),(44,NULL,24.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(45,NULL,25.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(46,NULL,26.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(47,NULL,27.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(48,NULL,28.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(49,NULL,29.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(50,NULL,30.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(51,NULL,31.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(52,NULL,32.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(53,NULL,33.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(54,NULL,34.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(55,NULL,35.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(56,NULL,36.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(57,NULL,37.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(58,NULL,38.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(59,NULL,39.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL),(60,NULL,40.00,0,'2017-10-02 16:49:39','2017-10-02 16:49:39',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `item_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytypes`
--

DROP TABLE IF EXISTS `paytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paytypes` (
  `paytype_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`paytype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytypes`
--

LOCK TABLES `paytypes` WRITE;
/*!40000 ALTER TABLE `paytypes` DISABLE KEYS */;
INSERT INTO `paytypes` VALUES (1,'Hour'),(2,'Session'),(3,'Project');
/*!40000 ALTER TABLE `paytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_educations`
--

DROP TABLE IF EXISTS `prof_educations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof_educations` (
  `profedu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(10) NOT NULL,
  `education_id` int(11) NOT NULL,
  PRIMARY KEY (`profedu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_educations`
--

LOCK TABLES `prof_educations` WRITE;
/*!40000 ALTER TABLE `prof_educations` DISABLE KEYS */;
INSERT INTO `prof_educations` VALUES (25,1,51),(26,1,52),(27,0,54),(28,1,55);
/*!40000 ALTER TABLE `prof_educations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_experiences`
--

DROP TABLE IF EXISTS `prof_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof_experiences` (
  `profexp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `experience_id` int(11) NOT NULL,
  PRIMARY KEY (`profexp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_experiences`
--

LOCK TABLES `prof_experiences` WRITE;
/*!40000 ALTER TABLE `prof_experiences` DISABLE KEYS */;
/*!40000 ALTER TABLE `prof_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_mobile`
--

DROP TABLE IF EXISTS `prof_mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof_mobile` (
  `promob_id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `is_verified` varchar(45) NOT NULL,
  `profile_id` int(10) NOT NULL,
  PRIMARY KEY (`promob_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_mobile`
--

LOCK TABLES `prof_mobile` WRITE;
/*!40000 ALTER TABLE `prof_mobile` DISABLE KEYS */;
INSERT INTO `prof_mobile` VALUES (1,'81d5','1',1),(2,'563c','1',2),(3,'eff4','1',3);
/*!40000 ALTER TABLE `prof_mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prof_skills`
--

DROP TABLE IF EXISTS `prof_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prof_skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `skill_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prof_skills`
--

LOCK TABLES `prof_skills` WRITE;
/*!40000 ALTER TABLE `prof_skills` DISABLE KEYS */;
INSERT INTO `prof_skills` VALUES (1,1,1),(2,1,2),(3,1,5),(4,1,6),(5,1,12),(6,1,13),(7,1,19),(8,1,1),(9,1,2),(10,1,5),(11,1,6),(12,1,12),(13,1,13),(14,1,19),(15,1,1),(16,1,2),(17,1,5),(18,1,6),(19,1,12),(20,1,13),(21,1,19),(22,2,1),(23,2,2),(24,3,1),(25,3,2),(26,3,3),(27,3,12),(28,3,17),(29,3,18),(30,3,21);
/*!40000 ALTER TABLE `prof_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `lname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `biography` longtext CHARACTER SET utf8,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,1,'Kent Michael','Baguion','09335532300','Banawa Elementary School, Cebu City, Central Visayas, Philippines','asdasdasd','/avatar/1488795008-14191905_1465962610086008_5116838626995646054_n.jpg'),(2,2,'kim vincent','baguion','09335532300','Basak, Lapu-Lapu City, Central Visayas, Philippines','asdasdas','/avatar/1488795225-carpenter.png'),(3,3,'Jojie Marie','Tinio','09980275679','Cebu City, Central Visayas, Philippines','Hard working','/avatar/1506363591-18249_985202434826022_4615452426661538452_n.jpg');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `review_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `reviewed_id` int(11) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `work_id` int(11) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'A great man and employer',5,2,1,1),(2,'Great man and great service!',5,1,2,1),(3,'great',5,2,2,6),(4,'good',4,2,2,6),(5,'Good',4,2,2,7),(6,'Good',4,2,2,7),(7,'Good',4,2,2,7),(8,'Good',4,2,2,8),(9,'Good',4,2,2,8),(10,'good',4,2,2,9),(11,'good',4,2,2,9);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `job_id` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (25,1,'2017-03-06 18:16:00','2017-03-06 20:00:04',0),(26,4,'2017-09-28 09:00:00','2017-09-28 12:00:00',0),(27,5,'2017-09-28 09:00:00','2017-09-28 12:00:00',0),(28,6,'2017-09-28 09:00:00','2017-09-28 12:00:00',0),(29,7,'2017-09-28 10:00:00','2017-09-28 12:00:00',0),(30,8,'2017-09-28 09:00:00','2017-09-30 17:00:00',0),(31,9,'2017-09-28 09:00:00','2017-09-28 12:00:00',0),(32,10,'2017-09-29 13:00:00','2017-09-29 17:00:00',0),(33,11,'2017-10-04 08:00:00','2017-10-04 12:00:00',0),(34,12,'2017-10-04 14:00:00','2017-10-04 17:00:00',0),(35,13,'2017-10-04 17:20:00','2017-10-04 17:25:00',0);
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'Dishwasher',1),(2,'Housekeeper',1),(3,'Child Care Worker',1),(4,'Laundry and Dry Cleaning',1),(5,'Carpenter',2),(6,'Painter',2),(7,'Masonry',2),(8,'Cutter',2),(9,'Tile and Marble Setter',2),(10,'Molding and Casting',2),(11,'Upholsterer',2),(12,'Sales Clerk',3),(13,'Promo Dicer',3),(14,'Waiter/Waitress',3),(16,'Retailer',3),(17,'Driver',3),(18,'Cook',3),(19,'Plumber',4),(20,'Automotive Technician',4),(21,'Appliance Technician',4),(22,'Electrician',4);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Active'),(2,'Upcoming'),(3,'Ongoing'),(4,'Ended');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transactions_user_id_foreign` (`user_id`),
  CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_review`
--

DROP TABLE IF EXISTS `user_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `number_votes` int(11) NOT NULL,
  `total_points` int(11) NOT NULL,
  `average` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_review`
--

LOCK TABLES `user_review` WRITE;
/*!40000 ALTER TABLE `user_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'applicant','mikent@gmail.com','$2y$10$tgnTOkJt/1jb9gO2wlMf9edn92dDa1A4uC4EznylD0stVq2mU822a','pHWeHk6zpSoKv9PQOOTNTpS5g6PI0nztQdu3g1XoTkIPUtb9jLixrLdOZXQ8'),(2,'employer','employer1@gmail.com','$2y$10$lrTABVoYKfbjZN6zXwNRY.kyae/64y4afQlEK3ln/C2wehN3qCOPe','0i1aRN3m9PD8BY3joqw2FHJVMZoVE1B7wnMaWNKYnoOkyZa5SM85AcnGxM47'),(3,'jojiemarie','jojie.tinio@gmail.com','$2y$10$ymu6J4WiU5yB2yvETQDteeRpumQC/Lw4nrrD2ETMhK6d8IYAwXNBm','DEs0b1WhhRlnfGclbcq4RseDB4PUhoP9Mv1EkdK23HvpLBAE4yTPFuncYL5r');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_logs`
--

DROP TABLE IF EXISTS `work_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) NOT NULL,
  `date_ended` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_logs`
--

LOCK TABLES `work_logs` WRITE;
/*!40000 ALTER TABLE `work_logs` DISABLE KEYS */;
INSERT INTO `work_logs` VALUES (1,84,'2016-11-04 07:12:35'),(2,84,'2016-11-04 07:37:07'),(3,84,'2016-11-04 07:48:21'),(4,84,'2016-11-04 08:02:06'),(5,84,'2016-11-04 08:02:56'),(6,84,'2016-11-04 08:04:30'),(7,87,'2016-11-04 08:29:49'),(8,6,'0000-00-00 00:00:00'),(9,7,'0000-00-00 00:00:00'),(10,8,'0000-00-00 00:00:00'),(11,9,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `work_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_reviewed`
--

DROP TABLE IF EXISTS `work_reviewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_reviewed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) NOT NULL,
  `applicant_reviewed` tinyint(1) NOT NULL,
  `employer_reviewed` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_reviewed`
--

LOCK TABLES `work_reviewed` WRITE;
/*!40000 ALTER TABLE `work_reviewed` DISABLE KEYS */;
INSERT INTO `work_reviewed` VALUES (1,1,1,1),(2,6,1,1),(3,7,1,1),(4,8,1,1),(5,9,1,1);
/*!40000 ALTER TABLE `work_reviewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_summary`
--

DROP TABLE IF EXISTS `work_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_summary` (
  `summary_id` int(11) NOT NULL AUTO_INCREMENT,
  `work_id` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `total_salary` float NOT NULL,
  `fines` float NOT NULL,
  `hours_rendered` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_summary`
--

LOCK TABLES `work_summary` WRITE;
/*!40000 ALTER TABLE `work_summary` DISABLE KEYS */;
INSERT INTO `work_summary` VALUES (1,3,300,300,0,14,2),(2,5,300,285,15,0,1),(3,5,300,285,15,0,2),(4,6,300,285,15,0,2),(5,7,300,300,0,4,2),(6,8,300,300,0,3,2),(7,9,250,250,0,0,2);
/*!40000 ALTER TABLE `work_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `work_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sched_id` int(10) NOT NULL,
  `applicant_id` int(10) NOT NULL,
  `employer_id` int(10) NOT NULL,
  `status` int(11) NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `is_started` tinyint(1) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (3,32,2,2,4,'2017-09-29 13:15:44','2017-10-02 03:09:09',0,'2017-09-29 13:12:43'),(5,30,2,2,4,'2017-10-03 09:22:54','2017-10-03 09:23:47',0,'2017-10-03 01:17:06'),(6,27,2,2,4,'2017-10-03 09:31:06','2017-10-03 09:34:08',0,'2017-10-03 09:30:54'),(7,33,2,2,4,'2017-10-04 08:02:06','2017-10-04 12:02:12',0,'2017-10-03 14:35:11'),(8,34,2,2,4,'2017-10-04 14:01:05','2017-10-04 17:02:13',0,'2017-10-04 12:18:29'),(9,35,2,2,4,'2017-10-04 17:26:05','2017-10-04 17:26:12',0,'2017-10-04 17:16:20');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'jobplusfinale'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-03 23:55:58
