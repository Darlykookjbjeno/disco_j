-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2021 a las 09:10:57
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
-- Base de datos: `almacen`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`ID`, `NOMBRE`) VALUES
(0, 'muebles'),
(8, 'colchas'),
(9, 'HORNOS'),
(10, 'CAFETERAS'),
(11, 'LICUADORAS'),
(155, 'BOSS'),
(1045, 'MANUEL'),
(1078, 'CARLS'),
(1154, 'moons'),
(1155, 'moon'),
(1545, 'KMIO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `ID` int(11) NOT NULL,
  `FECHA_COMPRA` date NOT NULL,
  `NOMBRES` text NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIO_TOTAL` int(11) NOT NULL,
  `fecha_entrega` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`ID`, `FECHA_COMPRA`, `NOMBRES`, `IDPRODUCTO`, `PRECIO_TOTAL`, `fecha_entrega`) VALUES
(1, '2021-03-03', 'CARLOS ANDRES VALENCIA', 100254, 400, ''),
(2, '2021-01-25', 'IVAN DUQUE', 100254, 150, ''),
(3, '2021-02-15', 'DIEGO MOLANO APONTE', 111158, 600, ''),
(0, '0000-00-00', '', 0, 0, ''),
(111, '4444-04-04', 'miguel sanchez', 2222, 2, '2222-02-22'),
(0, '0000-00-00', '', 0, 0, ''),
(2165, '0000-00-00', 'SANDRA CASTILLO', 4444444, 2222222, '3000-03-30'),
(255, '2021-04-04', 'santiago lopez', 4, 200200, '2021-02-10'),
(65, '5210-04-05', 'miguel sanchez', 4, 2, '2210-04-05'),
(21, '0000-00-00', 'san luis', 221, 300000, '2021-05-26'),
(21, '2021-02-10', 'san luis', 221, 300000, '2021-05-26'),
(21, '2021-02-10', 'san luis', 221, 300000, '2021-05-26'),
(1028, '2019-09-10', 'miriam', 254, 650000, '2021-08-26'),
(21, '2021-02-10', 'san luis', 221, 300000, '2021-05-26'),
(1028, '2019-09-10', 'miriam', 254, 650000, '2021-08-26'),
(1058, '2018-07-10', 'jose', 807, 350000, '2021-05-10'),
(21, '2021-02-10', 'san luis', 221, 300000, '2021-05-26'),
(1028, '2019-09-10', 'miriam', 254, 650000, '2021-08-26'),
(1058, '2018-07-10', 'jose', 807, 350000, '2021-05-10'),
(21, '2021-02-10', 'san luis', 221, 300000, '2021-05-26'),
(1028, '2019-09-10', 'miriam', 254, 650000, '2021-08-26'),
(1058, '2018-07-10', 'jose', 807, 350000, '2021-05-10'),
(21, '2021-02-10', 'san luis', 221, 300000, '2021-05-26'),
(1028, '2019-09-10', 'miriam', 254, 650000, '2021-08-26'),
(1058, '2018-07-10', 'jose', 807, 350000, '2021-05-10'),
(21, '2021-02-10', 'san luis', 221, 300000, '2021-05-26'),
(1028, '2019-09-10', 'miriam', 254, 650000, '2021-08-26'),
(1058, '2018-07-10', 'jose', 807, 350000, '2021-05-10'),
(874, '2021-02-10', 'LUCIA R', 6987, 300000, '2021-05-26'),
(874, '2021-02-10', 'LUCIA R', 6987, 300000, '2021-05-26'),
(874, '2021-02-10', 'LUCIA R', 6987, 300000, '2021-05-26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_producto_proveedor`
--

CREATE TABLE `detalle_producto_proveedor` (
  `ID` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `IDPROVEEDOR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalle_producto_proveedor`
--

INSERT INTO `detalle_producto_proveedor` (`ID`, `IDPRODUCTO`, `IDPROVEEDOR`) VALUES
(1, 110, 11),
(2, 121, 101),
(3, 235, 111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `IDPRODUCTO` int(11) NOT NULL COMMENT '	',
  `NOMBRE` varchar(100) NOT NULL,
  `PRECIO` varchar(50) NOT NULL,
  `FECHA_ALTA` date NOT NULL,
  `IDCATEGORIA` int(11) NOT NULL,
  `EXISTENCIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`IDPRODUCTO`, `NOMBRE`, `PRECIO`, `FECHA_ALTA`, `IDCATEGORIA`, `EXISTENCIA`) VALUES
(6, 'tostadora imusa', '351.00', '2020-05-08', 0, 6),
(110, 'LICUADORA PROCESADOR 2 EN 1 XPERT ROJO OSTER', '400.00', '2021-03-03', 11, 1),
(121, 'Cafetera con filtro Black & Decker 7 tazas', '150.00', '2021-01-25', 10, 2),
(235, 'Horno Tostador Electrico Asador Rostizar 12 Lts 800 W', '600.00', '2021-02-15', 9, 3),
(872, 'ROSTIZADOR ', '600000', '2021-05-03', 1045, 7),
(1001, 'parrilla superscot', '564.00', '2021-02-09', 0, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`ID`, `NOMBRE`) VALUES
(11, 'OSTER'),
(101, 'Black And Decker'),
(111, 'samsung'),
(374, 'hola'),
(598, 'halpo'),
(5554, 'koli');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `detalle_producto_proveedor`
--
ALTER TABLE `detalle_producto_proveedor`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`),
  ADD KEY `IDPROVEEDOR` (`IDPROVEEDOR`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`IDPRODUCTO`),
  ADD KEY `IDCATEGORIA` (`IDCATEGORIA`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`ID`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_producto_proveedor`
--
ALTER TABLE `detalle_producto_proveedor`
  ADD CONSTRAINT `detalle_producto_proveedor_ibfk_1` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `productos` (`IDPRODUCTO`),
  ADD CONSTRAINT `detalle_producto_proveedor_ibfk_2` FOREIGN KEY (`IDPROVEEDOR`) REFERENCES `proveedores` (`ID`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`IDCATEGORIA`) REFERENCES `categoria` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
