-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-05-2018 a las 19:10:56
-- Versión del servidor: 10.1.31-MariaDB
-- Versión de PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `crud_reptiles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprador`
--

CREATE TABLE `comprador` (
  `codcomprador` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `primerApellido` text NOT NULL,
  `segundoApellido` text NOT NULL,
  `dni` varchar(9) NOT NULL,
  `sexo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `comprador`
--

INSERT INTO `comprador` (`codcomprador`, `nombre`, `primerApellido`, `segundoApellido`, `dni`, `sexo`) VALUES
(10, 'luis', 'Sánchez', '', '12345678A', 'Hombre'),
(11, 'Antonio', 'Martín', '', '11345678A', 'Hombre'),
(12, 'Eva', 'Perales', '', '11145678A', 'Mujer'),
(13, 'Pilar', 'Gonzalez', '', '11115678A', 'Mujer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `crias`
--

CREATE TABLE `crias` (
  `codcria` int(11) NOT NULL,
  `fase` text NOT NULL,
  `fechna` date NOT NULL,
  `estado` text NOT NULL,
  `sexo` text NOT NULL,
  `especie` varchar(255) DEFAULT 'macularius'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `crias`
--

INSERT INTO `crias` (`codcria`, `fase`, `fechna`, `estado`, `sexo`, `especie`) VALUES
(1, 'tangerine', '2018-03-20', 'vendida', 'macho', 'macularius'),
(2, 'stripe', '2018-02-16', 'vendida', 'hembra', 'macularius'),
(3, 'raptor', '2018-02-16', 'vendida', 'hembra', 'macularius'),
(4, 'nominal', '2018-02-17', 'vendida', 'macho', 'macularius'),
(5, 'tangerine', '2018-02-17', 'vendida', 'macho', 'macularius'),
(6, 'raptor', '2018-02-17', 'vendida', 'hembra', 'macularius'),
(7, 'stripe', '2018-02-17', 'enVenta', 'macho', 'macularius'),
(8, 'nominal', '2018-02-17', 'enVenta', 'hembra', 'macularius'),
(9, 'nominal', '2018-02-17', 'enVenta', 'hembra', 'macularius'),
(10, 'stripe', '2018-02-17', 'enVenta', 'hembra', 'macularius'),
(11, 'raptor', '2018-02-17', 'enVenta', 'hembra', 'macularius'),
(12, 'stripe', '2018-02-17', 'enVenta', 'macho', 'macularius'),
(13, 'raptor', '2018-02-21', 'enVenta', 'macho', 'macularius');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturados`
--

CREATE TABLE `facturados` (
  `codfact` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `codcria` int(11) NOT NULL,
  `codcomprador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `facturados`
--

INSERT INTO `facturados` (`codfact`, `fecha`, `codcria`, `codcomprador`) VALUES
(9, '2018-05-12 16:17:46', 7, 12),
(10, '2018-05-12 16:38:24', 7, 12),
(11, '2018-05-12 16:38:36', 9, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `geckos`
--

CREATE TABLE `geckos` (
  `codgecko` int(3) NOT NULL,
  `especie` text NOT NULL,
  `fase` text NOT NULL,
  `sexo` text NOT NULL,
  `fechana` date NOT NULL,
  `nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `geckos`
--

INSERT INTO `geckos` (`codgecko`, `especie`, `fase`, `sexo`, `fechana`, `nombre`) VALUES
(1, 'macularius', 'boldStriped', 'macho', '2015-06-10', 'lala'),
(2, 'eublepharis', 'raptor', 'macho', '2015-02-03', 'Luffy'),
(3, 'eublepharis', 'super raptor', 'hembra', '2017-04-20', 'Lucy'),
(4, 'macularius', 'shtc', 'hembra', '2015-05-19', 'Chell'),
(5, 'macularius', 'bellAlbino', 'macho', '2016-09-12', 'Hall');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comprador`
--
ALTER TABLE `comprador`
  ADD PRIMARY KEY (`codcomprador`);

--
-- Indices de la tabla `crias`
--
ALTER TABLE `crias`
  ADD PRIMARY KEY (`codcria`);

--
-- Indices de la tabla `facturados`
--
ALTER TABLE `facturados`
  ADD PRIMARY KEY (`codfact`),
  ADD KEY `facturados_ibfk_1` (`codcria`),
  ADD KEY `facturados_ibfk_2` (`codcomprador`);

--
-- Indices de la tabla `geckos`
--
ALTER TABLE `geckos`
  ADD PRIMARY KEY (`codgecko`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comprador`
--
ALTER TABLE `comprador`
  MODIFY `codcomprador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `crias`
--
ALTER TABLE `crias`
  MODIFY `codcria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `facturados`
--
ALTER TABLE `facturados`
  MODIFY `codfact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `geckos`
--
ALTER TABLE `geckos`
  MODIFY `codgecko` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
