-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2024 a las 16:25:00
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
  `contrato` enum('noTiene','limitado','ilimitado') NOT NULL DEFAULT 'noTiene'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`idCliente`, `nombre`, `apellidos`, `calle`, `codPostal`, `ciudad`, `provincia`, `telefono`, `dni`, `email`, `contrato`) VALUES
(1, 'Marcos', 'Merino', '', '', '', '', '', '', '', 'noTiene');

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
(1, 'Tobias', 'Martinez Hernandez', 'Periquito', '25841', 'Madrid', 'Madrid', '458521320', '45125875D', 'tobias@resolvo.com', '1984-05-06', 'tecnico', 'movil'),
(2, 'Gloria', 'Fernandez del Bosque', 'La Amargura', '78451', 'Leganes', 'Madrid', '526987545', '45236025A', 'Gloria@resolvo.com', '1982-01-20', 'tecnico', 'electrodomesticos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarioexterno`
--

CREATE TABLE `usuarioexterno` (
  `idUsuarioExterno` int(11) NOT NULL,
  `idCliente` int(11) UNSIGNED DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariointerno`
--

CREATE TABLE `usuariointerno` (
  `idUsuario` int(11) NOT NULL,
  `idTrabajador` int(11) UNSIGNED DEFAULT NULL,
  `usuario` varchar(50) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD KEY `FK_usuarioexterno_cliente` (`idCliente`);

--
-- Indices de la tabla `usuariointerno`
--
ALTER TABLE `usuariointerno`
  ADD PRIMARY KEY (`idUsuario`),
  ADD KEY `FK_usuariointerno_trabajador` (`idTrabajador`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
  MODIFY `idTrabajador` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarioexterno`
--
ALTER TABLE `usuarioexterno`
  MODIFY `idUsuarioExterno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuariointerno`
--
ALTER TABLE `usuariointerno`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `FK_usuarioexterno_cliente` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuariointerno`
--
ALTER TABLE `usuariointerno`
  ADD CONSTRAINT `FK_usuariointerno_trabajador` FOREIGN KEY (`idTrabajador`) REFERENCES `trabajador` (`idTrabajador`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
