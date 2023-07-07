-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: gogi
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--
use heroku_75b6b8215854c89;

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `accounts` (
  `account_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `UK_k8h1bgqoplx0rkngj01pm1rgp` (`username`),
  UNIQUE KEY `UK_n7ihswpy07ci568w34q0oi8he` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'thanhhai6398@gmail.com','$2a$10$uy4FvkTgTA8mykXe5bcoL.rS0Bc8XdsMTMnnp9t.6X59SIc35MS.i',NULL,'0914276398'),(2,'shdthanhhoang@gmail.com','$2a$10$1S8emh9ET7wir0/lIdeHR.DeWJyDMmPNSg5mgD2j.cDUPsDYCRihO',NULL,'0797005740'),(3,'thanhhuong1909@gmail.com','$2a$10$eAFoYaN9om/hUn7p7qDw8eZ8uPkR9rEYQYVUBb3Ua/oxmuKsHQu/6',NULL,'0988562342'),(4,'thanhhai2637@gmail.com','$2a$10$hmWrW0G/ohptsrmMHxavbe8gD3xC5.8gub8dwompei2pY8d1pzwJi',NULL,'0773036132'),(5,'thuha141074@gmail.com','$2a$10$iuOHyrU.KOYl2E3Eb8wHue/auOP6SWkjCFuqOGRNAqrD/y7IvW.qi',NULL,'0799891141'),(6,'huynhthao2310@gmail.com','$2a$10$tVl0n1EytR8XgMwBK3Mj2OTMhK50ZFEwQA0x51wIH/w5MPfbtcGsy',NULL,'0797827001');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_products`
--

DROP TABLE IF EXISTS `accounts_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `accounts_products` (
  `account_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  PRIMARY KEY (`account_id`,`product_id`),
  KEY `FKjx3d4ypes2qyylxawbeo7ve6y` (`product_id`),
  CONSTRAINT `FKgojky42exuivku6gfye3fx56e` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  CONSTRAINT `FKjx3d4ypes2qyylxawbeo7ve6y` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_products`
--

LOCK TABLES `accounts_products` WRITE;
/*!40000 ALTER TABLE `accounts_products` DISABLE KEYS */;
INSERT INTO `accounts_products` VALUES (1,26),(1,28),(1,39);
/*!40000 ALTER TABLE `accounts_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_roles`
--

DROP TABLE IF EXISTS `accounts_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `accounts_roles` (
  `account_id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`,`role_id`),
  KEY `FKpwest19ib22ux5gk54esw9qve` (`role_id`),
  CONSTRAINT `FKpwest19ib22ux5gk54esw9qve` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FKt44duw96d6v8xrapfo4ff2up6` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_roles`
--

LOCK TABLES `accounts_roles` WRITE;
/*!40000 ALTER TABLE `accounts_roles` DISABLE KEYS */;
INSERT INTO `accounts_roles` VALUES (2,1),(3,1),(4,1),(5,1),(6,1),(1,2),(2,3),(3,3),(5,3);
/*!40000 ALTER TABLE `accounts_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_vouchers`
--

DROP TABLE IF EXISTS `accounts_vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `accounts_vouchers` (
  `account_id` bigint(20) NOT NULL,
  `voucher_id` bigint(20) NOT NULL,
  PRIMARY KEY (`account_id`,`voucher_id`),
  KEY `FKsutrgdhehukdoh2p3asom5alm` (`voucher_id`),
  CONSTRAINT `FKa8cuyrbrtkpfg8dlurjte76f3` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  CONSTRAINT `FKsutrgdhehukdoh2p3asom5alm` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_vouchers`
--

LOCK TABLES `accounts_vouchers` WRITE;
/*!40000 ALTER TABLE `accounts_vouchers` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_vouchers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_t8o6pivur7nn124jehx7cygw5` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Trà sữa',1),(2,'Sinh tố',1),(3,'Đá xay',1),(4,'Yaourt',1),(5,'Trà',1),(6,'Cà phê',1),(7,'Nước ép',1),(8,'Soda',1),(9,'Combo',1);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtd9q18hh7p27ox1ji2xxn1cej` (`account`),
  CONSTRAINT `FKtd9q18hh7p27ox1ji2xxn1cej` FOREIGN KEY (`account`) REFERENCES `accounts` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'2a, đường số 3, phường linh trung, thành phố thủ đức, thành phố hồ chí minh',769,1,'Thanh Hải','0914276398',79,'0914276398'),(2,'48 phan văn trị, phường 10, quận bình thạnh, thành phố hồ chí minh',765,0,'Thanh Hải','0914276398',79,'0914276398'),(3,'180 cmt8, phường phước trung, thành phố bà rịa, tỉnh bà rịa - vũng tàu',748,0,'Thanh Hải','0914276398',77,'0914276398'),(4,'1332 kha vạn cân, phường linh trung, thành phố thủ đức, thành phố hồ chí minh',769,1,'Ngọc Sương','0797005740',79,'0797005740'),(5,'345 cmt8, phường phước trung, thành phố bà rịa, tỉnh bà rịa - vũng tàu',748,0,'Thanh Hương','0988562342',77,'0988562342'),(6,'180 trần quang khải, quận 3, thành phố hồ chí minh',770,0,'Thanh Hải','0988562342',79,'0914276398'),(7,'119 nguyễn thị minh khai, phường bến thành, quận 1, thành phố hồ chí minh',760,0,'Thanh Hương','0988562342',79,'0988562342');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9lbei4hw5k16h7vvqykernj5u` (`account`),
  KEY `FK2k0m8xfqlx0cw3aec398ddgab` (`store_id`),
  CONSTRAINT `FK2k0m8xfqlx0cw3aec398ddgab` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`),
  CONSTRAINT `FK9lbei4hw5k16h7vvqykernj5u` FOREIGN KEY (`account`) REFERENCES `accounts` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Ngọc Sương','0797005740',1),(2,'Thanh Hương','0988562342',18),(3,'Thu Hà','0799891141',2);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `order_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `iced` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `size` varchar(255) DEFAULT NULL,
  `sugar` varchar(255) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,'100%',20000,1,'S','70%',NULL,6),(2,'100%',25000,1,'S','100%',NULL,35),(3,'100%',20000,2,'S','70%',NULL,28),(4,'100%',20000,1,'S','70%',1,6),(5,'100%',25000,1,'S','100%',1,35),(6,'100%',20000,2,'S','70%',1,28),(7,'100%',25000,1,'S','50%',NULL,9),(8,'100%',25000,1,'S','100%',NULL,12),(9,'100%',20000,1,'S','30%',NULL,7),(10,'100%',25000,1,'S','50%',2,9),(11,'100%',25000,1,'S','100%',2,12),(12,'100%',20000,1,'S','30%',2,7),(13,'100%',25000,1,'S','100%',NULL,13),(14,'100%',20000,1,'S','30%',NULL,14),(15,'100%',25000,1,'S','100%',3,13),(16,'100%',20000,1,'S','30%',3,14),(17,'100%',25000,2,'S','30%',NULL,34),(18,'100%',20000,1,'S','100%',NULL,19),(19,'100%',25000,2,'S','30%',4,34),(20,'100%',20000,1,'S','100%',4,19),(21,'100%',22000,2,'S','100%',NULL,26),(22,'100%',27000,1,'S','100%',NULL,44),(23,'100%',22000,2,'S','100%',5,26),(24,'100%',27000,1,'S','100%',5,44),(25,'100%',26000,1,'M','100%',NULL,25),(26,'100%',22000,2,'S','100%',NULL,11),(27,'100%',26000,1,'M','100%',6,25),(28,'100%',22000,2,'S','100%',6,11),(29,'100%',21000,1,'M','100%',NULL,7),(30,'100%',20000,2,'S','100%',NULL,44),(31,'100%',25000,1,'S','100%',NULL,29),(32,'100%',21000,1,'M','100%',7,7),(33,'100%',20000,2,'S','100%',7,44),(34,'100%',25000,1,'S','100%',7,29),(35,'100%',20000,1,'S','100%',NULL,34),(36,'100%',26000,1,'M','100%',NULL,28),(37,'100%',38000,1,'M','100%',NULL,12),(38,'100%',20000,1,'S','100%',8,34),(39,'100%',26000,1,'M','100%',8,28),(40,'100%',38000,1,'M','100%',8,12),(41,'100%',25000,1,'S','100%',NULL,3),(42,'100%',33000,3,'M','100%',NULL,8),(43,'100%',25000,1,'S','100%',9,3),(44,'100%',33000,3,'M','100%',9,8),(45,'100%',32000,1,'s','100%',NULL,29),(46,'100%',32000,1,'s','100%',10,29),(47,'100%',20000,1,'s','70%',NULL,34),(48,'100%',20000,1,'s','70%',11,34),(49,'100%',20000,1,'s','100%',NULL,34),(50,'100%',20000,1,'s','100%',12,34),(51,'100%',26000,2,'M','100%',NULL,7),(52,'100%',17000,3,'S','100%',NULL,26),(53,'100%',26000,2,'M','100%',13,7),(54,'100%',17000,3,'S','100%',13,26),(55,'100%',20000,2,'S','100%',NULL,14),(56,'100%',20000,2,'S','100%',14,14),(57,'100%',26000,1,'m','100%',NULL,18),(58,'100%',26000,1,'m','100%',15,18),(59,'100%',20000,2,'s','100%',NULL,6),(60,'100%',20000,2,'s','100%',16,6);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details_toppings`
--

DROP TABLE IF EXISTS `order_details_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `order_details_toppings` (
  `order_detail_id` bigint(20) NOT NULL,
  `topping_id` bigint(20) NOT NULL,
  PRIMARY KEY (`order_detail_id`,`topping_id`),
  KEY `FK23ms6bd4wgyf82we4a68wvhcw` (`topping_id`),
  CONSTRAINT `FK1l4nk3ylrb3bfud9x82i3jyin` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`id`),
  CONSTRAINT `FK23ms6bd4wgyf82we4a68wvhcw` FOREIGN KEY (`topping_id`) REFERENCES `toppings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details_toppings`
--

LOCK TABLES `order_details_toppings` WRITE;
/*!40000 ALTER TABLE `order_details_toppings` DISABLE KEYS */;
INSERT INTO `order_details_toppings` VALUES (7,1),(9,1),(10,1),(12,1),(13,1),(15,1),(21,1),(23,1),(8,2),(11,2),(17,2),(19,2),(2,4),(5,4),(18,4),(20,4),(26,4),(28,4),(37,4),(40,4),(41,4),(43,4),(51,4),(53,4),(22,5),(24,5),(37,5),(40,5),(42,5),(44,5),(45,6),(46,6);
/*!40000 ALTER TABLE `order_details_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_date` datetime DEFAULT NULL,
  `order_type` int(11) NOT NULL,
  `pay` tinyint(1) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `total` double DEFAULT '0',
  `account` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `employee_id` bigint(20) DEFAULT NULL,
  `store_id` bigint(20) DEFAULT NULL,
  `voucher_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoua5rmwxil3tisvn6d7sfo4uc` (`account`),
  KEY `FKpxtb8awmi0dk6smoh2vp1litg` (`customer_id`),
  KEY `FKfhl8bv0xn3sj33q2f3scf1bq6` (`employee_id`),
  KEY `FKnqkwhwveegs6ne9ra90y1gq0e` (`store_id`),
  KEY `FKdimvsocblb17f45ikjr6xn1wj` (`voucher_id`),
  CONSTRAINT `FKdimvsocblb17f45ikjr6xn1wj` FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`),
  CONSTRAINT `FKfhl8bv0xn3sj33q2f3scf1bq6` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `FKnqkwhwveegs6ne9ra90y1gq0e` FOREIGN KEY (`store_id`) REFERENCES `stores` (`store_id`),
  CONSTRAINT `FKoua5rmwxil3tisvn6d7sfo4uc` FOREIGN KEY (`account`) REFERENCES `accounts` (`username`),
  CONSTRAINT `FKpxtb8awmi0dk6smoh2vp1litg` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2023-06-08 23:33:44',0,1,2,85000,'0914276398',1,1,1,NULL),(2,'2023-06-08 23:34:59',0,0,3,70000,'0914276398',3,NULL,18,NULL),(3,'2023-06-08 23:36:14',0,1,2,45000,'0914276398',3,2,18,NULL),(4,'2023-06-08 23:37:41',0,1,2,70000,'0914276398',1,1,1,NULL),(5,'2023-06-08 23:40:06',0,1,2,71000,'0797005740',4,1,1,NULL),(6,'2023-06-08 23:41:17',0,1,2,70000,'0797005740',4,1,1,NULL),(7,'2023-06-08 23:45:27',0,1,2,86000,'0988562342',5,2,18,NULL),(8,'2023-06-24 20:27:50',0,1,2,84000,'0914276398',1,1,1,NULL),(9,'2023-06-29 20:29:21',1,1,2,144000,'0914276398',1,1,1,NULL),(10,'2023-06-30 13:29:32',0,0,3,32000,'0914276398',1,NULL,1,NULL),(11,'2023-06-30 18:35:55',1,0,3,40000,'0914276398',6,NULL,5,NULL),(12,'2023-06-30 20:59:53',0,0,0,20000,'0914276398',2,NULL,16,NULL),(13,'2023-07-02 08:54:08',0,0,0,103000,'0988562342',5,NULL,18,NULL),(14,'2023-07-02 08:55:11',0,0,0,40000,'0988562342',5,NULL,18,NULL),(15,'2023-07-02 19:21:19',0,0,0,26000,'0914276398',1,NULL,1,NULL),(16,'2023-07-03 20:33:10',0,0,0,40000,'0914276398',6,NULL,5,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `products` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `discount` double DEFAULT NULL,
  `has_topping` tinyint(1) DEFAULT '1',
  `imgurl` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `category_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Hương thơm từ trà, vị ngọt của sữa và độ dai dai của trân châu',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fd277v0v?alt=media&token=adbee543-7aed-4006-aa3d-f9e80520868b','Trà sữa trân châu',22000,1,1),(2,'Sinh tố xoài ngọt mát, giúp thanh nhiệt cơ thể cho những ngày nắng nóng.',0.1,0,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F6v3d1lk?alt=media&token=4be5dabe-66ba-441d-bde8-88ceb72acad6','Sinh tố xoài',15000,1,2),(3,'Hồng Trà Yakult Sương Sáo được tạo nên từ cơn sốt pha chế với Yakult. Trà hoa quả có topping sương sáo mềm mịn, không quá lỏng như pudding cũng chưa vượt qua độ dai giòn sừng sực giống rau câu, kết hợp với cốt trà và Yakult mang lại hiệu ứng vượt qua sự mong đợi.',0.15,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Ftad3d4g?alt=media&token=98883d17-1134-4a36-89b9-d861046b2cb1','Yakult thạch sương sáo',20000,1,4),(4,'Trà Detox Chanh Dâu Bạc Hà là sự kết hợp của nhiều loại trái cây giàu vitamin, khoáng chất.',0.2,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F8y1qy3q?alt=media&token=9bef428f-f567-4054-a44b-ba2eee600632','Trà chanh dâu tây',20000,1,5),(5,'Chocolate Xay Caramel quyến rũ người dùng với mùi thơm nức mũi và hương vị ngọt vừa của Caramel.',0.3,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fs53dums?alt=media&token=2da1bdae-dbdf-4e1d-8b9c-ebf6048472c3','Đá xay Socola',20000,1,3),(6,'Cà Phê Sữa thơm ngon.',0.1,0,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fmvkhlqb?alt=media&token=52bf91c8-4deb-45b2-a3d0-33ba5f5730d8','Bạc xỉu',20000,1,6),(7,'Món thức uống dành riêng cho người yêu thích vị chua, không nhẹ nhàng, không thanh dịu.',0.15,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fs9sbo78?alt=media&token=1dfdad64-ab78-4ee3-b855-0a26130c0bf1','Nước ép chanh leo',15000,1,7),(8,'Matcha Đậu Đỏ Kem Cheese mang vị ngọt và thơm nức mùi matcha. Hương vị dễ chịu, giải ngấy cực hiệu quả. Kết hợp với sự bùi béo của tầng cheese và đậu đỏ làm nó trở thành món nước quốc dân được mọi người yêu thích.',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F5he8s1o?alt=media&token=cab08b5f-a389-4450-ba11-7985ef3429a3','Matcha đậu đỏ',20000,1,1),(9,'Trà sữa thu hút ngay ngụm đầu tiên với vị béo của bột sữa, xen lẫn mùi thơm của Hồng Trà và vị béo của kem cheese. ',0.2,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F3umn4l5?alt=media&token=ca154de2-6a1e-43a4-8bd2-295c150e0adf','Trà sữa bí đỏ kem cheese',20000,1,1),(10,'Trà Sữa truyền thống là cách nấu trà sữa với dòng trà đen có hương mạnh nhất. Dư vị trà mạnh mẽ, thơm nồng và lâu tan.',0.2,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F9x9m0sg?alt=media&token=27e2b036-f4d4-4b91-864b-3ff54928411b','Trà sữa truyền thống',17000,1,1),(11,'Sữa Tươi Trân Châu Đường Đen phù hợp cho những đối tượng không thích vị ngọt quá nhiều. Nền sữa tươi làm nổi bật trân châu dai mềm. ',0.15,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fy2xl0c7?alt=media&token=f949ec47-7a9b-4114-b3a1-71b9d86fef79','Sữa tươi trân châu đường đen',17000,1,1),(12,'Mùi thơm dịu gần giống với gạo rang Nhật Bản, bên cạnh đó còn giàu chất protein, xơ, khoáng chất nên rất được hội chị em ưu ái.',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F8i25uiw?alt=media&token=2c10891d-8d69-4af4-8cd8-b083fac038ab','Trà sữa kiều mạch',20000,1,1),(13,'Hương vị chua ngọt trên nền sữa tươi beo béo, trân châu dai mềm là một kết hợp hoàn hảo.',0.2,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fqm2w91x?alt=media&token=44e3c43e-9f5e-407c-ac7e-43c0591ccb2e','Thanh long đỏ kem cheese',20000,1,3),(14,'Sinh tố Nho Đen Kem Cheese thuộc dòng trà xanh kem cheese, mùi trà thơm ngát hoa  Nhài cộng thêm nho đen. Quết trên cùng là kem mặn rất bắt vị.',0.1,0,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fk58gsk4?alt=media&token=c559b8a5-f9eb-40f5-afda-2669c5a43705','Sinh tố nho đen Kem chesse',20000,1,2),(15,'Sinh tố mãng cầu chua ngọt, đầy dinh dưỡng',0.15,0,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Frnvgdot?alt=media&token=21b91db8-d884-455c-9ca6-b7b306647cd4','Sinh tố mãng cầu',20000,1,2),(16,'Snh tố dâu tây đã quá phổ biến nhờ hương vị đặc trưng, béo mịn mà ai cũng thích.',0.1,0,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F99whzdh?alt=media&token=466abbb0-0cdf-4001-b76e-2403bed99f7b','Sinh tố dâu tây',20000,1,2),(17,'Vào những ngày nắng nóng, chỉ cần có một ly sinh tố thật thơm ngon để thưởng thức thì thật là tuyệt vời.',0.1,0,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fxh38jqm?alt=media&token=b553d0c8-0186-4cd8-9d7a-df982e23abcb','Sinh tố bơ',20000,1,2),(18,'Yakult Dâu Tây Xay là công thức pha với Yakult được nhiều người áp dụng và cho vào menu của quán. Màu sắc tươi sáng rất được lòng các cô gái thích đồ ngọt và hương dâu.',0.15,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fmkuf54y?alt=media&token=b73bdd59-9893-4360-8d4d-2c3d49cfa70f','Yakult xay dâu tây',20000,1,4),(19,'Oolong Phú Quý Kem Cheese có nhiều biến thể, nhưng đều mang mùi thơm đặc trưng của dòng trà Oolong. Vị trà Oolong Phú Quý Wecha đã kéo bản thể truyền thống sang một trang mới. Vị sữa nồng đượm  cũng không thể lấn át được hương thơm ấy.',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fwk4e9zw?alt=media&token=c2998afd-929f-401a-8ae5-7c52dd11567d','Trà Olong',15000,1,5),(20,'Hồng Kem Cheese thơm ngát hương hoa hồng, thêm lớp kem béo ngậy làm dậy vị cảm quan của người thưởng thức, hương trà kèm kem béo',0.15,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fu95p42e?alt=media&token=fad6cb22-2bd6-423d-9a23-1c2d25830bae','Hồng trà kem cheese',20000,1,5),(21,'Trà Xanh Cam Đào mang tính sáng tạo và bức phá của những loại trà trái cây mix. Hai mùi thơm riêng biệt là cam và đào cộng hưởng tạo nên sự bùng nổ hương vị. Trà xanh hoa nhài làm lớp nền dịu nhẹ, đẩy cao tính riêng biệt của hai nguyên liệu một cách tối đa.',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fr8dkay6?alt=media&token=57c1ae1e-0391-4999-be47-ee9162999ec8','Trà cam + đào',20000,1,5),(22,'Trà chanh là thức uống giải khát quen thuộc với người Việt.',0.2,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F0eolytg?alt=media&token=5dce10b0-100a-4105-b7c3-df2bfc834748','Trà chanh',15000,1,5),(23,'Khác với nước ngọt, trà đào là một loại thức uống không chỉ ngon mà còn bổ sung vitamin và giải nhiệt cho cơ thể. ',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Falpgo2q?alt=media&token=f9256a60-98b5-46c2-b0a7-815ebd8d7a85','Trà đào',20000,1,5),(24,'Được bao phủ bởi lớp kem mềm béo, bên dưới là vị ngọt mật và hương kiều mạch. Cảm nhận kỹ càng ta thấy vị ngọt đượm, ít chát, phù hợp hầu hết với mọi người.',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F74bcw51?alt=media&token=dc097436-e5db-4f71-80d7-ab59a755ea1f','Trà kiều mạch kem cheese',17000,1,5),(25,'Những ly Trà Vải mát lạnh luôn là sự lựa chọn hàng đầu trong những ngày hè oi bức.',0.15,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fukiwgk9?alt=media&token=edacfa3d-bb9b-469f-9344-e1cb1e54e611','Trà vải',20000,1,5),(26,'Trà chanh việt quất một trong đồ uống giải khát được rất nhiều người yêu thích ở mọi lứa tuổi hiện nay.',0.2,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Flymlboe?alt=media&token=1a254f1a-947f-4035-9281-fad8ec657d98','Trà Việt Quốc',17000,1,5),(27,'Cà phê sữa đá là một loại thức uống thông dụng ở Việt Nam. Cà phê sữa đá truyền thống được làm từ cà phê nguyên chất đựng trong phin với sữa đặc có đường và bỏ đá vào trong',0.15,0,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F52u4kz1?alt=media&token=3df0894d-7408-43d7-a6ee-bd534782e41a','Cà phê sữa đá',20000,1,6),(28,'Cà phê trà xanh được hòa trộn giữa cà phê nguyên chất cùng bột trà xanh theo tỷ lệ hoàn hảo. Thứ thức uống này không chỉ thơm ngon mà còn giúp bạn thêm tỉnh táo.',0.2,0,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fu6fhom0?alt=media&token=9f28f9a1-b34c-40f0-b5ed-724654256c4f','Cà phê Trà Xanh',20000,1,6),(29,'Cà Phê Đá Xay Đường Đen là sự thay thế nguyên liệu đường đen trong công thức. Một sự thay đổi nhỏ mang lại kết quả lớn khiến cho thức uống ngon hơn.',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F6absyfj?alt=media&token=92b248c1-a0b2-493a-a0d9-9f892ec1706b','Cà phê đá xay đường đen',25000,1,3),(30,'Cà phê đen là thức uống cung cấp năng lượng cần thiết giúp chúng ta tỉnh táo.',0.15,0,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F5s6yx4f?alt=media&token=69ed1798-e23d-490a-93ea-f8fd724063a1','Cà phê đen đá',15000,1,6),(31,'Cam vàng có mùi thơm lưu giữ khá lâu trong không khí, hòa quyện cùng trà xanh tạo nên hương vị sản khoái. ',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fnmvo2x9?alt=media&token=8030740d-e0e6-43be-85e1-3b418632ba32','Nước ép cam',20000,1,7),(32,'Dâu tây chín đỏ đã loại bỏ bớt vị chua thanh thuần, thay vào đó là chút chua nhẹ.',0.15,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fgtwqtzd?alt=media&token=7a36e39a-199c-464e-b3dd-4cb97791a0be','Nước ép dâu tây',20000,1,7),(33,'Hương thơm đồng nội tỏa ra từ trái Việt Quất mọng nước đã khơi dậy vị giác ngủ yên của người dùng. Kèm theo một phần vị chua hơi nhẫn của chanh che lấp vị chát từ Việt Quất.',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fo76r4p9?alt=media&token=8ae4328b-18ed-464b-b7a6-01420efe9e9f','Nước ép Việt quất',20000,1,7),(34,'Vị tươi mát',0.3,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F4ip3n30?alt=media&token=1ac320de-3866-4cd6-b27f-0342f5cd9080','Soda Blue',20000,1,8),(35,'Ly soda dâu mát lạnh, ngọt ngào cùng màu sắc tươi mát, bắt mắt sẽ là món đồ uống giải nhiệt lý tưởng trong những ngày oi bức.',0.3,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Foz5oj30?alt=media&token=90f13245-2047-41db-9cce-1f77937f8cb8','Soda dâu tây',20000,1,8),(36,'',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fpggsjjt?alt=media&token=6fce8a42-e5df-41c9-8a52-39746c9ab2ee','Combo 1: Đường Nâu Kem Cheese (M) + Đường Nâu Matcha Sữa (M)',55000,1,9),(37,'',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fjl9hr8d?alt=media&token=61cad5b9-7a2e-4dd6-96c5-2a2f51c2c6f9','Combo 2: Đường Nâu Cốt Dừa (M) + Đường Nâu Khoai Môn(M)',60000,1,9),(38,'',0.15,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Feg18orw?alt=media&token=15e5da19-ee0a-408d-9bf0-89c1727f55e0','Combo 3: Hồng Trà Tiger Kem Sữa (M) + Trà Ô Long Kem Sữa (M)',55000,1,9),(39,'',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Faqfk5mn?alt=media&token=a82837f7-70a3-42b8-9a8d-1f6116485e2a','Combo 4: Đường Nâu Socola Mix (M) + Đường Nâu Sữa Tươi Kem Cheese Tiger (M)',55000,1,9),(40,'Đường Nâu Cốt Dừa (M) + Đường Nâu Khoai Môn(M) + Đường Nâu Đậu Đỏ (M)',0,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F1zl0hd3?alt=media&token=eb7364bc-042b-482f-a353-a4035871af35','Combo 5: Bộ 3 siêu hot',87000,1,9),(41,'Đường Nâu Kem Cheese (M) + Đường Nâu Matcha Sữa (M) + Trà Ô Long Kem Sữa (M)',0,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2F72ajnx3?alt=media&token=3a7adc74-8ac9-4f37-ba6a-1e70b925d463','Combo 6: Bộ 3 siêu hot',85000,1,9),(42,'Dưa hấu được nhiều người yêu thích với vị ngọt dịu, mọng nước, tươi ngon, giúp giải nhiệt vô cùng tốt.',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fimqm2kp?alt=media&token=8f31f896-c79f-47f5-84fc-3129e11627bc','Nước ép dưa hấu',15000,1,7),(43,'Mùa hè thưởng thức ngay một ly soda vị chanh mát lạnh là tuyệt vời nhất.',0.1,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Ff34shgs?alt=media&token=d32cc745-759e-49fc-bf49-9eb3d704fa48','Soda chanh đường',20000,1,8),(44,'Soda việt quất là sự lựa chọn thích hợp để bạn có thể nhâm nhi thưởng thức sau một ngày dài làm việc và học tập căng thẳng.',0.15,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fcpz3k4r?alt=media&token=f7a2ea7c-3c18-4501-b006-dd461cf22d14','Soda Việt Quốc',20000,1,8),(45,'Việt quất đá xay với vị chua thanh mát từ những quả việt quất chín mọng kết hợp cùng chút béo thơm của sữa tươi đầy hấp dẫn và lạ vị sẽ mang đến cho bạn thức uống giải khát tuyệt vời vào ngày hè.',0.15,1,'https://firebasestorage.googleapis.com/v0/b/gogi-images.appspot.com/o/files%2Fonrthyo?alt=media&token=d93f18c5-9260-4ccb-b8c6-74e2b4b7d18b','Đá xay Việt Quốc',25000,1,3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `rates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `created_date` datetime DEFAULT NULL,
  `point` int(11) NOT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4mdsmkrr7od84tpgxto2v3t2e` (`product_id`),
  KEY `FK9bkci21rtmcaw9bibo12heqkl` (`user_id`),
  CONSTRAINT `FK4mdsmkrr7od84tpgxto2v3t2e` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FK9bkci21rtmcaw9bibo12heqkl` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
INSERT INTO `rates` VALUES (1,'Ngon tuyệt! Vị tươi mát','2023-06-08 23:47:35',5,34,1),(2,'Cà phê đậm vị và hương thơm trà xanh','2023-06-08 23:48:22',5,28,1),(3,'Nước uống ngon, vị ngọt vừa phải','2023-06-29 20:31:27',5,35,1),(4,'Chất lượng tuyệt vời!!!','2023-07-03 20:52:28',5,12,1);
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refreshtokens`
--

DROP TABLE IF EXISTS `refreshtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `refreshtokens` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `expiry_date` datetime NOT NULL,
  `token` varchar(255) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1lfxk1odre7ch1v66hsfi5xq6` (`token`),
  KEY `FK84k7poeft8g4set5c080ksju5` (`account_id`),
  CONSTRAINT `FK84k7poeft8g4set5c080ksju5` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refreshtokens`
--

LOCK TABLES `refreshtokens` WRITE;
/*!40000 ALTER TABLE `refreshtokens` DISABLE KEYS */;
INSERT INTO `refreshtokens` VALUES (2,'2023-07-06 20:29:57','edd2967f-664d-4920-b175-84054a1ff4e2',2),(29,'2023-07-09 08:50:12','f4b303c2-0c90-48e1-8dad-d7d31cc64b2d',3),(48,'2023-07-06 20:30:04','7dd7229b-a746-4f42-b3ee-a1425a1bd927',1);
/*!40000 ALTER TABLE `refreshtokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_716hgxp60ym1lifrdgp67xt5k` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'ADMIN'),(3,'EMPLOYEE'),(1,'USER');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `stores` (
  `store_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `district_id` bigint(20) DEFAULT NULL,
  `province_id` bigint(20) DEFAULT NULL,
  `store_name` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `UK_4u7lfj44aivecut94bysvki1k` (`store_name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,'1300 kha vạn cân, phường linh trung, thành phố thủ đức, thành phố hồ chí minh',769,79,'Gogi Kha Vạn Cân'),(2,'400 phạm văn đồng, phường hiệp bình chánh, thành phố thủ đức, thành phố hồ chí minh',769,79,'Gogi Phạm Văn Đồng'),(3,'180 trần quang khải, quận 1, thành phố hồ chí minh',760,79,'Gogi Trần Quang Khải'),(4,'141 nguyễn thái bình, quận 1, thành phố hồ chí minh',760,79,'Gogi Nguyễn Thái Bình'),(5,'86-88 cao thắng, quận 3, thành phố hồ chí minh',770,79,'Gogi Cao Thắng'),(6,'63-63a-63b cống hộp rạch bùng binh, quận 3, thành phố hồ chí minh',770,79,'Gogi Rạch Bùng Binh'),(7,'35-37 đường 41, quận 4, thành phố hồ chí minh',773,79,'Gogi Đường 41'),(8,'682 trần hưng đạo, quận 5, thành phố hồ chí minh',774,79,'Gogi Trần Hưng Đạo'),(9,'1056 hậu giang, quận 6, thành phố hồ chí minh',775,79,'Gogi Hậu Giang Phú Lâm'),(10,'111-113-115 bình phú, quận 6, thành phố hồ chí minh',775,79,'Gogi Bình Phú'),(11,'vng campus tower, quận 7, thành phố hồ chí minh',778,79,'Gogi VNG Campus'),(12,'175b cao thắng, phường 12, quận 10, thành phố hồ chí minh',771,79,'Gogi Cao Thắng 2'),(13,'798 sư vạn hạnh, phường 12, quận 10, thành phố hồ chí minh',771,79,'Gogi Sư Vạn Hạnh'),(14,'64a lữ gia, phường 15, quận 11, thành phố hồ chí minh',772,79,'Gogi Lữ Gia'),(15,'516 tỉnh lộ 10, bình trị đông, quận bình tân, thành phố hồ chí minh',777,79,'Gogi Tỉnh Lộ 10'),(16,'195/10 điện biên phủ, phường 15, quận bình thạnh, thành phố hồ chí minh',765,79,'Gogi The Hub - Điện Biên Phủ'),(17,'190 phan văn trị, phường 11, quận bình thạnh, thành phố hồ chí minh',765,79,'Gogi Phan Văn Trị 3'),(18,'1280 cmt8, thành phố bà rịa, tỉnh bà rịa - vũng tàu',748,77,'Gogi BRVT'),(19,'300 phan văn trị, quận bình thạnh, thành phố hồ chí minh',765,79,'Gogi Bình Thạnh'),(20,'140 phan văn trị, quận bình thạnh, thành phố hồ chí minh',765,79,'Gogi Phan Văn Trị');
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toppings`
--

DROP TABLE IF EXISTS `toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `toppings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_a3ui8soey95iydgadn8pdrnsp` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toppings`
--

LOCK TABLES `toppings` WRITE;
/*!40000 ALTER TABLE `toppings` DISABLE KEYS */;
INSERT INTO `toppings` VALUES (1,'Trân châu trắng',5000,1),(2,'Trân châu đen',5000,1),(3,'Pudding trứng',7000,1),(4,'Thạch thủy tinh',5000,1),(5,'Phô mai tươi',7000,1),(6,'Macchiato',7000,1);
/*!40000 ALTER TABLE `toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vouchers`
--

DROP TABLE IF EXISTS `vouchers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `vouchers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `maximum_discount_amount` double DEFAULT NULL,
  `minimum_order_value` double DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vouchers`
--

LOCK TABLES `vouchers` WRITE;
/*!40000 ALTER TABLE `vouchers` DISABLE KEYS */;
INSERT INTO `vouchers` VALUES (1,'KHACHNEW','2023-12-31 23:59:00',20000,0,'Khách hàng mới','2020-01-01 00:00:00',1),(2,'GGT701','2023-07-31 23:59:00',5000,20000,'Giảm giá Tháng 7','2023-07-01 00:00:00',0.1),(3,'GGT702','2023-07-31 23:59:00',5000,30000,'Giảm giá tháng 7','2023-07-01 00:00:00',0.1),(4,'GGT703','2023-07-31 23:59:00',10000,35000,'Giảm giá tháng 7','2023-07-01 00:00:00',0.15),(5,'GGT704','2023-07-31 23:59:00',10000,30000,'Giảm giá tháng 7','2023-07-01 00:00:00',0.1),(6,'FLASH1571','2023-07-20 23:59:00',10000,30000,'FlashSale 15/07','2023-07-15 00:00:00',0.1),(7,'FLASH1572','2023-07-19 23:59:00',20000,50000,'FlashSale 15/07','2023-07-15 00:00:00',0.1),(8,'FLASH1573','2023-07-20 23:59:00',10000,10000,'FlashSale 15/07','2023-07-15 00:00:00',0.1),(9,'GGT801','2023-08-30 23:59:00',5000,15000,'Giảm giá tháng 8','2023-08-01 00:00:00',0.1),(10,'GGT802','2023-08-30 23:59:00',20000,50000,'Giảm giá tháng 8','2023-08-01 00:00:00',0.15);
/*!40000 ALTER TABLE `vouchers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-07  9:14:18
