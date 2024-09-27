-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 27-09-2024 a las 17:52:47
-- Versión del servidor: 8.3.0
-- Versión de PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `escuela_musica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id_alumno` int NOT NULL,
  `apellido` varchar(50) COLLATE utf32_spanish_ci DEFAULT NULL,
  `nombre` varchar(50) COLLATE utf32_spanish_ci DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `direccion` varchar(100) COLLATE utf32_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf32_spanish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf32_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_alumno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumno`, `apellido`, `nombre`, `fecha_nac`, `direccion`, `telefono`, `email`) VALUES
(1, 'Perez', 'Juan', '1996-06-10', 'Calle Falsa 123', '123456789', 'juan.perez@example.com'),
(2, 'Gonzalez', 'Maria', '1999-03-20', 'Avenida Siempre Viva 742', '987654321', 'maria.gonzalez@example.co'),
(3, 'Lopez', 'Carlos', '1990-11-21', 'Calle Principal 456', '456123789', 'carlos.lopez@example.com'),
(4, 'Martinez', 'Ana', '1991-11-23', 'Calle Secundaria 789', '789123456', 'ana.martinez@example.com'),
(5, 'Fernandez', 'Lucia', '1995-05-04', 'Calle Tercera 321', '321654987', 'lucia.fernandez@example.c'),
(6, 'Sanchez', 'Diego', '2001-12-25', 'Calle Cuarta 654', '654987321', 'diego.sanchez@example.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

DROP TABLE IF EXISTS `cursos`;
CREATE TABLE IF NOT EXISTS `cursos` (
  `id_curso` int NOT NULL,
  `nombre` varchar(50) COLLATE utf32_spanish_ci DEFAULT NULL,
  `nivel_habilidad` varchar(20) COLLATE utf32_spanish_ci DEFAULT NULL,
  `tipo_instrumento` varchar(20) COLLATE utf32_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id_curso`, `nombre`, `nivel_habilidad`, `tipo_instrumento`) VALUES
(1, 'Guitarra Principiante', 'Principiante', 'Guitarra'),
(2, 'Guitarra Intermedio', 'Intermedio', 'Guitarra'),
(3, 'Guitarra Avanzado', 'Avanzado', 'Guitarra'),
(4, 'Piano Principiante', 'Principiante', 'Piano'),
(5, 'Piano Intermedio', 'Intermedio', 'Piano'),
(6, 'Piano Avanzado', 'Avanzado', 'Piano'),
(7, 'Violín Principiante', 'Principiante', 'Violín'),
(8, 'Violín Intermedio', 'Intermedio', 'Violín'),
(9, 'Violín Avanzado', 'Avanzado', 'Violín');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

DROP TABLE IF EXISTS `inscripciones`;
CREATE TABLE IF NOT EXISTS `inscripciones` (
  `id_inscripcion` int NOT NULL AUTO_INCREMENT,
  `fecha_insc` date NOT NULL,
  `abono_insc` tinyint(1) NOT NULL,
  `id_alumno` int NOT NULL,
  `id_curso` int NOT NULL,
  PRIMARY KEY (`id_inscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf32 COLLATE=utf32_spanish_ci;

--
-- Volcado de datos para la tabla `inscripciones`
--

INSERT INTO `inscripciones` (`id_inscripcion`, `fecha_insc`, `abono_insc`, `id_alumno`, `id_curso`) VALUES
(1, '2024-01-05', 1, 1, 1),
(2, '2024-01-10', 0, 2, 2),
(3, '2024-02-15', 1, 3, 3),
(4, '2024-03-20', 0, 4, 4),
(5, '2024-04-25', 1, 5, 5),
(6, '2024-05-30', 0, 6, 6),
(7, '2024-01-15', 1, 1, 2),
(8, '2024-02-10', 1, 2, 3),
(9, '2024-03-05', 0, 3, 1),
(10, '2024-04-01', 1, 4, 6),
(11, '2024-05-05', 0, 5, 4),
(12, '2024-06-01', 1, 6, 9),
(13, '2024-01-20', 0, 1, 5),
(14, '2024-02-25', 1, 2, 7),
(15, '2024-03-30', 0, 3, 8);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
