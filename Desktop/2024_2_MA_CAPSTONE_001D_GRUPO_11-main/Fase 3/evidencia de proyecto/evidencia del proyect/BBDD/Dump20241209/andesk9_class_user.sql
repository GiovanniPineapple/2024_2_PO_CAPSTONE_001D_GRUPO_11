CREATE DATABASE  IF NOT EXISTS `andesk9` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `andesk9`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: andesk9
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `class_user`
--

DROP TABLE IF EXISTS `class_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `user_password` varchar(250) DEFAULT NULL,
  `user_email` varchar(45) DEFAULT NULL,
  `user_phone` bigint DEFAULT NULL,
  `user_image_path` varchar(250) DEFAULT NULL,
  `user_role` enum('no_logeado','cliente','admin','entrenador') NOT NULL,
  `id_coupon` int DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_coupon` (`id_coupon`),
  CONSTRAINT `class_user_ibfk_1` FOREIGN KEY (`id_coupon`) REFERENCES `coupon` (`id_coupon`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_user`
--

LOCK TABLES `class_user` WRITE;
/*!40000 ALTER TABLE `class_user` DISABLE KEYS */;
INSERT INTO `class_user` VALUES (1,'nelson','$2b$10$32ztFivCxiOat49F5ideaeLEouUKdFZV40wUJ1xeI5vbMFuMq8yFG','Vanni.p.alvarado@gmail.com',958613616,'uploads/img1/1730435786552-719804292-news3.jpeg','admin',NULL),(18,'giovanni','$2b$10$7WAHz/Ik7Z.jwlcJuOjKIOsW7aeM4nfrJoN5utF.MVHiZjw/4kuS6','Vanni.p.alvarado1@gmail.com',958613616,'uploads/img1/1730871807868-930716613-1730337834244-559139517-b695a7d8-1a52-4548-a289-b2db13a2cead.jpg','cliente',NULL),(19,'maria de los angeles','$2b$10$yTLsBfPrFnetxGb9zETTz./IrCc3zOMSM.o6qyU3ZcLs.E0pxyqVq','Vanni.p.alvarado2@gmail.com',958613616,'uploads/img1/1730943889918-818033630-kikiyo.jpg','cliente',NULL),(20,'giovanni','$2b$10$wIl/rHdPQSd1heV8ssRlNOF5iB8gUbpsMHJk7ZoIEHiuCgof2BwR6','gi.pina@duocuc.cl',90143181,'uploads/img1/1733159846277-484134806-AndesK9 - rrss-39.jpg','entrenador',NULL),(21,'giovanni','$2b$10$uhts18e/HNT6PaA1oEqEyu4v4XlxYzqvqj6c.smAl/vICS1vwXdsC','fuutakun123@gmail.com',90143181,'uploads/img1/1733160877813-188340161-IMG_20240810_143240990_HDR.jpg','cliente',NULL);
/*!40000 ALTER TABLE `class_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-09 11:12:56
