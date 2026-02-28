-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2026 a las 03:10:29
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `conexion_python`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `item` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `programa` varchar(100) DEFAULT NULL,
  `genero` varchar(20) DEFAULT NULL,
  `matematicas` decimal(3,2) DEFAULT NULL,
  `espanol` decimal(3,2) DEFAULT NULL,
  `ciencias` decimal(3,2) DEFAULT NULL,
  `idiomas` decimal(3,2) DEFAULT NULL,
  `promedio` decimal(5,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`item`, `nombres`, `apellidos`, `programa`, `genero`, `matematicas`, `espanol`, `ciencias`, `idiomas`, `promedio`) VALUES
(1, 'Juan', 'García', 'Contabilidad', 'Masculino', 1.66, 2.19, 3.56, 2.58, 2.4975),
(2, 'María', 'Pérez', 'Mercadeo', 'Femenino', 3.21, 2.54, 1.98, 3.76, 2.8725),
(3, 'Pedro', 'Fernández', 'Sistemas', 'Masculino', 3.10, 3.11, 2.62, 2.42, 2.8125),
(4, 'Ana', 'Sánchez', 'Administracion', 'Femenino', NULL, 2.50, 3.66, 1.93, NULL),
(5, 'Luis', 'González', 'Salud', 'Masculino', 2.91, 2.59, 2.45, NULL, NULL),
(6, 'Lucía', 'Martínez', 'Salud', 'Femenino', 3.95, 1.88, 2.67, 1.69, 2.5475),
(7, 'Diego', 'López', 'Administracion', 'Masculino', 4.20, 1.69, 2.36, 3.24, 2.8725),
(8, 'Fernanda', 'Torres', 'Sistemas', 'Femenino', 4.08, 1.68, 4.16, 2.94, 3.2150),
(9, 'Miguel', 'Flores', 'Mercadeo', 'Masculino', 4.06, 3.64, NULL, 3.28, NULL),
(10, 'Carolina', 'Hernández', 'Contabilidad', 'Femenino', 2.55, 3.75, 1.84, 3.17, 2.8275),
(11, 'Sofía', 'Díaz', 'Contabilidad', 'Femenino', 1.79, 3.94, 3.70, 2.16, 2.8975),
(12, 'Javier', 'Romero', 'Mercadeo', 'Masculino', NULL, 2.47, 2.25, NULL, NULL),
(13, 'Valeria', 'Ruiz', 'Sistemas', 'Femenino', 3.27, 1.91, 3.40, 2.27, 2.7125),
(14, 'Elena', 'Álvarez', 'Administracion', 'Femenino', 2.43, 3.22, 2.27, 2.36, 2.5700),
(15, 'Andrés', 'Gómez', 'Salud', 'Masculino', 3.59, 3.27, 1.97, 2.41, 2.8100),
(16, 'Pedro', 'López', 'Contabilidad', 'Masculino', 4.08, 1.68, 4.16, 2.94, 3.2150),
(17, 'Ana', 'Torres', 'Mercadeo', 'Femenino', 4.06, 3.64, 4.31, 3.28, 3.8225),
(18, 'Luis', 'Flores', 'Sistemas', 'Masculino', 2.55, 3.75, 1.84, 3.17, 2.8275),
(19, 'Lucía', 'Gómez', 'Sistemas', 'Femenino', 1.79, 3.94, 3.70, 2.16, 2.8975),
(20, 'Alvaro', 'Perez', 'Sistemas', 'Masculino', 4.05, 5.00, 3.70, 4.00, 4.1875);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`item`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
