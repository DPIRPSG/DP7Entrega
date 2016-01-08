start transaction;

create database 'Acme-Supermarket';

use 'Acme-Supermarket';

create user 'acme-user'@'%' identified by password '*4F10007AADA9EE3DBB2CC36575DFC6F4FDE27577';

create user 'acme-manager'@'%' identified by password '*FDB8CD304EB2317D10C95D797A4BD7492560F55F';

grant select, insert, update, delete on `Sample`.* to 'acme-user'@'%';

grant select, insert, update, delete, create, drop, references, index, alter, create temporary tables, lock tables, create view, create routine, alter routine, execute, trigger, show view on `Sample`.* to 'acme-manager'@'%';

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
INSERT INTO `folder` VALUES (25,0,'','InBox',12),(26,0,'','OutBox',12),(27,0,'','TrashBox',12);
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
INSERT INTO `useraccount` VALUES (4,0,'21232f297a57a5a743894a0e4a801fc3','admin');
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
INSERT INTO `useraccount_authorities` VALUES (4,'ADMIN');
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

commit;