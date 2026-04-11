-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2026 a las 19:26:22
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
-- Base de datos: `pharma_reverse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centro_logistico`
--

DROP TABLE IF EXISTS `centro_logistico`;
CREATE TABLE `centro_logistico` (
  `id_centro` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `centro_logistico`
--

INSERT INTO `centro_logistico` (`id_centro`, `nombre`, `ubicacion`) VALUES
(1, 'BIDA Farma Sevilla', 'Polígono La Isla, Dos Hermanas'),
(2, 'Centro Residuos Málaga', 'Polígono Guadalhorce, Málaga');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_envio`
--

DROP TABLE IF EXISTS `detalle_envio`;
CREATE TABLE `detalle_envio` (
  `id_envio` int(11) NOT NULL,
  `id_lote` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_envio`
--

INSERT INTO `detalle_envio` (`id_envio`, `id_lote`, `cantidad`, `observaciones`) VALUES
(1, 1, 50, 'OK'),
(1, 2, 30, 'OK'),
(2, 3, 40, 'OK'),
(2, 4, 25, 'OK'),
(3, 5, 60, 'OK'),
(3, 6, 35, 'OK'),
(4, 7, 45, 'OK'),
(4, 8, 20, 'OK'),
(5, 9, 70, 'OK'),
(5, 10, 55, 'OK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_retirada`
--

DROP TABLE IF EXISTS `detalle_retirada`;
CREATE TABLE `detalle_retirada` (
  `id_lote` int(11) NOT NULL,
  `id_retirada` int(11) NOT NULL,
  `destino` varchar(100) DEFAULT NULL,
  `devolucion_lab` tinyint(1) DEFAULT NULL,
  `fecha_notificacion` date DEFAULT NULL,
  `fecha_accion` date DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_retirada`
--

INSERT INTO `detalle_retirada` (`id_lote`, `id_retirada`, `destino`, `devolucion_lab`, `fecha_notificacion`, `fecha_accion`, `observaciones`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, NULL, NULL, NULL),
(3, 2, NULL, NULL, NULL, NULL, NULL),
(4, 2, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `devolucion`
--

DROP TABLE IF EXISTS `devolucion`;
CREATE TABLE `devolucion` (
  `id_devolucion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `importe_total` varchar(200) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `Id_envio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `devolucion`
--

INSERT INTO `devolucion` (`id_devolucion`, `fecha`, `importe_total`, `estado`, `Id_envio`) VALUES
(1, '2025-02-20', '0', 'Caducidad', 1),
(2, '2025-02-22', '0', 'Devolución al laboratorio', 2),
(3, '2025-02-25', '0', 'Retirada', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envio`
--

DROP TABLE IF EXISTS `envio`;
CREATE TABLE `envio` (
  `id_envio` int(11) NOT NULL,
  `fecha_envio` date DEFAULT NULL,
  `fecha_recepcion` date DEFAULT NULL,
  `estado` varchar(50) NOT NULL,
  `id_centro` int(11) NOT NULL,
  `id_farmacia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `envio`
--

INSERT INTO `envio` (`id_envio`, `fecha_envio`, `fecha_recepcion`, `estado`, `id_centro`, `id_farmacia`) VALUES
(1, '2025-01-10', NULL, 'Pendiente', 1, 1),
(2, '2025-01-12', NULL, 'Recibido', 1, 2),
(3, '2025-01-15', NULL, 'Pendiente', 2, 3),
(4, '2025-01-18', NULL, 'Procesado', 2, 1),
(5, '2025-01-20', NULL, 'Recibido', 1, 2),
(6, '2025-01-10', NULL, 'Pendiente', 1, 1),
(7, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(8, '2025-01-15', NULL, 'Pendiente', 2, 3),
(9, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(10, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(11, '2025-01-10', NULL, 'Pendiente', 1, 1),
(12, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(13, '2025-01-15', NULL, 'Pendiente', 2, 3),
(14, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(15, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(16, '2025-01-10', NULL, 'Pendiente', 1, 1),
(17, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(18, '2025-01-15', NULL, 'Pendiente', 2, 3),
(19, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(20, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(21, '2025-01-10', NULL, 'Pendiente', 1, 1),
(22, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(23, '2025-01-15', NULL, 'Pendiente', 2, 3),
(24, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(25, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(26, '2025-01-10', NULL, 'Pendiente', 1, 1),
(27, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(28, '2025-01-15', NULL, 'Pendiente', 2, 3),
(29, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(30, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(31, '2025-01-10', NULL, 'Pendiente', 1, 1),
(32, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(33, '2025-01-15', NULL, 'Pendiente', 2, 3),
(34, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(35, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(36, '2025-01-10', NULL, 'Pendiente', 1, 1),
(37, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(38, '2025-01-15', NULL, 'Pendiente', 2, 3),
(39, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(40, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(41, '2025-01-10', NULL, 'Pendiente', 1, 1),
(42, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(43, '2025-01-15', NULL, 'Pendiente', 2, 3),
(44, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(45, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(46, '2025-01-10', NULL, 'Pendiente', 1, 1),
(47, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(48, '2025-01-15', NULL, 'Pendiente', 2, 3),
(49, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(50, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(51, '2025-01-10', NULL, 'Pendiente', 1, 1),
(52, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(53, '2025-01-15', NULL, 'Pendiente', 2, 3),
(54, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(55, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(56, '2025-01-10', NULL, 'Pendiente', 1, 1),
(57, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(58, '2025-01-15', NULL, 'Pendiente', 2, 3),
(59, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(60, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(61, '2025-01-10', NULL, 'Pendiente', 1, 1),
(62, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(63, '2025-01-15', NULL, 'Pendiente', 2, 3),
(64, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(65, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(66, '2025-01-10', NULL, 'Pendiente', 1, 1),
(67, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(68, '2025-01-15', NULL, 'Pendiente', 2, 3),
(69, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(70, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(71, '2025-01-10', NULL, 'Pendiente', 1, 1),
(72, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(73, '2025-01-15', NULL, 'Pendiente', 2, 3),
(74, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(75, '2025-01-20', '2025-01-21', 'Recibido', 1, 2),
(76, '2025-01-10', NULL, 'Pendiente', 1, 1),
(77, '2025-01-12', '2025-01-13', 'Recibido', 1, 2),
(78, '2025-01-15', NULL, 'Pendiente', 2, 3),
(79, '2025-01-18', '2025-01-19', 'Procesado', 2, 1),
(80, '2025-01-20', '2025-01-21', 'Recibido', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `farmacia`
--

DROP TABLE IF EXISTS `farmacia`;
CREATE TABLE `farmacia` (
  `id_farmacia` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cif` varchar(9) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `farmacia`
--

INSERT INTO `farmacia` (`id_farmacia`, `nombre`, `cif`, `direccion`, `telefono`) VALUES
(1, 'Farmacia Alameda', 'B12345678', 'C/ Alameda 12, Sevilla', '954111111'),
(2, 'Farmacia Triana', 'B23456789', 'C/ Betis 45, Sevilla', '954222222'),
(3, 'Farmacia Nervión', 'B34567890', 'Av. San Francisco Javier 8, Sevilla', '954333333');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lote`
--

DROP TABLE IF EXISTS `lote`;
CREATE TABLE `lote` (
  `id_lote` int(11) NOT NULL,
  `codigo_lote` varchar(50) DEFAULT NULL,
  `fecha_caducidad` date DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `Id_medicamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lote`
--

INSERT INTO `lote` (`id_lote`, `codigo_lote`, `fecha_caducidad`, `estado`, `Id_medicamento`) VALUES
(1, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(2, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(3, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(4, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(5, 'OME-2024-E5', '2026-06-30', NULL, 3),
(6, 'OME-2024-F6', '2026-09-10', NULL, 3),
(7, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(8, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(9, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(10, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(11, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(12, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(13, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(14, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(15, 'OME-2024-E5', '2026-06-30', NULL, 3),
(16, 'OME-2024-F6', '2026-09-10', NULL, 3),
(17, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(18, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(19, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(20, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(21, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(22, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(23, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(24, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(25, 'OME-2024-E5', '2026-06-30', NULL, 3),
(26, 'OME-2024-F6', '2026-09-10', NULL, 3),
(27, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(28, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(29, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(30, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(31, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(32, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(33, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(34, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(35, 'OME-2024-E5', '2026-06-30', NULL, 3),
(36, 'OME-2024-F6', '2026-09-10', NULL, 3),
(37, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(38, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(39, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(40, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(41, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(42, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(43, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(44, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(45, 'OME-2024-E5', '2026-06-30', NULL, 3),
(46, 'OME-2024-F6', '2026-09-10', NULL, 3),
(47, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(48, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(49, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(50, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(51, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(52, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(53, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(54, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(55, 'OME-2024-E5', '2026-06-30', NULL, 3),
(56, 'OME-2024-F6', '2026-09-10', NULL, 3),
(57, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(58, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(59, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(60, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(61, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(62, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(63, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(64, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(65, 'OME-2024-E5', '2026-06-30', NULL, 3),
(66, 'OME-2024-F6', '2026-09-10', NULL, 3),
(67, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(68, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(69, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(70, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(71, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(72, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(73, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(74, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(75, 'OME-2024-E5', '2026-06-30', NULL, 3),
(76, 'OME-2024-F6', '2026-09-10', NULL, 3),
(77, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(78, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(79, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(80, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(81, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(82, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(83, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(84, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(85, 'OME-2024-E5', '2026-06-30', NULL, 3),
(86, 'OME-2024-F6', '2026-09-10', NULL, 3),
(87, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(88, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(89, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(90, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(91, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(92, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(93, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(94, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(95, 'OME-2024-E5', '2026-06-30', NULL, 3),
(96, 'OME-2024-F6', '2026-09-10', NULL, 3),
(97, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(98, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(99, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(100, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(101, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(102, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(103, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(104, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(105, 'OME-2024-E5', '2026-06-30', NULL, 3),
(106, 'OME-2024-F6', '2026-09-10', NULL, 3),
(107, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(108, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(109, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(110, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(111, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(112, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(113, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(114, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(115, 'OME-2024-E5', '2026-06-30', NULL, 3),
(116, 'OME-2024-F6', '2026-09-10', NULL, 3),
(117, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(118, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(119, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(120, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(121, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(122, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(123, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(124, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(125, 'OME-2024-E5', '2026-06-30', NULL, 3),
(126, 'OME-2024-F6', '2026-09-10', NULL, 3),
(127, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(128, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(129, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(130, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(131, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(132, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(133, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(134, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(135, 'OME-2024-E5', '2026-06-30', NULL, 3),
(136, 'OME-2024-F6', '2026-09-10', NULL, 3),
(137, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(138, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(139, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(140, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(141, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(142, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(143, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(144, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(145, 'OME-2024-E5', '2026-06-30', NULL, 3),
(146, 'OME-2024-F6', '2026-09-10', NULL, 3),
(147, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(148, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(149, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(150, 'GEL-2024-J10', '2027-05-18', NULL, 5),
(151, 'IBU-2024-A1', '2025-03-15', NULL, 1),
(152, 'IBU-2024-B2', '2025-10-20', NULL, 1),
(153, 'PARA-2024-C3', '2026-01-05', NULL, 2),
(154, 'PARA-2024-D4', '2025-12-12', NULL, 2),
(155, 'OME-2024-E5', '2026-06-30', NULL, 3),
(156, 'OME-2024-F6', '2026-09-10', NULL, 3),
(157, 'AMOX-2024-G7', '2025-08-22', NULL, 4),
(158, 'AMOX-2024-H8', '2025-11-14', NULL, 4),
(159, 'GEL-2024-I9', '2027-02-01', NULL, 5),
(160, 'GEL-2024-J10', '2027-05-18', NULL, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamento`
--

DROP TABLE IF EXISTS `medicamento`;
CREATE TABLE `medicamento` (
  `id_medicamento` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `codigo_nacional` varchar(20) NOT NULL,
  `laboratorio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamento`
--

INSERT INTO `medicamento` (`id_medicamento`, `nombre`, `codigo_nacional`, `laboratorio`) VALUES
(1, 'Ibuprofeno 600 mg comprimidos', '123456', 'Laboratorios Normon'),
(2, 'Paracetamol 1 g comprimidos', '234567', 'Laboratorios Bayer'),
(3, 'Omeprazol 20 mg cápsulas', '345678', 'Laboratorios Teva'),
(4, 'Amoxicilina 500 mg cápsulas', '456789', 'Laboratorios Cinfa'),
(5, 'Gel hidroalcohólico 500 ml', '567890', 'Higiene Global S.L.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `procesamiento`
--

DROP TABLE IF EXISTS `procesamiento`;
CREATE TABLE `procesamiento` (
  `id_procesamiento` int(11) NOT NULL,
  `fecha_procesado` date NOT NULL,
  `resultado` varchar(255) DEFAULT NULL,
  `id_envio` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `procesamiento`
--

INSERT INTO `procesamiento` (`id_procesamiento`, `fecha_procesado`, `resultado`, `id_envio`, `id_usuario`) VALUES
(5, '2025-02-01', 'Reciclaje', 1, 12),
(6, '2025-02-05', 'Destrucción', 2, 12),
(7, '2025-02-10', 'Reciclaje', 3, 15),
(8, '2025-02-12', 'Destrucción', 4, 15),
(19, '2025-02-01', 'Reciclaje', 5, 12),
(20, '2025-02-05', 'Destrucción', 6, 12),
(23, '2025-02-01', 'Reciclaje', 9, 12),
(24, '2025-02-05', 'Destrucción', 10, 12),
(33, '2025-02-01', 'Reciclaje', 7, 12),
(34, '2025-02-05', 'Destrucción', 8, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `retirada_sanitaria`
--

DROP TABLE IF EXISTS `retirada_sanitaria`;
CREATE TABLE `retirada_sanitaria` (
  `id_retirada` int(11) NOT NULL,
  `motivo` varchar(255) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `retirada_sanitaria`
--

INSERT INTO `retirada_sanitaria` (`id_retirada`, `motivo`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 'Impurezas detectadas en lote de Ibuprofeno', '2025-03-01', '2025-03-15'),
(2, 'Problema de estabilidad en Paracetamol', '2025-04-10', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `nombre`) VALUES
(1, 'Administrador'),
(2, 'Operador'),
(3, 'Soporte'),
(4, 'Gestor');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `email`, `password`, `id_rol`) VALUES
(11, 'Ana López', 'ana.lopez@pharmareverse.com', 'pass_ana', 1),
(12, 'Carlos Pérez', 'carlos.perez@pharmareverse.com', 'pass_carlos', 2),
(13, 'Marta Ruiz', 'marta.ruiz@pharmareverse.com', 'pass_marta', 3),
(14, 'Juan Cuesta', 'juan.cuesta@pharmareverse.com', 'pass_juan', 4),
(15, 'Jordi Hurtado', 'jordi.hurtado@pharmareverse.com', 'pass_carlos', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `centro_logistico`
--
ALTER TABLE `centro_logistico`
  ADD PRIMARY KEY (`id_centro`);

--
-- Indices de la tabla `detalle_envio`
--
ALTER TABLE `detalle_envio`
  ADD PRIMARY KEY (`id_envio`,`id_lote`),
  ADD KEY `id_lote` (`id_lote`);

--
-- Indices de la tabla `detalle_retirada`
--
ALTER TABLE `detalle_retirada`
  ADD PRIMARY KEY (`id_lote`,`id_retirada`),
  ADD KEY `id_retirada` (`id_retirada`);

--
-- Indices de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD PRIMARY KEY (`id_devolucion`),
  ADD UNIQUE KEY `Id_envio` (`Id_envio`);

--
-- Indices de la tabla `envio`
--
ALTER TABLE `envio`
  ADD PRIMARY KEY (`id_envio`),
  ADD KEY `fk_envio_centro` (`id_centro`),
  ADD KEY `fk_envio_farmacia` (`id_farmacia`);

--
-- Indices de la tabla `farmacia`
--
ALTER TABLE `farmacia`
  ADD PRIMARY KEY (`id_farmacia`),
  ADD UNIQUE KEY `cif` (`cif`),
  ADD UNIQUE KEY `telefono` (`telefono`);

--
-- Indices de la tabla `lote`
--
ALTER TABLE `lote`
  ADD PRIMARY KEY (`id_lote`),
  ADD KEY `Id_medicamento` (`Id_medicamento`);

--
-- Indices de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  ADD PRIMARY KEY (`id_medicamento`);

--
-- Indices de la tabla `procesamiento`
--
ALTER TABLE `procesamiento`
  ADD PRIMARY KEY (`id_procesamiento`),
  ADD UNIQUE KEY `id_envio` (`id_envio`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `retirada_sanitaria`
--
ALTER TABLE `retirada_sanitaria`
  ADD PRIMARY KEY (`id_retirada`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_usuario_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `centro_logistico`
--
ALTER TABLE `centro_logistico`
  MODIFY `id_centro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `devolucion`
--
ALTER TABLE `devolucion`
  MODIFY `id_devolucion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `envio`
--
ALTER TABLE `envio`
  MODIFY `id_envio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de la tabla `farmacia`
--
ALTER TABLE `farmacia`
  MODIFY `id_farmacia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `lote`
--
ALTER TABLE `lote`
  MODIFY `id_lote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT de la tabla `medicamento`
--
ALTER TABLE `medicamento`
  MODIFY `id_medicamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `procesamiento`
--
ALTER TABLE `procesamiento`
  MODIFY `id_procesamiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `retirada_sanitaria`
--
ALTER TABLE `retirada_sanitaria`
  MODIFY `id_retirada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_envio`
--
ALTER TABLE `detalle_envio`
  ADD CONSTRAINT `detalle_envio_ibfk_1` FOREIGN KEY (`id_envio`) REFERENCES `envio` (`id_envio`),
  ADD CONSTRAINT `detalle_envio_ibfk_2` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`Id_lote`);

--
-- Filtros para la tabla `detalle_retirada`
--
ALTER TABLE `detalle_retirada`
  ADD CONSTRAINT `detalle_retirada_ibfk_1` FOREIGN KEY (`id_lote`) REFERENCES `lote` (`Id_lote`),
  ADD CONSTRAINT `detalle_retirada_ibfk_2` FOREIGN KEY (`id_retirada`) REFERENCES `retirada_sanitaria` (`id_retirada`);

--
-- Filtros para la tabla `devolucion`
--
ALTER TABLE `devolucion`
  ADD CONSTRAINT `devolucion_ibfk_1` FOREIGN KEY (`Id_envio`) REFERENCES `envio` (`id_envio`);

--
-- Filtros para la tabla `envio`
--
ALTER TABLE `envio`
  ADD CONSTRAINT `fk_envio_centro` FOREIGN KEY (`id_centro`) REFERENCES `centro_logistico` (`id_centro`),
  ADD CONSTRAINT `fk_envio_farmacia` FOREIGN KEY (`id_farmacia`) REFERENCES `farmacia` (`id_farmacia`);

--
-- Filtros para la tabla `lote`
--
ALTER TABLE `lote`
  ADD CONSTRAINT `lote_ibfk_1` FOREIGN KEY (`Id_medicamento`) REFERENCES `medicamento` (`Id_medicamento`);

--
-- Filtros para la tabla `procesamiento`
--
ALTER TABLE `procesamiento`
  ADD CONSTRAINT `procesamiento_ibfk_1` FOREIGN KEY (`id_envio`) REFERENCES `envio` (`id_envio`),
  ADD CONSTRAINT `procesamiento_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
