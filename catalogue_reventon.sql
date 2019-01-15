-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-01-2019 a las 20:10:10
-- Versión del servidor: 10.1.36-MariaDB
-- Versión de PHP: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `catalogue_reventon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `navbar`
--

CREATE TABLE `navbar` (
  `Id_navbar` int(11) NOT NULL,
  `Nom_navbar` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `Parent_navbar` int(11) NOT NULL,
  `Page_navbar` varchar(100) COLLATE utf8mb4_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `navbar`
--

INSERT INTO `navbar` (`Id_navbar`, `Nom_navbar`, `Parent_navbar`, `Page_navbar`) VALUES
(1, 'inicio', 0, 'index.php'),
(2, 'dama', 0, 'dama.php'),
(3, 'caballero', 0, 'caballero.php'),
(4, 'juvenil', 0, ''),
(5, 'niños', 0, ''),
(6, 'niñas', 0, ''),
(7, 'infantil', 0, ''),
(8, 'zapatos', 2, ''),
(9, 'balerinas', 2, ''),
(10, 'tenis', 2, ''),
(11, 'botas', 2, ''),
(12, 'Zapatillas', 2, ''),
(13, 'sandalias', 2, ''),
(14, 'zapatos', 3, ''),
(15, 'tenis', 3, ''),
(16, 'botas', 3, ''),
(17, 'sandalias', 3, ''),
(18, 'zapatos', 4, ''),
(19, 'balerinas', 4, ''),
(20, 'tenis', 4, ''),
(21, 'botas', 4, ''),
(22, 'Zapatillas', 4, ''),
(23, 'sandalias', 4, ''),
(24, 'zapatos', 5, ''),
(25, 'balerinas', 5, ''),
(26, 'tenis', 5, ''),
(27, 'botas', 5, ''),
(28, 'Zapatillas', 5, ''),
(29, 'sandalias', 5, ''),
(30, 'zapatos', 6, ''),
(31, 'tenis', 6, ''),
(32, 'botas', 6, ''),
(33, 'sandalias', 6, ''),
(34, 'zapatos', 7, ''),
(35, 'balerinas', 7, ''),
(36, 'tenis', 7, ''),
(37, 'botas', 7, ''),
(38, 'Zapatillas', 7, ''),
(39, 'sandalias', 7, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id_producto` int(11) NOT NULL,
  `Id_navbar` int(11) NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Id_producto`, `Id_navbar`, `nom`) VALUES
(1, 2, 'zapato_d'),
(2, 2, 'zapato_d'),
(3, 2, 'zapato_d'),
(4, 2, 'zapato_d'),
(5, 3, 'zapato_c'),
(6, 3, 'zapato_c'),
(7, 3, 'zapato_c'),
(8, 3, 'zapato_c');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`Id_navbar`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id_producto`),
  ADD KEY `Id_navbar` (`Id_navbar`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `navbar`
--
ALTER TABLE `navbar`
  MODIFY `Id_navbar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `Id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Id_navbar`) REFERENCES `navbar` (`Id_navbar`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
