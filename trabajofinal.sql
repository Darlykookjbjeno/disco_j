-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-10-2021 a las 09:15:50
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
-- Base de datos: `trabajofinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(10) NOT NULL,
  `direccion` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `profesion` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `telefono` char(15) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `direccion`, `profesion`, `telefono`) VALUES
(6, 'careera 24 #12-30', 'licenciado en lenguaje', '3254789'),
(10, 'careera 24 #12-30', 'biologa', '3254789'),
(12, 'cra 10#22-50', 'socialista', '32548794'),
(13, 'cra 10#22-56', 'profesor educacion fisica', '3254789'),
(24, 'careera 24 #12-20', 'biologa', '31245687'),
(26, 'cra 10#22-50', 'biologa', '3254789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor_asignado_proyecto`
--

CREATE TABLE `profesor_asignado_proyecto` (
  `id` int(10) NOT NULL,
  `id_profesor` int(10) NOT NULL,
  `id_proyecto` int(10) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `profesor_asignado_proyecto`
--

INSERT INTO `profesor_asignado_proyecto` (`id`, `id_profesor`, `id_proyecto`, `fecha_inicio`, `fecha_fin`) VALUES
(1, 6, 1, '2021-05-07', '2021-07-24'),
(3, 6, 2, '2021-05-07', '2021-07-24'),
(46, 12, 2, '2020-05-02', '2020-09-03'),
(49, 12, 1, '2021-05-10', '2021-09-02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyeto_investigacion`
--

CREATE TABLE `proyeto_investigacion` (
  `id` int(10) NOT NULL,
  `nombre` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `programa_id` varchar(200) COLLATE utf8mb4_spanish_ci NOT NULL,
  `descripcion` varchar(512) COLLATE utf8mb4_spanish_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `id_profesor_proyecto` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `proyeto_investigacion`
--

INSERT INTO `proyeto_investigacion` (`id`, `nombre`, `programa_id`, `descripcion`, `fecha_inicio`, `fecha_fin`, `id_profesor_proyecto`) VALUES
(1, 'elaboraciï¿½n de su carpeta pedagï¿½gica', 'tareas', 'elaborar o mejora la planificacion anual de la secciï¿½n', '2021-05-07', '2021-07-24', 1),
(2, 'elaboraciï¿½n de materias educativas didï¿½cticas', 'tareas', 'elaborar materiales educativos para las sesiones ', '2021-05-07', '2021-07-24', 3),
(6, 'desarrllo a  la autonomia', 'unidad', 'alumnos protagonistas del proceso porque son ellos quienes planifican su futuro', '2021-06-03', '2021-09-10', 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(6) NOT NULL,
  `nombres` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `apellidos` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_spanish_ci NOT NULL,
  `password` varchar(120) COLLATE utf8mb4_spanish_ci NOT NULL,
  `rol` varchar(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  `estado` varchar(12) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombres`, `apellidos`, `email`, `password`, `rol`, `estado`) VALUES
(2, 'darly', 'giron', 'jinetdarly25@gmail.com', '125478', 'Administrador', 'Activo'),
(6, 'naily valentina', 'muÃ±oz castillo', 'naily15@gmail.com', '147naily', 'Profesor', 'Activo'),
(7, 'dilan camilo', 'giron castillo', 'dilan10@gmail.com', '12345dilan', 'Administrador', 'Activo'),
(9, 'ian jose', 'aztaiza castillo', 'ian9@gmail.com', 'Activo', 'Administrador', 'Activo'),
(10, 'miguel sanchez', 'giron castillo', 'astaizajh1987@hotmail.com', '147852369', 'Profesor', 'Activo'),
(11, 'SANDRA CASTILLO', 'giron castillo', 'andreitha741@gmail.com', '159753', 'Administrador', 'Activo'),
(12, 'luna', 'valencia', 'valencia2547@gmail.com', 's12345', 'Profesor', 'Activo'),
(13, 'dayania', 'alvares', 'deyaniara25@gmail.com', '159753', 'Profesor', 'Activo'),
(15, 'cesar ', 'castaÃ±o', 'cesar@gmail.com', 'cesar12345', 'Administrador', 'Activo'),
(24, 'gloria ', 'rivera', 'gloria@gmail.com', '147852', 'Profesor', 'Activo'),
(25, 'william', 'riascos', 'william@gmail.com', '258741', 'Profesor', 'Activo'),
(26, 'yuly', 'rivera', 'yuly@gmail.com', 'yuly147', 'Profesor', 'Activo'),
(28, 'miguel sanchez', 'giron castillo', 'miguela@gmail.com', '123456', 'Profesor', 'Activo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`);

--
-- Indices de la tabla `profesor_asignado_proyecto`
--
ALTER TABLE `profesor_asignado_proyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_profesor` (`id_profesor`),
  ADD KEY `id_proyecto` (`id_proyecto`);

--
-- Indices de la tabla `proyeto_investigacion`
--
ALTER TABLE `proyeto_investigacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `profesor_asignado_proyecto`
--
ALTER TABLE `profesor_asignado_proyecto`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `proyeto_investigacion`
--
ALTER TABLE `proyeto_investigacion`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `profesor_asignado_proyecto`
--
ALTER TABLE `profesor_asignado_proyecto`
  ADD CONSTRAINT `profesor_asignado_proyecto_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `profesor_asignado_proyecto_ibfk_2` FOREIGN KEY (`id_proyecto`) REFERENCES `proyeto_investigacion` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
