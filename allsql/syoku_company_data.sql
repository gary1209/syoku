-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: syoku
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `company_data`
--

DROP TABLE IF EXISTS `company_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Company_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company_tele` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company_address` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company_photo` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company_open_time` time(6) NOT NULL,
  `Company_close_time` time(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Company_email` (`Company_email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_data`
--

LOCK TABLES `company_data` WRITE;
/*!40000 ALTER TABLE `company_data` DISABLE KEYS */;
INSERT INTO `company_data` VALUES (1,'麥當勞(復興店)','mc123','Mcdonald@gmail.com','2348-5589','台北市復興南路57號','0217-3b.gif','01:00:00.000000','12:00:00.000000'),(2,'Kitchen Island 中島','kitchen000','kitchenisland234@gmail.com','0989234839','106台北市大安區忠孝東路三段276巷12號','kitchenisland.jpg','13:00:00.000000','21:00:00.000000'),(3,'YOYOYO','aa123','aaa@gmail.com','0989234839','台北市復興南路55號','logo.png','01:00:00.000000','00:59:00.000000'),(4,'張佑丞有限公司','abc123','bravod59487@gmail.com','0987878693','台北市復興南路56號','ham00.gif','01:00:00.000000','13:00:00.000000'),(5,'八方雲集','eight123','eightway08@gmail.com','0227549848','106台北市大安區大安路二段23號','8way.png','11:30:00.000000','22:00:00.000000'),(6,'韓太閣韓國烤肉料理','koreahan10491','hantegak@gmail.com','0225622709','10491台北市中山區林森北路119巷61號','han.jpg','00:00:00.000000','23:00:00.000000'),(7,'創義麵(信義店)','pastalove111','creativepasta.studio@gmail.com','0287809559','台北市信義區莊敬路327號','pasta1.png','11:30:00.000000','21:30:00.000000'),(8,'The Owl 敖唷韓式湯飯專賣','owlisme000','theowlhan@gmail.com','0227730112',' 106台北市大安區市民大道四段112號','theowl.jpg','18:00:00.000000','12:00:00.000000');
/*!40000 ALTER TABLE `company_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-04 16:46:47
