-- MySQL dump 10.13  Distrib 8.0.20, for macos10.15 (x86_64)
--
-- Host: localhost    Database: haversine_schools
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `schools`
--

DROP TABLE IF EXISTS `schools`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schools` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `lat` decimal(12,6) DEFAULT NULL,
  `lng` decimal(12,6) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schools`
--

LOCK TABLES `schools` WRITE;
/*!40000 ALTER TABLE `schools` DISABLE KEYS */;
INSERT INTO `schools` VALUES (9,'SMA NEGERI 4 CIREBON',-6.734466,108.539567,'2020-07-15 06:54:59','2020-07-16 13:59:11','JL. Perjuangan No.1, Karyamulya, Kesambi,Karyamulya, Kec.Kesambi, Kota Cirebon Jawa Barat 45135'),(10,'SMA NEGERI 5 CIREBON',-6.742549,108.524416,'2020-07-15 06:55:17','2020-07-16 13:59:29','JL. Swadaya No.1, Karyamulya, Kec.Kesambi, Kota Cirebon, Jawa Barat 45135'),(11,'SMA NEGERI 6 CIREBON',-6.710108,108.551313,'2020-07-15 06:55:38','2020-07-16 14:00:05','JL. Dr.Wahidin Sudirohusodo No.79, Sukapura, Kec.Kejaksan, Kota Cirebon, Jawa Barat 45122'),(12,'SMA NEGERI 7 CIREBON',-6.735958,108.536216,'2020-07-15 06:56:13','2020-07-16 14:00:16','JL. Perjuangan No.14, Karyamulya,Kec.Kesambi, Kota Cirebon, Jawa Barat 45135'),(13,'SMA NEGERI 8 CIREBON',-6.731843,108.571540,'2020-07-15 06:56:32','2020-07-16 14:00:27','JL. Pronggol No.73A, Pengambiran, Kec.Lemahwungkuk, Kota Cirebon, Jawa Barat 45113'),(14,'SMA NEGERI 9 CIREBON',-6.756708,108.548769,'2020-07-15 06:56:56','2020-07-16 14:00:38','JL. Pramuka, Kalijaga, Kec.Harjamukti, Kota Cirebon Jawa Barat 45144'),(15,'Rusunawa',-6.147179,106.798702,'2020-07-15 10:07:20','2020-07-15 10:07:20',NULL),(16,'Central Park',-6.177123,106.790619,'2020-07-15 10:07:49','2020-07-15 10:07:49',NULL),(21,'SMA 1 CIREBON',-6.710706,108.551176,'2020-07-16 14:09:43','2020-07-16 14:09:43','Jl. Dr. Wahidin Sudirohusodo No.81, Sukapura,Kec.kejaksan, Kota.Cirebon Jawa Barat 45122'),(22,'SMA 2 CIREBON',-6.714449,108.550314,'2020-07-16 14:10:39','2020-07-16 14:10:39','JL. Cipto Mangunkusumo No.1, Pekiringan, Kec. Kesambi, Kota Cirebon, jawa barat 45131'),(23,'SMA 3 CIREBON',-6.748944,108.560807,'2020-07-16 14:11:25','2020-07-16 14:11:25','JL. Ciremai Raya No.63, Larangan, Kec.Harjamukti, Kota Cirebon, Jawa Barat 45141');
/*!40000 ALTER TABLE `schools` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-20 19:17:40
