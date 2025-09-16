-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: bansach
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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(256) NOT NULL,
  `author` varchar(256) NOT NULL,
  `publisher` varchar(256) NOT NULL,
  `publishDate` date NOT NULL,
  `isbn` varchar(256) NOT NULL,
  `quantity` int NOT NULL,
  `categoryId` int DEFAULT NULL,
  `isAvailable` tinyint NOT NULL DEFAULT '1',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_efaa1a4d8550ba5f4378803edb2` (`categoryId`),
  CONSTRAINT `FK_efaa1a4d8550ba5f4378803edb2` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Giày đá bóng Mizuno Morelia Neo IV Pro FG Charge - White/Radiant Red P1GA243460','Mizuno','650.000đ','2024-06-16','9780743273565',3,1,1,'image-1736241538028-305925351.webp'),(2,'Giày đá bóng Nike Tiempo Legend 10 Pro TF Mad Voltage - Metallic Silver/Black/Volt DV4336-001','Nike','550.000đ','2024-06-16','9780062316097',3,2,1,'image-1736241604768-138132695.webp'),(6,'Giày đá bóng adidas X Crazyfast Elite FG Energy Citrus - Solar Red/Footwear White/Solar Yellow IG0593','Adidas','730.000đ','2024-06-16','9780132350884',6,3,1,'image-1736241666244-265195749.webp'),(20,'Giày đá banh PUMA Future 7 Match TT Vol. Up - White-Luminous Blue-Poison Pink-Fizzy Melon-Bluemazing 108075-01','Puma','700.000đ','2024-06-16','9780743273565',5,4,1,'image-1736241714134-634398551.webp'),(21,'Giày đá bóng Asics Calcetto WD 9 IC - White/Black 1113A037-100','Asics','490.000đ','2024-06-16','9780743273565',55,5,1,'image-1736262439300-880024500.webp'),(22,'Giày đá bóng adidas F50 Pro TF Vivid Horizon - Turbo/Aurora Black/Platin Metallic IF1324','Adidas','550.000đ','2024-06-16','9780743273565',6,3,1,'image-1736261110023-332091937.png'),(23,'Giày đá bóng adidas Predator Elite TF Vivid Horizon - Platin Metallic/Aurora Black/Turbo IF6373','Adidas','400.000đ','2024-06-16','9780743273565',7,3,1,'image-1736261193105-662457226.png'),(24,'Giày đá bóng adidas Copa Gloro II TF - Lucid Blue/Footwear White/Solar Red IH7286','Adidas','500.000đ','2024-06-16','9780743273565',16,3,1,'image-1736261306743-674349822.png'),(25,'Giày đá bóng Nike Phantom Luna II Academy TF Mad Voltage - Metallic Silver/Black/Volt FJ2566-003','Nike','650.000','2024-06-16','9780743273565',19,2,1,'image-1736261017966-272475.png'),(26,'Giày đá bóng Kamito TA11 TF Touch of Magic - Team Red/Mint KMA230211','Kamito','690.000đ','2024-06-16','9780743273565',23,6,1,'image-1736262300240-72232933.webp'),(28,'Giày đá bóng Nike Air Zoom Mercurial Vapor 16 Academy MG Mbappé Personal Edition - Laser Orange/Armory Navy FQ8377-800','Nike','900.000','2024-09-04','9780743273565',67,2,1,'image-1736262064914-486060795.webp'),(29,'Giày đá bóng Nike Air Zoom Mercurial Vapor 16 Pro FG Gear Up - Ember Glow/Aurora Green FQ8685-800','Nike','750.000đ','2024-06-16','9780743273565',33,2,1,'image-1736260831958-276852367.png');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Mizuno'),(2,'Nike'),(3,'Adidas'),(4,'Puma'),(5,'Asics'),(6,'Kamito'),(7,'Joma'),(10,'Grandsport'),(11,'JuniorSport');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `cardId` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `bookId` int NOT NULL,
  `loanDate` date NOT NULL,
  `returnDate` date DEFAULT NULL,
  `isReturned` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_ef7a63b4c4f0edd90e389edb103` (`userId`),
  KEY `FK_1465982ea6993042a656754f4cc` (`bookId`),
  CONSTRAINT `FK_1465982ea6993042a656754f4cc` FOREIGN KEY (`bookId`) REFERENCES `book` (`id`),
  CONSTRAINT `FK_ef7a63b4c4f0edd90e389edb103` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (2,1,2,'2024-12-08','2024-12-17',0);
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` bigint NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,1733295434705,'Init1733295434705'),(2,1734363470930,'ChangeBookField1734363470930'),(3,1734500000633,'AddFieldToUser1734500000633'),(4,1734848976213,'AddContact1734848976213');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penalty`
--

DROP TABLE IF EXISTS `penalty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `penalty` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `loanId` int NOT NULL,
  `amount` decimal(5,2) NOT NULL,
  `penaltyDate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_01be8af94044eed4d9667a6a386` (`userId`),
  KEY `FK_4e111140c2a6756a9a791dae05d` (`loanId`),
  CONSTRAINT `FK_01be8af94044eed4d9667a6a386` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_4e111140c2a6756a9a791dae05d` FOREIGN KEY (`loanId`) REFERENCES `loan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penalty`
--

LOCK TABLES `penalty` WRITE;
/*!40000 ALTER TABLE `penalty` DISABLE KEYS */;
INSERT INTO `penalty` VALUES (2,1,2,15.50,'2024-12-01');
/*!40000 ALTER TABLE `penalty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `bookId` int NOT NULL,
  `reservationDate` date NOT NULL,
  `expectedReturnDate` date DEFAULT NULL,
  `isFulfilled` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `FK_529dceb01ef681127fef04d755d` (`userId`),
  KEY `FK_c82001439df87b04c529f301f6e` (`bookId`),
  CONSTRAINT `FK_529dceb01ef681127fef04d755d` FOREIGN KEY (`userId`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_c82001439df87b04c529f301f6e` FOREIGN KEY (`bookId`) REFERENCES `book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,1,1,'2024-12-01','2024-12-15',0);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullName` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `dob` datetime NOT NULL,
  `role` varchar(256) NOT NULL DEFAULT 'user',
  `email` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `isAtive` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_e12875dfb3b1d92d7d7c5377e2` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Trần Nguyên Bảo Duy','admin','2001-12-04 00:00:00','admin','baoduy@gmail.com','$2b$10$TiWCXcHMKAdcT5S.gbstmelgp3VsugctKq32Vow1bYOTd70BkFQ5q',1),(2,'Đỗ Nhựt Linh','Thành phố Hồ Chí Minh','2004-01-01 00:00:00','admin','nhutlinh@gmail.com','$2b$10$70f9M.emNXoEmdlkrLbTrO/PR0IVXxCySal/otAfgjc07x4JC9iWi',1),(3,'Đỗ Nguyễn Gia Huy','Thành phố Hồ Chí Minh','2004-01-01 00:00:00','admin','giahuy@gmail.com','$2b$10$HsHJV1MPEjGdGrgpYZOCBuigBRiu3tvtdpgTNAk1dTO2xEU7vG4vy',1),(8,'Do  Linh','string','2025-01-07 15:18:28','user','donhutlinh2004@gmail.com','$2b$10$uT6g4VQRWEJyAXKqwilRbO.T4VYlZxI9FOBbQFkggaiaZa2L6d4NK',1),(9,'Do Linh','string','2025-01-08 21:56:31','user','youremail@gmail.com','$2b$10$1.3UzrIrFS2yhb3X7P1SwuffmqjFNUwIb20b7.EkWIf0cx.8EOsly',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-08 23:52:09
