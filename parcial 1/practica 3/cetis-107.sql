-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:14:02
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis-107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'José Daniel', 'Arreola Soto', '23325061070466', '2008-02-06', 1, 'jose.arreola23@cetis107.edu.mx', '6674119654'),
(2, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-08-22', 1, 'oscar.torres23@cetis107.edu.mx', '6671385682'),
(3, 'Hugo Alejandro', 'Rubio Maldonado', '23325061070557', '2008-08-22', 1, 'metaspike2019@gmail.com', '6674598915'),
(4, 'Jorge Luis', 'Garcia Figueroa', '23325061070531', '2008-08-13', 1, 'jorge.garcia23@cetis107.edu.mx', '6676210221'),
(5, 'Mateo', 'Ibarra Gastelum', '23325061070511', '2008-01-13', 1, 'mateo.ibarra23@cetis107.edu.mx', '6678619006'),
(8, 'Gael', 'Aldapa Leon', '23325061070567', '2008-09-21', 1, 'gael.aldapa23@cetis107.edu.mx', '6673129886');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripción` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripción`) VALUES
(1, 'Programación ', 'La programación como carrera técnica es una opción dinámica y en constante crecimiento, centrada en el desarrollo de software y soluciones digitales. Los programadores diseñan, codifican y mantienen aplicaciones, aprendiendo diversos lenguajes y herramientas para resolver problemas tecnológicos en m'),
(2, 'Ofimática ', 'La ofimática como carrera técnica se centra en el dominio de herramientas digitales utilizadas en el entorno laboral, como procesadores de texto, hojas de cálculo y software de presentación. Forma profesionales capacitados para gestionar información, optimizar procesos administrativos y mejorar la p'),
(3, 'Electrónica ', 'La electrónica como carrera técnica forma profesionales especializados en el diseño, reparación y mantenimiento de circuitos y dispositivos electrónicos. Los egresados manejan equipos, sistemas automatizados y controladores, aplicando conocimientos en electricidad, programación y tecnología para div'),
(4, 'Contabilidad ', 'La contabilidad como carrera técnica forma profesionales capacitados para registrar, analizar e interpretar información financiera de empresas y negocios. Los técnicos contables manejan libros contables, elaboran estados financieros, cumplen obligaciones fiscales y apoyan en la toma de decisiones ec'),
(5, 'Construcción ', 'La carrera técnica en construcción prepara profesionales en planificación, ejecución y supervisión de obras civiles. Los técnicos en construcción interpretan planos, gestionan materiales, garantizan seguridad en obra y aplican normativas, contribuyendo al desarrollo de infraestructuras eficientes y '),
(6, 'Diseño grafico', 'La carrera técnica en diseño gráfico forma profesionales en la creación de contenido visual para medios digitales e impresos. Los técnicos dominan herramientas de diseño, tipografía, ilustración y edición, desarrollando identidades visuales, publicidad y material creativo para empresas, contribuyend');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Base de Datos no Relacionales', 4),
(2, 'Ingles 4', 4),
(3, 'Temas Mate 1', 4),
(4, 'Recursos socioemocionales', 4),
(5, 'Base de Datos Relacionales', 4),
(6, 'Historia', 4),
(7, 'Ciencias Sociales 3', 4),
(8, 'Reacciones Quimicas', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
