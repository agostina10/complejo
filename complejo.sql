-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 19-10-2016 a las 17:00:53
-- Versión del servidor: 5.5.52-0+deb8u1
-- Versión de PHP: 5.6.26-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `complejo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

CREATE TABLE IF NOT EXISTS `profesores` (
`id` int(10) unsigned NOT NULL,
  `dni` char(8) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `domicilio` varchar(80) DEFAULT NULL,
  `telefono` varchar(80) DEFAULT NULL,
  `celular` varchar(80) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `fechaingreso` date DEFAULT NULL,
  `fechamovimiento` date DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `observaciones` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `dni`, `nombre`, `apellido`, `domicilio`, `telefono`, `celular`, `email`, `fechaingreso`, `fechamovimiento`, `estado`, `observaciones`) VALUES
(1, '12345678', 'mariel', 'Gomez', '6 y 50', '123456', '15-5311111', 'ag@gmail.com', '2016-10-11', '2016-11-01', 'A', 'pileta en verano'),
(2, '87654321', 'Rosa', 'S', '8 y 50', '123-1234987', '123-5987432', 'rosa@gmail.com', '2016-10-19', '2016-10-19', 'A', 'Da patines si no los perdio'),
(11, '24041986', 'Julia', 'C', '650', '123456', '15-5317304', 'cen@gmail.com', '2016-10-10', '2016-10-10', 'A', 'hola! chau');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(11) NOT NULL,
  `usuario` varchar(8) NOT NULL,
  `clave` varchar(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `clave`) VALUES
(1, 'admin', 'asdf1234');

INSERT INTO `usuarios` (`id`, `usuario`, `clave`) VALUES
(2, 'empleado', '123456');
--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `profesores`
--
ALTER TABLE `profesores`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `profesores`
--
ALTER TABLE `profesores`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

