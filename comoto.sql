-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2021 a las 09:13:33
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
-- Base de datos: `comoto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductores`
--

CREATE TABLE `conductores` (
  `CONCEDULA` varchar(10) COLLATE utf16_spanish_ci NOT NULL,
  `CNOMBRES` varchar(60) COLLATE utf16_spanish_ci NOT NULL,
  `CEMAIL` varchar(40) COLLATE utf16_spanish_ci NOT NULL,
  `CTELEFONO` varchar(10) COLLATE utf16_spanish_ci NOT NULL,
  `CLICENCIA` varchar(14) COLLATE utf16_spanish_ci NOT NULL,
  `CPRUEBA_AL` varchar(12) COLLATE utf16_spanish_ci NOT NULL,
  `IDVEHICULOS2` varchar(6) COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Volcado de datos para la tabla `conductores`
--

INSERT INTO `conductores` (`CONCEDULA`, `CNOMBRES`, `CEMAIL`, `CTELEFONO`, `CLICENCIA`, `CPRUEBA_AL`, `IDVEHICULOS2`) VALUES
('1002', 'MARIO', 'jinetdarly25@gmai.com', '3143543617', 'casrg', 'negativa', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `despachador`
--

CREATE TABLE `despachador` (
  `dcedula` varchar(10) COLLATE utf16_spanish_ci NOT NULL,
  `dnombres` varchar(60) COLLATE utf16_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `contrasena` varchar(50) COLLATE utf16_spanish_ci NOT NULL,
  `dtelefono` varchar(10) COLLATE utf16_spanish_ci NOT NULL,
  `dhorario` varchar(15) COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Volcado de datos para la tabla `despachador`
--

INSERT INTO `despachador` (`dcedula`, `dnombres`, `email`, `contrasena`, `dtelefono`, `dhorario`) VALUES
('', '', '', '', '', ''),
('100265382', 'darly jinet giron castillo', 'jinetdarly25@gmail.com', 'dilandarly25', '3143543617', '16h'),
('1002965382', 'DARLY GIRON', 'jinetdarly25@gmail.com', 'DILANCAMILOGIRONCASTILLO', '32025487', 'LUNES-VIERNES'),
('104789344', 'miguel sanchez', 'andreitha741@gmail.com', '123456789AS', '3215063198', '8H'),
('34323781', 'SANDRA LORENA', 'gip24@gmial.com', 'dfg45827', '3143546357', 'NOCHES'),
('345816464', 'LUCERO CARDOONA', 'sadlud34@gmail.com', 'klk4968', '3148957432', 'VIERNES-SABADO'),
('56164244', 'DEYANIRA LOPEZ', 'djmiras34@gmial.com', '1234565432', '3214478952', 'LUNES Y MIERCOL'),
('584612879', 'naily castillo', 'andreitha741@gmail.com', '23048', '3225078574', '10h');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `IDEMPLEADO` int(4) NOT NULL,
  `APELLIDO` varchar(30) COLLATE utf16_spanish_ci NOT NULL,
  `NOMBRE` varchar(30) COLLATE utf16_spanish_ci NOT NULL,
  `CIUDAD` varchar(11) COLLATE utf16_spanish_ci NOT NULL,
  `FACULTAD` varchar(14) COLLATE utf16_spanish_ci NOT NULL,
  `CARGO` varchar(20) COLLATE utf16_spanish_ci NOT NULL,
  `SALARIO` int(7) NOT NULL,
  `FE_INICIO` varchar(10) COLLATE utf16_spanish_ci NOT NULL,
  `FE_NACIMIENTO` varchar(10) COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`IDEMPLEADO`, `APELLIDO`, `NOMBRE`, `CIUDAD`, `FACULTAD`, `CARGO`, `SALARIO`, `FE_INICIO`, `FE_NACIMIENTO`) VALUES
(1, 'gomez', 'miguel', 'medellin', 'gerencia', 'secretario', 1500000, '2021/12/07', '1995/15/08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pasagero`
--

CREATE TABLE `pasagero` (
  `PCEDULA` varchar(10) COLLATE utf16_spanish_ci NOT NULL,
  `PNOMBRES` varchar(60) COLLATE utf16_spanish_ci NOT NULL,
  `PCORREO` varchar(30) COLLATE utf16_spanish_ci NOT NULL,
  `PCELULAR` varchar(10) COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Volcado de datos para la tabla `pasagero`
--

INSERT INTO `pasagero` (`PCEDULA`, `PNOMBRES`, `PCORREO`, `PCELULAR`) VALUES
('1006198754', 'JUAN PAZ', 'SANDRAP28_@GMAIL.COM', '314598741'),
('34323781', 'SANDRA CASTILLO', 'SANDRAP28_@GMAIL.COM', '3215063198'),
('4589454', 'cristian lopez', 'jsidbe34@gmail.com', '3215063198'),
('7623564', 'MIGUEL SOLIS', 'DNDSB26@GMAL.COM', '3215063198');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pastiquete`
--

CREATE TABLE `pastiquete` (
  `PCEDULA1` varchar(10) COLLATE utf16_spanish_ci NOT NULL,
  `IDTIQUETE` varchar(15) COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puesto`
--

CREATE TABLE `puesto` (
  `IDPUESTO` int(11) NOT NULL,
  `PNUMPUESTO` int(11) NOT NULL,
  `PDISPONIBLES` varchar(2) COLLATE utf16_spanish_ci NOT NULL,
  `IDVEHICULOS1` varchar(6) COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `IDRUTAS` varchar(6) COLLATE utf16_spanish_ci NOT NULL,
  `RNOMBRE` varchar(30) COLLATE utf16_spanish_ci NOT NULL,
  `RCOSTO` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`IDRUTAS`, `RNOMBRE`, `RCOSTO`) VALUES
('21', 'POPAYAN', 45000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiquete`
--

CREATE TABLE `tiquete` (
  `ID_TIQUETE` varchar(15) COLLATE utf16_spanish_ci NOT NULL,
  `TFECHA_S` date NOT NULL,
  `ID_VEHICULO1` varchar(6) COLLATE utf16_spanish_ci NOT NULL,
  `ID_RUTA1` varchar(6) COLLATE utf16_spanish_ci DEFAULT NULL,
  `ID_CEDULA1` varchar(10) COLLATE utf16_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculos`
--

CREATE TABLE `vehiculos` (
  `ID_VEHICULOS` varchar(6) COLLATE utf16_spanish_ci NOT NULL,
  `VPLACA` varchar(6) COLLATE utf16_spanish_ci NOT NULL,
  `VCAPACIDAD` varchar(5) COLLATE utf16_spanish_ci NOT NULL,
  `VTIPO` varchar(16) COLLATE utf16_spanish_ci NOT NULL,
  `VSOAT` date NOT NULL,
  `VEXTRA` date NOT NULL,
  `VCONTRA` date NOT NULL,
  `RTM` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish_ci;

--
-- Volcado de datos para la tabla `vehiculos`
--

INSERT INTO `vehiculos` (`ID_VEHICULOS`, `VPLACA`, `VCAPACIDAD`, `VTIPO`, `VSOAT`, `VEXTRA`, `VCONTRA`, `RTM`) VALUES
('1', 'MGF800', '9', 'AEROVAN', '2020-12-15', '2020-12-15', '2020-12-15', '2020-12-15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD PRIMARY KEY (`CONCEDULA`),
  ADD KEY `IDVEHICULOS2` (`IDVEHICULOS2`);

--
-- Indices de la tabla `despachador`
--
ALTER TABLE `despachador`
  ADD PRIMARY KEY (`dcedula`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`IDEMPLEADO`);

--
-- Indices de la tabla `pasagero`
--
ALTER TABLE `pasagero`
  ADD PRIMARY KEY (`PCEDULA`);

--
-- Indices de la tabla `pastiquete`
--
ALTER TABLE `pastiquete`
  ADD PRIMARY KEY (`PCEDULA1`),
  ADD KEY `IDTIQUETE` (`IDTIQUETE`);

--
-- Indices de la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD PRIMARY KEY (`IDPUESTO`),
  ADD KEY `IDVEHICULOS1` (`IDVEHICULOS1`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`IDRUTAS`);

--
-- Indices de la tabla `tiquete`
--
ALTER TABLE `tiquete`
  ADD PRIMARY KEY (`ID_TIQUETE`),
  ADD KEY `ID_VEHICULO1` (`ID_VEHICULO1`),
  ADD KEY `ID_CEDULA1` (`ID_CEDULA1`),
  ADD KEY `ID_RUTA1` (`ID_RUTA1`);

--
-- Indices de la tabla `vehiculos`
--
ALTER TABLE `vehiculos`
  ADD PRIMARY KEY (`ID_VEHICULOS`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conductores`
--
ALTER TABLE `conductores`
  ADD CONSTRAINT `conductores_ibfk_1` FOREIGN KEY (`IDVEHICULOS2`) REFERENCES `vehiculos` (`ID_VEHICULOS`);

--
-- Filtros para la tabla `pastiquete`
--
ALTER TABLE `pastiquete`
  ADD CONSTRAINT `pastiquete_ibfk_1` FOREIGN KEY (`PCEDULA1`) REFERENCES `pasagero` (`PCEDULA`),
  ADD CONSTRAINT `pastiquete_ibfk_2` FOREIGN KEY (`IDTIQUETE`) REFERENCES `tiquete` (`ID_TIQUETE`);

--
-- Filtros para la tabla `puesto`
--
ALTER TABLE `puesto`
  ADD CONSTRAINT `puesto_ibfk_1` FOREIGN KEY (`IDVEHICULOS1`) REFERENCES `vehiculos` (`ID_VEHICULOS`);

--
-- Filtros para la tabla `tiquete`
--
ALTER TABLE `tiquete`
  ADD CONSTRAINT `tiquete_ibfk_1` FOREIGN KEY (`ID_VEHICULO1`) REFERENCES `vehiculos` (`ID_VEHICULOS`),
  ADD CONSTRAINT `tiquete_ibfk_5` FOREIGN KEY (`ID_RUTA1`) REFERENCES `rutas` (`IDRUTAS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
