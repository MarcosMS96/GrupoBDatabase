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
  `nombre` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `calle` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `codPostal` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `ciudad` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `provincia` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `dni` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `contrato` enum('noTiene','limitado','ilimitado') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'noTiene',
  `numIncidencias` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idCliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (0,'Luis','Romero','Calle Valencia 30','39002','Valencia','Valencia','963214578','22334455E','luisRomero@gmail.com','ilimitado',45623),(9,'Kiko','Martinez Florin','Herrero','458745','Madrid','Madrid','458745215','58745215P','Kiko@gmail.com','noTiene',0),(13,'María','López','Calle Mayor 12','41001','Sevilla','Sevilla','954781239','87654321B','MariaLopez@gmail.com','ilimitado',999999),(14,'Pedro','García','Rambla Catalunya 25','08007','Barcelona','Barcelona','931234567','90876543C','pedroGarcoa@gmail.com','noTiene',0),(17,'Sandra','Blanco','Calle Larios 15','29015','Málaga','Málaga','952147896','12345678A','SandraBlanco@gmail.com','noTiene',0),(18,'Laura','Fernández','Gran Vía 56','18001','Granada','Granada','985478123','33445566F','LauraFernandez@gmail.com','limitado',1),(19,'Daniel','Martínez','Calle Estafeta 42','31002','Pamplona','Navarra','948765432','44556677G','DanielMartinez@gmail.com','ilimitado',5000),(20,'Juan','Perez Garcia','Calle Mayor 123','08000','Barcelona','Barcelona','931234567','12345678A','juan.perez@example.com','noTiene',0),(27,'Turen','MasterMind','Álcantara','85126','Sevilla','Andalucia','875412026','85478514A','Turen@gmail.com','ilimitado',23214),(28,'Laura','Jimenez Margó','Luna de Cristal','25841','Madrid','Madrid','547852145','45125875D','lauritajiji@gmail.com','noTiene',0),(29,'David','Martin Torres','Albricias','39000','Santander','Cantabria','942310987','98765432E','david.martin@emptystreet.es','ilimitado',345665),(31,'Turen','MasterMind','Álcantara','85126','Sevilla','Andalucia','875412026','85478514A','TurenMaster@gmail.com','ilimitado',7),(34,'Laura','Jimenez Margó','Luna de Cristal','25841','Madrid','Madrid','547852145','45125875D','lauritajijiji@gmail.com','noTiene',0),(36,'José','García Díaz','Ñuño street 14','50000','Zaragoza','Zaragoza','976543210','09876543F','jose.garcia@ñuño.es','noTiene',0),(37,'Alice','Thompson','5th Avenue 10','10001','New York','New York','+12125551','123456789','alice.thompson@usa.com','noTiene',0),(38,'Maria','Lopez Sanchez','Gran Via 30','28000','Madrid','Madrid','917890123','87654321B','maria.lopez@company.com','limitado',2),(39,'Ana','Fernandez Blanco','Sevilla 21','11000','Sevilla','Sevilla','954678901','34567890D','ana.fernandez@support.com','limitado',4),(40,'Pedro','Ruiz Hernandez','Valencia 5','46000','Valencia','Valencia','654321987','23456789C','pedro.ruiz@unlimited.net','ilimitado',45),(41,'Juan','Pérez','Gran Vía 35','28013','Madrid','Madrid','915478963','12345678A','JuanPerez@gmail.com','limitado',6),(42,'Pedro','Martinez Florin','Herrero','458745','Madrid','Madrid','563200236','58745214P','Pedro@gmail.com','limitado',5),(43,'Ana','Hernández','Plaza del Pilar 10','50001','Zaragoza','Zaragoza','976543218','11223344D','AnaHernandez@gmail.com','limitado',2);
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
  `nombre` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `calle` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `codPostal` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `ciudad` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `provincia` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `telefono` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `dni` varchar(9) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `contrato` enum('noTiene','limitado','ilimitado') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'noTiene',
  `numIncidencias` int unsigned DEFAULT NULL,
  `idClienteEliminacion` int NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
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
  `dispositivo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `marca` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `modelo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `ubicacion` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `motivo` varchar(200) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `fechaAltaIncidencia` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` enum('pendiente','enCurso','cerrada','retenida') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pendiente',
  `informeTecnico` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechaCierreIncidencia` date DEFAULT NULL,
  `firmaDigital` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Fotografia` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idIncidencia`),
  KEY `FK_incidencia_cliente` (`idCliente`),
  KEY `FK_incidencia_trabajador` (`idTrabajador`),
  CONSTRAINT `FK_incidencia_cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_incidencia_trabajador` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incidencia`
--

LOCK TABLES `incidencia` WRITE;
/*!40000 ALTER TABLE `incidencia` DISABLE KEYS */;
INSERT INTO `incidencia` VALUES (1,9,14,'Teléfono','Samsung','07098','Herrero, 458745 Madrid, Madrid','Pantalla rota','2024-05-21 00:00:00','enCurso','meee',NULL,NULL,NULL),(5,9,20,'Nevera','Xiamon','E45G','Herrero, 458745 Madrid, Madrid','Rotura de la puerta del congelador','2024-05-20 00:00:00','pendiente',NULL,NULL,NULL,NULL),(10,9,15,'Microondas deluxe','Deluxe','12.5 Ultra','Herrero, 458745 Madrid, Madrid','No gira el plato','2024-05-20 00:00:00','pendiente',NULL,NULL,NULL,NULL),(11,9,10,'Mobil','Samsung','Galaxy A2','Herrero, 458745 Madrid, Madrid','Pantalla rota','2024-05-20 00:00:00','enCurso',NULL,NULL,NULL,NULL),(12,36,21,'Laptop Dell XPS 13','Dell','XPS 13','Ñuño street 14, 50000 Zaragoza, Zaragoza','Pantalla no enciende','2024-05-28 20:56:37','pendiente',NULL,NULL,NULL,NULL),(13,38,20,'Impresora HP LaserJet M402dn','HP','LaserJet M402dn','Gran Via 30, 28000 Madrid, Madrid','Atascada papel','2024-05-28 20:56:37','enCurso',NULL,NULL,NULL,NULL),(14,43,18,'Microondas deluxe','Deluxe','12','Plaza del Pilar 10, 50001 Zaragoza, Zaragoza','El plato no gira','2024-05-20 00:00:00','enCurso',NULL,NULL,NULL,NULL);
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
  `dispositivo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `marca` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `modelo` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `ubicación` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `motivo` varchar(200) COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `fechaAltaIncidencia` datetime DEFAULT CURRENT_TIMESTAMP,
  `estado` enum('pendiente','enCurso','cerrada','retenida') COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pendiente',
  `informeTecnico` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechaCierreIncidencia` date DEFAULT NULL,
  `firmaDigital` longblob,
  `idIncidenciaEliminada` int NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
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
  `descripcion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coste` decimal(20,6) DEFAULT NULL,
  `aceptado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idPresupuesto`),
  KEY `FK_presupuesto_cliente` (`idCliente`),
  KEY `FK_presupuesto_incidencia` (`idIncidencia`),
  CONSTRAINT `FK_presupuesto_cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `FK_presupuesto_incidencia` FOREIGN KEY (`idIncidencia`) REFERENCES `incidencia` (`idIncidencia`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presupuesto`
--

LOCK TABLES `presupuesto` WRITE;
/*!40000 ALTER TABLE `presupuesto` DISABLE KEYS */;
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
  `descripcion` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `coste` decimal(20,6) DEFAULT NULL,
  `aceptado` tinyint(1) DEFAULT NULL,
  `idPresupuestoEliminacion` int NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
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
  `nombre` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `calle` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `codPostal` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provincia` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(9) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dni` varchar(9) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `cargo` enum('administrador','tecnico') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `especializacion` enum('movil','pc','portatiles','electrodomesticos','otro') COLLATE utf8mb4_general_ci DEFAULT 'otro',
  PRIMARY KEY (`idTrabajador`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
INSERT INTO `trabajador` VALUES (10,'Belen','Marin Sanchez','Calle Bonita','28942','Fuenlabrada','Madrid','666778855','8989898G','belen.marin.sanchez@resolvo.com','1996-05-16','tecnico','pc'),(14,'soxcram','96','Laguna de Joatzel','45215','Getafe','Madrid','458512365','45214785A','soxcram96@gmail.com','1996-06-12','administrador','pc'),(15,'Laura','Fernandez del Bosque','tuto','458745','Madrid','Madrid','58952103','58745214P','laura.fernandez.del.bosque@resolvo.com','1982-01-20','tecnico','movil'),(18,'Javier','Peleto','Burdel','458745','Sevilla','Andalucia','458745216','45874587S','javier.peleto@resolvo.com','2004-05-19','administrador','otro'),(20,'Tobias','Martinez Hernandez','La Amargura','25841','Madrid','Madrid','589654521','45125875D','tobias.martinez.hernandez@resolvo.com','1984-05-06','administrador','otro'),(21,'Petunia','Gloria del Pardo','La Amargura','25841','Madrid','Madrid','589654521','45125875D','petunia.gloria.del.pardo@resolvo.com','1984-05-06','administrador','otro');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trabajador_after_update` AFTER UPDATE ON `trabajador` FOR EACH ROW BEGIN
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
  `nombre` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `calle` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `codPostal` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ciudad` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provincia` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telefono` varchar(9) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dni` varchar(9) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `cargo` enum('administrador','tecnico') COLLATE utf8mb4_general_ci DEFAULT NULL,
  `especializacion` enum('mobil','pc','portailes','electrodomesticos','otro') COLLATE utf8mb4_general_ci DEFAULT 'otro',
  `idTrabajadorEliminacion` int NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idTrabajadorEliminacion`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajadoreliminado`
--

LOCK TABLES `trabajadoreliminado` WRITE;
/*!40000 ALTER TABLE `trabajadoreliminado` DISABLE KEYS */;
INSERT INTO `trabajadoreliminado` VALUES (10,'Tobias','Martinez Hernandez','La Amargura','25841','Madrid','Madrid','589654521','45125875D','tobias.martinez.hernandez2@resolvo.com','1984-05-06','administrador','',3,'2024-05-20 00:00:00','root@localhost'),(19,'Turen','Fernandez del Bosque','Martinez almeida','5487521369','Loranca','Badajoz','458962014','658963214','turen.fernandez.del.bosque@resolvo.com','2024-05-30','tecnico','otro',23,'2024-06-03 19:12:52','root@localhost');
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
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idUsuarioExterno`),
  KEY `FK_usuarioexterno_cliente_ID` (`idCliente`),
  KEY `FK_usuarioexterno_cliente_email` (`email`),
  CONSTRAINT `FK_usuarioexterno_cliente_ID` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarioexterno`
--

LOCK TABLES `usuarioexterno` WRITE;
/*!40000 ALTER TABLE `usuarioexterno` DISABLE KEYS */;
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
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idusuarioExternoEliminacion` int NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
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
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primeraVez` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idUsuarioInterno`),
  KEY `FK_usuariointerno_trabajador_Id` (`idTrabajador`),
  KEY `FK_usuariointerno_trabajador_email` (`email`),
  CONSTRAINT `FK_usuariointerno_trabajador` FOREIGN KEY (`email`) REFERENCES `trabajador` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariointerno`
--

LOCK TABLES `usuariointerno` WRITE;
/*!40000 ALTER TABLE `usuariointerno` DISABLE KEYS */;
INSERT INTO `usuariointerno` VALUES (13,14,'soxcram96@gmail.com','e24a929a910745ee6eaa29df3de9b893bf03499e98208d066293472ef4638335',0),(14,15,'laura.fernandez.del.bosque@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',0),(17,10,'belen.marin.sanchez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',0),(18,18,'javier.peleto@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(20,20,'tobias.martinez.hernandez@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1),(21,21,'petunia.gloria.del.pardo@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',1);
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
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `material` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primeraVez` tinyint(1) NOT NULL DEFAULT '1',
  `idusuarioInternoEliminacion` int unsigned NOT NULL AUTO_INCREMENT,
  `fechaEliminacion` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuarioEliminacion` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idusuarioInternoEliminacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariointernoeliminado`
--

LOCK TABLES `usuariointernoeliminado` WRITE;
/*!40000 ALTER TABLE `usuariointernoeliminado` DISABLE KEYS */;
INSERT INTO `usuariointernoeliminado` VALUES (19,19,'turen.fernandez.del.bosque@resolvo.com','60af431ad8883228c4b5181140db3c4cb3e7d956aa81a5fbdf3601895784089f',0,5,'2024-06-03 19:12:52','root@localhost');
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

-- Dump completed on 2024-06-06 18:52:55
