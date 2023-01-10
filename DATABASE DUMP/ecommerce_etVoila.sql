-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce_project_etvolia
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `admin_id` varchar(20) NOT NULL,
  `admin_userName` varchar(25) NOT NULL,
  `admin_password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('A1','Lasbela239','jakes'),('A2','Saad239Khan','fakes'),('A3','Maaz3369','12345oi'),('A4','Abbas1422','655656lol'),('A5','Laiba0002','5485485ok'),('A6','Brahmin234','aloha789');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing`
--

DROP TABLE IF EXISTS `billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing` (
  `billNo` varchar(20) DEFAULT NULL,
  `bill_amount` int DEFAULT NULL,
  `bill_payment_method` varchar(60) DEFAULT NULL,
  `billing_name` varchar(20) DEFAULT NULL,
  `billing_Address` varchar(50) DEFAULT NULL,
  `billing_city` varchar(20) DEFAULT NULL,
  `billing_zipcode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing`
--

LOCK TABLES `billing` WRITE;
/*!40000 ALTER TABLE `billing` DISABLE KEYS */;
INSERT INTO `billing` VALUES ('B102',10810,'cash on delivery','Fatima Dossa','D.H.A. Phase 4','Karachi','75500');
/*!40000 ALTER TABLE `billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_id` int NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `c_address` varchar(60) NOT NULL,
  `c_email` varchar(30) NOT NULL,
  `c_password` varchar(20) NOT NULL,
  `c_phone` varchar(12) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (101,'Ahmed Bhugti','lalQila apartments block 2 lahore','bhugti@gmail.com','frog12','03320129746'),(102,'Basit123','D.H.A. Phase 3 khi','herobasit@gmail.com','fastdepression','0335392304'),(103,'Abbas','D.H.A. Phase 4','dssa@gmail.com','fast','03353273005');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `billNo` varchar(20) NOT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `delivery_date` varchar(30) NOT NULL,
  `delivery_status` varchar(20) NOT NULL,
  `vendor_id` int NOT NULL,
  `vendor_name` varchar(20) NOT NULL,
  `vendor_contact` varchar(20) NOT NULL,
  `delivery_charges` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
INSERT INTO `delivery` VALUES ('B102','102','Sat 2022.12.10 ','to be delivered',1,'ahmed laraib','084838074272',10),('B102','102','Sat 2022.12.10 ','to be delivered',1,'ahmed laraib','084838074272',10),('B102','102','Sat 2022.12.10 ','to be delivered',1,'ahmed laraib','084838074272',10);
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `discount_code` varchar(30) NOT NULL,
  `discount_perc` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES ('Massive20',20),('go40',40),('way20',20),('fiver',5),('get25',25),('maxcode50',50);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` varchar(10) NOT NULL,
  `c_id` int NOT NULL,
  `product_id` int NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `product_description` varchar(60) NOT NULL,
  `product_qty` int NOT NULL,
  `product_size` varchar(30) DEFAULT NULL,
  `order_status` varchar(20) NOT NULL,
  `per_product_price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('o2',102,10007,' Black Button Down','waist:34 length:40 4pocket trouser',1,'Large','Processing',4500),('o2',102,10007,' Inverted Hoodie','waist:34 length:40 4pocket trouser',2,'Large','Processing',4500);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_price` int NOT NULL,
  `product_description` varchar(60) NOT NULL,
  `product_category` varchar(30) NOT NULL,
  `product_color` varchar(20) NOT NULL,
  `product_size` varchar(30) NOT NULL,
  `product_qty` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (10007,'Beige Trouser',4500,'waist:34 length:40 4pocket trouser','Men Dresses','Beige','Large',10),(10007,'Beige Trouser',4500,'waist:30 length:36 4pocket trouser','Men Dresses','Beige','Medium',7),(10008,'Black Button Down',5700,'chest:34 length:40','Men Dresses','Black','Large',5),(10008,'Black Button Down',5700,'chest:28 length:34','Men Dresses','Black','Small',8),(10009,'Button Down Shirt',5700,'chest:32 length:38','Men Dresses','White','Medium',5),(10009,'Button Down Shirt',5700,'chest:34 length:40','Men Dresses','White','Large',8),(10010,'Checkered Shirt',3700,'chest:32 length:38','Men Dresses','Red and Blue','Medium',5),(10010,'Checkered Shirt',3700,'chest:28 length:34','Men Dresses','Red and Blue','Small',5),(10011,'Funky Shirt',3200,'chest:32 length:38','Men Dresses','Multi','Medium',2),(10011,'Funky Shirt',3200,'chest:28 length:34','Men Dresses','Multi','Small',4),(10012,'Inverted Hoodie',7500,'chest:32 length:38','Men Dresses','Black and white','Medium',6),(10012,'Inverted Hoodie',7500,'chest:34 length:40','Men Dresses','Black and white','Large',8),(10013,'Jeans Black',5000,'waist:34 length:40 2pocket','Men Dresses','Black','Large',10),(10013,'Jeans Black',5000,'waist:30 length:36 2pocket','Men Dresses','Black','Medium',8),(10014,'Jeans Blue',5000,'waist:34 length:40 2pocket','Men Dresses','Blue','Large',8),(10014,'Jeans Blue',5000,'waist:30 length:36 2pocket','Men Dresses','Blue','Medium',8),(10016,'White Trouser',4500,'waist:34 length:40 4pocket trouser','Men Dresses','White','Large',10),(10016,'White Trouser',4500,'waist:30 length:36 4pocket trouser','Men Dresses','White','Medium',7),(10017,'Black Shirt',5200,'chest:32 length:36','Women Dresses','Black','Large',6),(10017,'Black Shirt',5200,'chest:24 length:28','Women Dresses','Black','Small',4),(10018,'Checkered Sweater',7200,'chest:28 length:32','Women Dresses','Pink','Medium',5),(10018,'Checkered Sweater',7200,'chest:24 length:28','Women Dresses','Pink','Small',5),(10019,'Cropped Shirt',4200,'chest:32 length:36','Women Dresses','Blue','Large',2),(10019,'Cropped Shirt',4200,'chest:28 length:32','Women Dresses','Blue','Medium',6),(10020,'Dress',8000,'chest:32 length:36','Women Dresses','Navy','Large',4),(10020,'Dress',8000,'chest:28 length:32','Women Dresses','Navy','Medium',4),(10021,'Formal Fawn Shirt',3500,'chest:32 length:36','Women Dresses','Fawn','Large',10),(10021,'Formal Fawn Shirt',3500,'chest:28 length:32','Women Dresses','Fawn','Medium',4),(10022,'GP Hoodie',4000,'chest:28 length:32','Women Dresses','Green','Medium',5),(10022,'GP Hoodie',4000,'chest:24 length:28','Women Dresses','Green','Small',5),(10023,'GP Jacket',4000,'chest:28 length:32','Women Dresses','Navy','Medium',5),(10023,'GP Jacket',4000,'chest:24 length:28','Women Dresses','Navy','Small',5),(10024,'Party-wear Shirt',5000,'chest:28 length:32','Women Dresses','Lavender','Medium',6),(10024,'Party-wear Shirt',5000,'chest:24 length:28','Women Dresses','Lavender','Small',4),(10025,'Semi Formal Shirt',3500,'chest:32 length:36','Women Dresses','Pink','Large',8),(10025,'Semi Formal Shirt',3500,'chest:28 length:32','Women Dresses','Pink','Medium',4),(10026,'Wooler Sweater',4500,'chest:28 length:32','Women Dresses','Black','Medium',6),(10026,'Wooler Sweater',4500,'chest:24 length:28','Women Dresses','Black','Small',4),(10027,'Baby Pink Sneakers',3500,'Light pink regular shoes','Footwear','Pink','UK 6',6),(10027,'Baby Pink Sneakers',3500,'Light pink regular shoes','Footwear','Pink','UK 8',4),(10028,'Black Joggers',3800,'Black & white regular shoes','Footwear','Black','UK 7',4),(10028,'Black Joggers',3800,'Black & white regular shoes','Footwear','Black','UK 9',8),(10030,'Classic Jordans',4200,'Old School Jordan styled sneakers','Footwear','Multi','UK 7',4),(10030,'Classic Jordans',4200,'Old School Jordan styled sneakers','Footwear','Multi','UK 9',10),(10031,'Green Joggers',3600,'Green regular shoes','Footwear','Green','UK 8',4),(10031,'Green Joggers',3600,'Green regular shoes','Footwear','Green','UK 10',8),(10032,'Green Sneakers',3500,'Green regular shoes','Footwear','Green','UK 6',6),(10032,'Green Sneakers',3500,'Green regular shoes','Footwear','Green','UK 7',4),(10033,'Mustard Joggers',4600,'Mustard regular shoes','Footwear','Mustard','UK 8',4),(10033,'Mustard Joggers',4600,'Mustard regular shoes','Footwear','Mustard','UK 10',8),(10034,'Orange Jordans',4800,'Old School Orange Jordan styled sneakers','Footwear','Orange','UK 6',4),(10034,'Orange Jordans',4800,'Old School Orange Jordan styled sneakers','Footwear','Orange','UK 9',10),(10029,'Bright Pink Sneakers',4200,'Bright pink casual sneakers','Footwear','Pink','UK 10',3),(10029,'Bright Pink Sneakers',4200,'Bright pink casual sneakers','Footwear','Pink','UK 6',7),(10035,'Fawn Joggers',3600,'Fawn regular shoes','Footwear','Fawn','UK 7',4),(10035,'Fawn Joggers',3600,'Fawn regular shoes','Footwear','Fawn','UK 10',8);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendor_id` int DEFAULT NULL,
  `vendor_city` varchar(30) DEFAULT NULL,
  `vendor_name` varchar(20) NOT NULL,
  `vendor_contact` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Karachi','ahmed laraib','084838074272'),(2,'Lahore','ahmib Ehsan','0842346272'),(3,'Hyderabad','Abbas Ehsan','084123546272');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-05 13:05:03
