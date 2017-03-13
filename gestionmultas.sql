-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-03-2017 a las 21:15:49
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `gestionmultas`
--
DROP DATABASE IF EXISTS gestionmultas;
CREATE DATABASE gestionmultas;
USE gestionmultas;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `abogado`
--

CREATE TABLE IF NOT EXISTS `abogado` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `sueldo` double NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `abogado`
--

INSERT INTO `abogado` (`dni`, `nombre`, `sueldo`) VALUES
('12345678L', 'Francisco', 500),
('32165498E', 'Paco', 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `telefono` int(9) NOT NULL,
  `email` varchar(20) NOT NULL,
  `fecha` varchar(20) NOT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`dni`, `nombre`, `telefono`, `email`, `fecha`) VALUES
('12345628k', 'Adrian', 639578412, 'mmm@jjj.com', '03/08/2017'),
('98765431t', 'Felix', 700000000, 'kkk@kk.es', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE IF NOT EXISTS `factura` (
  `id` int(2) NOT NULL,
  `nombre` varchar(7) NOT NULL,
  `fecha` date NOT NULL,
  `estados` varchar(20) NOT NULL,
  `importe` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multa`
--

CREATE TABLE IF NOT EXISTS `multa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `importe` float NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `alegaciones` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reclamacion`
--

CREATE TABLE IF NOT EXISTS `reclamacion` (
  `id` int(2) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `cliente` varchar(9) NOT NULL,
  `multa` varchar(11) NOT NULL,
  `abogado` varchar(9) NOT NULL,
  `factura` varchar(7) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
