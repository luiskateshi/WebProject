-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: obs_db
-- ------------------------------------------------------
-- Server version	8.2.0

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
                         `name` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                         `pass` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                         PRIMARY KEY (`name`,`pass`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','f865b53623b121fd34ee5426c792e5c33af8c227');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
                         `book_isbn` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                         `book_title` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
                         `book_author` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
                         `book_image` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
                         `book_descr` text CHARACTER SET latin1 COLLATE latin1_general_ci,
                         `book_price` decimal(6,2) NOT NULL,
                         `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
                         PRIMARY KEY (`book_isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('64568','Darka e Gabuar','Ismail Kadare','darka_e_gabuar.jpg','Një darkë krejtësisht e pazakontë, me një mister midis, është subjekti i romanit më të ri të Kadaresë. Ndonëse e bazuar mbi një ngjarje të vërtetë, që ka trazuar vite më parë një qytet të tërë.',1000.00,'2022-06-21 16:44:25'),('978-0-321-94786-4','Pallati i Endrrave','Ismail Kadare','pallati_i_endrrave.jpg','\"Pallati i Ëndrrave\" është një nga romanet thelbësore të Ismail Kadaresë, me frymën e epikës, të cilën letërsia evropiane e quante të shteruar: me njëmbëdhjetë romane, - titujt kryesorë të të cilëve po përkthehen herë pas here, vepra e tij vazhdimisht ka qenë në listën e kandidaturave për çmimin \"Nobel\", në emër të letërsisë së Shqipërisë.',1000.00,'2022-06-21 16:44:25'),('978-0-7303-1484-4','Historia e Skenderbeut','Marin Barleti','historia_e_skenderbeut.jpg','\"Historia e Skënderbeut\", e shkruar në latinisht nga Marin Barleti, prift shkodran, u botua për herë të parë në Romë rreth viteve 1508 - 1510. Kjo vepër monumentale historike tregon jetën dhe veprën e heroit legjendar të kombit shqiptar, Gjergj Kastriot Skënderbeut.',1000.00,'2022-06-21 16:44:25'),('978-1-118-94924-5','Prilli i thyer','Ismail Kadare','prilli-i-thyer.jpg','Duke lexuar \"Prillin e thyer\" kuptohet lehtësisht përse dhe me çfarë force Ismail Kadare është pasionuar për tragjedinë dhe për dy përfaqësuesit më të shquar të saj, Shekspirin dhe Eskilin.\"Miku, besa dhe gjakmarrja janë rrotat e mekanizmit të tragjedisë antike, dhe të futesh në mekanizmin e tyre është të shikosh mundësinë e tragjedisë.\"',1000.00,'2022-06-21 16:44:25'),('978-1-1180-2669-4','Vargjet e lira','Migjeni','vargjet_e_lira.jpg','Kafshatë që s\'kapërdihet asht, or vlla, mjerimi,kafshatë që të mbetë në fyt edhe të ze trishtimikur she ftyra të zbeta edhe sy të jeshiltaqë të shikojnë si hije dhe shtrijnë duert e mpita edhe ashtu të shtrime mbrapa teje mbesintë tanë jetën e vet derisa të vdesin.',1000.00,'2022-06-21 16:44:25'),('978-1-44937-019-0','Shqipëria - Odiseja e një populli parahelen','Mathieu Aref','shqiperia.jpg','Ky libër do të befasojë shumë lexues. Ai nuk ngurron të ndërmarrë një qëndrim krejt të kundërt ndaj asaj, që me sa duket, është një e vërtetë e ndërtuar.',1000.00,'2022-06-21 16:44:25'),('978-1-44937-075-6','Gjuha e perendive','Aristidh Kola','gjuha_e_perendive.jpg','Dëshmi, legjenda, tradita, fjalë, monumente për pellazgët kemi që nga Gadishulli Iberik deri në Indi, kurse jo për Indoevropianët. Teoria Indoevropiane është pjellë e fantazisë shkencore, që u mbështet në bashkësinë e rrënjëve gjuhësore që nga Evropa e gjer në Indi. Ndërkohë që kjo bashkësi shpjegohet fare mirë me teorinë pellazgjike.',1000.00,'2022-06-21 16:44:25'),('978-1-4571-0402-2','Gjuetari i balonave','Khaled Hosseini','gjuetari.jpg','I shkëlqyer, fabula tronditëse e të cilit e bën këtë libër të paharrueshëm jo vetëm si një kronikë politike, por edhe si një rrëfenjë të thellë personale... Ndodh rrallë që një libër t\'i përshtatet kaq shumë kohësh dhe njëkohësisht të ketë cilësi kaq të lartë letrare.',1000.00,'2022-06-21 16:44:25'),('978-1-484216-40-8','Arti për të fituar miq dhe pushtet','Dale Carnegie','arti.jpg','Në këtë libër, ju do të mësoni se nëpërmjet një komunikimi të frytshëm në jetën e përditshme, do të keni sukses në biznes apo politikë, në mësimdhënie apo sipërmarrje, në një marrëdhënie intime apo familjare.',1000.00,'2022-06-21 16:44:25'),('978-1-484217-26-9','Keshtjella','Ismail Kadare','keshtjella.jpg','Në romanin \"Kështjella\" Ismail Kadare kthen sytë nga mesjeta shqiptare. Në dukje i distancuar dhe i paanshëm, ai rrok veprimet për rrethimin e një kështjelle shqiptare nga një ushtri turke prej shtatëdhjetë mijë vetash në formën e një romani historik.',1000.00,'2022-06-21 16:44:25');
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
                             `customerid` int unsigned NOT NULL AUTO_INCREMENT,
                             `name` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                             `address` varchar(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                             `city` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                             `zip_code` varchar(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                             `country` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                             PRIMARY KEY (`customerid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
                               `orderid` int unsigned NOT NULL,
                               `book_isbn` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                               `item_price` decimal(6,2) NOT NULL,
                               `quantity` tinyint unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,'978-1-118-94924-5',20.00,1),(1,'978-1-44937-019-0',20.00,1),(1,'978-1-49192-706-9',20.00,1),(2,'978-1-118-94924-5',20.00,1),(2,'978-1-44937-019-0',20.00,1),(2,'978-1-49192-706-9',20.00,1),(3,'978-0-321-94786-4',20.00,1),(1,'978-1-49192-706-9',20.00,1),(5,'978-1-4571-0402-2',20.00,2),(5,'978-1-44937-075-6',20.00,1),(5,'978-0-321-94786-4',20.00,1),(6,'978-1-4571-0402-2',20.00,10),(6,'978-1-44937-075-6',20.00,1),(7,'978-0-7303-1484-4',20.00,1),(8,'978-1-1180-2669-4',20.00,1),(9,'978-1-44937-019-0',20.00,4);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
                          `orderid` int unsigned NOT NULL AUTO_INCREMENT,
                          `customerid` int unsigned NOT NULL,
                          `amount` decimal(6,2) DEFAULT NULL,
                          `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
                          `ship_name` char(60) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                          `ship_address` char(80) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                          `ship_city` char(30) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                          `ship_zip_code` char(10) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                          `ship_country` char(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
                          PRIMARY KEY (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-14 17:19:56
