-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-05-2024 a las 12:10:48
-- Versión del servidor: 10.4.25-MariaDB
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `resolvo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `calle` varchar(150) NOT NULL,
  `codPostal` varchar(10) NOT NULL,
  `ciudad` varchar(20) NOT NULL,
  `provincia` varchar(20) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contrato` enum('noTiene','limitado','ilimitado') NOT NULL DEFAULT 'noTiene',
  `numIncidencias` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombre`, `apellidos`, `calle`, `codPostal`, `ciudad`, `provincia`, `telefono`, `dni`, `email`, `contrato`, `numIncidencias`) VALUES
(8, 'Laura', 'Jimenez Margó', 'Luna de Cristal', '25841', 'Madrid', 'Madrid', '547852145', '45125875D', 'lauritajiji@gmail.com', 'noTiene', NULL),
(9, 'Kiko', 'Martinez Florin', 'Herrero', '458745', 'Madrid', 'Madrid', '58952103', '58745215P', 'Kiko@gmail.com', 'noTiene', 0),
(10, 'Pedro', 'Martinez Florin', 'Herrero', '458745', 'Madrid', 'Madrid', '859632145', '58745214P', 'Pedro@gmail.com', 'limitado', 10),
(11, 'Turen', 'MasterMind', 'Álcantara', '85126', 'Sevilla', 'Andalucia', '875412026', '85478514A', 'Turen@gmail.com', 'ilimitado', 1000000);

--
-- Disparadores `cliente`
--
DELIMITER $$
CREATE TRIGGER `cliente_before_insert` BEFORE INSERT ON `cliente` FOR EACH ROW BEGIN
	CASE 
		WHEN NEW.contrato LIKE "noTiene" THEN
		 SET NEW.numIncidencias=0;
		WHEN NEW.contrato LIKE "limitado" THEN 
			SET NEW.numIncidencias=10;
		WHEN NEW.contrato LIKE "ilimitado" THEN 
			SET NEW.numIncidencias=1000000;
	END CASE;	
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencia`
--

CREATE TABLE `incidencia` (
  `idIncidencia` int(11) NOT NULL,
  `idCliente` int(11) UNSIGNED NOT NULL,
  `idTrabajador` int(11) UNSIGNED NOT NULL,
  `dispositivo` varchar(50) NOT NULL DEFAULT '',
  `marca` varchar(50) NOT NULL DEFAULT '',
  `modelo` varchar(50) NOT NULL DEFAULT '',
  `motivo` varchar(200) NOT NULL DEFAULT '',
  `fechaAltaIncidencia` date DEFAULT current_timestamp(),
  `estado` enum('pendiente','enCurso','cerrada','retenida') NOT NULL DEFAULT 'pendiente',
  `informeTecnico` varchar(200) NOT NULL DEFAULT '',
  `fechaCierreIncidencia` date DEFAULT NULL,
  `firmaDigital` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `idMedia` int(11) NOT NULL,
  `idIncidencia` int(11) DEFAULT NULL,
  `data` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presupuesto`
--

CREATE TABLE `presupuesto` (
  `idPresupuesto` int(11) NOT NULL,
  `idIncidencia` int(11) DEFAULT NULL,
  `idCliente` int(11) UNSIGNED DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `coste` decimal(20,6) DEFAULT NULL,
  `aceptado` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `idTrabajador` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `calle` varchar(50) DEFAULT NULL,
  `codPostal` varchar(10) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `dni` varchar(9) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `cargo` enum('administrador','tecnico') DEFAULT NULL,
  `especializacion` enum('movil','pc','portailes','electrodomesticos','otro') DEFAULT 'otro'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`idTrabajador`, `nombre`, `apellidos`, `calle`, `codPostal`, `ciudad`, `provincia`, `telefono`, `dni`, `email`, `fechaNacimiento`, `cargo`, `especializacion`) VALUES
(6, 'Tobias', 'Martinez Hernandez', 'La Amargura', '25841', 'Madrid', 'Madrid', '589654521', '45125875D', 'tobias.martinez.hernandez@resolvo.com', '1984-05-06', 'administrador', 'movil'),
(9, 'Tobias', 'Martinez Hernandez', 'La Amargura', '25841', 'Madrid', 'Madrid', '589654521', '45125875D', 'tobias.martinez.hernandez1@resolvo.com', '1984-05-06', 'administrador', 'movil'),
(10, 'Tobias', 'Martinez Hernandez', 'La Amargura', '25841', 'Madrid', 'Madrid', '589654521', '45125875D', 'tobias.martinez.hernandez2@resolvo.com', '1984-05-06', 'administrador', 'movil'),
(11, 'Tobias', 'Martinez Hernandez', 'La Amargura', '25841', 'Madrid', 'Madrid', '589654521', '45125875D', 'tobias.martinez.hernandez3@resolvo.com', '1984-05-06', 'administrador', 'movil'),
(13, 'Tobias', 'Martinez Hernandez', 'La Amargura', '25841', 'Madrid', 'Madrid', '589654521', '45125875D', 'tobias.martinez.hernandez4@resolvo.com', '1984-05-06', 'administrador', 'movil');

--
-- Disparadores `trabajador`
--
DELIMITER $$
CREATE TRIGGER `trabajador_after_insert` AFTER INSERT ON `trabajador` FOR EACH ROW BEGIN
	DECLARE random_password VARCHAR(255);
  	SET random_password = MD5(RAND());
  	INSERT INTO usuariointerno(`idTrabajador`, `email`, `material`) 
  	VALUES(NEW.idTrabajador, NEW.email, random_password);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trabajador_after_update` AFTER UPDATE ON `trabajador` FOR EACH ROW BEGIN
	IF OLD.email != NEW.email THEN
		UPDATE usuariointerno SET email= NEW.email WHERE idTrabajador= OLD.idTrabajador;
	END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trabajador_before_insert_email` BEFORE INSERT ON `trabajador` FOR EACH ROW BEGIN
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
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioexterno`
--

CREATE TABLE `usuarioexterno` (
  `idUsuarioExterno` int(11) NOT NULL,
  `idCliente` int(11) UNSIGNED DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarioexterno`
--

INSERT INTO `usuarioexterno` (`idUsuarioExterno`, `idCliente`, `email`, `material`) VALUES
(8, 8, 'lauritajiji@gmail.com', 'Cliente123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariointerno`
--

CREATE TABLE `usuariointerno` (
  `idUsuarioInterno` int(11) NOT NULL,
  `idTrabajador` int(11) UNSIGNED DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `primeraVez` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuariointerno`
--

INSERT INTO `usuariointerno` (`idUsuarioInterno`, `idTrabajador`, `email`, `material`, `primeraVez`) VALUES
(6, 6, 'tobias.martinez.hernandez@resolvo.com', '1234', 1),
(9, 9, 'tobias.martinez.hernandez1@resolvo.com', '336ccbafd2ec31d0adb0c8284db3f6c1', 1),
(10, 10, 'tobias.martinez.hernandez2@resolvo.com', 'ffee965ad7f3513475fc1295e499ab4d', 1),
(11, 11, 'tobias.martinez.hernandez3@resolvo.com', '92844a53b7ba592897d8c29315e4a3e7', 1),
(12, 13, 'tobias.martinez.hernandez4@resolvo.com', '5bbdd0d2d09fe0ea61537a7848eceb4e', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD PRIMARY KEY (`idIncidencia`),
  ADD KEY `FK_incidencia_cliente` (`idCliente`),
  ADD KEY `FK_incidencia_trabajador` (`idTrabajador`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`idMedia`),
  ADD KEY `FK_media_incidencia` (`idIncidencia`);

--
-- Indices de la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD PRIMARY KEY (`idPresupuesto`),
  ADD KEY `FK_presupuesto_cliente` (`idCliente`),
  ADD KEY `FK_presupuesto_incidencia` (`idIncidencia`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`idTrabajador`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `usuarioexterno`
--
ALTER TABLE `usuarioexterno`
  ADD PRIMARY KEY (`idUsuarioExterno`),
  ADD KEY `FK_usuarioexterno_cliente_ID` (`idCliente`),
  ADD KEY `FK_usuarioexterno_cliente_email` (`email`);

--
-- Indices de la tabla `usuariointerno`
--
ALTER TABLE `usuariointerno`
  ADD PRIMARY KEY (`idUsuarioInterno`),
  ADD KEY `FK_usuariointerno_trabajador_Id` (`idTrabajador`),
  ADD KEY `FK_usuariointerno_trabajador_email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `incidencia`
--
ALTER TABLE `incidencia`
  MODIFY `idIncidencia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `idMedia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  MODIFY `idPresupuesto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  MODIFY `idTrabajador` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarioexterno`
--
ALTER TABLE `usuarioexterno`
  MODIFY `idUsuarioExterno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuariointerno`
--
ALTER TABLE `usuariointerno`
  MODIFY `idUsuarioInterno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `incidencia`
--
ALTER TABLE `incidencia`
  ADD CONSTRAINT `FK_incidencia_cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_incidencia_trabajador` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_media_incidencia` FOREIGN KEY (`idIncidencia`) REFERENCES `incidencia` (`idIncidencia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `presupuesto`
--
ALTER TABLE `presupuesto`
  ADD CONSTRAINT `FK_presupuesto_cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_presupuesto_incidencia` FOREIGN KEY (`idIncidencia`) REFERENCES `incidencia` (`idIncidencia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarioexterno`
--
ALTER TABLE `usuarioexterno`
  ADD CONSTRAINT `FK_usuarioexterno_cliente_ID` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_usuarioexterno_cliente_email` FOREIGN KEY (`email`) REFERENCES `cliente` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuariointerno`
--
ALTER TABLE `usuariointerno`
  ADD CONSTRAINT `FK_usuariointerno_trabajador_Id` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_usuariointerno_trabajador_email` FOREIGN KEY (`email`) REFERENCES `trabajador` (`email`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
