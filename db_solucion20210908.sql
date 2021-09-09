-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_solucion
-- ------------------------------------------------------
-- Server version	5.7.30-log

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
-- Table structure for table `so_apartamento`
--

DROP TABLE IF EXISTS `so_apartamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_apartamento` (
  `a_idApartamento` int(11) NOT NULL AUTO_INCREMENT,
  `a_apartamento` varchar(50) DEFAULT NULL,
  `a_estado` varchar(50) DEFAULT NULL,
  `a_contador` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`a_idApartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_apartamento`
--

LOCK TABLES `so_apartamento` WRITE;
/*!40000 ALTER TABLE `so_apartamento` DISABLE KEYS */;
INSERT INTO `so_apartamento` VALUES (1,'A11001','OCUPADO','201670335213'),(2,'A11003','OCUPADO','201670335217'),(3,'A11004','OCUPADO','201670335208'),(4,'A11005','OCUPADO','201670335204'),(5,'A11006','OCUPADO','201670335212'),(6,'A11007','OCUPADO','201670335214'),(7,'A11008','OCUPADO','201670335222'),(9,'A11010','OCUPADO','201670335199'),(10,'A11011','OCUPADO','201670335188'),(11,'A11012','OCUPADO','201670335191'),(12,'A11013','OCUPADO','201670335200'),(13,'A11014','OCUPADO','201670335196'),(14,'A11015','OCUPADO','201670335195'),(15,'A11016','OCUPADO','201670335196'),(16,'A11101','OCUPADO','201670335209'),(17,'A11102','OCUPADO','201670335226'),(18,'A11103','OCUPADO','201670335221'),(19,'A11104','OCUPADO','201670335227'),(20,'A11105','OCUPADO','201670335210'),(21,'A11106','OCUPADO','201670335224'),(22,'A11107','OCUPADO','201670335220'),(23,'A11108','OCUPADO','201670335228'),(24,'A11109','OCUPADO','201670335206'),(25,'A11110','OCUPADO','201670335197'),(26,'A11111','OCUPADO','201670335203'),(27,'A11112','OCUPADO','201670335190'),(28,'A11113','OCUPADO','201670330204'),(29,'A11114','OCUPADO','201670335192'),(30,'A11115','OCUPADO','201670335189'),(31,'A11116','OCUPADO','201670335193'),(33,'A11202','OCUPADO','201670335225'),(34,'A11203','OCUPADO','201670335223'),(35,'A11204','OCUPADO','201670335207'),(36,'A11205','OCUPADO','201670335218'),(43,'A1403','OCUPADO','201670335178'),(46,'A1406','OCUPADO','201670339787'),(47,'A1407','OCUPADO','201670335606'),(48,'A1408','OCUPADO','201670335983'),(49,'A1409','OCUPADO','201670335992'),(53,'A1413','OCUPADO','201670341128'),(54,'A1414','OCUPADO','201670341122'),(55,'A1415','OCUPADO','201670336073'),(56,'A1416','OCUPADO','201670336067'),(58,'A1502','OCUPADO','201670335587'),(59,'A1503','OCUPADO','201670335588'),(60,'A1504','OCUPADO','201670335585'),(61,'A1505','OCUPADO','201670335584'),(62,'A1506','OCUPADO','201670335581'),(63,'A1507','OCUPADO','201670335586'),(64,'A1508','OCUPADO','201670335583'),(65,'A1509','OCUPADO','201670335582'),(66,'A1510','OCUPADO','201670336068'),(67,'A1511','OCUPADO','201670335180'),(70,'A1514','OCUPADO','201670336066'),(71,'A1515','OCUPADO','201670336072'),(73,'A1601','OCUPADO','201670335578'),(74,'A1602','OCUPADO','201670335579'),(75,'A1603','OCUPADO','201670335596'),(76,'A1604','OCUPADO','201670335602'),(77,'A1605','OCUPADO','201670335613'),(78,'A1606','OCUPADO','201670335589'),(79,'A1607','OCUPADO','201670335615'),(80,'A1608','OCUPADO','201670335605'),(81,'A1609','OCUPADO','201670335604'),(83,'A1611','OCUPADO','201670336069'),(84,'A1612','OCUPADO','201670335171'),(85,'A1613','OCUPADO','201670336083'),(86,'A1614','OCUPADO','201670336072'),(87,'A1615','OCUPADO','201670336082'),(88,'A1616','OCUPADO','201670336080'),(90,'A1702','OCUPADO','201670335616'),(91,'A1703','OCUPADO','201670335575'),(95,'A1707','OCUPADO','201670335603'),(97,'A1709','OCUPADO','201670335576'),(99,'A1711','OCUPADO','201670336071'),(100,'A1712','OCUPADO','201670336074'),(101,'A1713','OCUPADO','201670335131'),(102,'A1715','OCUPADO','201670336070'),(104,'A1801','OCUPADO','201670335597'),(105,'A1802','OCUPADO','201670335600'),(106,'A1803','OCUPADO','201670335622'),(107,'A1804','OCUPADO','201670335601'),(108,'A1805','OCUPADO','201670335598'),(109,'A1806','OCUPADO','201670335599'),(110,'A1807','OCUPADO','201670335620'),(111,'A1808','OCUPADO','201670335577'),(112,'A1809','OCUPADO','201670335614'),(113,'A1810','OCUPADO','201670335608'),(114,'A1811','OCUPADO','201670335610'),(115,'A1813','OCUPADO','201670335611'),(116,'A1814','OCUPADO','201670335609'),(117,'A1815','OCUPADO','201670336076'),(118,'A1816','OCUPADO','201670335612'),(120,'A1902','OCUPADO','201670335593'),(121,'A1903','OCUPADO','201670335591'),(122,'A1904','OCUPADO','201670335621'),(123,'A1905','OCUPADO','201670335594'),(124,'A1906','OCUPADO','201670335590'),(125,'A1907','OCUPADO','201670335596'),(126,'A1908','OCUPADO','201670335211'),(127,'A1909','OCUPADO','201670335216'),(128,'A1910','OCUPADO','201670335230'),(129,'A1911','OCUPADO','201670335232'),(130,'A1912','OCUPADO','201670335234'),(131,'A1913','OCUPADO','201670335237'),(132,'A1914','OCUPADO','201670335233'),(133,'A1915','OCUPADO','201670335231'),(134,'A1916','OCUPADO','201670335235'),(135,'A2401','DISPONIBLE','201770351018'),(136,'A2402','DISPONIBLE','201770351039'),(137,'A2403','DISPONIBLE','201770351044'),(138,'A2404','DISPONIBLE','201770351047'),(139,'A2405','DISPONIBLE','201770351038'),(140,'A2406','DISPONIBLE','201770351042'),(141,'A2407','DISPONIBLE','201770351029'),(142,'A2408','DISPONIBLE','201770351043'),(143,'A2409','DISPONIBLE','201770351049'),(144,'A2410','DISPONIBLE','201770351041'),(145,'A2411','DISPONIBLE','201770351040'),(146,'A2412','DISPONIBLE','201770351030'),(147,'A2413','DISPONIBLE','201770351046'),(148,'A2414','DISPONIBLE','201770351048'),(149,'A2415','DISPONIBLE','201770351031'),(150,'A2501','DISPONIBLE','201770351023'),(151,'A2502','DISPONIBLE','201770351024'),(152,'A2503','DISPONIBLE','201770351014'),(153,'A2504','DISPONIBLE','201770351027'),(154,'A2505','DISPONIBLE','201770351022'),(155,'A2506','DISPONIBLE','201770351020'),(156,'A2507','DISPONIBLE','201770351017'),(157,'A2508','DISPONIBLE','201770351016'),(158,'A2509','DISPONIBLE','201770351028'),(159,'A2510','DISPONIBLE','201770351015'),(160,'A2511','DISPONIBLE','201770351019'),(161,'A2512','DISPONIBLE','201770351045'),(162,'A2513','DISPONIBLE','201770351026'),(163,'A2514','DISPONIBLE','201770351025'),(164,'A2515','DISPONIBLE','201770351021'),(165,'A2601','DISPONIBLE','201770351033'),(166,'A2602','DISPONIBLE','201770351005'),(167,'A2603','DISPONIBLE','201770351006'),(168,'A2604','DISPONIBLE','201770351007'),(169,'A2605','DISPONIBLE','201770351002'),(170,'A2606','DISPONIBLE','201770351003'),(171,'A2607','DISPONIBLE','201770351001'),(172,'A2608','DISPONIBLE','201770351013'),(173,'A2609','DISPONIBLE','201770351011'),(174,'A2610','DISPONIBLE','201770351012'),(175,'A2611','DISPONIBLE','201770351010'),(176,'A2612','DISPONIBLE','201770351009'),(177,'A2613','DISPONIBLE','201770351008'),(178,'A2614','DISPONIBLE','201770351032'),(179,'A2701','DISPONIBLE','201770351034'),(180,'A2702','DISPONIBLE','201770351004'),(181,'A2703','DISPONIBLE','201770351035'),(182,'A2704','DISPONIBLE','201770351037'),(183,'A2705','DISPONIBLE','201770351036'),(184,'ALS','DISPONIBLE','1850007152'),(185,'AL1','DISPONIBLE','201770354615'),(186,'AL10','DISPONIBLE','201770351849'),(187,'AL2','DISPONIBLE','201770354670'),(188,'AL3','DISPONIBLE','201770354756'),(189,'AL4','DISPONIBLE','201770354610'),(190,'AL5','DISPONIBLE','201770354608'),(191,'AL6','DISPONIBLE','201770354604'),(192,'AL7','DISPONIBLE','201770354614'),(193,'AL8','DISPONIBLE','201770354613'),(194,'AL9','DISPONIBLE','201770354612'),(195,'AL2A','DISPONIBLE','201770354756'),(196,'AL2B','DISPONIBLE','201770354610'),(197,'AB3','DISPONIBLE','201770350286'),(198,'AF1','DISPONIBLE','201770350284'),(199,'AF2','DISPONIBLE','201770350285'),(200,'AAZOTEA','DISPONIBLE','201850065492'),(227,'A901','DISPONIBLE','201770351018'),(228,'A902','DISPONIBLE','123456'),(229,'A904','DISPONIBLE','123456'),(230,'AP151515','OCUPADO','151515'),(231,'BA1111','OCUPADO','201770351044');
/*!40000 ALTER TABLE `so_apartamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_cliente`
--

DROP TABLE IF EXISTS `so_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_cliente` (
  `c_idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `c_nombreCompleto` varchar(100) DEFAULT NULL,
  `c_direccion` varchar(50) DEFAULT NULL,
  `c_nit` varchar(10) DEFAULT NULL,
  `c_estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`c_idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_cliente`
--

LOCK TABLES `so_cliente` WRITE;
/*!40000 ALTER TABLE `so_cliente` DISABLE KEYS */;
INSERT INTO `so_cliente` VALUES (1,'José Rodolfo Barrientos ','','1264974-0',NULL),(2,'Edin Rolando Juárez Sandoval',NULL,'1265962-2',NULL),(3,'Rosa Edelmira Girón Veliz','','1327595-k',NULL),(4,'Tomasa Leonor De león',NULL,'135659-3',NULL),(5,'Ilse Yadira Ojeda Velásquez',NULL,'1490334-2',NULL),(6,'Juan Luis Orantes Orantes',NULL,'163467-4',NULL),(7,'Luis Eduardo Torralba Chiringuello',NULL,'1638649-3',NULL),(8,'Héctor Adolfo Carrillo García',NULL,'1657805-8',NULL),(9,'Compañía Industrial del Atlántico',NULL,'17320-7',NULL),(10,'Francisco Danilo García Ruano',NULL,'1800681-7',NULL),(11,'Francisco José Berdúo Posadas',NULL,'182822-3',NULL),(12,'Luana García/Angel Gaytan',NULL,'1904537-9',NULL),(13,'Luana Gimena García Girón',NULL,'1904537-9',NULL),(14,'Isidro Benjamín Vásquez Ordóñez',NULL,'2108611-7',NULL),(15,'Ricardo Marroquín Ruano',NULL,'2355754-0',NULL),(16,'Víctor Rolando Chávez Vásquez',NULL,'2461741-5',NULL),(17,'Luis Pedro Grajeda Avila',NULL,'2479476-7',NULL),(18,'Daniel Franco Palma',NULL,'2523442-0',NULL),(19,'Ana Rosa Orozco Rubio',NULL,'2536708-0',NULL),(20,'Lissette Aracely Bonilla Tobar',NULL,'290443-8',NULL),(21,'Michael Paul Hermann Morth',NULL,'2906926-2',NULL),(22,'José Alejandro Xitumul Gómez',NULL,'2919502-0',NULL),(23,'Fabiola Verónica González',NULL,'2951964-0',NULL),(24,'Luis Arturo Marroquín León',NULL,'298655-8',NULL),(25,'José Rolando Michicoj',NULL,'3042094-6',NULL),(26,'Alfredo Miguel Blanco España',NULL,'3059554-1',NULL),(27,'Edelmira Bran Véliz',NULL,'3381732-4',NULL),(28,'Eynard Welmar Menéndez Quinteros',NULL,'339661-4',NULL),(29,'Kalts Comunicaciones, S.A.',NULL,'3430100-3',NULL),(30,'Nancy Yazmín Hernández Herrera',NULL,'3758886-9',NULL),(31,'Gilmar Berner Ochoa Guzmán',NULL,'3983083-7',NULL),(32,'Edgar Ranferí Gil Arriola',NULL,'401257-7',NULL),(33,'José Luis Búcaro Chávez',NULL,'4136503-8',NULL),(34,'Mónica María Cifuentes Alonzo',NULL,'4154781-0',NULL),(35,'Gabriel Terraza Molina',NULL,'4209420-8',NULL),(36,'Rosa Amalia Toledo Valdez',NULL,'4481510-4',NULL),(37,'Víctor Manuel Paredes Hernández',NULL,'454113-8',NULL),(38,'Alma Patricia Maldonado Arriola',NULL,'454801-9',NULL),(39,'Leonel Rodríguez Cárcamo',NULL,'4574031-3',NULL),(40,'Carmen Lizeth Barillas Mejía',NULL,'468400-1',NULL),(41,'Mario Roberto Ordóñez Comparini',NULL,'471741-4',NULL),(42,'Morraisa, S.A.',NULL,'4801649-7',NULL),(43,'Marlon Ivan Hernández Herrera',NULL,'485388-1',NULL),(44,'Marta Nineth Estrada Aguilar',NULL,'488546-5',NULL),(45,'Guillermo Leonel Palacios Barillas',NULL,'519835-6',NULL),(46,'Luisa Fernanda Cardenas Aguirre',NULL,'5276534-2',NULL),(47,'LEJAIM, S.A.',NULL,'5302190-8',NULL),(48,'Carlos Manuel Pérez Valdez',NULL,'542509-3',NULL),(49,'Bran Armando Solórzano Cruz',NULL,'546314-9',NULL),(50,'Jean Phillippe Paul Georges',NULL,'5475174-3',NULL),(51,'Aída Elizabeth Rojas Fernández',NULL,'549335-8',NULL),(52,'Mynor Carrera Mejía',NULL,'565223-5',NULL),(53,'Olga Oliva Véliz',NULL,'568529-k',NULL),(54,'Juan Pablo Avendaño Quintana',NULL,'5820343-5',NULL),(55,'Sergio Vinicio Pivaral Leiva',NULL,'586561-1',NULL),(56,'Pablo Juárez Andrino',NULL,'609005-2',NULL),(57,'Diego Armando Tobar Sarceño',NULL,'6149036-9',NULL),(58,'José Angel Del Valle Mendizábal',NULL,'645114-4',NULL),(59,'Luis Felipe Hernández Najarro',NULL,'6505280-3',NULL),(60,'Lesther Esau Mazariegos López',NULL,'6528493-3',NULL),(61,'Wendy Susana García Vásquez',NULL,'6556791-9',NULL),(62,'ROBERTO','','6576963-5',NULL),(63,'Jorge Estuardo Reyes del Cid',NULL,'662112-0',NULL),(64,'Pablo Alberto Fuentes Miranda',NULL,'6741909-7',NULL),(65,'Alan Ivan de Jesús del Cid Higueros',NULL,'6752468-0',NULL),(66,'Mario Estuardo Rodríguez Morales',NULL,'679002-k',NULL),(67,'Luis Gabriel Catalán',NULL,'6849346-0',NULL),(68,'Oscar Estuardo de la Mora Hernández',NULL,'6883844-8',NULL),(69,'Haroldo José Cabrera Mancio /Hacama',NULL,'7102336-4',NULL),(70,'Nestor Rolando Pérez Santos',NULL,'717403-9',NULL),(71,'Rosselyn Margarita Salazar de León',NULL,'7228916-3',NULL),(72,'Luis Fernando Búcaro Chávez',NULL,'7231691-8',NULL),(73,'JOSE PAREDES','','732012-4',NULL),(74,'Luis Emilio Morales Ortíz',NULL,'7642506-1',NULL),(75,'Héctor Rogelio Sandoval Ramírez',NULL,'769598-5',NULL),(76,'Jorge Alberto Godoy Maza',NULL,'7818627-7',NULL),(77,'Ana Lucía Montenegro Girón /Grupo Sode, S.A.',NULL,'7846041-7',NULL),(78,'Heriberto Arriaga Fión',NULL,'805954-3',NULL),(79,'Javier Ortega Abascal',NULL,'8196506-0',NULL),(80,'Gabriel Orellana Zabalza','','837398-1',NULL),(81,'Joaquín Rodrigo Cordero Crespo',NULL,'844365-3',NULL),(82,'Alfieri José Avilan Rangel',NULL,'8665199-4',NULL),(83,'Trece Cielos, S.A./Carlos Azmitia',NULL,'8732567-5',NULL),(84,'Jack Sanc, S.A. /Carlos Azmitia',NULL,'9366188-6',NULL),(85,'Claudia Angélica Noemy García',NULL,'939857-4',NULL),(86,'Ana Inés López Aguilar',NULL,'945566-3',NULL),(88,'OTTONIEL BARILLAS',NULL,'12451222',NULL),(89,'OTTONIEL','123456','',NULL),(90,'OTTONIEL','123456','',NULL),(91,'OTTONIEL','123456','',NULL),(92,'OTTONIEL','123456','',NULL),(93,'JUAN ','123456-K','',NULL),(94,'JUAN ','123456-K','',NULL),(95,'Haydee Ileanova Lemus Argueta','1264974-0','',NULL),(96,'Haydee Ileanova Lemus Argueta','1264974-0','',NULL),(97,'Haydee Ileanova Lemus Argueta','1264974-0','',NULL),(98,'Haydee Ileanova Lemus Argueta','1264974-0','',NULL),(99,'Haydee Ileanova Lemus Argueta','1264974-0','',NULL),(100,'Haydee Ileanova Lemus Argueta','1264974-0','',NULL),(101,'Haydee Ileanova Lemus Argueta','123456','',NULL);
/*!40000 ALTER TABLE `so_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_detalle_pnc`
--

DROP TABLE IF EXISTS `so_detalle_pnc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_detalle_pnc` (
  `id_detalle` int(11) NOT NULL AUTO_INCREMENT,
  `id_pnc` int(11) DEFAULT NULL,
  `descripcion` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `fecha_pnc` date DEFAULT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `id_pnc` (`id_pnc`),
  CONSTRAINT `so_detalle_pnc_ibfk_1` FOREIGN KEY (`id_pnc`) REFERENCES `so_pnc` (`id_pnc`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_detalle_pnc`
--

LOCK TABLES `so_detalle_pnc` WRITE;
/*!40000 ALTER TABLE `so_detalle_pnc` DISABLE KEYS */;
INSERT INTO `so_detalle_pnc` VALUES (1,1,' OTRA VEZ YO ',NULL),(2,2,'yo te digo ',NULL),(3,3,' nuevo yo ',NULL),(4,4,' beto ',NULL),(5,5,'beto ',NULL),(6,6,'',NULL),(7,7,'prueba',NULL);
/*!40000 ALTER TABLE `so_detalle_pnc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_detallecd`
--

DROP TABLE IF EXISTS `so_detallecd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_detallecd` (
  `d_idDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `d_idApartamento` int(11) DEFAULT NULL,
  `d_idCliente` int(11) DEFAULT NULL,
  `d_estado` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`d_idDetalle`),
  KEY `d_idApartamento` (`d_idApartamento`),
  KEY `d_idCliente` (`d_idCliente`),
  CONSTRAINT `d_idApartamento` FOREIGN KEY (`d_idApartamento`) REFERENCES `so_apartamento` (`a_idApartamento`),
  CONSTRAINT `d_idCliente` FOREIGN KEY (`d_idCliente`) REFERENCES `so_cliente` (`c_idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_detallecd`
--

LOCK TABLES `so_detallecd` WRITE;
/*!40000 ALTER TABLE `so_detallecd` DISABLE KEYS */;
INSERT INTO `so_detallecd` VALUES (1,NULL,NULL,'DESACTIVADO'),(2,132,2,NULL),(3,132,3,NULL),(4,34,4,NULL),(5,47,5,NULL),(6,54,6,NULL),(7,14,7,NULL),(8,49,8,NULL),(9,16,9,NULL),(10,31,9,NULL),(11,109,10,NULL),(12,NULL,NULL,'DESACTIVADO'),(13,71,12,NULL),(14,87,13,NULL),(15,86,14,NULL),(16,104,15,NULL),(17,80,16,NULL),(18,4,17,NULL),(19,NULL,NULL,'DESACTIVADO'),(20,108,18,NULL),(21,73,19,NULL),(22,114,20,NULL),(23,56,21,NULL),(24,74,22,NULL),(25,6,23,NULL),(26,125,24,NULL),(27,66,25,NULL),(28,79,26,NULL),(29,121,27,NULL),(30,58,28,NULL),(31,113,29,NULL),(32,13,30,NULL),(33,88,31,NULL),(34,70,32,NULL),(35,123,33,NULL),(36,99,34,NULL),(37,106,35,NULL),(38,NULL,NULL,'DESACTIVADO'),(39,90,37,NULL),(40,36,38,NULL),(41,63,39,NULL),(42,105,40,NULL),(43,24,41,NULL),(44,118,42,NULL),(45,133,43,NULL),(46,35,44,NULL),(47,110,45,NULL),(48,131,46,NULL),(49,17,47,NULL),(50,18,47,NULL),(51,19,47,NULL),(52,20,47,NULL),(53,21,47,NULL),(54,22,47,NULL),(55,48,48,NULL),(56,33,49,NULL),(57,111,50,NULL),(58,120,50,NULL),(59,83,51,NULL),(60,43,52,NULL),(61,62,53,NULL),(62,100,54,NULL),(63,65,55,NULL),(64,124,56,NULL),(65,75,57,NULL),(66,NULL,NULL,'DESACTIVADO'),(67,78,60,NULL),(68,53,61,NULL),(69,227,62,'DESACTIVADO'),(70,134,63,NULL),(71,81,64,NULL),(72,67,65,NULL),(73,55,66,NULL),(74,122,67,NULL),(75,101,68,NULL),(76,64,69,NULL),(77,126,70,NULL),(78,127,70,NULL),(79,77,71,NULL),(80,76,72,NULL),(81,NULL,NULL,'DESACTIVADO'),(82,11,74,NULL),(83,102,75,NULL),(84,97,76,NULL),(85,116,77,NULL),(86,46,78,NULL),(87,112,79,NULL),(88,132,80,NULL),(89,15,81,NULL),(90,25,82,NULL),(91,115,82,NULL),(92,9,83,NULL),(93,10,83,NULL),(94,59,83,NULL),(95,60,84,NULL),(96,128,84,NULL),(97,129,84,NULL),(98,95,85,NULL),(99,84,86,NULL),(100,85,86,NULL),(101,227,88,NULL),(102,148,NULL,NULL),(103,231,92,NULL),(104,231,93,NULL),(105,230,94,NULL),(106,230,95,NULL),(107,230,96,NULL),(108,230,97,NULL),(109,230,98,NULL),(110,230,99,NULL),(111,230,100,NULL),(112,231,101,NULL);
/*!40000 ALTER TABLE `so_detallecd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_detallelectura`
--

DROP TABLE IF EXISTS `so_detallelectura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_detallelectura` (
  `dl_idDetalle` int(11) NOT NULL AUTO_INCREMENT,
  `dl_total` decimal(5,2) DEFAULT NULL,
  `dl_estado` varchar(15) DEFAULT NULL,
  `dl_idLectura` int(11) DEFAULT NULL,
  PRIMARY KEY (`dl_idDetalle`),
  KEY `dl_idLectura` (`dl_idLectura`),
  CONSTRAINT `dl_idLectura` FOREIGN KEY (`dl_idLectura`) REFERENCES `so_lectura` (`l_idLectura`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_detallelectura`
--

LOCK TABLES `so_detallelectura` WRITE;
/*!40000 ALTER TABLE `so_detallelectura` DISABLE KEYS */;
INSERT INTO `so_detallelectura` VALUES (1,59.94,'NO PAGADO',8),(2,54.10,'NO PAGADO',9),(3,50.00,'NO PAGADO',10),(4,56.48,'NO PAGADO',11),(5,50.00,'NO PAGADO',12),(6,50.00,'NO PAGADO',13),(7,50.00,'NO PAGADO',14),(8,50.00,'NO PAGADO',15),(9,60.80,'NO PAGADO',16);
/*!40000 ALTER TABLE `so_detallelectura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_empleados`
--

DROP TABLE IF EXISTS `so_empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_empleados` (
  `e_idEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `e_nombre` varchar(45) DEFAULT NULL,
  `e_apellido` varchar(45) DEFAULT NULL,
  `e_fechaNacimiento` date DEFAULT NULL,
  `e_direccion` varchar(45) DEFAULT NULL,
  `e_estadoCivil` varchar(45) DEFAULT NULL,
  `e_telefono` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`e_idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_empleados`
--

LOCK TABLES `so_empleados` WRITE;
/*!40000 ALTER TABLE `so_empleados` DISABLE KEYS */;
INSERT INTO `so_empleados` VALUES (1,'GERARDO ','BARILLAS','2020-05-24','PALIN - escuintla','SOLTERO','123456'),(2,'PEDRO','MURALLAS','2005-05-14','PALIN','SOLTERO','1517'),(3,'PEDRO','MURALLAS','2005-05-14','P','SOLTERO','1517'),(4,'PEDRO','MURALLAS','2005-05-14','P','SOLTERO','1517'),(5,'PEDRO','MURALLAS','2005-05-14','P','SOLTERO','1517'),(6,'JUAN','RODRIGUEZ','2020-05-14','GUATEMAL','SOLTERO ','1517'),(7,'Juan','barillas','2020-05-24','GUATEMAL','SEPARADO POR BURRO','123456'),(8,'ottoniel','barillas','2020-05-24','GUATEMAL','SOLTERO','1517'),(9,'PEDRO','barillas','2020-05-24','GUATEMAL','SOLTERO','1517'),(10,'jose ','paredes','2020-05-24','VIALLA NUEVA','cASADO','123456'),(11,'ROBERTO','GARCIA','2020-05-24','VILLA NUEVA','CASADO','50505050'),(12,'ROBERTO','GARCIA','2020-05-24','VILLA NUEVA','CASADO POR LAS 3 LEYES','50505050'),(13,'ROBERTO','GARCIA','2020-05-24','VILLA NUEVA','CASADO POR LAS 3 LEYES ASD','50505050'),(14,'BETO','HERNANDEZ','2020-05-24','GUATEMALA','CASADO','666'),(15,'RONY ','HERNANDEZ','2020-05-24','VILLA NUEVA','CASADO','12345678'),(16,'BETO ','PAREDES','2020-05-24','GUATEMALA','SOLTERO','12345678'),(17,'RONY','HERNANDEZ','2020-05-24','GUATMEAL','CASADO','12345678'),(18,'juan','henandez','2020-05-24','GUATEMAL','SOLTERO','123456'),(19,'RONY','PAREDES HERNANDEZ','2020-05-24','GUATEMAL','SOLTERO','1517'),(20,'RONY ','HERNANDEZ','2020-05-24','VILLA NUEVA','CASADO','12345678'),(21,'JOSE','PAREDES','2020-05-24','VILLA NUEVA','CASADO','55364652');
/*!40000 ALTER TABLE `so_empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_lectura`
--

DROP TABLE IF EXISTS `so_lectura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_lectura` (
  `l_idLectura` int(11) NOT NULL AUTO_INCREMENT,
  `l_mesActual` int(11) DEFAULT NULL,
  `l_anioActual` int(11) DEFAULT NULL,
  `l_lecturaActual` decimal(5,2) DEFAULT NULL,
  `l_mesAnterior` int(11) DEFAULT NULL,
  `l_anioAnteorior` int(11) DEFAULT NULL,
  `l_lecAnterior` decimal(5,2) DEFAULT NULL,
  `l_consumo` decimal(5,2) DEFAULT NULL,
  `l_tarifa` decimal(5,2) DEFAULT NULL,
  `l_fechaIng` date DEFAULT NULL,
  `l_usuario` varchar(10) DEFAULT NULL,
  `l_idApartamento` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_idLectura`),
  KEY `l_idApartamento` (`l_idApartamento`),
  CONSTRAINT `l_idApartamento` FOREIGN KEY (`l_idApartamento`) REFERENCES `so_apartamento` (`a_idApartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_lectura`
--

LOCK TABLES `so_lectura` WRITE;
/*!40000 ALTER TABLE `so_lectura` DISABLE KEYS */;
INSERT INTO `so_lectura` VALUES (1,4,2020,20.20,3,2020,23.00,2.80,6.04,NULL,'obariilas',1),(2,12,2019,138.00,12,2019,138.00,5.00,0.00,NULL,'admin',3),(3,12,2019,138.00,12,2019,138.00,5.00,0.00,NULL,'admin',3),(4,12,2019,138.00,12,2019,138.00,5.00,0.00,NULL,'admin',3),(5,12,2019,138.00,12,2019,138.00,5.00,0.00,NULL,'admin',3),(6,12,2019,138.10,12,2019,138.10,5.00,0.00,NULL,'admin',3),(7,12,2019,138.10,12,2019,138.10,5.00,0.00,NULL,'admin',3),(8,3,2019,138.10,3,2019,138.10,5.00,0.00,NULL,'admin',4),(9,4,2019,140.00,3,2019,140.00,2.00,0.00,'2020-05-24','admin',4),(10,2,2019,152.00,3,2019,152.00,-8.00,0.00,'2020-05-24','admin',16),(11,6,2020,51.00,5,2020,51.00,3.00,0.00,'2020-05-24','admin',21),(12,1,2019,138.10,2,2019,138.10,-4.00,0.00,'2020-05-27','admin',6),(13,1,2019,15.00,2,2019,15.00,-5.00,0.00,'2020-05-28','admin',132),(14,1,2019,15.00,2,2019,15.00,-5.00,0.00,'2020-05-28','admin',132),(15,1,2019,15.00,2,2019,15.00,-5.00,0.00,'2020-05-28','admin',132),(16,2,2020,15.00,1,2020,15.00,5.00,0.00,'2020-05-30','admin',109);
/*!40000 ALTER TABLE `so_lectura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_menu`
--

DROP TABLE IF EXISTS `so_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_menu` (
  `m_idMenu` int(11) NOT NULL AUTO_INCREMENT,
  `m_titulo` varchar(50) DEFAULT NULL,
  `m_url` varchar(50) DEFAULT NULL,
  `m_idPadre` int(11) DEFAULT NULL,
  `m_descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`m_idMenu`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_menu`
--

LOCK TABLES `so_menu` WRITE;
/*!40000 ALTER TABLE `so_menu` DISABLE KEYS */;
INSERT INTO `so_menu` VALUES (1,'Empleados','javascript:;',0,'Empleados'),(2,'Ingreso Empleados','~/Vistas/Empleados.aspx',1,NULL),(5,'Lectura','javascript:;',0,'Lectura'),(8,'Lectura','Vistas/Lectura.aspx',5,'Lectura2');
/*!40000 ALTER TABLE `so_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_modulo`
--

DROP TABLE IF EXISTS `so_modulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_modulo` (
  `id_catProceso` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `proceso` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_catProceso`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_modulo`
--

LOCK TABLES `so_modulo` WRITE;
/*!40000 ALTER TABLE `so_modulo` DISABLE KEYS */;
INSERT INTO `so_modulo` VALUES (1,NULL,'Control de lecturas'),(2,NULL,'Confrontas de pago'),(3,NULL,'Notas de Cobro'),(4,NULL,'Reportería'),(5,NULL,'Constancias de pago');
/*!40000 ALTER TABLE `so_modulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_paso`
--

DROP TABLE IF EXISTS `so_paso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_paso` (
  `id_detalleproceso` int(11) NOT NULL AUTO_INCREMENT,
  `id_catProceso` int(11) DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_detalleproceso`),
  KEY `id_catProceso` (`id_catProceso`),
  CONSTRAINT `so_paso_ibfk_1` FOREIGN KEY (`id_catProceso`) REFERENCES `so_modulo` (`id_catProceso`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_paso`
--

LOCK TABLES `so_paso` WRITE;
/*!40000 ALTER TABLE `so_paso` DISABLE KEYS */;
INSERT INTO `so_paso` VALUES (1,1,'Start'),(2,1,'Toma de lecturas'),(3,1,'Actualizacion toma de lecturas manuales'),(4,1,'Libro transacciones otros bancos'),(5,1,'Reportes'),(6,1,'Mantenimiento'),(7,1,'Recibos Contables'),(8,1,'Nomenclatura'),(9,1,'Pagó en G&T'),(10,1,'End'),(11,2,'Start'),(12,2,'Actualizacion de datos'),(13,2,'Consulta de pagos'),(14,2,'Estado de cuentas'),(15,2,'Cuotas atrasadas'),(16,2,'Nomenclatura'),(17,2,'Existe confronta de pago'),(18,2,'Libro de lecturas'),(19,2,'End'),(20,3,'Start'),(21,3,'Ingreso de confrontas de pago'),(22,3,'Actualizacion toma de lecturas manuales'),(23,3,'Confrontas enviadas por el banco G&T'),(24,3,'Nomenclatura'),(25,3,'No existe info'),(26,3,'Ingreso de lecturas'),(27,3,'end'),(28,4,'Start'),(29,4,'Estado de cuentas'),(30,4,'Frecuencia de incumplimientos'),(31,4,'Reportes contables'),(32,4,'Generacion de reportes'),(33,4,'Buscar nombre'),(34,4,'Nomenclatura'),(35,4,'Reportes administrativos'),(36,4,'Existe Confronta de pago'),(37,4,'Interfaz de reporteria'),(38,4,'end'),(39,5,'Start'),(40,5,'Cobro de cuota'),(41,5,'Consulta de datos'),(42,5,'Llenado de informacion'),(43,5,'Generacion de constancia de pago'),(44,5,'Nomenclatura'),(45,5,'No existe info'),(46,5,'Cuota de apto'),(47,5,'end');
/*!40000 ALTER TABLE `so_paso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_pnc`
--

DROP TABLE IF EXISTS `so_pnc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_pnc` (
  `id_pnc` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `modulo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `paso` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fecha_pcn` date DEFAULT NULL,
  PRIMARY KEY (`id_pnc`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_pnc`
--

LOCK TABLES `so_pnc` WRITE;
/*!40000 ALTER TABLE `so_pnc` DISABLE KEYS */;
INSERT INTO `so_pnc` VALUES (1,'OBARILLAS','YO','OTRA VEZ YO',NULL,NULL),(2,'otto','otro ','',NULL,NULL),(3,'otto','de nuevo yo ','',NULL,NULL),(4,'otto','beto ','beto otra vez ',NULL,NULL),(5,'otto','beto ','beto otra vez ',NULL,NULL),(6,'otto','beto','otra vez beto',NULL,NULL),(7,'otto','Control_de_lecturas','start',NULL,NULL);
/*!40000 ALTER TABLE `so_pnc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_tipe_usuario`
--

DROP TABLE IF EXISTS `so_tipe_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_tipe_usuario` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_usaurio` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_tipe_usuario`
--

LOCK TABLES `so_tipe_usuario` WRITE;
/*!40000 ALTER TABLE `so_tipe_usuario` DISABLE KEYS */;
INSERT INTO `so_tipe_usuario` VALUES (1,'admin');
/*!40000 ALTER TABLE `so_tipe_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_usuario`
--

DROP TABLE IF EXISTS `so_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `so_usuario` (
  `u_idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `u_usuario` varchar(45) DEFAULT NULL,
  `u_contrasenia` varchar(45) DEFAULT NULL,
  `u_habilitado` int(11) DEFAULT NULL,
  `u_idEmpleado` int(11) NOT NULL,
  `u_correlativo` int(11) DEFAULT NULL,
  `u_id_tipo` int(11) DEFAULT NULL,
  PRIMARY KEY (`u_idUsuario`),
  KEY `id_tipo_idx` (`u_id_tipo`),
  CONSTRAINT `id_tipo` FOREIGN KEY (`u_id_tipo`) REFERENCES `so_tipe_usuario` (`id_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_usuario`
--

LOCK TABLES `so_usuario` WRITE;
/*!40000 ALTER TABLE `so_usuario` DISABLE KEYS */;
INSERT INTO `so_usuario` VALUES (2,'ADMIN','eJecHpO8l4vPcF1bbECvVg==',1,1,1,NULL),(3,'obarillasvc','c2sd8Z3SpOz4g0a9gVUF4A==',1,1,2,NULL),(4,'obarillas','032lj9JAfyxw0SMosHRtVw==',1,1,3,NULL),(5,'admin','c2sd8Z3SpOz4g0a9gVUF4A==',1,6,4,NULL),(6,'admin','SPRNOBJV3++kMDP/Ea97Yw==',1,1,5,NULL),(7,'Obarillas','c2sd8Z3SpOz4g0a9gVUF4A==',1,2,6,NULL),(8,'admin','7WqdbqaLfxbY/hQVrRPzLw==',1,1,7,NULL),(9,'RPAREDEZ','c2sd8Z3SpOz4g0a9gVUF4A==',1,19,8,NULL),(10,'RPAREDEZ','c2sd8Z3SpOz4g0a9gVUF4A==',1,19,NULL,NULL),(11,'pedrob','c2sd8Z3SpOz4g0a9gVUF4A==',1,9,NULL,NULL),(12,'betoparedes','EOQycKYL9ch8cdazgGKCPw==',1,16,NULL,NULL),(13,'joseparedes2','c2sd8Z3SpOz4g0a9gVUF4A==',1,21,NULL,NULL),(14,'admin','admin',1,1,NULL,1);
/*!40000 ALTER TABLE `so_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-08 22:45:42
