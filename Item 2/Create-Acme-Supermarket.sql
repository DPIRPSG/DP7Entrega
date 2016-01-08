-- MySQL dump 10.13  Distrib 5.5.29, for Win64 (x86)
--
-- Host: localhost    Database: Acme-Supermarket
-- ------------------------------------------------------
-- Server version	5.5.29

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_idt4b4u259p6vs4pyr9lax4eg` (`userAccount_id`),
  CONSTRAINT `FK_idt4b4u259p6vs4pyr9lax4eg` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (12,0,'miguel@mail.com','Miguel','666777888','Rodriguez',4);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `tax_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_y11r8do2xw1ulp1q2yap9rki` (`tax_id`),
  CONSTRAINT `FK_y11r8do2xw1ulp1q2yap9rki` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (58,0,'Productos alimenticios','Alimentos',NULL,52),(59,0,'Productos electrónicos','Electrónica',NULL,51),(60,0,'Productos de cosmética','Cosmética',NULL,51),(61,0,'Productos de ropa','Ropa',NULL,51),(62,0,'Productos deportivos','Deporte',NULL,51),(63,0,'Diferentes eventos','Eventos',NULL,53);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clerk`
--

DROP TABLE IF EXISTS `clerk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clerk` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_3krt76f8sy2n51l35bbvy3q6v` (`userAccount_id`),
  CONSTRAINT `FK_3krt76f8sy2n51l35bbvy3q6v` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clerk`
--

LOCK TABLES `clerk` WRITE;
/*!40000 ALTER TABLE `clerk` DISABLE KEYS */;
INSERT INTO `clerk` VALUES (21,0,'carlos@mail.com','Carlos','633449087','Mata',6),(22,0,'ana@mail.com','Ana','633946087','pozo',9),(23,0,'alberto@mail.com','Alberto','633940257','Rodriguez',10);
/*!40000 ALTER TABLE `clerk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `item_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pid7n4yjb555g5ae3jr4r4ena` (`item_id`),
  CONSTRAINT `FK_pid7n4yjb555g5ae3jr4r4ena` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (72,0,5,'Es un gran producto, totalmente recomendado','Turron','manolo_95',64),(73,0,5,'Gran TV','TV','guille_95',65),(74,0,3,'No está mal','Cosmético','ruben_95',66),(75,0,1,'muy malo','Cosmético mujer','manolo_95',66),(76,0,5,'muy buenos','Filetes','Carniceria_pepe',67),(77,0,5,'riquísimos','Filetes de cerdo','guille_95',67),(78,0,4,'muy buenas','Patatas','guille_95',68),(79,0,5,'buena relación calidad-precio','Patatas fritas','manolo_95',68),(80,0,4,'muy ricas','Patatas fritas de acme','ruben_95',68);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consumer`
--

DROP TABLE IF EXISTS `consumer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `userAccount_id` int(11) NOT NULL,
  `shoppingCart_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_41ql6e4jbjt1v5kylbi32vgqr` (`userAccount_id`),
  KEY `FK_j364mtl7dbj70k5wbew9fty2` (`shoppingCart_id`),
  CONSTRAINT `FK_41ql6e4jbjt1v5kylbi32vgqr` FOREIGN KEY (`userAccount_id`) REFERENCES `useraccount` (`id`),
  CONSTRAINT `FK_j364mtl7dbj70k5wbew9fty2` FOREIGN KEY (`shoppingCart_id`) REFERENCES `shoppingcart` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consumer`
--

LOCK TABLES `consumer` WRITE;
/*!40000 ALTER TABLE `consumer` DISABLE KEYS */;
INSERT INTO `consumer` VALUES (13,1,'manolo@mail.com','Manolo','612345789','Lopez',5,14),(15,1,'ruben@mail.com','Ruben','612342289','Sanchez',7,16),(17,1,'guillermo@mail.com','Guillermo','633422897','Alcala',8,18),(19,1,'monica@mail.com','Mónica','626667791','Ordóñez',11,20);
/*!40000 ALTER TABLE `consumer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content`
--

DROP TABLE IF EXISTS `content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `shoppingCart_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6hhao354tfw63yaovc63878p4` (`item_id`),
  KEY `FK_bytjxiqrn0yl87acknmu9aibp` (`shoppingCart_id`),
  CONSTRAINT `FK_6hhao354tfw63yaovc63878p4` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `FK_bytjxiqrn0yl87acknmu9aibp` FOREIGN KEY (`shoppingCart_id`) REFERENCES `shoppingcart` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content`
--

LOCK TABLES `content` WRITE;
/*!40000 ALTER TABLE `content` DISABLE KEYS */;
INSERT INTO `content` VALUES (93,0,2,64,14),(94,0,1,65,16),(95,0,3,66,18),(96,0,3,67,14);
/*!40000 ALTER TABLE `content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customizationinfo`
--

DROP TABLE IF EXISTS `customizationinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customizationinfo` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `welcomeMessage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customizationinfo`
--

LOCK TABLES `customizationinfo` WRITE;
/*!40000 ALTER TABLE `customizationinfo` DISABLE KEYS */;
INSERT INTO `customizationinfo` VALUES (1,0,'Este es el supermercado Acme de Sevilla','https://raw.githubusercontent.com/DPIRPSG/DP6Entrega/master/WorkSpace/Acme-Supermarket/src/main/webapp/images/logo.png','Acme-Supermarket Sevilla','Hola, bienvenido'),(2,0,'Este es el supermercado Acme de Cádiz','http://www.crearempresas.com/proyectos14/cartek/ideas/carrito.png','Acme-Supermarket Cádiz','Hola, bienvenido'),(3,0,'Este es el supermercado Acme de Madrid','http://comercioelectronicolatam.com/wp-content/uploads/2014/04/carrito-de-compra-e1301501059252.jpg','Acme-Supermarket Madrid','Hola, bienvenido');
/*!40000 ALTER TABLE `customizationinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchangerate`
--

DROP TABLE IF EXISTS `exchangerate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchangerate` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rate` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchangerate`
--

LOCK TABLES `exchangerate` WRITE;
/*!40000 ALTER TABLE `exchangerate` DISABLE KEYS */;
INSERT INTO `exchangerate` VALUES (97,0,'EUR','Euros',1),(98,0,'ESP','Spanish Pesetas',166.386),(99,0,'FRF','French Francs',6.56),(100,0,'ITL','Italian Liras',1936.27),(101,0,'DEM','German Marks',1.96),(102,0,'PTE','Portuguese Escudos',200.48);
/*!40000 ALTER TABLE `exchangerate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folder`
--

DROP TABLE IF EXISTS `folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folder` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `isSystem` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actor_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folder`
--

LOCK TABLES `folder` WRITE;
/*!40000 ALTER TABLE `folder` DISABLE KEYS */;
INSERT INTO `folder` VALUES (25,0,'','InBox',12),(26,0,'','OutBox',12),(27,0,'','TrashBox',12),(28,0,'','InBox',13),(29,0,'','OutBox',13),(30,0,'','TrashBox',13),(31,0,'','InBox',21),(32,0,'','OutBox',21),(33,0,'','TrashBox',21),(34,0,'','InBox',15),(35,0,'','OutBox',15),(36,0,'','TrashBox',15),(37,0,'','InBox',17),(38,0,'','OutBox',17),(39,0,'','TrashBox',17),(40,0,'','InBox',22),(41,0,'','OutBox',22),(42,0,'','TrashBox',22),(43,0,'','InBox',23),(44,0,'','OutBox',23),(45,0,'','TrashBox',23),(46,0,'','InBox',19),(47,0,'','OutBox',19),(48,0,'','TrashBox',19),(49,0,'\0','Importantes',15),(50,0,'\0','Importantes',19);
/*!40000 ALTER TABLE `folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folder_message`
--

DROP TABLE IF EXISTS `folder_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folder_message` (
  `folders_id` int(11) NOT NULL,
  `messages_id` int(11) NOT NULL,
  KEY `FK_5nh3mwey9bw25ansh2thcbcdh` (`messages_id`),
  KEY `FK_o1e2m8i8khapsgpd6jg28dr7e` (`folders_id`),
  CONSTRAINT `FK_5nh3mwey9bw25ansh2thcbcdh` FOREIGN KEY (`messages_id`) REFERENCES `message` (`id`),
  CONSTRAINT `FK_o1e2m8i8khapsgpd6jg28dr7e` FOREIGN KEY (`folders_id`) REFERENCES `folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folder_message`
--

LOCK TABLES `folder_message` WRITE;
/*!40000 ALTER TABLE `folder_message` DISABLE KEYS */;
INSERT INTO `folder_message` VALUES (26,24),(28,24),(31,24),(34,24),(39,24),(40,24),(43,24),(46,24),(49,24);
/*!40000 ALTER TABLE `folder_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('DomainEntity',1);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7xexxh2w1p2vtor1m3geapm0u` (`sku`),
  KEY `FK_59pwuale7q0ni8w5wtq0i0sp9` (`category_id`),
  CONSTRAINT `FK_59pwuale7q0ni8w5wtq0i0sp9` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (64,0,'\0','se acerca la navidad, compra el mejor turron de chocolate','Turrón de chocolate','http://www.misthermorecetas.com/wp-content/uploads/2013/01/turron_chocolate_crujiente11.jpg',1.99,'AB-H6GH',58),(65,0,'\0','El mejor televisor para las mejores series','Televisor','http://i.kinja-img.com/gawker-media/image/upload/lwg7g1pdr3azlrd4vfqo.png',699.99,'CJ-C8JW',59),(66,0,'\0','Colonia de mujer','Colonia','http://i.anuxi.ec/i-a/Dyne-32.jpg',10.9,'9G-H58D',60),(67,0,'\0','Filete bueno y barato','Filete de cerdo','http://azu1.facilisimo.com/ima/i/1/8/3b/am_79224_4508052_81641.jpg',3.5,'Vl-3H95',58),(68,0,'','Las mejores patatas','Patatas fritas',NULL,0.99,'01-MN7Y',58),(69,0,'\0','Los mejores tomates','Tomates',NULL,0.2,'HA-HAAA',58),(70,0,'\0','Las mejores lechugas','Lechugas',NULL,0.1,'BS-1212',58),(71,0,'\0','La mejor tablet del mercado','Tablet','http://www6.pcmag.com/media/images/402617-surface-pro-4.jpg',100,'OH-GO0D',59);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_tags`
--

DROP TABLE IF EXISTS `item_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_tags` (
  `Item_id` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  KEY `FK_a7nrqjrkiudooer7mlpk1dh1x` (`Item_id`),
  CONSTRAINT `FK_a7nrqjrkiudooer7mlpk1dh1x` FOREIGN KEY (`Item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_tags`
--

LOCK TABLES `item_tags` WRITE;
/*!40000 ALTER TABLE `item_tags` DISABLE KEYS */;
INSERT INTO `item_tags` VALUES (64,'Dulce'),(64,'Turron'),(64,'Chocolate'),(65,'TV'),(65,'Full-HD'),(65,'Smart-TV'),(66,'Colonia'),(67,'Filete'),(67,'Cerdo'),(67,'Carne'),(68,'Patatas'),(68,'Fritas'),(69,'Tomates'),(69,'Verduras'),(69,'Frescos'),(70,'Lechugas'),(70,'Verduras'),(70,'Frescas'),(71,'Tablet'),(71,'Buena'),(71,'Electronica');
/*!40000 ALTER TABLE `item_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `moment` datetime DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (24,0,'Registrado con exito, bienvenido a Acme-Supermarket','2015-10-13 22:15:00','Bienvenido',12);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_actor`
--

DROP TABLE IF EXISTS `message_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message_actor` (
  `received_id` int(11) NOT NULL,
  `recipients_id` int(11) NOT NULL,
  KEY `FK_s15b8cpmjbq3qqa55fool5tp7` (`received_id`),
  CONSTRAINT `FK_s15b8cpmjbq3qqa55fool5tp7` FOREIGN KEY (`received_id`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_actor`
--

LOCK TABLES `message_actor` WRITE;
/*!40000 ALTER TABLE `message_actor` DISABLE KEYS */;
INSERT INTO `message_actor` VALUES (24,13),(24,15),(24,17),(24,19),(24,21),(24,22),(24,23);
/*!40000 ALTER TABLE `message_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nameCategory` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `tax` double NOT NULL,
  `units` int(11) NOT NULL,
  `unitsServed` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_6cxptya5vldowhtfdxs70ytw1` (`order_id`),
  CONSTRAINT `FK_6cxptya5vldowhtfdxs70ytw1` FOREIGN KEY (`order_id`) REFERENCES `ordertable` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem`
--

LOCK TABLES `orderitem` WRITE;
/*!40000 ALTER TABLE `orderitem` DISABLE KEYS */;
INSERT INTO `orderitem` VALUES (116,0,'\0','se acerca la navidad, compra el mejor turron de chocolate','Turrón de chocolate','alimentos',NULL,1.99,'AB-H6GH',4,2,0,103),(117,0,'\0','El mejor televisor para las mejores series','Televisor','electronica',NULL,699.99,'CJ-C8JW',21,1,1,104),(118,0,'\0','Colonia de mujer','Colonia','cosmética',NULL,10.9,'9G-H58D',21,3,0,105),(119,0,'\0','Filete bueno y barato','Filete de cerdo','alimentos',NULL,3.5,'Vl-3H95',4,3,0,106),(120,0,'\0','El mejor televisor para las mejores series','Televisor','electronica',NULL,699.99,'CJ-C8JW',21,1,0,107),(121,0,'\0','se acerca la navidad, compra el mejor turron de chocolate','Turrón de chocolate','alimentos',NULL,1.99,'AB-H6GH',4,5,5,108),(122,0,'\0','Colonia de mujer','Colonia','cosmética',NULL,10.9,'9G-H58D',21,2,2,109),(123,0,'\0','Filete bueno y barato','Filete de cerdo','alimentos',NULL,3.5,'Vl-3H95',4,1,1,110),(124,0,'\0','se acerca la navidad, compra el mejor turron de chocolate','Turrón de chocolate','alimentos',NULL,1.99,'AB-H6GH',4,5,5,111),(125,0,'\0','se acerca la navidad, compra el mejor turron de chocolate','Turrón de chocolate','alimentos',NULL,1.99,'AB-H6GH',4,5,0,112),(126,0,'\0','se acerca la navidad, compra el mejor turron de chocolate','Turrón de chocolate','alimentos',NULL,1.99,'AB-H6GH',4,2,0,113),(127,0,'\0','se acerca la navidad, compra el mejor turron de chocolate','Turrón de chocolate','alimentos',NULL,1.99,'AB-H6GH',4,2,0,114),(128,0,'\0','El mejor televisor para las mejores series','Televisor','electronica',NULL,699.99,'CJ-C8JW',21,1,0,115),(129,0,'\0','se acerca la navidad, compra el mejor turron de chocolate','Turrón de chocolate','alimentos',NULL,1.99,'AB-H6GH',4,1,0,115);
/*!40000 ALTER TABLE `orderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitem_tags`
--

DROP TABLE IF EXISTS `orderitem_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitem_tags` (
  `OrderItem_id` int(11) NOT NULL,
  `tags` varchar(255) DEFAULT NULL,
  KEY `FK_bawrt5rvh6kgfadomya08c5aw` (`OrderItem_id`),
  CONSTRAINT `FK_bawrt5rvh6kgfadomya08c5aw` FOREIGN KEY (`OrderItem_id`) REFERENCES `orderitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitem_tags`
--

LOCK TABLES `orderitem_tags` WRITE;
/*!40000 ALTER TABLE `orderitem_tags` DISABLE KEYS */;
INSERT INTO `orderitem_tags` VALUES (116,'Dulce'),(116,'Turron'),(116,'Chocolate'),(117,'TV'),(117,'Full-HD'),(117,'Smart-TV'),(118,'Colonia'),(119,'Filete'),(119,'Cerdo'),(119,'Carne'),(120,'TV'),(120,'Full-HD'),(120,'Smart-TV'),(121,'Dulce'),(121,'Turron'),(121,'Chocolate'),(122,'Colonia'),(123,'Filete'),(123,'Cerdo'),(123,'Carne'),(124,'Dulce'),(124,'Turron'),(124,'Chocolate'),(125,'Dulce'),(125,'Turron'),(125,'Chocolate'),(126,'Dulce'),(126,'Turron'),(126,'Chocolate'),(127,'Dulce'),(127,'Turron'),(127,'Chocolate'),(128,'TV'),(128,'Full-HD'),(128,'Smart-TV'),(129,'Dulce'),(129,'Turron'),(129,'Chocolate');
/*!40000 ALTER TABLE `orderitem_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordertable`
--

DROP TABLE IF EXISTS `ordertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordertable` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `amount` double NOT NULL,
  `cancelMoment` datetime DEFAULT NULL,
  `brandName` varchar(255) DEFAULT NULL,
  `cvvCode` int(11) NOT NULL,
  `expirationMonth` int(11) NOT NULL,
  `expirationYear` int(11) NOT NULL,
  `holderName` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `deliveryMoment` datetime DEFAULT NULL,
  `placementMoment` datetime DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `clerk_id` int(11) DEFAULT NULL,
  `consumer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_km5nmc6590t36niw6f1qoshqq` (`ticker`),
  KEY `FK_noa2gil8gqploje1je8di7yis` (`clerk_id`),
  KEY `FK_bh4h051cfwtvw9sy6kwek7aqk` (`consumer_id`),
  CONSTRAINT `FK_bh4h051cfwtvw9sy6kwek7aqk` FOREIGN KEY (`consumer_id`) REFERENCES `consumer` (`id`),
  CONSTRAINT `FK_noa2gil8gqploje1je8di7yis` FOREIGN KEY (`clerk_id`) REFERENCES `clerk` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordertable`
--

LOCK TABLES `ordertable` WRITE;
/*!40000 ALTER TABLE `ordertable` DISABLE KEYS */;
INSERT INTO `ordertable` VALUES (103,0,'calle Zaragoza nº8',3.98,NULL,'visa',267,7,2016,'Manolo','4143672806408593',NULL,'2015-11-01 09:15:00','123456-FH8J',21,13),(104,0,'calle Sevilla nº8',699.99,NULL,'visa',639,12,2015,'Ruben','4014226416609441','2015-11-29 10:00:00','2015-11-28 17:55:00','654321-FH8J',22,15),(105,0,'calle Cádiz nº8',32.7,'2015-12-01 09:45:00','visa',143,2,2016,'Guillermo','4019547713317569',NULL,'2015-11-01 06:55:00','654721-FPKJ',23,17),(106,0,'calle Sevilla nº8',10.5,'2015-12-28 19:45:00','visa',639,12,2015,'Ruben','4014226416609441',NULL,'2015-10-27 17:55:00','854911-LH8J',22,15),(107,0,'calle Cádiz nº8',699.99,'2015-05-29 19:45:00','visa',143,2,2016,'Guillermo','4019547713317569',NULL,'2015-05-24 17:55:00','694721-ABCD',21,17),(108,0,'calle Cádiz nº8',9.95,NULL,'visa',143,2,2016,'Guillermo','4019547713317569','2015-05-25 19:45:00','2015-05-20 17:55:00','694721-AHCD',22,17),(109,0,'calle Sevilla nº8',21.8,NULL,'visa',639,12,2015,'Ruben','4014226416609441','2015-09-29 10:00:00','2015-09-26 17:55:00','654321-018J',23,15),(110,0,'calle Afrodita nº2',3.5,NULL,'visa',683,9,2016,'Monica','4794199409160431','2015-09-19 10:00:00','2015-09-16 18:55:00','654748-Q9DJ',21,19),(111,0,'calle Afrodita nº2',9.95,NULL,'visa',683,9,2016,'Monica','4794199409160431','2015-09-22 10:00:00','2015-09-21 18:55:00','108748-Q9F4',22,19),(112,0,'calle Afrodita nº2',9.95,NULL,'visa',683,9,2016,'Monica','4794199409160431',NULL,'2015-11-12 17:55:00','112348-KDL8',NULL,19),(113,0,'calle Afrodita nº2',9.95,'2015-12-06 18:00:00','visa',683,9,2016,'Monica','4794199409160431',NULL,'2015-12-04 17:55:00','112221-K5L8',NULL,19),(114,0,'calle Afrodita nº2',9.95,'2015-12-16 18:00:00','visa',683,9,2016,'Monica','4794199409160431',NULL,'2015-12-14 11:55:00','112000-K5L8',NULL,19),(115,0,'calle Afrodita nº2',701.98,NULL,'visa',267,7,2016,'Manolo','4143672806408593',NULL,'2015-12-13 11:55:00','110000-K5L8',NULL,13);
/*!40000 ALTER TABLE `ordertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcart` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `consumer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_k9kcolgufrm1i7r15y3dll3hk` (`consumer_id`),
  CONSTRAINT `FK_k9kcolgufrm1i7r15y3dll3hk` FOREIGN KEY (`consumer_id`) REFERENCES `consumer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
INSERT INTO `shoppingcart` VALUES (14,0,13),(16,0,15),(18,0,17),(20,0,19);
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart_comments`
--

DROP TABLE IF EXISTS `shoppingcart_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcart_comments` (
  `ShoppingCart_id` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  KEY `FK_rwpdkk90eckic3tldt2pyeoh4` (`ShoppingCart_id`),
  CONSTRAINT `FK_rwpdkk90eckic3tldt2pyeoh4` FOREIGN KEY (`ShoppingCart_id`) REFERENCES `shoppingcart` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart_comments`
--

LOCK TABLES `shoppingcart_comments` WRITE;
/*!40000 ALTER TABLE `shoppingcart_comments` DISABLE KEYS */;
INSERT INTO `shoppingcart_comments` VALUES (14,'Muy buen carrito'),(16,'Me gusta'),(18,'Muy bueno'),(20,'Gran carrito');
/*!40000 ALTER TABLE `shoppingcart_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `units` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `wareHouse_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_g45nxkigd6qqgf3es3ixotx7x` (`item_id`),
  KEY `FK_iirn6xgeukf9oikeo534pvnb5` (`wareHouse_id`),
  CONSTRAINT `FK_g45nxkigd6qqgf3es3ixotx7x` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `FK_iirn6xgeukf9oikeo534pvnb5` FOREIGN KEY (`wareHouse_id`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` VALUES (88,0,10,64,81),(89,0,5,65,81),(90,0,10,66,81),(91,0,10,67,81),(92,0,4,64,82);
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax`
--

LOCK TABLES `tax` WRITE;
/*!40000 ALTER TABLE `tax` DISABLE KEYS */;
INSERT INTO `tax` VALUES (51,0,'Tasa general',21),(52,0,'Tasa comida',4),(53,0,'Tasa cultural',21),(54,0,'Tasa reducida',10),(55,0,'Tasa oferta',1),(56,0,'Tasa de lujo',40),(57,0,'Tasa rebajas',15);
/*!40000 ALTER TABLE `tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount`
--

DROP TABLE IF EXISTS `useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccount` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_csivo9yqa08nrbkog71ycilh5` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount`
--

LOCK TABLES `useraccount` WRITE;
/*!40000 ALTER TABLE `useraccount` DISABLE KEYS */;
INSERT INTO `useraccount` VALUES (4,0,'21232f297a57a5a743894a0e4a801fc3','admin'),(5,0,'4ee9c60cc32e6615c3c45dc6822c45de','consumer1'),(6,0,'72121c039f48bb6241c94332cadc945e','clerk1'),(7,0,'4ca80127919a65aace84bc96346c5bc4','consumer2'),(8,0,'8be8dff8f3a089b30b5e97f00a04cb71','consumer3'),(9,0,'331c8a338939ee7853c1e66182673242','clerk2'),(10,0,'23aadaa3f6c8129b729beacc6f87330c','clerk3'),(11,0,'e397705af838b414380b125b7ae1979f','consumer4');
/*!40000 ALTER TABLE `useraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useraccount_authorities`
--

DROP TABLE IF EXISTS `useraccount_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useraccount_authorities` (
  `UserAccount_id` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  KEY `FK_b63ua47r0u1m7ccc9lte2ui4r` (`UserAccount_id`),
  CONSTRAINT `FK_b63ua47r0u1m7ccc9lte2ui4r` FOREIGN KEY (`UserAccount_id`) REFERENCES `useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useraccount_authorities`
--

LOCK TABLES `useraccount_authorities` WRITE;
/*!40000 ALTER TABLE `useraccount_authorities` DISABLE KEYS */;
INSERT INTO `useraccount_authorities` VALUES (4,'ADMIN'),(5,'CONSUMER'),(6,'CLERK'),(7,'CONSUMER'),(8,'CONSUMER'),(9,'CLERK'),(10,'CLERK'),(11,'CONSUMER');
/*!40000 ALTER TABLE `useraccount_authorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (81,0,'Cartuja s/n','Almacén Cartuja'),(82,0,'Dos Hermanas s/n','Almacén Dos Hermanas'),(83,0,'Cádiz s/n','Almacén Cádiz'),(84,0,'Triana s/n','Almacén Triana'),(85,0,'Bellavista s/n','Almacén Bellavista'),(86,0,'Jerez s/n','Almacén Jerez'),(87,0,'Nervión s/n','Almacén Nervión');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-08 16:17:32
