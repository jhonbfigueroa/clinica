-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 21-06-2020 a las 07:54:58
-- Versión del servidor: 5.7.25-log
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `clinica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE IF NOT EXISTS `administradores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` text COLLATE utf8_spanish_ci,
  `clave` text COLLATE utf8_spanish_ci,
  `nombre` text COLLATE utf8_spanish_ci,
  `apellido` text COLLATE utf8_spanish_ci,
  `foto` text COLLATE utf8_spanish_ci,
  `rol` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `usuario`, `clave`, `nombre`, `apellido`, `foto`, `rol`) VALUES
(1, 'admin', '123', 'Usuario', 'Administrador', 'Vistas/img/Usuarios/A-211.png', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

DROP TABLE IF EXISTS `citas`;
CREATE TABLE IF NOT EXISTS `citas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_doctor` int(11) DEFAULT NULL,
  `id_consultorio` int(11) DEFAULT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `nyaP` text COLLATE utf8_spanish_ci,
  `documento` text COLLATE utf8_spanish_ci,
  `inicio` datetime DEFAULT NULL,
  `fin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultorios`
--

DROP TABLE IF EXISTS `consultorios`;
CREATE TABLE IF NOT EXISTS `consultorios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `consultorios`
--

INSERT INTO `consultorios` (`id`, `nombre`) VALUES
(1, 'Odontología'),
(2, 'Dental');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `doctores`
--

DROP TABLE IF EXISTS `doctores`;
CREATE TABLE IF NOT EXISTS `doctores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_consultorio` int(11) NOT NULL,
  `apellido` text COLLATE utf8_spanish_ci,
  `nombre` text COLLATE utf8_spanish_ci,
  `foto` text COLLATE utf8_spanish_ci,
  `usuario` text COLLATE utf8_spanish_ci,
  `clave` text COLLATE utf8_spanish_ci,
  `sexo` text COLLATE utf8_spanish_ci,
  `horarioE` time DEFAULT NULL,
  `horarioS` time DEFAULT NULL,
  `rol` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `doctores`
--

INSERT INTO `doctores` (`id`, `id_consultorio`, `apellido`, `nombre`, `foto`, `usuario`, `clave`, `sexo`, `horarioE`, `horarioS`, `rol`) VALUES
(1, 1, 'Jose', 'Jorge', '', 'doctor', '123', 'Masculino', '00:23:00', '11:23:00', 'Doctor'),
(2, 1, 'Gonzales', 'Ivan', NULL, 'admin', '12', 'Masculino', NULL, NULL, 'Doctor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inicio`
--

DROP TABLE IF EXISTS `inicio`;
CREATE TABLE IF NOT EXISTS `inicio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intro` text COLLATE utf8_spanish_ci,
  `horaE` time DEFAULT NULL,
  `horaS` time DEFAULT NULL,
  `telefono` text COLLATE utf8_spanish_ci,
  `correo` text COLLATE utf8_spanish_ci,
  `direccion` text COLLATE utf8_spanish_ci,
  `logo` text COLLATE utf8_spanish_ci,
  `favicon` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inicio`
--

INSERT INTO `inicio` (`id`, `intro`, `horaE`, `horaS`, `telefono`, `correo`, `direccion`, `logo`, `favicon`) VALUES
(1, 'Bienvenido a la Clínica Salud Health', '07:00:00', '18:00:00', '989-8468', 'jbfigueroa@soy.sena.edu.co', 'Av. Stardew Valley 777', 'Vistas/img/logo.png', 'Vistas/img/favicon.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE IF NOT EXISTS `pacientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apellido` text COLLATE utf8_spanish_ci,
  `nombre` text COLLATE utf8_spanish_ci,
  `documento` text COLLATE utf8_spanish_ci,
  `foto` text COLLATE utf8_spanish_ci,
  `usuario` text COLLATE utf8_spanish_ci,
  `clave` text COLLATE utf8_spanish_ci,
  `rol` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `apellido`, `nombre`, `documento`, `foto`, `usuario`, `clave`, `rol`) VALUES
(1, 'Ivan', 'Jose', '56787567', NULL, 'paciente', '123', 'Paciente'),
(2, 'Jose', 'mamani', '23451234', NULL, '1', '1', 'Paciente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secretarias`
--

DROP TABLE IF EXISTS `secretarias`;
CREATE TABLE IF NOT EXISTS `secretarias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `clave` text COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `apellido` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci,
  `rol` text COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `secretarias`
--

INSERT INTO `secretarias` (`id`, `usuario`, `clave`, `nombre`, `apellido`, `foto`, `rol`) VALUES
(1, 'mary', '123', 'Maria', 'Gaspar', 'Vistas/img/Secretarias/S-68.jpg', 'Secretaria');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
