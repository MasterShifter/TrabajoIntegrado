CREATE DATABASE  IF NOT EXISTS `bd_planizator` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bd_planizator`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_planizator
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `confirmuser`
--

DROP TABLE IF EXISTS `confirmuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confirmuser` (
  `idConfirmUser` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `uuid` varchar(45) NOT NULL,
  PRIMARY KEY (`idConfirmUser`),
  KEY `fk_cu_idUser_idx` (`idUser`),
  CONSTRAINT `fk_cu_idUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confirmuser`
--

LOCK TABLES `confirmuser` WRITE;
/*!40000 ALTER TABLE `confirmuser` DISABLE KEYS */;
INSERT INTO `confirmuser` VALUES (1,1,'abcdefg'),(2,2,'qwerty'),(3,6,'9e72e1f7-bf73-4b66-bbc0-5bafa892783c');
/*!40000 ALTER TABLE `confirmuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `idEvent` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `photo` mediumblob,
  `ageLimitUpTo` tinyint(4) DEFAULT NULL,
  `ageLimitDownTo` tinyint(4) DEFAULT NULL,
  `createdBy_idUser` int(11) DEFAULT NULL,
  `dateCreated` date DEFAULT NULL,
  PRIMARY KEY (`idEvent`),
  KEY `fk_eve_idUser_idx` (`createdBy_idUser`),
  CONSTRAINT `fk_eve_idUser` FOREIGN KEY (`createdBy_idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'¬°Bienvenidos a Planizator!','Est√° web es un lugar donde tus sue√±os se har√°n realidad, adentro m√∫sicaaaaa relaeeeehueaheuheuheu agygaey gaeyeage fatfsa  f5afs5afs5as gaysgas a5fs5afs ha7sha7hs fgsa5sfa5s ha7h7 gf56 h7h fs5afs5afsa5fs5ah7  ha7shagsa6 jduwhdwu hwdywgd ywdgd twfadtf hd7whd7 wha7wd7 w7hdw7hd7wh dwh7dwh7 wdwddwh77 dwdwh7 dhw7dh7w dwh7dawuhdhwa hdwauhdauw w7yd7w hgwgdwydg yw7dyw7d hw7dhw7dhw7h hdw7ydw7',NULL,'2017-05-26',NULL,NULL,NULL,1,NULL),(2,'Quedada 2','Esta es la quedada 2 que como bien sabeis es una quedada destinada a la destinacion de quedadas','En el centro de la capital','2017-03-26',NULL,18,25,1,NULL);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventhasinterests`
--

DROP TABLE IF EXISTS `eventhasinterests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventhasinterests` (
  `idEventHasInterests` int(11) NOT NULL,
  `idEvent` int(11) NOT NULL,
  `idInterest` int(11) NOT NULL,
  PRIMARY KEY (`idEventHasInterests`),
  KEY `fk_ehi_event_idx` (`idEvent`),
  KEY `fk_ehi_interest_idx` (`idInterest`),
  CONSTRAINT `fk_ehi_event` FOREIGN KEY (`idEvent`) REFERENCES `event` (`idEvent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ehi_interest` FOREIGN KEY (`idInterest`) REFERENCES `interest` (`idInterest`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventhasinterests`
--

LOCK TABLES `eventhasinterests` WRITE;
/*!40000 ALTER TABLE `eventhasinterests` DISABLE KEYS */;
INSERT INTO `eventhasinterests` VALUES (1,1,1),(2,2,2),(3,1,3),(4,1,7),(5,2,8);
/*!40000 ALTER TABLE `eventhasinterests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interest` (
  `idInterest` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`idInterest`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest`
--

LOCK TABLES `interest` WRITE;
/*!40000 ALTER TABLE `interest` DISABLE KEYS */;
INSERT INTO `interest` VALUES (1,'General'),(2,'Amistad'),(3,'Gente Joven'),(4,'Padres y madres solteros'),(5,'Senderismo'),(6,'Barbacoa'),(7,'Excursiones'),(8,'Tomar algo');
/*!40000 ALTER TABLE `interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `idMessage` int(11) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `sendedBy_idUser` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `viewed` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`idMessage`),
  KEY `fk_mes_sendBy_idx` (`sendedBy_idUser`),
  CONSTRAINT `fk_mes_sendBy` FOREIGN KEY (`sendedBy_idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `idRole` tinyint(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`idRole`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'superadmin','Tiene poder para hacer cualquier cosa.'),(2,'moderador','Puede borrar eventos y editar informaci√≥n de usuarios.'),(3,'usuario','Puede hacer y unirse a planes.'),(4,'invitado','De momento no puede hacer nada pero puede ser implementado en el futuro.');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(45) NOT NULL,
  `password` varbinary(200) NOT NULL,
  `email` varchar(150) NOT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `idRole` tinyint(10) NOT NULL DEFAULT '3',
  `roleSetBy_idUser` int(11) DEFAULT '1',
  `loggued` tinyint(1) DEFAULT '0',
  `name` varchar(30) DEFAULT NULL,
  `surname` varchar(60) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `photo` mediumblob,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `nickname_UNIQUE` (`nickname`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_use_idRoleSetBy_idx` (`roleSetBy_idUser`),
  KEY `fk_use_idRole_idx` (`idRole`),
  CONSTRAINT `fk_use_idRole` FOREIGN KEY (`idRole`) REFERENCES `role` (`idRole`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_use_roleSetBy_idUser` FOREIGN KEY (`roleSetBy_idUser`) REFERENCES `user` (`idUser`) ON DELETE SET NULL ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'superadmin','\∆\‡	\∆ƒ¥\ƒ*rù\‡zÑi','themastershifter@gmail.com','2017-03-28 02:21:15',1,1,0,'Jos√© Mar√≠a','Aparicio','1994-12-21',NULL),(2,'moderador','\∆\‡	\∆ƒ¥\ƒ*rù\‡zÑi','moderador@fake.com','2017-03-28 02:21:15',2,1,0,'Moderador',NULL,NULL,NULL),(3,'usuario','\∆\‡	\∆ƒ¥\ƒ*rù\‡zÑi','usuario@fake.com','2017-03-28 02:21:15',3,1,0,'Usuario',NULL,NULL,NULL),(4,'Prueba1','˛€Ä™w°-z8ƒßS}*','k@k.com','2017-03-28 02:38:23',3,1,0,'Prueba1','Apellidos1','2009-01-01',NULL),(6,'prueba2','˛€Ä™w°-z8ƒßS}*','a@gmail.com','2017-04-02 19:29:43',3,1,0,'Nombre','Apellidos1','1999-01-16',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userhasevents`
--

DROP TABLE IF EXISTS `userhasevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userhasevents` (
  `idUserHasEvents` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `idEvent` int(11) NOT NULL,
  `dateJoined` date NOT NULL,
  PRIMARY KEY (`idUserHasEvents`),
  KEY `fk_uhe_idUser_idx` (`idUser`),
  KEY `fk_uhe_idEvent_idx` (`idEvent`),
  CONSTRAINT `fk_uhe_idEvent` FOREIGN KEY (`idEvent`) REFERENCES `event` (`idEvent`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_uhe_idUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userhasevents`
--

LOCK TABLES `userhasevents` WRITE;
/*!40000 ALTER TABLE `userhasevents` DISABLE KEYS */;
INSERT INTO `userhasevents` VALUES (1,1,1,'2017-01-01'),(2,1,2,'2017-02-02'),(3,2,1,'2017-03-03'),(4,3,1,'2017-04-04'),(5,3,2,'2017-05-05');
/*!40000 ALTER TABLE `userhasevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userhasmessages`
--

DROP TABLE IF EXISTS `userhasmessages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userhasmessages` (
  `idUserHasMessages` int(11) NOT NULL AUTO_INCREMENT,
  `SendedTo_idUser` int(11) NOT NULL,
  `idMessage` int(11) NOT NULL,
  PRIMARY KEY (`idUserHasMessages`),
  KEY `fk_uhm_user_idx` (`SendedTo_idUser`),
  KEY `fk_uhm_message_idx` (`idMessage`),
  CONSTRAINT `fk_uhm_message` FOREIGN KEY (`idMessage`) REFERENCES `message` (`idMessage`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_uhm_user` FOREIGN KEY (`SendedTo_idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userhasmessages`
--

LOCK TABLES `userhasmessages` WRITE;
/*!40000 ALTER TABLE `userhasmessages` DISABLE KEYS */;
/*!40000 ALTER TABLE `userhasmessages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usershasinterests`
--

DROP TABLE IF EXISTS `usershasinterests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usershasinterests` (
  `idUsersHasInterests` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `idInterest` int(11) NOT NULL,
  PRIMARY KEY (`idUsersHasInterests`),
  KEY `fk_uhi_user_idx` (`idUser`),
  KEY `fk_uhi_interest_idx` (`idInterest`),
  CONSTRAINT `fk_uhi_interest` FOREIGN KEY (`idInterest`) REFERENCES `interest` (`idInterest`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_uhi_user` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usershasinterests`
--

LOCK TABLES `usershasinterests` WRITE;
/*!40000 ALTER TABLE `usershasinterests` DISABLE KEYS */;
INSERT INTO `usershasinterests` VALUES (1,1,1),(2,2,2),(3,3,3);
/*!40000 ALTER TABLE `usershasinterests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-14  2:56:22
