-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-04-2025 a las 21:58:25
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
-- Base de datos: `buytiti_helpdesk`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `td_ticketdetalle`
--

CREATE TABLE `td_ticketdetalle` (
  `tickd_id` int(11) NOT NULL,
  `tick_id` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL,
  `tickd_descrip` mediumtext NOT NULL,
  `fech_crea` datetime NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `td_ticketdetalle`
--

INSERT INTO `td_ticketdetalle` (`tickd_id`, `tick_id`, `usu_id`, `tickd_descrip`, `fech_crea`, `est`) VALUES
(1, 1, 1, 'Te respondo ', '2025-04-01 19:36:32', 1),
(2, 1, 2, 'usuario respondiendo', '2025-04-01 19:36:32', 1),
(3, 1, 1, 'Ticket Cerrado', '2025-04-25 10:55:27', 1),
(4, 9, 1, 'Ticket Cerrado', '2025-04-25 13:30:04', 1),
(5, 2, 1, '<p>Resuelvelo de la siguiente manera-....</p>', '2025-04-25 13:46:40', 1),
(6, 2, 1, 'Ticket Cerrado', '2025-04-25 13:46:48', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_categoria`
--

CREATE TABLE `tm_categoria` (
  `cat_id` int(11) NOT NULL,
  `cat_nom` varchar(150) NOT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_categoria`
--

INSERT INTO `tm_categoria` (`cat_id`, `cat_nom`, `est`) VALUES
(1, 'hardware', 1),
(2, 'software', 1),
(5, 'otros', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_ticket`
--

CREATE TABLE `tm_ticket` (
  `tick_id` int(11) NOT NULL,
  `usu_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `tick_prioridad` int(250) NOT NULL,
  `tick_titulo` varchar(250) NOT NULL,
  `tick_descrip` varchar(9000) NOT NULL,
  `tick_estado` varchar(15) DEFAULT NULL,
  `fech_crea` datetime DEFAULT NULL,
  `usu_asig` int(11) DEFAULT NULL,
  `fech_asig` datetime DEFAULT NULL,
  `fech_cierre` datetime DEFAULT NULL,
  `est` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_ticket`
--

INSERT INTO `tm_ticket` (`tick_id`, `usu_id`, `cat_id`, `tick_prioridad`, `tick_titulo`, `tick_descrip`, `tick_estado`, `fech_crea`, `usu_asig`, `fech_asig`, `fech_cierre`, `est`) VALUES
(1, 1, 1, 1, 'Prueba 1', 'Prueba 1', 'Cerrado', '2025-03-25 13:12:16', 1, '2025-04-25 13:16:32', NULL, 1),
(2, 1, 5, 4, 'Problema con el seguro de compra en página', 'Prueba 2', 'Cerrado', NULL, 4, '2025-04-25 13:46:24', '2025-04-25 13:46:48', 1),
(3, 1, 1, 1, 'Prueba', '<p>Prueba</p>', 'Abierto', NULL, NULL, NULL, NULL, 1),
(4, 1, 1, 1, 'Test', '<p>Test</p>', 'Abierto', NULL, NULL, NULL, NULL, 1),
(5, 1, 1, 1, 'Prueba con fecha', '<p>1</p>', 'Abierto', '2025-03-26 13:49:05', NULL, NULL, NULL, 1),
(6, 2, 1, 1, 'Prueba de Colaborador', '<p>12345</p>', 'Abierto', '2025-03-31 16:53:06', 1, '2025-04-25 13:21:04', NULL, 1),
(7, 6, 5, 4, 'Problema con el servidor', '<p>Tengo el siguiente problema....</p>', 'Abierto', '2025-04-25 10:51:54', NULL, NULL, NULL, 1),
(8, 2, 1, 1, 'test', '<p>test</p>', 'Abierto', '2025-04-25 11:55:35', NULL, NULL, NULL, 1),
(9, 2, 1, 1, 'test 2', '<p>test 2</p>', 'Cerrado', '2025-04-25 12:10:21', 4, '2025-04-25 13:21:11', '2025-04-25 13:30:04', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `usu_id` int(11) NOT NULL,
  `usu_nom` varchar(100) DEFAULT NULL,
  `uso_ape` varchar(100) DEFAULT NULL,
  `usu_correo` varchar(100) NOT NULL,
  `usu_pass` varchar(30) NOT NULL,
  `rol_id` int(11) DEFAULT NULL,
  `fecha_crea` datetime DEFAULT NULL,
  `fecha_modif` datetime DEFAULT NULL,
  `fecha_elim` datetime DEFAULT NULL,
  `estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`usu_id`, `usu_nom`, `uso_ape`, `usu_correo`, `usu_pass`, `rol_id`, `fecha_crea`, `fecha_modif`, `fecha_elim`, `estado`) VALUES
(1, 'Isaac', 'González', 'isaac_ti@buytiti.com', 'Buytiti2024', 2, NULL, NULL, NULL, 1),
(2, 'usuario', 'Colab prueba', 'usuprueba@buytiti.com', 'Buytiti2024', 1, NULL, NULL, NULL, 1),
(3, 'User prueba', 'EEEEE', 'pr@buytiti.com', 'Buytiti2024', 1, '2025-04-24 17:00:24', NULL, NULL, 0),
(4, 'Misraim', 'Carranza', 'misraim_web@buytiti.com', 'Buytiti2024', 2, '2025-04-24 17:13:11', NULL, NULL, 1),
(5, 'test', 'test', 'test@rffm.com', 'dedede', 2, '2025-04-24 17:13:31', NULL, NULL, 0),
(6, 'Prueba de Colaborador', 'EEEE', 'up@buytiti.com', 'Buytiti', 1, '2025-04-25 10:19:57', NULL, NULL, 1),
(7, 'Prueba de ', 'Registro', 'PRE@buytiti.com', '12345678', 1, '2025-04-25 13:45:39', NULL, NULL, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `td_ticketdetalle`
--
ALTER TABLE `td_ticketdetalle`
  ADD PRIMARY KEY (`tickd_id`);

--
-- Indices de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indices de la tabla `tm_ticket`
--
ALTER TABLE `tm_ticket`
  ADD PRIMARY KEY (`tick_id`);

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`usu_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `td_ticketdetalle`
--
ALTER TABLE `td_ticketdetalle`
  MODIFY `tickd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tm_categoria`
--
ALTER TABLE `tm_categoria`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tm_ticket`
--
ALTER TABLE `tm_ticket`
  MODIFY `tick_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `usu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
