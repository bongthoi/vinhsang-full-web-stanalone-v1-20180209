-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 10.0.10.41    Database: vinhsang
-- ------------------------------------------------------
-- Server version	5.6.34

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
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `about` (
  `id` varchar(10) NOT NULL,
  `lang_id` varchar(20) DEFAULT NULL,
  `title` varchar(245) DEFAULT NULL,
  `description` text,
  `logo` varchar(45) DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `content` text,
  `enabled` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about`
--

LOCK TABLES `about` WRITE;
/*!40000 ALTER TABLE `about` DISABLE KEYS */;
INSERT INTO `about` VALUES ('about-001','en','About Us','Vinh Sang Limited was founded in 2011 and set HoChiMinh City as the starting point to explore the ASEAN market. As a subsidiary company of Glorious I.T','logo.jpg','u1','2017-05-30 00:00:00','<div class=\"col-md-12\">\r\n<div class=\"images\">\r\n<div class=\"item\">\r\n<div class=\"fleft item-image\"><img style=\"margin-top: 5px;\" src=\"client/images/2016-01-22_tapthe.JPG\" alt=\"\" width=\"300px\" height=\"250px\" /></div>\r\n<div class=\"item-body\">\r\n<div class=\"introtext\" style=\"margin-top: 30px;\"><span style=\"font-size: 12pt;\"><strong>Vinh Sang</strong> Limited was founded in 2011 and set HoChiMinh City as the starting point to explore the ASEAN market. As a subsidiary company of Glorious I.T. Creation Limited in Hong Kong, Vinh Sang focus in being a multi-skilled I.T. solution provider with a highly competent workforce and strong ASEAN presence. We are excited to work in the intersection of technology and business and living. Other than providing optical fiber building consultancy, large scale WiFi setup plan and energy saving solution, we also provide the online shopping platform and intelligent online advertisement system. In the near future, we will expand our service in the \"internet is everything\" field and combine the I.T. technology with studying, living and working.</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-12\" style=\"margin-bottom: 30px;\">\r\n<div class=\"images\">\r\n<div class=\"item\">\r\n<div class=\"fleft item-image\"><img src=\"client/images/2016-01-22_solar.jpg\" alt=\"\" width=\"300px\" height=\"150px\" /></div>\r\n<div class=\"item-body\">\r\n<div class=\"introtext\" style=\"margin-top: 32px;\"><span style=\"font-size: 12pt;\">Our aim is to deliver high quality solutions to the middle and small size companies in the ASEAN countries at optimal costs by adopting the most relevant and advanced technologies through empowering professionals and building trust-based relationships. We hope our solution can raise their service to a new level and let them enter a bigger and cross-border market. </span><br />\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',0),('about-002','vi','Về Chúng Tôi','Chúng Tôi la Vinh Sang Limited ....','logo.jpg','u1','2017-05-30 00:00:00','<div class=\"col-md-12\">\r\n<div class=\"images\">\r\n<div class=\"item\">\r\n<div class=\"fleft item-image\"><img style=\"margin-top: 5px;\" src=\"client/images/2016-01-22_tapthe.JPG\" alt=\"\" width=\"300px\" height=\"250px\" /></div>\r\n<div class=\"item-body\">\r\n<div class=\"introtext\" style=\"margin-top: 30px;\"><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">C&ocirc;ng ty TNHH Vinh S&aacute;ng đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ượ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c th&agrave;nh l</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ậ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">p v&agrave;o năm 2011 t</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ại T</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">h&agrave;nh ph</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ố</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;H</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ồ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;Ch&iacute; Minh, v&agrave; đ&oacute;ng vai tr&ograve; l&agrave; đi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ể</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">m kh</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ở</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">i đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ầ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">u đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ể</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;kh&aacute;m ph&aacute; th</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ị</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;tr</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ườ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng ASEAN. L&agrave; m</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ộ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">t c&ocirc;ng ty con c</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ủ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">a Glorious I.T. Creation&nbsp;</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">tại</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;H</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ồ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng K&ocirc;ng, Vinh S&aacute;ng t</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ậ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">p trung v&agrave;o vi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c tr</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ở</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;th&agrave;nh m</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ộ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">t nh&agrave; cung c</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ấp c&aacute;c giải ph&aacute;p</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;I.T. đa năng nh</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ờ v&agrave;o</span><span style=\"color: black; font-size: 14.6667px; background-color: #ffffff; font-family: arial, sans-serif;\">&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ội ngũ nh&acirc;n vi&ecirc;n c&oacute; t</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">r&igrave;nh đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ộ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;cao v&agrave; s</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ự</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;hi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n di</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n t</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ại thị trường</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;ASEAN. C&ocirc;ng ty ch&uacute;ng t&ocirc;i c</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ảm thấy v&ocirc; c&ugrave;ng&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">h&agrave;o h</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ứng khi c&oacute; cơ hội&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">l&agrave;m vi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c trong m&ocirc;i tr</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ường&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c&ocirc;ng ngh</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">, kinh doanh v&agrave; đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ời sống hằng ng&agrave;y.</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;Ngo&agrave;i vi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệc&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">t</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ư</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;v</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ấ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n x&acirc;y d</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ự</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng c&aacute;p quang, đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ưa ra&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">k</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ế</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;ho</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ạ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ch thi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ế</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">t l</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ậ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">p WiFi quy m&ocirc; l</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ớ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n v&agrave; gi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ả</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">i ph&aacute;p ti</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ế</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">t ki</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">m năng l</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ượ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng, ch&uacute;ng t&ocirc;i đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ồng thời c</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ung c</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ấ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">p k&ecirc;nh mua s</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ắ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">m tr</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ự</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c tuy</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ế</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n v&agrave; h</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;th</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ố</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng qu</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ả</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng c&aacute;o tr</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ự</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c tuy</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ế</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n th&ocirc;ng minh. Trong t</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ươ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng lai g</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ầ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n, ch&uacute;ng t&ocirc;i s</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ẽ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;m</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ở</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;r</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ộ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng d</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ị</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ch v</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ụ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;c</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ủ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">a m&igrave;nh nh</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ằm mục ti&ecirc;u &ldquo;Internet kết nối mọi thứ&rdquo;&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">v&agrave; đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ưa c</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&ocirc;ng ngh</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">v</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">&agrave;o&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">h</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ọ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c t</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ậ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">p, sinh ho</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ạ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">t cũng nh</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ư&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">l&agrave;m vi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c.</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-md-12\" style=\"margin-bottom: 30px;\">\r\n<div class=\"images\">\r\n<div class=\"item\">\r\n<div class=\"fleft item-image\"><img src=\"client/images/2016-01-22_solar.jpg\" alt=\"\" width=\"300px\" height=\"150px\" /></div>\r\n<div class=\"item-body\">\r\n<div class=\"introtext\" style=\"margin-top: 32px;\"><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">M</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ụ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c ti&ecirc;u c</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ủ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">a ch&uacute;ng t&ocirc;i l&agrave; đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ề xuất&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c&aacute;c gi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ả</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">i ph&aacute;p ch</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ấ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">t l</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ượ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng cao cho c&aacute;c c&ocirc;ng ty c</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ỡ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;v</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ừ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">a v&agrave; nh</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ỏ</span><span style=\"color: black; font-size: 14.6667px; background-color: #ffffff; font-family: arial, sans-serif;\">&nbsp;</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">tại</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;c&aacute;c n</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ướ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c ASEAN v</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ớ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">i chi ph&iacute; t</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ố</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">i&nbsp;</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ư</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">u b</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ằ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng c&aacute;ch &aacute;p d</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ụ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng c&aacute;c c&ocirc;ng ngh</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;ti&ecirc;n ti</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ế</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n ph&ugrave; h</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ợp&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">nh</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ấ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">t. Th&ocirc;ng qua vi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c trao quy</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ề</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n cho c&aacute;c chuy&ecirc;n gia v&agrave; x&acirc;y d</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ự</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng c&aacute;c m</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ố</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">i quan h</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ệ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;d</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ự</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">a tr&ecirc;n ni</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ề</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">m tin, ch&uacute;ng t&ocirc;i hy v</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ọ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng c&aacute;c gi</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ả</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">i ph&aacute;p do c&ocirc;ng ty đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ưa ra c</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&oacute; th</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ể</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;n&acirc;ng cao d</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ị</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ch v</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ụ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;c</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ủ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">a đ</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ối t&aacute;c&nbsp;</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">l&ecirc;n m</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ộ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">t t</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ầ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">m m</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ớ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">i v&agrave; gi&uacute;p h</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ọ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;b</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ướ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">c v&agrave;o m</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ộ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">t th</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ị</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">&nbsp;tr</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ườ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">ng l</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ớ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n h</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ơ</span><span style=\"color: black; background-color: #ffffff; font-size: 13pt; line-height: 26px; font-family: georgia, serif;\">n v&agrave; xuy&ecirc;n qu</span><span style=\"color: black; font-family: Calibri, sans-serif; background-color: #ffffff; font-size: 13pt; line-height: 26px;\">ốc gia.</span><br />\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',0);
/*!40000 ALTER TABLE `about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(245) DEFAULT NULL,
  `content` text,
  `phone` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Thoi','bongthoi1111@gmail.com',NULL,'test content','123456789',NULL,'2017-06-15 11:29:11');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailfeedback`
--

DROP TABLE IF EXISTS `emailfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailfeedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `subject` varchar(245) DEFAULT NULL,
  `content` text,
  `senddate` datetime DEFAULT NULL,
  `from_email` varchar(100) DEFAULT NULL,
  `to_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailfeedback`
--

LOCK TABLES `emailfeedback` WRITE;
/*!40000 ALTER TABLE `emailfeedback` DISABLE KEYS */;
INSERT INTO `emailfeedback` VALUES (43,1,'u1@gmail.com','Test mail 1','<p>Test mail 1.............</p>','2017-06-16 16:33:17','u1@gmail.com','bongthoi1111@gmail.com'),(44,1,'u1@gmail.com','dfdf','<p>dfd</p>','2017-07-05 11:27:28','u1@gmail.com','bongthoi1985@gmail.com'),(45,1,'u1@gmail.com','2222','<p>lklklk</p>','2017-07-06 14:22:31','u1@gmail.com','bongthoi1111@gmail.com');
/*!40000 ALTER TABLE `emailfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) DEFAULT NULL,
  `image` varchar(245) DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (11,'Hoạt động từ thiện năm 2015 tại mái ấm Tân Bình ','2017-06-09_tanbinh.JPG','u1@gmail.com','2017-06-06 16:29:12',1),(12,'Merry Christmas 2015 ','2017-06-09_giangsinh.jpg','u1@gmail.com','2017-06-06 16:29:55',1),(13,'Hoạt động từ thiện năm 2014 tại Bến tre ','2017-06-09_bentre.JPG','u1@gmail.com','2017-06-06 16:34:35',1),(14,'Hoạt động từ thiện 2016 tại An Giang ','2017-06-09_angiang.JPG','u1@gmail.com','2017-06-06 16:35:15',1);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events_lang`
--

DROP TABLE IF EXISTS `events_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `lang_id` varchar(20) NOT NULL,
  `title` varchar(245) DEFAULT NULL,
  `description` text,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_events_langTOlang_idx` (`lang_id`),
  KEY `FK_events_langTOevent_idx` (`event_id`),
  CONSTRAINT `FK_events_langTOlang` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_events_langToevent` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FKe84uw8tfeckitncs1afbx13bw` FOREIGN KEY (`event_id`) REFERENCES `event` (`id`),
  CONSTRAINT `FKh5nydndvatehmkqq7qxdhxvcg` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events_lang`
--

LOCK TABLES `events_lang` WRITE;
/*!40000 ALTER TABLE `events_lang` DISABLE KEYS */;
INSERT INTO `events_lang` VALUES (7,11,'en','Charity trip to Tan Binh district in 2015 ','Helping the children in loving homes at the Red Cross, Tan Binh District, Ho Chi Minh City ','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"upload/event/2017-06-13_tanbinh.JPG\" alt=\"\" width=\"903\" height=\"810\" /></p>',NULL,NULL),(8,12,'en','Merry Christmas 2015 ','Everything starts a new with the new year coming. May your new year be filled with the happiest things and your days with the brightest promise. ','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"upload/event/2017-06-13_giangsinh1.PNG\" alt=\"\" width=\"905\" height=\"517\" /></p>',NULL,NULL),(9,13,'vi','Hoạt động từ thiện năm 2014 tại Bến tre ','Giúp đỡ các cụ già nghèo neo đơn tại Bến Tre ','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"upload/event/2017-06-13_Bentre1.PNG\" alt=\"\" width=\"898\" height=\"687\" /></p>\r <p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"upload/event/2017-06-13_Bentre2.PNG\" alt=\"\" width=\"900\" height=\"688\" /></p>',NULL,NULL),(10,14,'vi','Hoạt động từ thiện 2016 tại An Giang ','Giúp đỡ các cụ già có hoàn cảnh khó khăn. ','<p><img  style=\"display: block; margin-left: auto; margin-right: auto;\"   src=\"upload/event/2017-06-13_angiang.PNG\" alt=\"\" width=\"903\" height=\"583\" /></p>',NULL,NULL),(11,13,'en','Charity trip to Ben Tre province in 2014 ','Helping the old people who are living alone in Ben Tre ','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"upload/event/2017-06-13_Bentre1.PNG\" alt=\"\" width=\"898\" height=\"687\" /></p>',NULL,NULL),(12,14,'en','Charity trip to An Giang province in 2016 ','Helping the old people who are facing with difficult life. ','<p><img  style=\"display: block; margin-left: auto; margin-right: auto;\"   src=\"upload/event/2017-06-13_angiang.PNG\" alt=\"\" width=\"903\" height=\"583\" /></p>',NULL,NULL),(13,11,'vi','Hoạt động từ thiện năm 2015 tại mái ấm Tân Bình ','Giúp đỡ các em trong mái ấm tình thương tại hội chữ thập đỏ quận Tân Bình,Tp Hồ Chí Minh ','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"upload/event/2017-06-13_tanbinh.JPG\" alt=\"\" width=\"903\" height=\"810\" /></p>\r <p style=\"text-align: center;\"><img src=\"upload/event/2017-06-13_tanbinh1.PNG\" alt=\"\" width=\"903\" height=\"690\" /></p>\r <p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"upload/event/2017-06-13_tanbinh2.PNG\" alt=\"\" width=\"900\" height=\"686\" /></p>',NULL,NULL),(14,12,'vi','Giáng Sinh 2015',' Mọi thứ bắt đầu mới với năm mới sắp tới. Chúc năm mới của bạn tràn ngập những điều hạnh phúc nhất','<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"upload/event/2017-06-13_giangsinh1.PNG\" alt=\"\" width=\"905\" height=\"517\" /></p>\r <p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"upload/event/2017-06-13_giangsinh2.PNG\" alt=\"\" width=\"906\" height=\"516\" /></p>',NULL,NULL);
/*!40000 ALTER TABLE `events_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` varchar(20) NOT NULL,
  `name` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES ('en','English'),('vi','Tiếng Việt');
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` varchar(15) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('1','admin'),('2','user'),('3','anomyous');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(145) DEFAULT NULL,
  `image` varchar(245) DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `background_image` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (3,'http://vivmall.vn/','2017-06-22_vivmall-1.jpg','u1@gmail.com','2017-06-05 15:10:59',1,'2017-06-22_Vivmall.png'),(4,'http://fas22.vn/','2017-06-22_fas-1.jpg','u1@gmail.com','2017-06-06 14:49:01',1,'2017-06-22_Fas.png'),(5,'http://tab156.vn/','2017-06-22_teashop-1.jpg','u1','2017-06-07 14:49:01',1,'2017-06-22_Teashop.png'),(6,'http://www.vinhsangvn.com/energy.html','2017-06-22_final-1.jpg','u1@gmail.com','2017-06-08 15:46:31',1,'2017-06-22_Final.png'),(7,'http://www.vinhsangvn.com/freewifi.html','2017-06-22_freewifi-1.jpg','u1@gmail.com','2017-06-09 15:48:05',1,'2017-06-22_Freewifi.png');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_lang`
--

DROP TABLE IF EXISTS `services_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `services_id` int(11) DEFAULT NULL,
  `lang_id` varchar(20) DEFAULT '',
  `title` varchar(245) DEFAULT NULL,
  `description` text,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_service_langTOLang_idx` (`lang_id`),
  KEY `FK_service_langTOservice_idx` (`services_id`),
  CONSTRAINT `FK_service_langTOLang` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_service_langTOservice` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FKafv6xcp2rps8aw107wghuxpli` FOREIGN KEY (`lang_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `FKame1ntqbmd45oaf2fgqlea3w8` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='				';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_lang`
--

LOCK TABLES `services_lang` WRITE;
/*!40000 ALTER TABLE `services_lang` DISABLE KEYS */;
INSERT INTO `services_lang` VALUES (21,3,'vi','Mua sắm trực tuyến','Mang đến những sản phẩm tốt,giá cả hợp lý','',NULL,NULL),(22,3,'en','Online Shopping','Bring good products, reasonable prices','',NULL,NULL),(23,4,'en','Education','With the programs of teaching','',NULL,NULL),(24,4,'vi','Lĩnh vực giáo dục','Với các chương trình giảng dạy','',NULL,NULL),(25,5,'en','Academic tea shop','Where to exchanges, exchange of knowledge','',NULL,NULL),(26,5,'vi','Trà quán học thuật','Nơi để giao lưu, trao đổi tri thức','',NULL,NULL),(27,6,'vi','Hệ thống tiết kiệm năng lượng','Hệ thống tiết kiệm năng lượng','<p>Hệ thống tiết kiệm năng lượng(chưa c&oacute; bản dịch tiếng việt)</p>',NULL,NULL),(28,6,'en','Energy Saving System','Energy Saving System','<p style=\"margin: 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; background-color: #ffffff; font-size: 17px; text-align: justify;\">The function of the system is to control the flowing of cooling water to the air-conditioning system effectively to save energy. The refrigerating and cooling system are switched on/off by the Main Control with the tailor-made software. After install the new system, energy can be saved 15 to 25% each year.</p>\r\n<p style=\"margin: 0px 10px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; background-color: #ffffff; font-size: 15px; text-align: justify;\">The advantage of the system&nbsp;<br />(1) Advanced technology The system uses an advanced theory combined with the inverter technology, the realization of the central air-conditioning with real-time tracking and control operation.<br />(2) Using an energy-efficient central air conditioning system to optimize the operation of control and achieve the best energy-saving effect.<br />(3) It is a complete hardware and software solution to control, monitor and fine-tune the equipment to the best condition.<br />(4) The safe and reliable operation of soft start-stop mode and low frequency operation mode control the pump to avoid the impact of the power grid and reduce the mechanical fraction of the equipment.</p>\r\n<p style=\"margin: 0px 10px 10px; color: #333333; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; background-color: #ffffff; font-size: 15px;\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"upload/service/2017-06-13_energy.png\" alt=\"\" width=\"912\" height=\"833\" /></p>',NULL,NULL),(29,7,'en','Free Wifi','Free Wifi','<p>Free Wifi(chưa c&oacute; bản dịch tiếng anh)</p>',NULL,NULL),(30,7,'vi','Wifi miễn phí','Wifi miễn phí','<p style=\"text-align: center;\"><img src=\"upload/service/2017-06-13_wifi.jpg\" alt=\"\" width=\"720\" height=\"966\" /></p>',NULL,NULL);
/*!40000 ALTER TABLE `services_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_services_langs`
--

DROP TABLE IF EXISTS `services_services_langs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services_services_langs` (
  `service_id` int(11) NOT NULL,
  `services_langs_id` int(11) NOT NULL,
  UNIQUE KEY `UK_toy3s9x3y6fc4xrtj58b3i91h` (`services_langs_id`),
  KEY `FKc91oq9ikx25ihrkc2mk6fhuog` (`service_id`),
  CONSTRAINT `FKc91oq9ikx25ihrkc2mk6fhuog` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  CONSTRAINT `FKro54u80w9tvmp4tfux1ijbcy4` FOREIGN KEY (`services_langs_id`) REFERENCES `services_lang` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_services_langs`
--

LOCK TABLES `services_services_langs` WRITE;
/*!40000 ALTER TABLE `services_services_langs` DISABLE KEYS */;
/*!40000 ALTER TABLE `services_services_langs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(245) DEFAULT NULL,
  `image` varchar(245) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slides`
--

LOCK TABLES `slides` WRITE;
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` VALUES (1,'slide1','slide1.jpg','2017-05-05 00:00:00','u1'),(2,'slide2','slide2.jpg','2017-05-05 00:00:00','u1'),(7,'banner E','2017-06-12_banner E.png','2017-06-12 14:39:52','u1@gmail.com'),(8,'tu thien','2017-06-12_Banner_Dalat.jpg','2017-06-12 14:40:17','u1@gmail.com'),(9,'giang sinh','2017-06-12_banner22.jpg','2017-06-12 14:40:30','u1@gmail.com'),(10,'congty info','2017-06-12_hinh1change.jpg','2017-06-12 14:40:46','u1@gmail.com'),(11,'made in china1','2017-06-13_1.jpg','2017-06-13 15:03:54','u1@gmail.com'),(12,'made in china2','2017-06-13_2.jpg','2017-06-13 15:04:07','u1@gmail.com'),(13,'made in china3','2017-06-13_3.jpg','2017-06-13 15:04:16','u1@gmail.com');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `user_role` varchar(15) DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`username`),
  KEY `FKfnwld7rqcs3fyvnme81wte76f` (`user_role`),
  CONSTRAINT `FKfnwld7rqcs3fyvnme81wte76f` FOREIGN KEY (`user_role`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin@gmail.com','admin','123456',1,'1','admin','2017-05-05 00:00:00'),('u2@gmail.com','u2','123456',1,'2','u1','2017-05-30 00:00:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vinhsang'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-02 15:51:59
