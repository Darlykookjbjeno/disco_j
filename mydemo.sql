-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2021 a las 09:14:40
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mydemo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `account`
--

CREATE TABLE `account` (
  `username` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `account`
--

INSERT INTO `account` (`username`, `password`, `fullname`, `email`) VALUES
('', '', '', ''),
('abc', '456', 'ABC1111', 'abc1111@gmail.com'),
('acc1', '123', 'Account 1', 'acc1@gmail.com'),
('acc2', '123', 'Account 2', 'acc2@gmail.com'),
('acc3', '123', 'Account 3', 'acc3@gmail.com'),
('acc4', '123', 'Account 4', 'acc4@gmail.com'),
('acc5', '123', 'Account 5', 'acc5@gmail.com'),
('darkook', '123456789', 'DARLY', 'jinetdarly25@gmail.com'),
('nali', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Category 1'),
(2, 'Category 2'),
(3, 'Category 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `datecreation` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `username` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `name`, `datecreation`, `status`, `username`) VALUES
(1, 'Order 1', '2015-01-24', 0, 'acc1'),
(2, 'Order 2', '2015-01-14', 1, 'acc1'),
(3, 'Order 3', '2015-01-24', 0, 'acc4'),
(4, 'Order 4', '2015-01-29', 0, 'acc4'),
(5, 'Order 5', '2015-01-24', 1, 'acc4'),
(6, 'Order 6', '2015-01-12', 0, 'acc3'),
(7, 'Order 7', '2015-01-24', 1, 'acc3'),
(8, 'Order 8', '2015-01-24', 0, 'acc2'),
(9, 'Order 9', '2015-01-09', 1, 'acc2'),
(11, 'New Order', '2015-07-12', 0, 'acc2'),
(12, 'New Order', '2015-07-12', 0, 'acc2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordersdetail`
--

CREATE TABLE `ordersdetail` (
  `productid` int(11) NOT NULL,
  `ordersid` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ordersdetail`
--

INSERT INTO `ordersdetail` (`productid`, `ordersid`, `price`, `quantity`) VALUES
(1, 2, '1000', 1),
(1, 3, '1000', 1),
(1, 4, '1000', 1),
(1, 5, '1000', 1),
(1, 7, '1000', 1),
(1, 8, '1000', 1),
(1, 9, '1000', 1),
(1, 11, '1000', 1),
(1, 12, '1000', 8),
(2, 2, '200', 1),
(2, 4, '200', 1),
(2, 6, '200', 1),
(2, 8, '200', 1),
(2, 12, '200', 12),
(3, 2, '500', 1),
(3, 6, '500', 1),
(7, 12, '520', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `categoryid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `quantity`, `description`, `photo`, `categoryid`) VALUES
(1, 'Nokia 1', '1000', 2, 'good', 'thumb1.gif', 1),
(2, 'Nokia 2', '200', 5, 'good', 'thumb2.gif', 1),
(3, 'Samsung 1', '500', 8, 'good', 'thumb3.gif', 2),
(4, 'Samsung 2', '500', 8, 'good', 'thumb1.gif', 3),
(5, 'Apple 1', '520', 8, 'good', 'thumb2.gif', 3),
(6, 'Apple 2', '520', 8, 'good', 'thumb2.gif', 3),
(7, 'Apple 3', '520', 8, 'good', 'thumb2.gif', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`);

--
-- Indices de la tabla `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD PRIMARY KEY (`productid`,`ordersid`),
  ADD KEY `mahd` (`ordersid`);

--
-- Indices de la tabla `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryid` (`categoryid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`username`) REFERENCES `account` (`username`);

--
-- Filtros para la tabla `ordersdetail`
--
ALTER TABLE `ordersdetail`
  ADD CONSTRAINT `ordersdetail_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `ordersdetail_ibfk_2` FOREIGN KEY (`ordersid`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
