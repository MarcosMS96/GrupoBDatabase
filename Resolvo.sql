CREATE DATABASE  IF NOT EXISTS `resolvo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `resolvo`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: resolvo
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `calle` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `codPostal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ciudad` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `provincia` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dni` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contrato` enum('noTiene','limitado','ilimitado') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'noTiene',
  `numIncidencias` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (0,'Luis','Romero','Calle Valencia 30','39002','Valencia','Valencia','963214578','22334455E','luisRomero@gmail.com','ilimitado',45623),(9,'Kiko','Martinez Florin','Herrero','458745','Madrid','Madrid','458745215','58745215P','soxcram96@gmail.com','noTiene',0),(13,'María','López','Calle Mayor 12','41001','Sevilla','Sevilla','954781239','87654321B','MariaLopez@gmail.com','ilimitado',999999),(14,'Pedro','García','Rambla Catalunya 25','08007','Barcelona','Barcelona','931234567','90876543C','pedroGarcoa@gmail.com','noTiene',0),(17,'Sandra','Blanco','Calle Larios 15','29015','Málaga','Málaga','952147896','12345678A','SandraBlanco@gmail.com','noTiene',0),(18,'Laura','Fernández','Gran Vía 56','18001','Granada','Granada','985478123','33445566F','LauraFernandez@gmail.com','limitado',1),(19,'Daniel','Martínez','Calle Estafeta 42','31002','Pamplona','Navarra','948765432','44556677G','DanielMartinez@gmail.com','ilimitado',5000),(20,'Juan','Perez Garcia','Calle Mayor 123','08000','Barcelona','Barcelona','931234567','12345678A','juan.perez@example.com','noTiene',0),(27,'Turen','MasterMind','Álcantara','85126','Sevilla','Andalucia','875412026','85478514A','Turen@gmail.com','ilimitado',23214),(28,'Laura','Jimenez Margó','Luna de Cristal','25841','Madrid','Madrid','547852145','45125875D','lauritajiji@gmail.com','noTiene',0),(29,'David','Martin Torres','Albricias','39000','Santander','Cantabria','942310987','98765432E','david.martin@emptystreet.es','ilimitado',345665),(31,'Turen','MasterMind','Álcantara','85126','Sevilla','Andalucia','875412026','85478514A','TurenMaster@gmail.com','ilimitado',7),(34,'Laura','Jimenez Margó','Luna de Cristal','25841','Madrid','Madrid','547852145','45125875D','lauritajijiji@gmail.com','noTiene',0),(36,'José','García Díaz','Ñuño street 14','50000','Zaragoza','Zaragoza','976543210','09876543F','jose.garcia@ñuño.es','noTiene',0),(37,'Alice','Thompson','5th Avenue 10','10001','New York','New York','+12125551','123456789','alice.thompson@usa.com','noTiene',0),(38,'Maria','Lopez Sanchez','Gran Via 30','28000','Madrid','Madrid','917890123','87654321B','maria.lopez@company.com','limitado',2),(39,'Ana','Fernandez Blanco','Sevilla 21','11000','Sevilla','Sevilla','954678901','34567890D','ana.fernandez@support.com','limitado',4),(40,'Pedro','Ruiz Hernandez','Valencia 5','46000','Valencia','Valencia','654321987','23456789C','pedro.ruiz@unlimited.net','ilimitado',45),(41,'Juan','Pérez','Gran Vía 35','28013','Madrid','Madrid','915478963','12345678A','JuanPerez@gmail.com','limitado',6),(42,'Pedro','Martinez Florin','Herrero','458745','Madrid','Madrid','563200236','58745214P','Pedro@gmail.com','limitado',5),(43,'Ana','Hernández','Plaza del Pilar 10','50001','Zaragoza','Zaragoza','976543218','11223344D','AnaHernandez@gmail.com','limitado',2),(44,'Marcos','Merino','Main Street 123','12345','New York','NY','123456789','12345678A','marcos.merino@juanxxiii.net','limitado',10),(45,'Anibal','Martín','Main Street 123','12345','New York','NY','123456789','12345678A','anibal.martin@juanxxiii.net','limitado',10),(46,'Zulema','Tagarro','Main Street 123','12345','New York','NY','541258963','58965412U','zulema.tagarro@juanxxiii.net','limitado',10),(47,'Javier','Prieto','Main Street 123','12345','New York','NY','125045698','52156325E','javier.prieto@juanxxiii.net','limitado',10),(48,'Miguel Angel','Aparicio','Main Street 123','12345','New York','NY','896523014','58230145R','miguelangel.aparicio@juanxxiii.net','limitado',10),(49,'Julian','Del Castillo','Main Street 123','12345','New York','NY','303036985','58965412T','julian.delcastillo@juanxxiii.net','limitado',10);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cliente_before_insert` BEFORE INSERT ON `cliente` FOR EACH ROW BEGIN
	CASE 
		WHEN NEW.contrato LIKE "noTiene" THEN
		 SET NEW.numIncidencias=0;
		WHEN NEW.contrato LIKE "limitado" THEN 
			SET NEW.numIncidencias=10;
		WHEN NEW.contrato LIKE "ilimitado" THEN 
			SET NEW.numIncidencias=1000000;
	END CASE;	
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `cliente_before_delete` BEFORE DELETE ON `cliente` FOR EACH ROW BEGIN
INSERT INTO `clienteeliminado` (`idCliente`, `nombre`, `apellidos`, `calle`, `codPostal`, `ciudad`, `provincia`, `telefono`, `dni`, `email`, `contrato`, `numIncidencias`, `idClienteEliminacion`, `fechaEliminacion`, `usuarioEliminacion`) VALUES (OLD.idCliente, OLD.nombre, OLD.apellidos, OLD.calle, OLD.codPostal, OLD.ciudad, OLD.provincia, OLD.telefono, OLD.dni, OLD.email, OLD.contrato, OLD.numIncidencias, NULL, current_timestamp(), USER());
DELETE FROM presupuesto WHERE idCliente=old.idCliente;
DELETE FROM incidencia WHERE idCliente=old.idCliente;
DELETE FROM usuarioExterno WHERE idCliente=old.idCliente;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `clienteeliminado`
--

DROP TABLE IF EXISTS `clienteeliminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienteeliminado` (
  `idCliente` int unsigned NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `calle` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `codPostal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ciudad` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `provincia` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `dni` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `contrato` enum('noTiene','limitado','ilimitado') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'noTiene',
  `numIncidencias` int unsigned DEFAULT NULL,
  `idClienteEliminacion` int NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idClienteEliminacion`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienteeliminado`
--

LOCK TABLES `clienteeliminado` WRITE;
/*!40000 ALTER TABLE `clienteeliminado` DISABLE KEYS */;
/*!40000 ALTER TABLE `clienteeliminado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incidencia`
--

DROP TABLE IF EXISTS `incidencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidencia` (
  `idIncidencia` int NOT NULL AUTO_INCREMENT,
  `idCliente` int unsigned NOT NULL,
  `idTrabajador` int unsigned DEFAULT NULL,
  `dispositivo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `marca` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `modelo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `ubicacion` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `motivo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `fechaAltaIncidencia` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` enum('pendiente','enCurso','cerrada','retenida') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pendiente',
  `informeTecnico` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechaCierreIncidencia` date DEFAULT NULL,
  `firmaDigital` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Fotografia` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idIncidencia`),
  KEY `FK_incidencia_cliente` (`idCliente`),
  KEY `FK_incidencia_trabajador` (`idTrabajador`),
  CONSTRAINT `FK_incidencia_cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_incidencia_trabajador` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidencia`
--

LOCK TABLES `incidencia` WRITE;
/*!40000 ALTER TABLE `incidencia` DISABLE KEYS */;
INSERT INTO `incidencia` VALUES (1,9,14,'Teléfono','Samsung','07098','Herrero, 458745 Madrid, Madrid','Pantalla rota','2024-05-21 00:00:00','cerrada','meee',NULL,NULL,NULL),(5,9,14,'Nevera','Xiamon','E45G','Herrero, 458745 Madrid, Madrid','Rotura de la puerta del congelador','2024-05-20 00:00:00','cerrada',NULL,NULL,NULL,NULL),(10,9,59,'Microondas deluxe','Deluxe','12.5 Ultra','Herrero, 458745 Madrid, Madrid','No gira el plato','2024-05-20 00:00:00','cerrada',NULL,NULL,NULL,NULL),(11,9,33,'Mobil','Samsung','Galaxy A2','Herrero, 458745 Madrid, Madrid','Pantalla rota','2024-05-20 00:00:00','enCurso',NULL,NULL,NULL,NULL),(12,36,50,'Laptop Dell XPS 13','Dell','XPS 13','Ñuño street 14, 50000 Zaragoza, Zaragoza','Pantalla no enciende','2024-05-28 20:56:37','retenida',NULL,NULL,NULL,NULL),(13,38,23,'Impresora HP LaserJet M402dn','HP','LaserJet M402dn','Gran Via 30, 28000 Madrid, Madrid','Atascada papel','2024-05-28 20:56:37','retenida',NULL,NULL,NULL,NULL),(14,43,30,'Microondas deluxe','Deluxe','12','Plaza del Pilar 10, 50001 Zaragoza, Zaragoza','El plato no gira','2024-05-20 00:00:00','retenida',NULL,NULL,NULL,NULL),(16,28,NULL,'Impresora HP LaserJet','HP','M403dn','Luna de Cristal, 25841 Madrid, Madrid','No imprime','2024-06-09 15:22:43','pendiente',NULL,NULL,NULL,NULL),(17,44,27,'Ordenador portátil Dell XPS 13','Dell','XPS 13 9310','Main Street 123, 12345 NY, New York','Pantalla parpadea y se apaga','2024-06-09 15:25:39','cerrada',NULL,NULL,NULL,NULL),(18,28,NULL,'Impresora HP LaserJet','HP','M403dn','Luna de Cristal, 25841 Madrid, Madrid','No imprime cartuchos negros','2024-06-09 15:30:43','pendiente',NULL,NULL,NULL,NULL),(19,43,32,'Impresora HP LaserJet Pro M404','HP','LaserJet Pro M404dn','Plaza del Pilar 10, 50001 Zaragoza, Zaragoza','Atasco de papel','2024-06-09 15:51:40','cerrada','Se ha detectado un atasco de papel en el fusor. Se recomienda la extracción manual del papel con cuidado.',NULL,NULL,NULL),(20,47,NULL,'Smartphone','Apple','iPhone 13','Main Street 123, 12345 NY, New York','Pantalla rota','2024-06-09 15:57:31','pendiente',NULL,NULL,NULL,NULL),(21,46,NULL,'Portátil','HP','ProBook 450','Main Street 123, 12345 NY, New York','No enciende','2024-06-09 15:57:49','pendiente',NULL,NULL,NULL,NULL),(22,45,NULL,'Impresora','Epson','WorkForce WF-2830','Main Street 123, 12345 NY, New York',' atascada con papel','2024-06-09 15:58:00','pendiente',NULL,NULL,NULL,NULL),(23,47,NULL,'Impresora HP LaserJet','HP','LaserJet Pro M404dn','Main Street 123, 12345 NY, New York','No imprime cartucho negro','2024-06-09 15:58:55','pendiente',NULL,NULL,NULL,NULL),(24,48,NULL,'Smartphone Samsung Galaxy S22','Samsung','Galaxy S22 Ultra','Main Street 123, 12345 NY, New York','Batería se agota rápido','2024-06-09 15:58:55','pendiente',NULL,NULL,NULL,NULL),(25,28,NULL,'Smartphone','Samsung','Galaxy S22','Luna de Cristal, 25841 Madrid, Madrid','Batería no carga','2024-06-09 16:05:32','pendiente',NULL,NULL,NULL,NULL),(26,27,59,'Tablet','Lenovo','Tab M10 Plus','Álcantara, 85126 Andalucia, Sevilla','No enciende','2024-06-09 16:05:32','enCurso',NULL,NULL,NULL,NULL),(27,37,NULL,'Televisor','LG','OLED 55C1','5th Avenue 10, 10001 New York, New York','No hay señal','2024-06-09 16:05:32','pendiente',NULL,NULL,NULL,NULL),(28,9,59,'Smartphone','Samsung','Galaxy S22','Herrero, 458745 Madrid, Madrid','Batería no carga','2024-06-09 16:06:00','retenida',NULL,NULL,NULL,NULL),(29,36,59,'Tablet','Lenovo','Tab M10 Plus','Ñuño street 14, 50000 Zaragoza, Zaragoza','No enciende','2024-06-09 16:06:00','enCurso',NULL,NULL,NULL,NULL),(30,44,59,'Televisor','LG','OLED 55C1','Main Street 123, 12345 NY, New York','No hay señal','2024-06-09 16:06:00','enCurso',NULL,NULL,NULL,NULL),(31,38,59,'Tablet','Samsung','Galaxy Tab S8','Gran Via 30, 28000 Madrid, Madrid','Batería no carga','2024-06-09 16:07:07','enCurso',NULL,NULL,NULL,NULL),(32,39,32,'Ordenador sobremesa','Asus','ROG Strix G15','Sevilla 21, 11000 Sevilla, Sevilla','Problema con la tarjeta gráfica','2024-06-09 16:07:07','enCurso',NULL,NULL,NULL,NULL),(33,40,NULL,'Auriculares','Sony','WH-1000XM4','Valencia 5, 46000 Valencia, Valencia','No se escucha el sonido del lado derecho','2024-06-09 16:07:07','pendiente',NULL,NULL,NULL,NULL),(34,0,NULL,'Tablet','Samsung','Galaxy Tab S8','Calle Valencia 30, 39002 Valencia, Valencia','Batería no carga','2024-06-09 16:07:29','pendiente',NULL,NULL,NULL,NULL),(35,49,59,'Ordenador sobremesa','Asus','ROG Strix G15','Main Street 123, 12345 NY, New York','Problema con la tarjeta gráfica','2024-06-09 16:07:29','enCurso',NULL,NULL,NULL,NULL),(36,44,59,'Auriculares','Sony','WH-1000XM4','Main Street 123, 12345 NY, New York','No se escucha el sonido del lado derecho','2024-06-09 16:07:29','enCurso',NULL,NULL,NULL,NULL),(37,0,34,'Smartphone','Apple','iPhone 13','Calle Valencia 30, 39002 Valencia, Valencia','Pantalla rota','2024-06-09 16:08:14','enCurso',NULL,NULL,NULL,NULL),(39,31,NULL,'Portátil','HP','ProBook 450','Álcantara, 85126 Andalucia, Sevilla','No enciende','2024-06-09 16:08:47','pendiente',NULL,NULL,NULL,NULL),(41,31,59,'Impresora','Epson','WorkForce WF-2830','Álcantara, 85126 Andalucia, Sevilla','atascada con papel','2024-06-09 16:09:13','cerrada',NULL,NULL,NULL,NULL),(42,40,33,'Tablet','Samsung','Galaxy Tab S8','Valencia 5, 46000 Valencia, Valencia','Batería no carga','2024-06-09 16:09:56','enCurso',NULL,NULL,NULL,NULL),(43,41,30,'Ordenador sobremesa','Lenovo','ThinkCentre M70q','Gran Vía 35, 28013 Madrid, Madrid','No hay internet','2024-06-09 16:09:56','enCurso',NULL,NULL,NULL,NULL),(44,40,33,'Auriculares','Sony','WH-1000XM4','Valencia 5, 46000 Valencia, Valencia','Perdido un auricular','2024-06-09 16:09:56','enCurso',NULL,NULL,NULL,NULL),(45,41,59,'Tablet','Samsung','Galaxy Tab S8','Gran Vía 35, 28013 Madrid, Madrid','Batería no carga','2024-06-09 16:10:28','enCurso',NULL,NULL,NULL,NULL),(46,42,NULL,'Ordenador sobremesa','Lenovo','ThinkCentre M700','Herrero, 458745 Madrid, Madrid','Problema con internet','2024-06-09 16:10:28','pendiente',NULL,NULL,NULL,NULL),(47,43,NULL,'Auriculares','Sony','WH-1000XM4','Plaza del Pilar 10, 50001 Zaragoza, Zaragoza','No se escucha el sonido','2024-06-09 16:10:28','pendiente',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `incidencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `incidencia_before_insert` BEFORE INSERT ON `incidencia` FOR EACH ROW BEGIN
	DECLARE calleVar VARCHAR(255); 
	DECLARE codPostalVar VARCHAR(255);
	DECLARE ciudadVar VARCHAR(255);
	DECLARE provinciaVar VARCHAR(255);
	SELECT calle , codPostal, ciudad, provincia INTO calleVar, codPostalVar, provinciaVar, ciudadVar  FROM cliente WHERE idCliente=NEW.idCliente;
		
	SET NEW.ubicacion = CONCAT(calleVar,', ', codPostalVar,' ',ciudadVar,', ', provinciaVar);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `incidencia_before_delete` BEFORE DELETE ON `incidencia` FOR EACH ROW BEGIN
INSERT INTO `incidenciaeliminada` (`idIncidencia`, `idCliente`, `idTrabajador`, `dispositivo`, `marca`, `modelo`, `ubicación`, `motivo`, `fechaAltaIncidencia`, `estado`, `informeTecnico`, `fechaCierreIncidencia`, `firmaDigital`, `fechaEliminacion`, `usuarioEliminacion`) 
VALUES (OLD.idIncidencia, OLD.idCliente, OLD.idTrabajador, OLD.dispositivo, OLD.marca, OLD.modelo, OLD.ubicacion, OLD.motivo, OLD.fechaAltaIncidencia, OLD.estado, OLD.informeTecnico, OLD.fechaCierreIncidencia, OLD.firmaDigital,current_timestamp(), USER());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `incidenciaeliminada`
--

DROP TABLE IF EXISTS `incidenciaeliminada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incidenciaeliminada` (
  `idIncidencia` int NOT NULL,
  `idCliente` int unsigned NOT NULL,
  `idTrabajador` int unsigned DEFAULT NULL,
  `dispositivo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `marca` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `modelo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `ubicación` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `motivo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `fechaAltaIncidencia` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` enum('pendiente','enCurso','cerrada','retenida') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pendiente',
  `informeTecnico` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechaCierreIncidencia` date DEFAULT NULL,
  `firmaDigital` longblob,
  `idIncidenciaEliminada` int NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Fotografia` longblob,
  PRIMARY KEY (`idIncidenciaEliminada`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidenciaeliminada`
--

LOCK TABLES `incidenciaeliminada` WRITE;
/*!40000 ALTER TABLE `incidenciaeliminada` DISABLE KEYS */;
INSERT INTO `incidenciaeliminada` VALUES (15,29,NULL,'Altavoces','Bethesta','Gigabit 500',', 39000 Cantabria, Santander','Cable pelado','0000-00-00 00:00:00','pendiente',NULL,NULL,NULL,21,'2024-05-31 18:47:07','root@localhost',NULL);
/*!40000 ALTER TABLE `incidenciaeliminada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presupuesto`
--

DROP TABLE IF EXISTS `presupuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presupuesto` (
  `idPresupuesto` int NOT NULL AUTO_INCREMENT,
  `idIncidencia` int DEFAULT NULL,
  `idCliente` int unsigned DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coste` decimal(20,6) DEFAULT NULL,
  `aceptado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idPresupuesto`),
  KEY `FK_presupuesto_cliente` (`idCliente`),
  KEY `FK_presupuesto_incidencia` (`idIncidencia`),
  CONSTRAINT `FK_presupuesto_cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_presupuesto_incidencia` FOREIGN KEY (`idIncidencia`) REFERENCES `incidencia` (`idIncidencia`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuesto`
--

LOCK TABLES `presupuesto` WRITE;
/*!40000 ALTER TABLE `presupuesto` DISABLE KEYS */;
INSERT INTO `presupuesto` VALUES (3,1,9,'Cambio de pantalla, colocación de membrana protectora',25.540000,0),(4,5,9,'Sustitucion de la puerta del congelador',43.210000,1),(5,12,36,'Descripción del presupuesto 3',789.000000,0),(6,14,43,'Se ha subido el precio, bastante.',500.000000,NULL),(7,10,9,'Adicion del precio',123.450000,0),(10,13,38,'Presupuesto establecido, otra vez',1123.000000,NULL),(11,11,9,'Prueba para el presupuesto subida',5123.000000,NULL),(12,10,9,'Adicion del precio',123.450000,0),(13,10,9,'Cambio de plato',12.650000,NULL),(14,17,44,'Cambio de cable de alimentación',50.000000,NULL),(15,10,9,'Cambio de plato',123.000000,NULL);
/*!40000 ALTER TABLE `presupuesto` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `presupuesto_before_delete` BEFORE DELETE ON `presupuesto` FOR EACH ROW BEGIN
INSERT INTO `presupuestoeliminado` (`idPresupuesto`, `idIncidencia`, `idCliente`, `descripcion`, `coste`, `aceptado`, `idPresupuestoEliminacion`, `fechaEliminacion`, `usuarioEliminacion`) VALUES (OLD.idPresupuesto, OLD.idIncidencia, OLD.idCliente, OLD.descripcion, OLD.coste, OLD.coste, NULL, current_timestamp(), USER());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `presupuestoeliminado`
--

DROP TABLE IF EXISTS `presupuestoeliminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presupuestoeliminado` (
  `idPresupuesto` int NOT NULL,
  `idIncidencia` int DEFAULT NULL,
  `idCliente` int unsigned DEFAULT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coste` decimal(20,6) DEFAULT NULL,
  `aceptado` tinyint(1) DEFAULT NULL,
  `idPresupuestoEliminacion` int NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idPresupuestoEliminacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuestoeliminado`
--

LOCK TABLES `presupuestoeliminado` WRITE;
/*!40000 ALTER TABLE `presupuestoeliminado` DISABLE KEYS */;
INSERT INTO `presupuestoeliminado` VALUES (1,6,10,'Cambio de la bobina',124.540000,125,2,'2024-05-31 18:27:17','root@localhost');
/*!40000 ALTER TABLE `presupuestoeliminado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajador`
--

DROP TABLE IF EXISTS `trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajador` (
  `idTrabajador` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `calle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `codPostal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ciudad` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provincia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dni` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `cargo` enum('administrador','tecnico') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `especializacion` enum('movil','pc','portatiles','electrodomesticos','otro') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'otro',
  PRIMARY KEY (`idTrabajador`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
INSERT INTO `trabajador` VALUES (14,'Marcos','Merino Sánchez','Laguna de Joatzel','28903','Getafe','Madrid','856215875','58965412Y','soxcram96@gmail.com','2022-01-01','administrador','portatiles'),(22,'Ezequiel','Cuevas Funtes','Calle de los Dolores','28943','Alcorcon','Madrid','678904567','76849872D','ezequiel.cuevas.funtes@resolvo.com','1996-07-12','tecnico','pc'),(23,'gerardo','Cuevas Funtes','Calle de los Dolores','28943','Alcorcon','Madrid','678904567','76849872D','gerardo.cuevas.funtes@resolvo.com','1996-07-12','tecnico','portatiles'),(27,'Ezequiel','Cuevas ','Calle ','28943','Alcorcon','Madrid','678904567','76849872D','ezequiel.cuevas.@resolvo.com','2024-06-10','tecnico','otro'),(28,'Marcos','Merino','Laguna de Joatel','28903','Getafe','Madrid','620844850','54856985S','marcos.merino@resolvo.com','1996-06-19','administrador','movil'),(29,'Tobias','Martinez','Lacron','34543','Getafe','Madrid','234567542','586954D','tobias.martinez@resolvo.com',NULL,'administrador','pc'),(30,'Ezequiel','Cuevas Funtes','Calle de los Dolores','28943','Alcorcon','Madrid','678904567','76849872D','ezequiel.cuevas.funtes1@resolvo.com','1996-07-12','tecnico','portatiles'),(31,'Ezequiel','Cuevas Funtes','Calle de los Dolores','28943','Alcorcon','Madrid','678904567','76849872D','ezequiel.cuevas.funtes2@resolvo.com','1996-07-12','tecnico','pc'),(32,'Tomas23123','Tomas','Tomas','Tomas','Tomas','Tomas','Tomas','Tomas','df.fd@resolvo.com','2022-01-01','tecnico','pc'),(33,'Ezequiel','Merino','Laguna ','28903','Getafe','Madrid','458521569','45852154D','ezequiel.merino@resolvo.com','2024-06-04','tecnico','electrodomesticos'),(34,'Marcos','Merino','Laguna ','28903','Getafe','Madrid','458521569','45852154D','marcos.merino1@resolvo.com','2024-06-04','tecnico','otro'),(37,'Carlos','fd','df','df','fd','df','fd','df','carlos.fd@resolvo.com','2024-06-05','administrador','electrodomesticos'),(38,'Pedro','Jimenez','Lunares','28903','Lugo','Castilla y leon','458745215','45874521D','pedro.jimenez@resolvo.com','2024-06-30','administrador','electrodomesticos'),(46,'Pedrooo','Peleto','Burdel','458745','Sevilla','Andalucia','458745216','45874587S','sd.sad7@resolvo.com','2004-05-19','administrador','pc'),(50,'Javier','Lorente','Julianes','65236','Lugo','Galicia','596589654','58965412E','javier.lorente@resolvo.com','2024-02-28','tecnico','movil'),(51,'Laura','Perez','Rivera','45875','Lugo','Galicia','620158965','45896215D','laura.perez@resolvo.com','2024-05-28','administrador','otro'),(52,'Felipe','Gutierres Anton','La vida misma','458745','Getafe','Madrid','523695632','45852630W','felipe.gutierres.anton@resolvo.com','2024-05-29','tecnico','electrodomesticos'),(56,'Marta','de lunares','Rivera','87542','Lugo','Galicia','520369854','45852369L','marta.de.lunares@resolvo.com','2024-05-27','administrador','electrodomesticos'),(58,'Marta','de lunares','Rivera','87542','Lugo','Galicia','520369854','45852369L','marta.de.lunares2@resolvo.com','2024-05-27','administrador','electrodomesticos'),(59,'Belen','Marin Sanchez','Calle Bonita','28942','Fuenlabrada','Madrid','666778855','8989898G','belen.marin.sanchez@resolvo.com','1996-05-16','tecnico','otro'),(60,'Maria','Gonzalez Fernandez','Calle Mayor 5','28015','Madrid','Madrid','987654321','87654321Y','maria.gonzalez.fernandez@resolvo.com','1990-07-12','administrador','otro'),(61,'Pedro','Sanchez Martin','Paseo del Prado 20','41001','Sevilla','Sevilla','852471369','75241368Z','pedro.sanchez.martin@resolvo.com','1975-03-25','tecnico','pc'),(62,'María','López','Calle del Sol 10','41001','Sevilla','Sevilla','987654321','87654321B','maría.lópez@resolvo.com','1990-07-15','administrador','pc'),(63,'Pedro','García','Paseo de la Castellana 200','28046','Madrid','Madrid','123789456','65412378A','pedro.garcía@resolvo.com','1975-12-24','tecnico','electrodomesticos'),(64,'Juan','Pérez','Gran Vía 35','28013','Madrid','Madrid','654321098','12345678A','juan.pérez@resolvo.com','1980-01-01','tecnico','movil'),(65,'María','López','Paseo de la Castellana 100','08007','Barcelona','Barcelona','987654321','87654321B','maría.lópez1@resolvo.com','1990-07-12','administrador','pc'),(66,'David','Gutiérrez','Calle Mayor 4','41001','Sevilla','Sevilla','123876540','09876543C','david.gutiérrez@resolvo.com','1975-11-23','tecnico','electrodomesticos'),(67,'Juan','Pérez','Gran Vía 123','08001','Barcelona','Barcelona','654321001','12345678A','juan.pérez1@resolvo.com','1980-01-01','tecnico','movil'),(68,'María','López','Calle Mayor 456','28015','Madrid','Madrid','600987123','87654321B','maría.lópez2@resolvo.com','1990-07-15','administrador','pc'),(69,'María','López','Calle Mayor 10','11111','Sevilla','Sevilla','987654321','87654321B','maría.lópez3@resolvo.com','1990-07-14','administrador','pc'),(70,'Pedro','García','Avenida Constitución 22','46007','Valencia','Valencia','543216789','98765432A','pedro.garcía1@resolvo.com','1975-12-25','tecnico','electrodomesticos'),(74,'Juan','Pérez López','Gran Vía 35','28013','Madrid','Madrid','654321098','12345678A','juan.pérez.lópez@resolvo.com','1980-01-01','administrador','movil'),(75,'María','García Fernández','Paseo de la Castellana 100','41001','Sevilla','Sevilla','678901234','87654321B','maría.garcía.fernández@resolvo.com','1985-07-15','tecnico','pc'),(76,'Pedro','Sánchez Romero','Rambla Catalunya 25','08007','Barcelona','Barcelona','789012345','98765432C','pedro.sánchez.romero@resolvo.com','1990-03-22','tecnico','otro'),(77,'Juan','Perez Garcia','Calle Mayor, 123','08000','Barcelona','Barcelona','654321098','12345678A','juan.perez.garcia@resolvo.com','1980-01-01','tecnico','movil'),(78,'Name','Last Name','Fake Street 123','00000','Anytown','Some Province','123456789','12345678A','name.last.name@resolvo.com','1990-01-01','tecnico','movil'),(79,'Juan','Perez Garcia','Gran Via 32','08007','Barcelona','Barcelona','654321098','12345678A','juan.perez.garcia1@resolvo.com','1980-01-01','tecnico','movil'),(80,'Maria','Lopez Sanchez','C/ Mayor 123','46007','Valencia','Valencia','963210547','87654321B','maria.lopez.sanchez@resolvo.com','1990-07-15','administrador','pc'),(81,'Pedro','Ruiz Martinez','Calle Sevilla 4','28010','Madrid','Madrid','789654123','01234567C','pedro.ruiz.martinez@resolvo.com','1975-12-24','tecnico','otro');
/*!40000 ALTER TABLE `trabajador` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trabajador_before_insert_email` BEFORE INSERT ON `trabajador` FOR EACH ROW BEGIN
  DECLARE dominio_correo VARCHAR(50);
  DECLARE contador_emails INT;


  SET dominio_correo = '@resolvo.com';

  SET contador_emails = 0;

	SET NEW.email = CONCAT(
      LOWER(NEW.nombre), '.', LOWER(REPLACE(NEW.apellidos, ' ', '.')), dominio_correo);


  WHILE EXISTS(
    SELECT 1
    FROM `trabajador`
    WHERE `email`= NEW.email
  )DO
	    	SET contador_emails = contador_emails + 1;
	    	SET NEW.email = CONCAT(
	    	  LOWER(NEW.nombre), '.', LOWER(REPLACE(NEW.apellidos, ' ', '.')), contador_emails, dominio_correo
	   	 );
  END WHILE;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trabajador_after_insert` AFTER INSERT ON `trabajador` FOR EACH ROW BEGIN
	DECLARE random_password VARCHAR(255);
  	SET random_password = SHA256('Resolvo');
  	INSERT INTO usuariointerno(`idTrabajador`, `email`, `material`) 
  	VALUES(NEW.idTrabajador, NEW.email, random_password);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trabajador_after_update` BEFORE UPDATE ON `trabajador` FOR EACH ROW BEGIN
	IF OLD.email != NEW.email THEN
		UPDATE usuariointerno SET email= NEW.email WHERE idTrabajador= OLD.idTrabajador;
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trabajador_before_delete` BEFORE DELETE ON `trabajador` FOR EACH ROW BEGIN
INSERT INTO `trabajadoreliminado` (`idTrabajador`, `nombre`, `apellidos`, `calle`, `codPostal`, `ciudad`, `provincia`, `telefono`, `dni`, `email`, `fechaNacimiento`, `cargo`, `especializacion`, `fechaEliminacion`, `usuarioEliminacion`) VALUES (OLD.idTrabajador, OLD.nombre, OLD.apellidos, OLD.calle, OLD.codPostal, OLD.ciudad, OLD.provincia, OLD.telefono, OLD.dni, OLD.email, OLD.fechaNacimiento, OLD.cargo, OLD.especializacion, current_timestamp(), user());
DELETE FROM usuariointerno WHERE idTrabajador=OLD.idTrabajador;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `trabajadoreliminado`
--

DROP TABLE IF EXISTS `trabajadoreliminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajadoreliminado` (
  `idTrabajador` int unsigned NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `calle` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `codPostal` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ciudad` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provincia` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dni` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `cargo` enum('administrador','tecnico') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `especializacion` enum('mobil','pc','portailes','electrodomesticos','otro') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'otro',
  `idTrabajadorEliminacion` int NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idTrabajadorEliminacion`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadoreliminado`
--

LOCK TABLES `trabajadoreliminado` WRITE;
/*!40000 ALTER TABLE `trabajadoreliminado` DISABLE KEYS */;
INSERT INTO `trabajadoreliminado` VALUES (10,'Tobias','Martinez Hernandez','La Amargura','25841','Madrid','Madrid','589654521','45125875D','tobias.martinez.hernandez2@resolvo.com','1984-05-06','administrador','',3,'2024-05-20 00:00:00','root@localhost'),(19,'Turen','Fernandez del Bosque','Martinez almeida','5487521369','Loranca','Badajoz','458962014','658963214','turen.fernandez.del.bosque@resolvo.com','2024-05-30','tecnico','otro',23,'2024-06-03 19:12:52','root@localhost'),(18,'Javier','Peleto','Burdel','458745','Sevilla','Andalucia','458745216','45874587S','javier.peleto@resolvo.com','2004-05-19','administrador','otro',24,'2024-06-06 20:29:58','root@localhost'),(15,'Laura','Fernandez del Bosque','tuto','458745','Madrid','Madrid','58952103','58745214P','laura.fernandez.del.bosque@resolvo.com','1982-01-20','tecnico','',25,'2024-06-06 20:30:51','root@localhost'),(20,'Tobias','Martinez Hernandez','La Amargura','25841','Madrid','Madrid','589654521','45125875D','tobias.martinez.hernandez@resolvo.com','1984-05-06','administrador','otro',26,'2024-06-06 20:33:34','root@localhost'),(21,'Petunia','Gloria del Pardo','La Amargura','25841','Madrid','Madrid','589654521','45125875D','petunia.gloria.del.pardo@resolvo.com','1984-05-06','administrador','otro',27,'2024-06-06 20:38:00','root@localhost'),(10,'Belen','Marin Sanchez','Calle Bonita','28942','Fuenlabrada','Madrid','666778855','8989898G','belen.marin.sanchez@resolvo.com','1996-05-16','tecnico','pc',28,'2024-06-06 20:44:54','root@localhost'),(45,'sd','sad','asd','das','dsaasd','dsaasd','das','ads','sd.sad6@resolvo.com','2024-06-11','administrador','electrodomesticos',29,'2024-06-07 00:51:53','root@localhost'),(49,'sd','sad','asd','das','dsaasd','dsaasd','das','ads','sd.sad10@resolvo.com','2024-06-11','administrador','electrodomesticos',30,'2024-06-07 00:52:01','root@localhost'),(25,'gerardo','Cuevas Funtes','Calle de los Dolores','28943','Alcorcon','Madrid','678904567','76849872D','gerardo.cuevas.funtes2@resolvo.com','1996-07-12','tecnico','pc',31,'2024-06-07 20:02:49','root@localhost'),(40,'sd','sad','asd','das','dsaasd','dsaasd','das','ads','sd.sad1@resolvo.com','2024-06-11','administrador','electrodomesticos',32,'2024-06-07 20:04:43','root@localhost'),(24,'gerardo','Cuevas Funtes','Calle de los Dolores','28943','Alcorcon','Madrid','678904567','76849872D','gerardo.cuevas.funtes1@resolvo.com','1996-07-12','tecnico','pc',33,'2024-06-07 20:04:54','root@localhost'),(48,'sd','sad','asd','das','dsaasd','dsaasd','das','ads','sd.sad9@resolvo.com','2024-06-11','administrador','electrodomesticos',34,'2024-06-07 20:05:11','root@localhost'),(47,'sd','sad','asd','das','dsaasd','dsaasd','das','ads','sd.sad8@resolvo.com','2024-06-11','administrador','electrodomesticos',35,'2024-06-07 20:06:44','root@localhost'),(26,'asdas','asdasfddf','asdasdad','sdasda','asdasd','asdsada','asdasd','dasdas','asdas.asdasfddf@resolvo.com','1996-07-12','tecnico','pc',36,'2024-06-08 00:30:07','root@localhost'),(53,'sda','asd','asd','asd','asd','asd','234','asd','sda.asd@resolvo.com','2024-06-14','tecnico','pc',37,'2024-06-08 00:30:46','root@localhost'),(55,'sda','asd','asd','asd','asd','asd','234','asd','sda.asd2@resolvo.com','2024-06-14','tecnico','pc',38,'2024-06-08 00:30:56','root@localhost'),(54,'sda','asd','asd','asd','asd','asd','234','asd','sda.asd1@resolvo.com','2024-06-14','tecnico','pc',39,'2024-06-08 00:31:01','root@localhost'),(57,'Marta','de lunares','Rivera','87542','Lugo','Galicia','520369854','45852369L','marta.de.lunares1@resolvo.com','2024-05-27','administrador','electrodomesticos',40,'2024-06-09 15:13:13','root@localhost'),(35,'Dafne','Gutierrez','Logrebas','','fd','df','fd','df','df.fd1@resolvo.com','2024-06-05','administrador','',41,'2024-06-09 15:19:31','root@localhost'),(36,'df','fd','df','df','fd','df','fd','df','df.fd2@resolvo.com','2024-06-05','administrador','pc',42,'2024-06-09 15:19:36','root@localhost'),(39,'sd','sad','asd','das','dsaasd','dsaasd','das','ads','sd.sad@resolvo.com','2024-06-11','administrador','electrodomesticos',43,'2024-06-09 15:19:41','root@localhost'),(41,'sd','sad','asd','das','dsaasd','dsaasd','das','ads','sd.sad2@resolvo.com','2024-06-11','administrador','electrodomesticos',44,'2024-06-09 15:19:45','root@localhost'),(42,'sd','sad','asd','das','dsaasd','dsaasd','das','ads','sd.sad3@resolvo.com','2024-06-11','administrador','electrodomesticos',45,'2024-06-09 15:19:49','root@localhost'),(43,'sd','sad','asd','das','dsaasd','dsaasd','das','ads','sd.sad4@resolvo.com','2024-06-11','administrador','electrodomesticos',46,'2024-06-09 15:19:53','root@localhost'),(44,'sd','sad','asd','das','dsaasd','dsaasd','das','ads','sd.sad5@resolvo.com','2024-06-11','administrador','electrodomesticos',47,'2024-06-09 15:19:58','root@localhost'),(72,'Ana','Lopez',NULL,NULL,NULL,NULL,NULL,'87654321X','ana.lopez@resolvo.com',NULL,'tecnico','pc',48,'2024-06-09 16:27:48','root@localhost'),(71,'Pedro','Garcia',NULL,NULL,NULL,NULL,NULL,'09876543Z','pedro.garcia2@resolvo.com',NULL,'tecnico','pc',49,'2024-06-09 16:27:53','root@localhost'),(73,'Luis','Sanchez',NULL,NULL,NULL,NULL,NULL,'65432109Y','luis.sanchez@resolvo.com',NULL,'tecnico','pc',50,'2024-06-09 16:27:56','root@localhost');
/*!40000 ALTER TABLE `trabajadoreliminado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarioexterno`
--

DROP TABLE IF EXISTS `usuarioexterno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarioexterno` (
  `idUsuarioExterno` int NOT NULL AUTO_INCREMENT,
  `idCliente` int unsigned DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idUsuarioExterno`),
  KEY `FK_usuarioexterno_cliente_ID` (`idCliente`),
  KEY `FK_usuarioexterno_cliente_email` (`email`),
  CONSTRAINT `FK_usuarioexterno_cliente_ID` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioexterno`
--

LOCK TABLES `usuarioexterno` WRITE;
/*!40000 ALTER TABLE `usuarioexterno` DISABLE KEYS */;
INSERT INTO `usuarioexterno` VALUES (10,45,'anibal.martin@juanxxiii.net','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(11,46,'zulema.tagarro@juanxxiii.net','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(12,47,'javier.prieto@juanxxiii.net','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(13,48,'miguelangel.aparicio@juanxxiii.net','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(14,49,'julian.delcastillo@juanxxiii.net','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(15,0,'luisRomero@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(16,13,'MariaLopez@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(17,9,'soxcram96@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(18,14,'pedroGarcoa@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(19,17,'SandraBlanco@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(20,18,'LauraFernandez@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(21,19,'DanielMartinez@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(22,20,'juan.perez@example.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(23,27,'Turen@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(24,28,'lauritajiji@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(25,29,'david.martin@emptystreet.es','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(26,31,'TurenMaster@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(27,34,'lauritajijiji@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(28,36,'jose.garcia@ñuño.es','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(29,37,'alice.thompson@usa.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(30,38,'maria.lopez@company.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(31,39,'ana.fernandez@support.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(32,40,'pedro.ruiz@unlimited.net','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(33,41,'JuanPerez@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(34,42,'Pedro@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(35,43,'AnaHernandez@gmail.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f'),(36,44,'marcos.merino@juanxxiii.net','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f');
/*!40000 ALTER TABLE `usuarioexterno` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `usuarioexterno_before_delete` BEFORE DELETE ON `usuarioexterno` FOR EACH ROW BEGIN
INSERT INTO `usuarioexternoeliminado` (`idUsuarioExterno`, `idCliente`, `email`, `material`, `idusuarioExternoEliminacion`, `fechaEliminacion`, `usuarioEliminacion`) VALUES (OLD.idUsuarioExterno, OLD.idCliente, OLD.email, OLD.material, NULL, current_timestamp(), user());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuarioexternoeliminado`
--

DROP TABLE IF EXISTS `usuarioexternoeliminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarioexternoeliminado` (
  `idUsuarioExterno` int NOT NULL,
  `idCliente` int unsigned DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idusuarioExternoEliminacion` int NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idusuarioExternoEliminacion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioexternoeliminado`
--

LOCK TABLES `usuarioexternoeliminado` WRITE;
/*!40000 ALTER TABLE `usuarioexternoeliminado` DISABLE KEYS */;
INSERT INTO `usuarioexternoeliminado` VALUES (0,NULL,NULL,NULL,1,'2024-05-20 00:00:00','user()'),(8,8,'lauritajiji@gmail.com','Cliente123',2,'2024-05-20 00:00:00','root@localhost'),(9,15,'ana@gmail.com','123',3,'2024-05-31 18:28:54','root@localhost');
/*!40000 ALTER TABLE `usuarioexternoeliminado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariointerno`
--

DROP TABLE IF EXISTS `usuariointerno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuariointerno` (
  `idUsuarioInterno` int NOT NULL AUTO_INCREMENT,
  `idTrabajador` int unsigned DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primeraVez` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idUsuarioInterno`),
  KEY `FK_usuariointerno_trabajador_Id` (`idTrabajador`),
  KEY `FK_usuariointerno_trabajador_email` (`email`),
  CONSTRAINT `FK_usuariointerno_trabajador` FOREIGN KEY (`email`) REFERENCES `trabajador` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariointerno`
--

LOCK TABLES `usuariointerno` WRITE;
/*!40000 ALTER TABLE `usuariointerno` DISABLE KEYS */;
INSERT INTO `usuariointerno` VALUES (13,14,'soxcram96@gmail.com','e24a929a910745ee6eaa29df3de9b893bf03499e98208d066293472ef4638335',0),(22,22,'ezequiel.cuevas.funtes@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(23,23,'gerardo.cuevas.funtes@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(27,27,'ezequiel.cuevas.@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(28,28,'marcos.merino@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(29,29,'tobias.martinez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(30,30,'ezequiel.cuevas.funtes1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(31,31,'ezequiel.cuevas.funtes2@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(32,32,'df.fd@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(33,33,'ezequiel.merino@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(34,34,'marcos.merino1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(37,37,'carlos.fd@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(38,38,'pedro.jimenez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(46,46,'sd.sad7@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(50,50,'javier.lorente@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(51,51,'laura.perez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(52,52,'felipe.gutierres.anton@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(56,56,'marta.de.lunares@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(58,58,'marta.de.lunares2@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(59,59,'belen.marin.sanchez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(60,60,'maria.gonzalez.fernandez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(61,61,'pedro.sanchez.martin@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(62,62,'maría.lópez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(63,63,'pedro.garcía@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(64,64,'juan.pérez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(65,65,'maría.lópez1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(66,66,'david.gutiérrez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(67,67,'juan.pérez1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(68,68,'maría.lópez2@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(69,69,'maría.lópez3@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(70,70,'pedro.garcía1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(74,74,'juan.pérez.lópez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(75,75,'maría.garcía.fernández@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(76,76,'pedro.sánchez.romero@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(77,77,'juan.perez.garcia@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(78,78,'name.last.name@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(79,79,'juan.perez.garcia1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(80,80,'maria.lopez.sanchez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(81,81,'pedro.ruiz.martinez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1);
/*!40000 ALTER TABLE `usuariointerno` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `usuariointerno_before_delete` AFTER DELETE ON `usuariointerno` FOR EACH ROW BEGIN
INSERT INTO `usuariointernoeliminado` (`idUsuarioInterno`, `idTrabajador`, `email`, `material`,`primeraVez` ,`fechaEliminacion`, `usuarioEliminacion`,`idUsuarioInternoEliminacion`)
 VALUES (OLD.idUsuarioInterno, OLD.idTrabajador, OLD.email, OLD.material, OLD.primeraVez, current_timestamp(), USER(), NULL);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `usuariointernoeliminado`
--

DROP TABLE IF EXISTS `usuariointernoeliminado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuariointernoeliminado` (
  `idUsuarioInterno` int NOT NULL,
  `idTrabajador` int unsigned DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primeraVez` tinyint(1) NOT NULL DEFAULT '1',
  `idusuarioInternoEliminacion` int unsigned NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idusuarioInternoEliminacion`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariointernoeliminado`
--

LOCK TABLES `usuariointernoeliminado` WRITE;
/*!40000 ALTER TABLE `usuariointernoeliminado` DISABLE KEYS */;
INSERT INTO `usuariointernoeliminado` VALUES (19,19,'turen.fernandez.del.bosque@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',0,5,'2024-06-03 19:12:52','root@localhost'),(18,18,'javier.peleto@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,6,'2024-06-06 20:29:58','root@localhost'),(14,15,'laura.fernandez.del.bosque@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',0,7,'2024-06-06 20:30:51','root@localhost'),(20,20,'tobias.martinez.hernandez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,8,'2024-06-06 20:33:34','root@localhost'),(21,21,'petunia.gloria.del.pardo@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,9,'2024-06-06 20:38:00','root@localhost'),(17,10,'belen.marin.sanchez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',0,10,'2024-06-06 20:44:54','root@localhost'),(45,45,'sd.sad6@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,11,'2024-06-07 00:51:53','root@localhost'),(49,49,'sd.sad10@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,12,'2024-06-07 00:52:01','root@localhost'),(25,25,'gerardo.cuevas.funtes2@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,13,'2024-06-07 20:02:49','root@localhost'),(40,40,'sd.sad1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,14,'2024-06-07 20:04:43','root@localhost'),(24,24,'gerardo.cuevas.funtes1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,15,'2024-06-07 20:04:54','root@localhost'),(48,48,'sd.sad9@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,16,'2024-06-07 20:05:11','root@localhost'),(47,47,'sd.sad8@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,17,'2024-06-07 20:06:44','root@localhost'),(26,26,'asdas.asdasfddf@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,18,'2024-06-08 00:30:07','root@localhost'),(53,53,'sda.asd@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,19,'2024-06-08 00:30:46','root@localhost'),(55,55,'sda.asd2@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,20,'2024-06-08 00:30:56','root@localhost'),(54,54,'sda.asd1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,21,'2024-06-08 00:31:01','root@localhost'),(57,57,'marta.de.lunares1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,22,'2024-06-09 15:13:13','root@localhost'),(35,35,'df.fd1@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,23,'2024-06-09 15:19:31','root@localhost'),(36,36,'df.fd2@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,24,'2024-06-09 15:19:36','root@localhost'),(39,39,'sd.sad@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,25,'2024-06-09 15:19:41','root@localhost'),(41,41,'sd.sad2@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,26,'2024-06-09 15:19:45','root@localhost'),(42,42,'sd.sad3@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,27,'2024-06-09 15:19:49','root@localhost'),(43,43,'sd.sad4@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,28,'2024-06-09 15:19:53','root@localhost'),(44,44,'sd.sad5@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,29,'2024-06-09 15:19:58','root@localhost'),(72,72,'ana.lopez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,30,'2024-06-09 16:27:48','root@localhost'),(71,71,'pedro.garcia2@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,31,'2024-06-09 16:27:53','root@localhost'),(73,73,'luis.sanchez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1,32,'2024-06-09 16:27:56','root@localhost');
/*!40000 ALTER TABLE `usuariointernoeliminado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'resolvo'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `resetNumIncidencias` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = '+00:00' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `resetNumIncidencias` ON SCHEDULE EVERY '0-1' YEAR_MONTH STARTS '2024-05-21 19:04:11' ON COMPLETION PRESERVE ENABLE DO BEGIN
	UPDATE cliente SET numIncidencias = 0 WHERE contrato="noTiene";
	UPDATE cliente SET numIncidencias = 10 WHERE contrato="limitado";
	UPDATE cliente SET numIncidencias = 1000000 WHERE contrato="ilimitado";
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'resolvo'
--
/*!50003 DROP FUNCTION IF EXISTS `sha256` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sha256`(`input_string` VARCHAR(255)) RETURNS varchar(255) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
    DETERMINISTIC
BEGIN
  DECLARE hash_result VARCHAR(255);

  SET hash_result = SHA2(input_string, 256);

  RETURN hash_result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-09 18:00:26
