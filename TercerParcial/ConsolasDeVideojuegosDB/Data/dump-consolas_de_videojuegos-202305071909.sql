-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: consolas_de_videojuegos
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `consolas_de_videojuegos`
--

DROP TABLE IF EXISTS `consolas_de_videojuegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consolas_de_videojuegos` (
  `Consola_id` int NOT NULL,
  `Nombre_consola_id` int DEFAULT NULL,
  `Nombre_edición_especial` varchar(50) DEFAULT NULL,
  `Año_de_salida` int DEFAULT NULL,
  `Numero_de_ejemplares` varchar(30) DEFAULT NULL,
  `País_id` int DEFAULT NULL,
  `Foto` text,
  PRIMARY KEY (`Consola_id`),
  KEY `Nombre_consola_id` (`Nombre_consola_id`),
  KEY `País_id` (`País_id`),
  CONSTRAINT `consolas_de_videojuegos_ibfk_1` FOREIGN KEY (`Nombre_consola_id`) REFERENCES `nombre_consola` (`Nombre_consola_id`),
  CONSTRAINT `consolas_de_videojuegos_ibfk_2` FOREIGN KEY (`País_id`) REFERENCES `pais` (`Pais_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consolas_de_videojuegos`
--

LOCK TABLES `consolas_de_videojuegos` WRITE;
/*!40000 ALTER TABLE `consolas_de_videojuegos` DISABLE KEYS */;
INSERT INTO `consolas_de_videojuegos` VALUES (1,35,'Pikachu Edition',2000,'5k - 10k',107,'https://i.ytimg.com/vi/wvdPNGXriEI/maxresdefault.jpg'),(2,35,'Donkey Kong Edition',1999,'Desconocido',107,'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/81ALHM9vKKL.jpg'),(3,56,'20th aniversary',2014,'12,300',107,'https://http2.mlstatic.com/D_NQ_NP_992476-MLA40191685983_122019-O.jpg'),(4,57,'Titanfall Edition',2014,'5k',45,'https://www.hd-tecnologia.com/imagenes/articulos/2014/01/Xbox-One-Titanfall-Edition.png'),(5,24,'World Champion Ships',1990,'116',107,'https://i.ytimg.com/vi/hdXYv3_9JXM/maxresdefault.jpg'),(6,7,'Air Raid',1982,'20',221,'https://commondatastorage.googleapis.com/images.pricecharting.com/20516a811a03dd9501bb6685e72d52d084a92a1bf23b7756c0cd34905477c901/240.jpg'),(7,11,'Mirinda',1993,'Desconocido',148,'https://http2.mlstatic.com/D_NQ_NP_661250-MLM52652627921_112022-O.jpg'),(8,29,'Pokémon Center New York GOLD',2004,'Desconocido',221,'https://i.ebayimg.com/images/g/M5YAAOSwsu9ixQeW/s-l500.jpg'),(9,13,'Coca-Cola edition',1994,'Desconocido',107,'https://consolevariations.com/storage/images/variations/consoles/sega-game-gear-coca-cola-red/large/sega-game-gear-coca-cola-red.jpg'),(10,40,'God of War Entertainment Pack',2008,'Desconocido',221,'http://farm3.static.flickr.com/2123/2545857787_030f54c421.jpg');
/*!40000 ALTER TABLE `consolas_de_videojuegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombre_consola`
--

DROP TABLE IF EXISTS `nombre_consola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nombre_consola` (
  `Nombre_consola_id` int NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Año_de_salida` int DEFAULT NULL,
  `Generación` int DEFAULT NULL,
  PRIMARY KEY (`Nombre_consola_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombre_consola`
--

LOCK TABLES `nombre_consola` WRITE;
/*!40000 ALTER TABLE `nombre_consola` DISABLE KEYS */;
INSERT INTO `nombre_consola` VALUES (1,'Magnavox Odyssey',1972,1),(2,'Atari Home Pong',1975,1),(3,'Coleco Telsta',1976,1),(4,'Microvision ',1977,1),(5,'Game & Watch ',1979,1),(6,'Epoch Game Pocket Computer ',1980,1),(7,'Atari 2600',1980,2),(8,'Intellivision',1982,2),(9,'ColecoVision',1983,2),(10,'Atari Lynx ',1984,2),(11,'Game Boy ',1985,2),(12,'TurboExpress ',1986,2),(13,'Sega Game Gear ',1988,2),(14,'Watara Supervision ',1989,2),(15,'Nintendo Entertainment System (NES)',1989,3),(16,'Sega Master System',1990,3),(17,'Atari 7800',1990,3),(18,'Neo Geo Pocket ',1990,3),(19,'Game Boy Color ',1990,3),(20,'SwanCrystal ',1992,3),(21,'WonderSwan ',1993,3),(22,'Neo Geo Pocket Color ',1993,3),(23,'Sega Genesis/Mega Drive',1994,4),(24,'Super Nintendo Entertainment System (SNES)',1994,4),(25,'Neo Geo',1996,4),(26,'Game Boy Advance ',1998,4),(27,'Nokia N-Gage ',1998,4),(28,'Tapwave Zodiac ',1998,4),(29,'Game Boy Advance SP ',1999,4),(30,'Game Boy Micro ',1999,4),(31,'3DO Interactive Multiplayer',1999,5),(32,'Atari Jaguar',2000,5),(33,'Sony PlayStation',2001,5),(34,'Sega Saturn',2001,5),(35,'Nintendo 64',2001,5),(36,'Sega Dreamcast',2003,6),(37,'Sony PlayStation 2',2003,6),(38,'Nintendo GameCube',2003,6),(39,'Microsoft Xbox',2004,6),(40,'PlayStation Portable (PSP) ',2004,5),(41,'Nintendo DS ',2005,5),(42,'GP2X ',2005,6),(43,'GamePark Holdings ',2005,6),(44,'Gizmondo ',2005,6),(45,'PlayStation Portable Slim & Lite ',2005,6),(46,'Nintendo DS Lite ',2006,6),(47,'Xbox 360 ',2006,7),(48,'PlayStation 3',2006,7),(49,'Nintendo Wii',2007,7),(50,'PlayStation Vita ',2011,7),(51,'Nintendo 3DS ',2011,7),(52,'PlayStation Vita Slim ',2012,7),(53,'Nintendo 2DS ',2013,7),(54,'Nvidia Shield Portable ',2013,7),(55,'Wii U',2013,8),(56,'PlayStation 4',2013,8),(57,'Xbox One',2013,8),(58,'Nintendo Switch',2017,8),(59,'Xbox Series X/S',2020,9),(60,'PlayStation 5',2020,9);
/*!40000 ALTER TABLE `nombre_consola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `Pais_id` int NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`Pais_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Andorra '),(2,'Emiratos Árabes Unidos '),(3,'Afganistán '),(4,'Antigua y Barbuda '),(5,'Anguila '),(6,'Albania '),(7,'Armenia '),(8,'Antillas Holandesas '),(9,'Angola '),(10,'Antártida '),(11,'Argentina '),(12,'Samoa Americana '),(13,'Austria '),(14,'Australia '),(15,'Aruba '),(16,'Azerbaiyán '),(17,'Bosnia y Herzegovina '),(18,'Barbados '),(19,'Bangladesh '),(20,'Bélgica '),(21,'Burkina Faso '),(22,'Bahrein '),(23,'Burundi '),(24,'Benin '),(25,'Bermudas '),(26,'Bolivia '),(27,'Brasil '),(28,'Bahamas '),(29,'Bután '),(30,'Isla Bouvet '),(31,'Bulgaria '),(32,'Botswana '),(33,'Brunei Darussalam '),(34,'Bielorrusia '),(35,'Belice '),(36,'Canadá '),(37,'Cocos (Keeling) '),(38,'República Centroafricana '),(39,'Congo '),(40,'Suiza '),(41,'Cote D\'Ivoire (Costa de Marfil) '),(42,'Islas Cook '),(43,'Chile '),(44,'Camerún '),(45,'China '),(46,'Colombia '),(47,'Costa Rica '),(48,'Cuba '),(49,'Cabo Verde '),(50,'Isla de Navidad '),(51,'Chipre '),(52,'República Checa '),(53,'Alemania '),(54,'Djibouti '),(55,'Dinamarca '),(56,'Dominica '),(57,'República Dominicana '),(58,'Argelia '),(59,'Ecuador '),(60,'Estonia '),(61,'Egipto '),(62,'Sáhara Occidental '),(63,'Eritrea '),(64,'España '),(65,'Etiopía '),(66,'Finlandia '),(67,'Fiji '),(68,'Islas Malvinas (Falkland) '),(69,'Micronesia '),(70,'Islas Feroe '),(71,'Francia '),(72,'Gabón '),(73,'Gran Bretaña (Reino Unido) '),(74,'Granada '),(75,'Georgia '),(76,'Guayana Francesa'),(77,'Ghana '),(78,'Gibraltar '),(79,'Groenlandia '),(80,'Gambia '),(81,'Guinea '),(82,'Guadalupe '),(83,'Guinea Ecuatorial '),(84,'Grecia '),(85,'Georgia del Sur y Islas Sandwich del Sur '),(86,'Guatemala '),(87,'Guam '),(88,'Guinea-Bissau '),(89,'Guayana '),(90,'Hong Kong '),(91,'Islas Heard y McDonald '),(92,'Honduras '),(93,'Croacia'),(94,'Haití '),(95,'Hungría '),(96,'Indonesia '),(97,'Irlanda '),(98,'Israel '),(99,'India '),(100,'Territorio Británico del Océano Índico'),(101,'Irak '),(102,'Irán '),(103,'Islandia '),(104,'Italia '),(105,'Jamaica '),(106,'Jordania '),(107,'Japón '),(108,'Kenia '),(109,'Kirguistán '),(110,'Camboya '),(111,'Kiribati '),(112,'Comoras '),(113,'Saint Kitts y Nevis '),(114,'Corea del Norte '),(115,'Corea del Sur '),(116,'Kuwait '),(117,'Las Islas Caimán '),(118,'Kazajstán '),(119,'Laos '),(120,'Líbano '),(121,'Santa Lucía '),(122,'Liechtenstein '),(123,'Sri Lanka '),(124,'Liberia '),(125,'Lesoto '),(126,'Lituania '),(127,'Luxemburgo '),(128,'Letonia '),(129,'Libia '),(130,'Marruecos '),(131,'Mónaco '),(132,'Moldavia '),(133,'Madagascar '),(134,'Islas Marshall '),(135,'Macedonia '),(136,'Malí '),(137,'Myanmar '),(138,'Mongolia '),(139,'Macao '),(140,'Islas Marianas del Norte '),(141,'Martinica '),(142,'Mauritania '),(143,'Montserrat '),(144,'Malta '),(145,'Mauricio '),(146,'Maldivas '),(147,'Malawi '),(148,'México '),(149,'Malasia '),(150,'Mozambique '),(151,'Namibia '),(152,'Nueva Caledonia '),(153,'Níger '),(154,'Norfolk Island '),(155,'Nigeria '),(156,'Nicaragua '),(157,'Países Bajos '),(158,'Noruega '),(159,'Nepal '),(160,'Nauru '),(161,'Niue '),(162,'Nueva Zelanda '),(163,'Omán '),(164,'Panamá '),(165,'Perú '),(166,'Polinesia francés '),(167,'Papua Nueva Guinea '),(168,'Filipinas '),(169,'Pakistán '),(170,'Polonia '),(171,'San Pedro y Miquelón '),(172,'Pitcairn '),(173,'Puerto Rico '),(174,'Portugal '),(175,'Palau '),(176,'Paraguay '),(177,'Qatar '),(178,'Reunión '),(179,'Rumania '),(180,'La Federación de Rusia '),(181,'Ruanda '),(182,'Arabia Saudita '),(183,'Las Islas Salomón '),(184,'Seychelles '),(185,'Sudán '),(186,'Suecia '),(187,'Singapur '),(188,'Santa Elena '),(189,'Eslovenia '),(190,'Svalbard y Jan Mayen '),(191,'República Eslovaca '),(192,'Sierra Leona '),(193,'San Marino '),(194,'Senegal '),(195,'Somalia '),(196,'Suriname '),(197,'Santo Tomé y Príncipe '),(198,'El Salvador '),(199,'Siria '),(200,'Swazilandia '),(201,'Islas Turcas y Caicos '),(202,'Chad '),(203,'Territorios del sur francés '),(204,'Togo '),(205,'Tailandia '),(206,'Tayikistán '),(207,'Tokelau '),(208,'Turkmenistán '),(209,'Túnez '),(210,'Tonga '),(211,'Timor Oriental '),(212,'Turquía '),(213,'Trinidad y Tobago '),(214,'Tuvalu '),(215,'Taiwan '),(216,'Tanzania '),(217,'Ucrania '),(218,'Uganda '),(219,'Reino Unido '),(220,'Islas menores  de EE.UU.'),(221,'Estados Unidos de América (EE.UU.) '),(222,'Uruguay '),(223,'Uzbekistán '),(224,'Ciudad del Vaticano '),(225,'San Vicente y las Granadinas '),(226,'Venezuela '),(227,'Islas Vírgenes (Británicas) '),(228,'Vietnam '),(229,'Vanuatu '),(230,'Islas Wallis y Futuna '),(231,'Samoa '),(232,'Yemen '),(233,'Mayotte '),(234,'Yugoslavia '),(235,'Sudáfrica '),(236,'Zambia '),(237,'Zaire '),(238,'Zimbabue ');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'consolas_de_videojuegos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-07 19:09:46
