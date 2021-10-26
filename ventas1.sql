-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2021 a las 09:16:26
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
-- Base de datos: `ventas1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos`
--

CREATE TABLE `articulos` (
  `IDARTICULOS` int(11) NOT NULL,
  `NOMBREARTICULO` varchar(20) NOT NULL,
  `CANTIDADPORUNIDAD` varchar(20) NOT NULL,
  `PRECIOUNIDAD` varchar(20) NOT NULL,
  `UNIDADESEXISTENTES` varchar(20) NOT NULL,
  `DESCRIPCION` text NOT NULL,
  `CODIGO` varchar(45) NOT NULL,
  `IDPROVEEDORES` int(11) NOT NULL,
  `IDCATEGORIA` int(11) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `IDCATEGORIA` int(11) NOT NULL,
  `NOMBRE` varchar(20) NOT NULL,
  `DESCRIPCION` text NOT NULL,
  `ESTADO` bit(1) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IDCLIENTE` int(11) NOT NULL,
  `NOMBRES` varchar(20) NOT NULL,
  `APELLIDOS` varchar(20) NOT NULL,
  `TELEFONO` varchar(45) NOT NULL,
  `EMAIL` varchar(45) NOT NULL,
  `TIPÓDOCUMENTO` varchar(20) NOT NULL,
  `NUMDOCUMENTO` varchar(20) NOT NULL,
  `DIRECCION` varchar(20) NOT NULL,
  `IDINGRESO` int(11) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalleingreso`
--

CREATE TABLE `detalleingreso` (
  `IDDETALLEINGRESO` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `PRECIO` float NOT NULL,
  `IDINGRESO` int(11) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `IDEMPLEADOS` int(11) NOT NULL,
  `APELLIDOS` varchar(45) NOT NULL,
  `NOMBRES` varchar(45) NOT NULL,
  `CARGO` varchar(20) NOT NULL,
  `FECHADECONTACTO` varchar(20) NOT NULL,
  `DIRECCION` varchar(20) NOT NULL,
  `PAIS` varchar(20) NOT NULL,
  `REGION` varchar(20) NOT NULL,
  `CIUDAD` varchar(20) NOT NULL,
  `TELEFONOoCELULAR` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `IDFACTURA` int(11) NOT NULL,
  `FECHAPEDIDO` varchar(20) NOT NULL,
  `PRECIOUNUDAD` float NOT NULL,
  `CANTIDA` varchar(20) NOT NULL,
  `TOTALPAGAR` varchar(20) NOT NULL,
  `IDARTICULOS` int(11) NOT NULL,
  `IDEMPLEADOS` int(11) NOT NULL,
  `IDCLIENTE` int(11) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ingreso`
--

CREATE TABLE `ingreso` (
  `IDINGRESO` int(11) NOT NULL,
  `TIPOCOMPROBANTE` varchar(20) NOT NULL,
  `SERIECOMPROVANTE` varchar(20) NOT NULL,
  `NUMCOMPROBANTE` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `IMPUESTO` decimal(10,0) NOT NULL,
  `TOTAL` decimal(10,0) NOT NULL,
  `ESTADO` varchar(20) DEFAULT NULL,
  `TIIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `IDPROVEEDORES` int(11) NOT NULL,
  `NOMBRECOMPAÑIA` varchar(20) NOT NULL,
  `CARGOCONTACTO` varchar(20) NOT NULL,
  `DIRECCION` varchar(45) NOT NULL,
  `CIUDAD` varchar(45) NOT NULL,
  `REGION` varchar(45) NOT NULL,
  `CODPOSTAL` varchar(20) NOT NULL,
  `TELEFONO` varchar(45) NOT NULL,
  `FAX` varchar(20) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `IDUSUARIO` int(11) NOT NULL,
  `NOMBRES` varchar(45) NOT NULL,
  `APELLIDOS` varchar(45) NOT NULL,
  `TIPODOCUMENTO` varchar(20) NOT NULL,
  `NUMDOCUMENTO` varchar(20) NOT NULL,
  `DIRECCION` varchar(45) NOT NULL,
  `TELEFONO` varchar(20) NOT NULL,
  `EMAIL` varchar(20) NOT NULL,
  `CLAVE` varchar(255) NOT NULL,
  `ESTADO` bit(1) DEFAULT NULL,
  `IDINGRESO` int(11) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `IDVENTA` int(11) NOT NULL,
  `TIPOCOMPROVANTE` varchar(20) NOT NULL,
  `SERIECOMPROVANTE` varchar(20) NOT NULL,
  `NUMCOMPROVANTE` varchar(20) NOT NULL,
  `FECHA` date NOT NULL,
  `IMPUESTO` decimal(10,0) NOT NULL,
  `TOTAL` decimal(10,0) NOT NULL,
  `IDFACTURA` int(11) NOT NULL,
  `TIMESTAMP` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD PRIMARY KEY (`IDARTICULOS`),
  ADD KEY `IDPROVEEDORES` (`IDPROVEEDORES`),
  ADD KEY `IDCATEGORIA` (`IDCATEGORIA`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`IDCATEGORIA`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IDCLIENTE`),
  ADD KEY `IDINGRESO` (`IDINGRESO`);

--
-- Indices de la tabla `detalleingreso`
--
ALTER TABLE `detalleingreso`
  ADD PRIMARY KEY (`IDDETALLEINGRESO`),
  ADD KEY `IDINGRESO` (`IDINGRESO`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`IDEMPLEADOS`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`IDFACTURA`),
  ADD KEY `IDEMPLEADOS` (`IDEMPLEADOS`),
  ADD KEY `IDARTICULOS` (`IDARTICULOS`),
  ADD KEY `IDCLIENTE` (`IDCLIENTE`);

--
-- Indices de la tabla `ingreso`
--
ALTER TABLE `ingreso`
  ADD PRIMARY KEY (`IDINGRESO`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`IDPROVEEDORES`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IDUSUARIO`),
  ADD KEY `IDINGRESO` (`IDINGRESO`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`IDVENTA`),
  ADD KEY `IDFACTURA` (`IDFACTURA`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articulos`
--
ALTER TABLE `articulos`
  ADD CONSTRAINT `articulos_ibfk_1` FOREIGN KEY (`IDPROVEEDORES`) REFERENCES `proveedores` (`IDPROVEEDORES`),
  ADD CONSTRAINT `articulos_ibfk_2` FOREIGN KEY (`IDCATEGORIA`) REFERENCES `categoria` (`IDCATEGORIA`);

--
-- Filtros para la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`IDINGRESO`) REFERENCES `ingreso` (`IDINGRESO`);

--
-- Filtros para la tabla `detalleingreso`
--
ALTER TABLE `detalleingreso`
  ADD CONSTRAINT `detalleingreso_ibfk_1` FOREIGN KEY (`IDINGRESO`) REFERENCES `ingreso` (`IDINGRESO`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`IDARTICULOS`) REFERENCES `articulos` (`IDARTICULOS`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`IDEMPLEADOS`) REFERENCES `empleados` (`IDEMPLEADOS`),
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`IDARTICULOS`) REFERENCES `articulos` (`IDARTICULOS`),
  ADD CONSTRAINT `factura_ibfk_4` FOREIGN KEY (`IDCLIENTE`) REFERENCES `cliente` (`IDCLIENTE`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`IDINGRESO`) REFERENCES `ingreso` (`IDINGRESO`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`IDFACTURA`) REFERENCES `factura` (`IDFACTURA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
