-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 15:50:18
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
-- Base de datos: `trasnporte_masivo_bd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `id_conductor` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL,
  `apellido` varchar(16) DEFAULT NULL,
  `cedula` int(33) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `turno` varchar(15) DEFAULT NULL,
  `id_trasmilenio` int(11) DEFAULT NULL,
  `id_rutas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `conductor`
--

INSERT INTO `conductor` (`id_conductor`, `nombre`, `apellido`, `cedula`, `telefono`, `direccion`, `turno`, `id_trasmilenio`, `id_rutas`) VALUES
(1, 'Luis', 'Álvarez', 1010123456, '2147483647', 'Barrio Santa Fe', 'Mañana', 1, NULL),
(2, 'María', 'Bonilla', 1010234567, '2147483647', 'Barrio Teusaquillo', 'Tarde', 2, NULL),
(3, 'Carlos', 'Correa', 1010345678, '2147483647', 'Barrio Chapinero', 'Noche', 3, NULL),
(4, 'Ana', 'Durán', 1010456789, '2147483647', 'Barrio Galerías', 'Mañana', 4, NULL),
(5, 'Pedro', 'Escobar', 1010567890, '2147483647', 'Barrio Palermo', 'Tarde', 5, NULL),
(6, 'Laura', 'Fonseca', 1010678901, '2147483647', 'Barrio La Soledad', 'Noche', 6, NULL),
(7, 'Jorge', 'Galeano', 1010789012, '2147483647', 'Barrio San Diego', 'Mañana', 7, NULL),
(8, 'Sara', 'Hernández', 1010890123, '2147483647', 'Barrio La Concordia', 'Tarde', 8, NULL),
(9, 'Andrés', 'Ibagué', 1010901234, '2147483647', 'Barrio El Paraíso', 'Noche', 9, NULL),
(10, 'Isabel', 'Jiménez', 1011012345, '2147483647', 'Barrio Las Nieves', 'Mañana', 10, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe`
--

CREATE TABLE `jefe` (
  `id_jefe` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL,
  `apellido` varchar(55) DEFAULT NULL,
  `cedula` int(15) DEFAULT NULL,
  `telefono` varchar(55) DEFAULT NULL,
  `nombre_empresa` varchar(31) DEFAULT NULL,
  `id_trasmilenio` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `jefe`
--

INSERT INTO `jefe` (`id_jefe`, `nombre`, `apellido`, `cedula`, `telefono`, `nombre_empresa`, `id_trasmilenio`) VALUES
(1, 'carlos', 'Ramírez', 1023456789, '3001234567', 'TransMovil', 1),
(2, 'Marcos', 'Gómez', 1023456790, '3001234568', 'CiudadMovil', 3),
(3, 'george', 'López', 1023456791, '3001234569', 'TransMovil', 2),
(4, 'Antonella', 'Martínez', 1023456792, '3001234570', 'CiudadMovil', 4),
(5, 'Luis', 'Pérez', 1023456793, '3001234571', 'TransMovil', 5),
(6, 'Salome', 'Rodríguez', 1023456794, '3001234572', 'CiudadMovil', 6),
(7, 'Pedro', 'Hernández', 1023456795, '3001234573', 'TransMovil', 7),
(8, 'Laura', 'Sánchez', 1023456796, '3001234574', 'CiudadMovil', 8),
(9, 'Diego', 'Ruiz', 1023456797, '3001234575', 'TransMovil', 9),
(10, 'Emilia', 'Torres', 1023456798, '3001234576', 'CiudadMovil', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas_trasmilenio`
--

CREATE TABLE `rutas_trasmilenio` (
  `id_rutas` int(11) NOT NULL,
  `estacion` varchar(25) DEFAULT NULL,
  `horario` date DEFAULT NULL,
  `nombre_ruta` varchar(35) DEFAULT NULL,
  `codigo_ruta` varchar(33) DEFAULT NULL,
  `destino` varchar(35) DEFAULT NULL,
  `frecuencia` varchar(35) DEFAULT NULL,
  `id_conductor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rutas_trasmilenio`
--

INSERT INTO `rutas_trasmilenio` (`id_rutas`, `estacion`, `horario`, `nombre_ruta`, `codigo_ruta`, `destino`, `frecuencia`, `id_conductor`) VALUES
(1, 'Portal del Norte', '2026-11-24', 'Calle 170', 'R-001', 'Centro', 'Cada 5 min', 1),
(2, 'Portal del Sur', '2026-11-24', 'Avenida 68', 'R-002', 'Calle 26', 'Cada 4 min', 2),
(3, 'Portal de las Américas', '2026-11-24', 'Calle 13', 'R-003', 'Carrera 10', 'Cada 6 min', 3),
(4, 'Portal El Dorado', '2026-11-24', 'Avenida Eldorado', 'R-004', 'Centro', 'Cada 5 min', 4),
(5, 'Portal de Suba', '2026-11-24', 'Calle 170', 'R-005', 'Calle 72', 'Cada 4 min', 5),
(6, 'Calle 100', '2026-11-24', 'Carrera 7', 'R-006', 'Portal Norte', 'Cada 7 min', 6),
(7, 'Calle 26', '2026-11-24', 'Calle 26', 'R-007', 'Aeropuerto', 'Cada 5 min', 7),
(8, 'Calle 63', '2026-11-24', 'Carrera 15', 'R-008', 'Calle 100', 'Cada 4 min', 8),
(9, 'Marly', '2026-11-24', 'Carrera 13', 'R-009', 'Calle 26', 'Cada 6 min', 9),
(10, 'Héroes', '2026-11-24', 'Avenida Suba', 'R-010', 'Centro', 'Cada 5 min', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trasmilenio`
--

CREATE TABLE `trasmilenio` (
  `id_trasmilenio` int(11) NOT NULL,
  `conductor` varchar(55) DEFAULT NULL,
  `codigo_trasmilenio` varchar(33) DEFAULT NULL,
  `empresa` varchar(12) DEFAULT NULL,
  `id_jefe` int(11) DEFAULT NULL,
  `id_conductor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `trasmilenio`
--

INSERT INTO `trasmilenio` (`id_trasmilenio`, `conductor`, `codigo_trasmilenio`, `empresa`, `id_jefe`, `id_conductor`) VALUES
(1, NULL, 'T006', 'TransMovil', NULL, NULL),
(2, NULL, 'T002', 'TransMovil', NULL, NULL),
(3, NULL, 'T003', 'CiudadMovil', NULL, NULL),
(4, NULL, 'T004', 'CiudadMovil', NULL, NULL),
(5, NULL, 'T008', 'TransMovil', NULL, NULL),
(6, NULL, 'T006', 'CiudadMovil', NULL, NULL),
(7, NULL, 'T003', 'TransMovil', NULL, NULL),
(8, NULL, 'T002', 'CiudadMovil', NULL, NULL),
(9, NULL, 'T009', 'TransMovil', NULL, NULL),
(10, NULL, 'T018', 'CiudadMovil', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`id_conductor`),
  ADD KEY `fk_conductor_trasmilenio` (`id_trasmilenio`),
  ADD KEY `fk_conductor_rutas` (`id_rutas`);

--
-- Indices de la tabla `jefe`
--
ALTER TABLE `jefe`
  ADD PRIMARY KEY (`id_jefe`),
  ADD KEY `fk_jefe_trasmilenio` (`id_trasmilenio`);

--
-- Indices de la tabla `rutas_trasmilenio`
--
ALTER TABLE `rutas_trasmilenio`
  ADD PRIMARY KEY (`id_rutas`),
  ADD KEY `fk_rutas_conductor` (`id_conductor`);

--
-- Indices de la tabla `trasmilenio`
--
ALTER TABLE `trasmilenio`
  ADD PRIMARY KEY (`id_trasmilenio`),
  ADD KEY `fk_trasmilenio_jefe` (`id_jefe`),
  ADD KEY `fk_trasmilenio_conductor` (`id_conductor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `jefe`
--
ALTER TABLE `jefe`
  MODIFY `id_jefe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD CONSTRAINT `fk_conductor_rutas` FOREIGN KEY (`id_rutas`) REFERENCES `rutas_trasmilenio` (`id_rutas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_conductor_trasmilenio` FOREIGN KEY (`id_trasmilenio`) REFERENCES `trasmilenio` (`id_trasmilenio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `jefe`
--
ALTER TABLE `jefe`
  ADD CONSTRAINT `fk_jefe_trasmilenio` FOREIGN KEY (`id_trasmilenio`) REFERENCES `trasmilenio` (`id_trasmilenio`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `rutas_trasmilenio`
--
ALTER TABLE `rutas_trasmilenio`
  ADD CONSTRAINT `fk_rutas_conductor` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id_conductor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `trasmilenio`
--
ALTER TABLE `trasmilenio`
  ADD CONSTRAINT `fk_trasmilenio_conductor` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id_conductor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_trasmilenio_jefe` FOREIGN KEY (`id_jefe`) REFERENCES `jefe` (`id_jefe`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
