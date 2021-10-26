-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2021 a las 09:14:15
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
-- Base de datos: `institucione`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id_calificacion` int(6) NOT NULL,
  `id_materia` int(6) NOT NULL,
  `id_estudiante_materia` int(6) NOT NULL,
  `calificacion` float NOT NULL,
  `observacion` varchar(120) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id_calificacion`, `id_materia`, `id_estudiante_materia`, `calificacion`, `observacion`) VALUES
(1, 1, 1, 30, ''),
(2, 2, 1, 40, 'mejorar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(10) NOT NULL,
  `numero_documento` int(12) NOT NULL,
  `direccion` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `celular` int(30) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `acudiente` varchar(80) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `numero_documento`, `direccion`, `celular`, `fecha_nacimiento`, `acudiente`) VALUES
(1, 1002965382, 'CRA 10B #54-85', 2147483647, '2000-04-12', 'SANDRA LOPEZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id_materia` int(6) NOT NULL,
  `materia` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `grado` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_prof_materia` int(6) NOT NULL,
  `f_inicio` date NOT NULL,
  `f_finalizacion` date NOT NULL,
  `h_inicio` time NOT NULL,
  `h_finalizacion` time NOT NULL,
  `incidencia` text COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `materia`, `grado`, `id_prof_materia`, `f_inicio`, `f_finalizacion`, `h_inicio`, `h_finalizacion`, `incidencia`) VALUES
(1, 'sociales', '6-A', 1, '1987-05-05', '1999-02-06', '08:00:00', '02:00:00', 'jklhjyfjtjuth'),
(2, 'matematicas', '6-A', 1, '1987-05-05', '1999-02-06', '08:00:00', '02:00:00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(11) NOT NULL,
  `direccion` varchar(60) COLLATE utf8mb4_spanish_ci DEFAULT NULL,
  `celular` varchar(10) COLLATE utf8mb4_spanish_ci NOT NULL,
  `profesion` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `direccion`, `celular`, `profesion`) VALUES
(1, 'cll 20p #3-55', '314587954', 'licenciado en matematicas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(6) NOT NULL,
  `nombres` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(70) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` int(120) NOT NULL,
  `rol` varchar(50) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estado` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `password`, `rol`, `estado`) VALUES
(1, 'miguel sanchez', 'giron castillo', 'sanchez11@gmail.com', 0, 'Profesor', 'Activo'),
(2, 'darly jinet', 'giron castillo', 'jinetdarly25@gmail.com', 123456789, 'Estudiante', 'Activo'),
(3, 'catalina ', 'lopez', 'gionto25@gmail.com', 0, 'Estudiante', 'Activo'),
(4, 'dilan camilo', 'giron castillo', 'dilan10@gmail.com', 1002965382, 'Administrador', 'Activo'),
(5, 'naily valentina', 'muÃ±oz castillo', 'naily15@gmail.com', 123456789, 'Estudiante', 'Activo'),
(6, 'ian jose', 'aztaiza castillo', 'ian9@gmail.com', 123456789, 'Profesor', 'Activo'),
(17, 'SANDRA CASTILLO', 'ceron', '1061789890@studioeducativocloud.com', 456123, 'Estudiante', 'Activo'),
(18, 'sara', 'ceron', 'andreitha741@gmail.com', 147, 'Docente', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id_calificacion`),
  ADD KEY `id_estudiante_materia` (`id_estudiante_materia`),
  ADD KEY `id_estudiante_materia_2` (`id_estudiante_materia`),
  ADD KEY `id_materia` (`id_materia`),
  ADD KEY `id_materia_2` (`id_materia`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id_materia`),
  ADD KEY `id_prof_materia` (`id_prof_materia`),
  ADD KEY `id_prof_materia_2` (`id_prof_materia`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id_calificacion` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id_materia` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`id_estudiante_materia`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`id_estudiante`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`id_prof_materia`) REFERENCES `profesor` (`id_profesor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
