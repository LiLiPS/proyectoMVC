-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-12-2020 a las 21:05:39
-- Versión del servidor: 10.3.15-MariaDB
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectomvc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `pk_carrera` int(11) NOT NULL,
  `fk_departamento` int(11) NOT NULL,
  `nombre_carrera` varchar(255) NOT NULL,
  `abreviatura_carrera` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`pk_carrera`, `fk_departamento`, `nombre_carrera`, `abreviatura_carrera`) VALUES
(1, 4, 'Ingeniería en Sistemas Computacionales', 'ISX'),
(2, 2, 'Ingeniería Electrónica', 'ELX'),
(3, 2, 'Ingeniería Electromecánica', 'EMX'),
(4, 1, 'Ingeniería en Gestión Empresarial', 'GE9'),
(5, 3, 'Ingeniería Industrial', 'IIX'),
(6, 3, 'Ingeniería en Logística', 'LOX'),
(7, 2, 'Ingeniería Mecatrónica', 'MCX'),
(8, 4, 'Ingeniería en Tecnologías de la Información y Comunicaciones', 'TIX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `pk_departamento` int(11) NOT NULL,
  `departamento` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`pk_departamento`, `departamento`) VALUES
(1, 'Ciencias económico administrativas'),
(2, 'Metal mecánica'),
(3, 'Ingeniería industrial'),
(4, 'Sistemas y computación');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `pk_grupo` int(11) NOT NULL,
  `fk_usuario` int(11) DEFAULT NULL,
  `fk_materia` int(11) NOT NULL,
  `clave_grupo` varchar(255) DEFAULT NULL,
  `grupo` varchar(10) NOT NULL,
  `aula` varchar(255) DEFAULT NULL,
  `periodo` varchar(255) DEFAULT NULL,
  `turno` varchar(255) DEFAULT NULL,
  `alumnos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupo`
--

INSERT INTO `grupo` (`pk_grupo`, `fk_usuario`, `fk_materia`, `clave_grupo`, `grupo`, `aula`, `periodo`, `turno`, `alumnos`) VALUES
(7, 20, 1, '4007', 'A', 'D1', 'Agosto-Diciembre/2020', 'Matutino', 34);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hora`
--

CREATE TABLE `hora` (
  `pk_hora` int(11) NOT NULL,
  `hora` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hora`
--

INSERT INTO `hora` (`pk_hora`, `hora`) VALUES
(1, '07:00-08:40'),
(2, '07:00-07:50'),
(3, '07:50-08:40'),
(4, '08:45-10:25'),
(5, '08:45-09:35'),
(6, '09:35-10:25'),
(7, '10:30-12:10'),
(8, '10:30-11:20'),
(9, '11:20-12:10'),
(10, '12:15-13:55'),
(11, '12:15-13:05'),
(12, '13:05-13:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `pk_horario` int(11) NOT NULL,
  `fk_grupo` int(11) NOT NULL,
  `fk_hora` int(11) NOT NULL,
  `dia` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`pk_horario`, `fk_grupo`, `fk_hora`, `dia`) VALUES
(25, 7, 4, 2),
(26, 7, 4, 4),
(27, 7, 6, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe_carrera`
--

CREATE TABLE `jefe_carrera` (
  `pk_jefe_carrera` int(11) NOT NULL,
  `fk_usuario` int(11) NOT NULL,
  `fk_carrera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `jefe_carrera`
--

INSERT INTO `jefe_carrera` (`pk_jefe_carrera`, `fk_usuario`, `fk_carrera`) VALUES
(3, 6, 3),
(4, 39, 4),
(5, 39, 5),
(6, 10, 6),
(7, 13, 7),
(8, 40, 8),
(9, 20, 1),
(10, 20, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `pk_materia` int(11) NOT NULL,
  `fk_carrera` int(11) NOT NULL,
  `clave_materia` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `semestre` int(11) NOT NULL,
  `horas_t` int(11) NOT NULL,
  `horas_p` int(11) NOT NULL,
  `creditos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`pk_materia`, `fk_carrera`, `clave_materia`, `nombre`, `semestre`, `horas_t`, `horas_p`, `creditos`) VALUES
(1, 1, 'AEF1041', 'MATEMÁTICAS DISCRETAS', 1, 3, 2, 5),
(2, 1, 'AED1285', 'FUNDAMENTOS DE PROGRAMACIÓN', 1, 2, 3, 5),
(3, 3, 'EMH1016', 'INTRODUCCIÓN A LA PROGRAMACIÓN', 1, 2, 2, 4),
(4, 1, 'ACF0901', 'CÁLCULO DIFERENCIAL', 1, 3, 2, 5),
(5, 1, 'SCH1024', 'TALLER DE ADMINISTRACIÓN', 1, 1, 3, 4),
(6, 1, 'ACC0906', 'FUNDAMENTOS DE INVESTIGACIÓN', 1, 2, 2, 4),
(7, 1, 'ACA0907', 'TALLER DE ÉTICA', 1, 0, 4, 4),
(8, 1, 'ACF0902', 'CÁLCULO INTEGRAL', 2, 3, 2, 5),
(9, 1, 'ACF0903', 'ÁLGEBRA LINEAL', 2, 3, 2, 5),
(10, 1, 'AED1286', 'PROGRAMACIÓN ORIENTADA A OBJETOS', 2, 2, 3, 5),
(11, 1, 'AEC1008', 'CONTABILIDAD FINANCIERA', 2, 2, 2, 4),
(12, 1, 'AEC1058', 'QUÍMICA', 2, 2, 2, 4),
(13, 1, 'AEF1052', 'PROBABILIDAD Y ESTADÍSTICA', 2, 3, 2, 5),
(14, 1, 'ACF0904', 'CÁLCULO VECTORIAL', 3, 3, 2, 5),
(15, 1, 'AED1026', 'ESTRUCTURA DE DATOS', 3, 2, 3, 5),
(16, 1, 'SCF1006', 'FÍSICA GENERAL', 3, 3, 2, 5),
(17, 1, 'SCC1013', 'INVESTIGACIÓN DE OPERACIONES', 3, 2, 2, 4),
(18, 1, 'SCC1005', 'CULTURA EMPRESARIAL', 3, 2, 2, 4),
(19, 1, 'ACD0908', 'DESARROLLO SUSTENTABLE', 3, 2, 3, 5),
(20, 1, 'ACF0905', 'ECUACIONES DIFERENCIALES', 4, 3, 2, 5),
(21, 1, 'SCD1027', 'TÓPICOS AVANZADOS DE PROGRAMACIÓN', 4, 2, 3, 5),
(22, 1, 'SCD1018', 'PRINCIPIOS ELÉCTRICOS Y APLICACIONES DIGITALES', 4, 2, 3, 5),
(23, 1, 'AEF1031', 'FUNDAMENTOS DE BASE DE DATOS', 4, 3, 2, 5),
(24, 1, 'SCD1022', 'SIMULACIÓN', 4, 2, 3, 5),
(25, 1, 'SCC1017', 'MÉTODOS NUMÉRICOS', 4, 2, 2, 4),
(26, 1, 'SCD1003', 'ARQUITECTURA DE COMPUTADORAS', 5, 2, 3, 5),
(27, 1, 'SCA1025', 'TALLER DE BASE DE DATOS', 5, 0, 4, 4),
(28, 1, 'SCC1010', 'GRAFICACIÓN', 5, 2, 2, 4),
(29, 1, 'AEC1034', 'FUNDAMENTOS DE TELECOMUNICACIONES', 5, 2, 2, 4),
(30, 1, 'SCC1007', 'FUNDAMENTOS DE INGENIERÍA DE SOFTWARE', 5, 2, 2, 4),
(31, 1, 'AEC1061', 'SISTEMAS OPERATIVOS', 5, 2, 2, 4),
(32, 1, 'SCC1014', 'LENGUAJES DE INTERFAZ', 6, 2, 2, 4),
(33, 1, 'SCB1001', 'ADMINISTRACIÓN DE BASE DE DATOS', 6, 1, 4, 5),
(34, 1, 'SCD1021', 'REDES DE COMPUTADORAS', 6, 2, 3, 5),
(35, 1, 'SCA1026', 'TALLER DE SISTEMAS OPERATIVOS', 6, 0, 4, 4),
(36, 1, 'SCD1011', 'INGENIERÍA DE SOFTWARE', 6, 2, 3, 5),
(37, 1, 'SCD1015', 'LENGUAJES Y AUTÓMATAS I', 6, 2, 3, 5),
(38, 1, 'SCC1023', 'SISTEMAS PROGRAMABLES', 7, 2, 2, 4),
(39, 1, 'DAD1401', 'BASES DE DATOS AVANZADAS', 7, 2, 3, 5),
(40, 1, 'SCD1004', 'CONMUTACIÓN Y ENRUTAMIENTO EN REDES DE DATOS', 7, 2, 3, 5),
(41, 1, 'SCG1009', 'GESTIÓN DE PROYECTOS DE SOFTWARE', 7, 3, 3, 6),
(42, 1, 'SCD1016', 'LENGUAJES Y AUTÓMATAS II', 7, 2, 3, 5),
(43, 1, 'ACA0909', 'TALLER DE INVESTIGACIÓN I', 7, 0, 4, 4),
(44, 1, 'SCA1002', 'ADMINISTRACIÓN DE REDES', 8, 0, 4, 4),
(45, 1, 'ACA0910', 'TALLER DE INVESTIGACIÓN II', 8, 0, 4, 4),
(46, 1, 'SCC1019', 'PROGRAMACIÓN LÓGICA Y FUNCIONAL', 8, 2, 2, 4),
(47, 1, 'AEB1055', 'PROGRAMACIÓN WEB', 8, 1, 4, 5),
(48, 1, 'DAD1402', 'DESARROLLO DE APLICACIONES EMPRESARIALES', 8, 2, 3, 5),
(49, 1, 'SCC1012', 'INTELIGENCIA ARTIFICIAL', 9, 2, 2, 4),
(50, 1, 'DAD1403', 'PROGRAMACIÓN WEB AVANZADA', 9, 2, 3, 5),
(51, 1, 'DAD1404', 'ARQUITECTURA DE APLICACIONES EMPRESARIALES', 9, 2, 3, 5),
(52, 1, 'DAB1405', 'DESARROLLO DE APLICACIONES PARA DISPOSITIVOS MÓVILES', 9, 2, 3, 5),
(53, 3, 'AEF1390', 'DIBUJO ELECTROMECÁNICO', 2, 3, 2, 5),
(54, 3, 'AEC1047', 'METROLOGÍA Y NORMALIZACIÓN', 2, 2, 2, 4),
(55, 3, 'EME1012', 'ESTÁTICA', 2, 2, 2, 4),
(56, 3, 'EMJ1021', 'MECÁNICA DE MATERIALES', 3, 3, 3, 6),
(57, 2, 'AEQ1387', 'COMUNICACIÓN HUMANA', 1, 2, 1, 3),
(58, 2, 'AEF1042', 'MECÁNICA CLÁSICA', 1, 3, 2, 5),
(59, 2, 'ETD1021', 'MEDICIONES ELÉCTRICAS', 2, 3, 2, 5),
(60, 2, 'ETF1027', 'TÓPICOS SELECTOS DE FÍSICA', 2, 3, 2, 5),
(61, 2, 'ETF1020', 'MARCO LEGAL DE LA EMPRESA', 4, 2, 1, 3),
(62, 2, 'ETD1025', 'PROGRAMACIÓN VISUAL', 4, 3, 2, 5),
(63, 4, 'GEF0910', 'FUNDAMENTOS DE QUÍMICA', 1, 3, 2, 5),
(64, 4, 'GEE0918', 'LEGISLACIÓN LABORAL', 1, 3, 2, 5),
(65, 4, 'AEF1074', 'FUNDAMENTOS DE GESTIÓN EMPRESARIAL', 1, 3, 2, 5),
(66, 4, 'AEB1082', 'SOFTWARE DE APLICACIÓN EJECUTIVO', 2, 3, 2, 5),
(67, 6, 'LOC0913', 'INTRODUCCIÓN A LA INGENIERÍA EN LOGÍSTICA', 1, 2, 2, 4),
(68, 6, 'LOC0903', 'CADENA DE SUMINISTRO', 2, 2, 2, 4),
(69, 6, 'LOC0914', 'FUNDAMENTOS DE DERECHO', 2, 2, 2, 4),
(70, 8, 'TIP1017', 'INTRODUCCIÓN A LAS TICS', 1, 2, 1, 3),
(71, 8, 'TIC1002', 'ADMINISTRACIÓN GERENCIAL', 2, 2, 2, 4),
(72, 8, 'TIF1009', 'CONTABILIDAD Y COSTOS', 2, 3, 2, 5),
(73, 8, 'TIF1020', 'MATEMÁTICAS DISCRETAS II', 2, 3, 2, 5),
(74, 8, 'TIE1018', 'MATEMÁTICAS APLICADAS A COMUNICACIONES', 3, 2, 2, 4),
(75, 5, 'INN1008', 'DIBUJO INDUSTRIAL', 1, 3, 3, 6),
(76, 5, 'INH1029', 'TALLER DE HERRAMIENTAS INTELECTUALES', 1, 2, 2, 4),
(77, 5, 'INC1009', 'ELECTRICIDAD Y ELECTRÓNICA INDUSTRIAL', 2, 2, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `pk_rol` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`pk_rol`, `rol`) VALUES
(1, 'administrador'),
(2, 'maestro'),
(3, 'jefe'),
(4, 'jefe_maestro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `pk_usuario` int(11) NOT NULL,
  `fk_carrera` int(11) NOT NULL,
  `fk_rol` int(11) NOT NULL,
  `clave_usuario` varchar(255) DEFAULT NULL,
  `titulo` varchar(10) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido_paterno` varchar(255) DEFAULT NULL,
  `apellido_materno` varchar(255) DEFAULT NULL,
  `usuario` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `horas` int(11) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`pk_usuario`, `fk_carrera`, `fk_rol`, `clave_usuario`, `titulo`, `nombre`, `apellido_paterno`, `apellido_materno`, `usuario`, `contrasena`, `horas`, `telefono`, `correo`) VALUES
(6, 2, 4, '001', 'DR.', 'FRANCISCO', 'MOSIÑO', 'JUAN', 'fmosiño001', '1234', 5, '477 180 1001', 'fmosiño001@leon.tecnm.mx'),
(7, 1, 2, '002', 'DR.', 'JUAN MARTIN', 'CARPIO', 'VALADEZ', 'jcarpio002', '1234', 5, '477 180 1002', 'jcarpio002@leon.tecnm.mx'),
(8, 1, 2, '003', 'DR.', 'RAÚL', 'SANTIAGO', 'MONTERO', 'rsantiago003', '1234', 5, '477 180 1003', 'rsantiago003@leon.tecnm.mx'),
(9, 1, 2, '004', 'DR.', 'VICTOR MANUEL', 'ZAMUDIO', 'RODRIGUEZ', 'vzamudio004', '1234', 5, '477 180 1004', 'vzamudio004@leon.tecnm.mx'),
(10, 1, 4, '005', 'DRA.', 'MARIA DEL ROSARIO', 'BALTAZAR', 'FLORES', 'mbaltazar005', '1234', 5, '477 180 1005', 'mbaltazar005@leon.tecnm.mx'),
(11, 1, 2, '006', 'ING.', 'JOSÉ FERNANDO', 'HERNÁNDEZ', 'RODRÍGUEZ', 'jhernández006', '1234', 5, '477 180 1006', 'jhernández006@leon.tecnm.mx'),
(12, 1, 2, '007', 'ING.', 'MARÍA MINERVA', 'SAUCEDO', 'TORRES', 'msaucedo007', '1234', 5, '477 180 1007', 'msaucedo007@leon.tecnm.mx'),
(13, 2, 4, '008', 'ING.', 'IVAN', 'VIGUERAS', 'MONTAÑO', 'ivigueras008', '1234', 5, '477 180 1008', 'ivigueras008@leon.tecnm.mx'),
(14, 1, 2, '009', 'ING.', 'OSCAR ANDRES', 'MORALES', 'REYES', 'omorales009', '1234', 5, '477 180 1009', 'omorales009@leon.tecnm.mx'),
(15, 1, 2, '010', 'ING.', 'MIGUEL ÁNGEL', 'PEÑA', 'LÓPEZ', 'mpeña010', '1234', 5, '477 180 1010', 'mpeña010@leon.tecnm.mx'),
(16, 1, 2, '011', 'ING.', 'LUIS ROBERTO', 'GALLEGOS', 'MUÑOZ', 'lgallegos011', '1234', 5, '477 180 1011', 'lgallegos011@leon.tecnm.mx'),
(17, 1, 2, '012', 'ING.', 'DOMINGO', 'GARCIA', 'ORNELAS', 'dgarcia012', '1234', 5, '477 180 1012', 'dgarcia012@leon.tecnm.mx'),
(18, 1, 2, '013', 'ING.', 'PATRICIA MARIA', 'CASTILLO', 'MARTÍNEZ', 'pcastillo013', '1234', 5, '477 180 1013', 'pcastillo013@leon.tecnm.mx'),
(19, 1, 2, '014', 'ING.', 'EFRAIN', 'BERMUDEZ', 'GUADALUPE', 'ebermudez014', '1234', 5, '477 180 1014', 'ebermudez014@leon.tecnm.mx'),
(20, 1, 4, '015', 'ING.', 'ANTONIO', 'AGUILA', 'REYES', 'aaguila015', '1234', 5, '477 180 1015', 'aaguila015@leon.tecnm.mx'),
(21, 1, 2, '016', 'ING.', 'JOSE GERARDO', 'CARPIO', 'FLORES', 'jcarpio016', '1234', 5, '477 180 1016', 'jcarpio016@leon.tecnm.mx'),
(22, 1, 2, '017', 'ING.', 'LUIS EDUARDO', 'GUTIERREZ', 'AYALA', 'lgutierrez017', '1234', 5, '477 180 1017', 'lgutierrez017@leon.tecnm.mx'),
(23, 1, 2, '018', 'ING.', 'RUTH', 'SAEZ DE NANCLARES', 'RODRIGUEZ', 'rsaezdenanclares018', '1234', 5, '477 180 1018', 'rsaezdenanclares018@leon.tecnm.mx'),
(24, 2, 2, '019', 'ING.', 'DENY', 'MARTINEZ', 'TREJO', 'dmartinez019', '1234', 5, '477 180 1019', 'dmartinez019@leon.tecnm.mx'),
(25, 1, 2, '020', 'ING.', 'PAOLA VIRGINIA', 'GALVAN', 'JARAMILLO', 'pgalvan020', '1234', 5, '477 180 1020', 'pgalvan020@leon.tecnm.mx'),
(26, 1, 2, '021', 'ING.', 'JOSE ALEJANDRO', 'RODRIGUEZ', 'RENTERIA', 'jrodriguez021', '1234', 5, '477 180 1021', 'jrodriguez021@leon.tecnm.mx'),
(27, 1, 2, '022', 'ING.', 'ANA COLUMBA ZURITA', 'MARTINEZ', 'AGUILAR', 'amartinez022', '1234', 5, '477 180 1022', 'amartinez022@leon.tecnm.mx'),
(28, 1, 2, '023', 'ING.', 'JOSE ELIAS', 'MARTINEZ', 'ARIAS', 'jmartinez023', '1234', 5, '477 180 1023', 'jmartinez023@leon.tecnm.mx'),
(29, 1, 2, '024', 'ING.', 'LAURA PATRICIA', 'GUEVARA', 'RANGEL', 'lguevara024', '1234', 5, '477 180 1024', 'lguevara024@leon.tecnm.mx'),
(30, 1, 2, '025', 'ING.', 'EUGENIO CONRADO', 'MARIN', 'GONZALEZ', 'emarin025', '1234', 5, '477 180 1025', 'emarin025@leon.tecnm.mx'),
(31, 1, 2, '026', 'ING.', 'ALEJANDRO', 'GARCIA', 'TRUJILLO', 'agarcia026', '1234', 5, '477 180 1026', 'agarcia026@leon.tecnm.mx'),
(32, 1, 2, '027', 'ING.', 'DENISSE', 'MEDINA', 'LÓPEZ', 'dmedina027', '1234', 5, '477 180 1027', 'dmedina027@leon.tecnm.mx'),
(33, 1, 2, '028', 'ING.', 'RUBEN', 'TRUJILLO', 'CORONA', 'rtrujillo028', '1234', 5, '477 180 1028', 'rtrujillo028@leon.tecnm.mx'),
(34, 1, 2, '029', 'ING.', 'HECTOR FEDERICO', 'GODINEZ', 'CABRERA', 'hgodinez029', '1234', 5, '477 180 1029', 'hgodinez029@leon.tecnm.mx'),
(35, 1, 2, '030', 'ING.', 'JUAN IGNACIO', 'GUIZAR', 'RUIZ', 'jguizar030', '1234', 5, '477 180 1030', 'jguizar030@leon.tecnm.mx'),
(36, 1, 2, '031', 'ING.', 'LUZ DEL CARMEN', 'RUIZ', 'GAYTAN', 'lruiz031', '1234', 5, '477 180 1031', 'lruiz031@leon.tecnm.mx'),
(37, 1, 2, '032', 'ING.', 'CIRINO', 'SILVA', 'TOVAR', 'csilva032', '1234', 5, '477 180 1032', 'csilva032@leon.tecnm.mx'),
(38, 2, 2, '033', 'ING.', 'MANUEL', 'ORNELAS', 'RODRIGUEZ', 'mornelas033', '1234', 5, '477 180 1033', 'mornelas033@leon.tecnm.mx'),
(39, 1, 4, '034', 'ING.', 'JOSE ALFREDO', 'GASCA', 'GONZALEZ', 'jgasca034', '1234', 5, '477 180 1034', 'jgasca034@leon.tecnm.mx'),
(40, 1, 4, '035', 'ING.', 'CARLOS RAFAEL', 'LEVY', 'ROJAS', 'clevy035', '1234', 5, '477 180 1035', 'clevy035@leon.tecnm.mx'),
(41, 1, 2, '036', 'ING.', 'EDUARDO JOSE', 'PEREZ', 'PINTOR', 'eperez036', '1234', 5, '477 180 1036', 'eperez036@leon.tecnm.mx'),
(42, 1, 2, '037', 'ING.', 'LAURA', 'JUAREZ', 'GUERRA', 'ljuarez037', '1234', 5, '477 180 1037', 'ljuarez037@leon.tecnm.mx'),
(43, 1, 2, '038', 'ING.', 'MARIA DE LOS ANGELES', 'ARELLANO', 'VERA', 'marellano038', '1234', 5, '477 180 1038', 'marellano038@leon.tecnm.mx'),
(44, 1, 2, '039', 'ING.', 'ANGELICA BENITA', 'HERNANDEZ', 'CARRANZA', 'ahernandez039', '1234', 5, '477 180 1039', 'ahernandez039@leon.tecnm.mx'),
(45, 1, 2, '040', 'ING.', 'JUAN CARLOS', 'AGUILERA', 'CRUZ', 'jaguilera040', '1234', 5, '477 180 1040', 'jaguilera040@leon.tecnm.mx'),
(46, 1, 2, '041', 'ING.', 'MA. CONCEPCION', 'SANDOVAL', 'SOLIS', 'msandoval041', '1234', 5, '477 180 1041', 'msandoval041@leon.tecnm.mx'),
(47, 1, 2, '042', 'ING.', 'ADOLFO', 'GAMIÑO', 'GUERRERO', 'agamiño042', '1234', 5, '477 180 1042', 'agamiño042@leon.tecnm.mx'),
(48, 1, 2, '043', 'ING.', 'MA. VERONICA', 'TAPIA', 'IBARRA', 'mtapia043', '1234', 5, '477 180 1043', 'mtapia043@leon.tecnm.mx'),
(49, 1, 2, '044', 'ING.', 'JUAN PABLO', 'MURILLO', 'RUIZ', 'jmurillo044', '1234', 5, '477 180 1044', 'jmurillo044@leon.tecnm.mx'),
(50, 1, 2, '045', 'ING.', 'JAVIER IVAN', 'MANZANARES', 'CUADROS', 'jmanzanares045', '1234', 5, '477 180 1045', 'jmanzanares045@leon.tecnm.mx'),
(51, 1, 2, '046', 'ING.', 'JOSE LUIS FERNANDO', 'SUAREZ', 'Y GOMEZ', 'jsuarez046', '1234', 5, '477 180 1046', 'jsuarez046@leon.tecnm.mx'),
(52, 1, 2, '047', 'ING.', 'EDNA MILITZA', 'MARTINEZ', 'PRADO', 'emartinez047', '1234', 5, '477 180 1047', 'emartinez047@leon.tecnm.mx'),
(53, 1, 2, '048', 'LIC.', 'GUSTAVO ADOLFO', 'RODRÍGUEZ', 'MUÑOZ', 'grodríguez048', '1234', 5, '477 180 1048', 'grodríguez048@leon.tecnm.mx'),
(54, 1, 2, '049', 'LIC.', 'CARLOS ALBERTO', 'TRUJILLO', 'CASTELLANOS', 'ctrujillo049', '1234', 5, '477 180 1049', 'ctrujillo049@leon.tecnm.mx'),
(55, 1, 2, '050', 'LIC.', 'IRMA DE JESUS', 'RAMIREZ', 'ALVAREZ', 'iramirez050', '1234', 5, '477 180 1050', 'iramirez050@leon.tecnm.mx'),
(56, 1, 2, '051', 'LIC.', 'ROXANA NOEMI', 'MORENO', 'REAL', 'rmoreno051', '1234', 5, '477 180 1051', 'rmoreno051@leon.tecnm.mx'),
(57, 1, 2, '052', 'LIC.', 'ELIZABETH', 'CASTELLANOS', 'NOLASCO', 'ecastellanos052', '1234', 5, '477 180 1052', 'ecastellanos052@leon.tecnm.mx'),
(58, 1, 2, '053', 'LIC.', 'ANGELICA MARIA', 'ORTIZ', 'GAUCIN', 'aortiz053', '1234', 5, '477 180 1053', 'aortiz053@leon.tecnm.mx'),
(59, 1, 2, '054', 'LIC.', 'DAVID EVERARDO', 'LUGO', 'PEDROZA', 'dlugo054', '1234', 5, '477 180 1054', 'dlugo054@leon.tecnm.mx'),
(60, 1, 2, '055', 'LIC.', 'HECTOR JOSE', 'PUGA', 'SOBERANES', 'hpuga055', '1234', 5, '477 180 1055', 'hpuga055@leon.tecnm.mx'),
(61, 1, 2, '056', 'M.C.', 'MARTHA ALICIA', 'ROCHA', 'SANCHEZ', 'mrocha056', '1234', 5, '477 180 1056', 'mrocha056@leon.tecnm.mx'),
(62, 1, 2, '057', 'M.C.', 'CARLOS', 'LINO', 'RAMIREZ', 'clino057', '1234', 5, '477 180 1057', 'clino057@leon.tecnm.mx'),
(63, 1, 2, '058', 'MTRA.', 'ANGÉLICA JOSEFINA', 'PÉREZ', 'FLORES', 'apérez058', '1234', 5, '477 180 1058', 'apérez058@leon.tecnm.mx'),
(64, 1, 2, '059', 'MTRA.', 'MA. CONCEPCIÓN ROCÍO', 'SÁNCHEZ', 'CANO', 'msánchez059', '1234', 5, '477 180 1059', 'msánchez059@leon.tecnm.mx'),
(65, 1, 1, '060', 'M.C.', 'LILIANA', 'PARADA', 'SÁNCHEZ', 'lparada060', '1234', 5, '477 180 1060', 'lparada060@leon.tecnm.mx');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_carreras`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_carreras` (
`pk_carrera` int(11)
,`fk_departamento` int(11)
,`nombre_carrera` varchar(255)
,`abreviatura_carrera` varchar(55)
,`pk_departamento` int(11)
,`departamento` varchar(255)
,`pk_jefe_carrera` int(11)
,`fk_usuario` int(11)
,`fk_carrera` int(11)
,`nombreMaestro` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_grupos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_grupos` (
`pk_grupo` int(11)
,`fk_usuario` int(11)
,`fk_materia` int(11)
,`clave_grupo` varchar(255)
,`grupo` varchar(10)
,`aula` varchar(255)
,`periodo` varchar(255)
,`turno` varchar(255)
,`alumnos` int(11)
,`pk_usuario` int(11)
,`fk_carrera` int(11)
,`fk_rol` int(11)
,`clave_usuario` varchar(255)
,`titulo` varchar(10)
,`nombre` varchar(255)
,`apellido_paterno` varchar(255)
,`apellido_materno` varchar(255)
,`usuario` varchar(255)
,`contrasena` varchar(255)
,`horas` int(11)
,`telefono` varchar(255)
,`correo` varchar(255)
,`pk_materia` int(11)
,`fk_carrera_materia` int(11)
,`clave_materia` varchar(255)
,`nombre_materia` varchar(255)
,`semestre` int(11)
,`horas_t` int(11)
,`horas_p` int(11)
,`creditos` int(11)
,`pk_carrera` int(11)
,`fk_departamento` int(11)
,`nombre_carrera` varchar(255)
,`abreviatura_carrera` varchar(55)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_horarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_horarios` (
`pk_horario` int(11)
,`fk_grupo` int(11)
,`fk_hora` int(11)
,`dia` smallint(6)
,`pk_grupo` int(11)
,`fk_usuario` int(11)
,`fk_materia` int(11)
,`clave_grupo` varchar(255)
,`grupo` varchar(10)
,`aula` varchar(255)
,`periodo` varchar(255)
,`turno` varchar(255)
,`alumnos` int(11)
,`pk_hora` int(11)
,`hora` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_horas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_horas` (
`fk_hora` int(11)
,`dia` smallint(6)
,`fk_usuario` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_materias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_materias` (
`pk_materia` int(11)
,`fk_carrera` int(11)
,`clave_materia` varchar(255)
,`nombre` varchar(255)
,`semestre` int(11)
,`horas_t` int(11)
,`horas_p` int(11)
,`creditos` int(11)
,`nombre_carrera` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_sabana`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_sabana` (
`pk_grupo` int(11)
,`fk_usuario` int(11)
,`fk_materia` int(11)
,`clave_grupo` varchar(255)
,`grupo` varchar(10)
,`aula` varchar(255)
,`periodo` varchar(255)
,`turno` varchar(255)
,`alumnos` int(11)
,`nombreMaestro` text
,`clave_materia` varchar(255)
,`nombreMateria` varchar(255)
,`semestre` int(11)
,`creditos` int(11)
,`pk_carrera` int(11)
,`nombre_carrera` varchar(255)
,`abreviatura_carrera` varchar(55)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_usuarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `view_usuarios` (
`pk_usuario` int(11)
,`fk_carrera` int(11)
,`fk_rol` int(11)
,`clave_usuario` varchar(255)
,`titulo` varchar(10)
,`nombre` varchar(255)
,`apellido_paterno` varchar(255)
,`apellido_materno` varchar(255)
,`usuario` varchar(255)
,`contrasena` varchar(255)
,`horas` int(11)
,`telefono` varchar(255)
,`correo` varchar(255)
,`pk_rol` int(11)
,`rol` varchar(255)
,`pk_carrera` int(11)
,`fk_departamento` int(11)
,`nombre_carrera` varchar(255)
,`abreviatura_carrera` varchar(55)
,`pk_departamento` int(11)
,`departamento` varchar(255)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `view_carreras`
--
DROP TABLE IF EXISTS `view_carreras`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_carreras`  AS  select `carrera`.`pk_carrera` AS `pk_carrera`,`carrera`.`fk_departamento` AS `fk_departamento`,`carrera`.`nombre_carrera` AS `nombre_carrera`,`carrera`.`abreviatura_carrera` AS `abreviatura_carrera`,`departamento`.`pk_departamento` AS `pk_departamento`,`departamento`.`departamento` AS `departamento`,`jefe_carrera`.`pk_jefe_carrera` AS `pk_jefe_carrera`,`jefe_carrera`.`fk_usuario` AS `fk_usuario`,`jefe_carrera`.`fk_carrera` AS `fk_carrera`,concat(`usuario`.`titulo`,' ',`usuario`.`nombre`,' ',`usuario`.`apellido_paterno`,' ',`usuario`.`apellido_materno`) AS `nombreMaestro` from (((`carrera` left join `departamento` on(`carrera`.`fk_departamento` = `departamento`.`pk_departamento`)) left join `jefe_carrera` on(`jefe_carrera`.`fk_carrera` = `carrera`.`pk_carrera`)) left join `usuario` on(`jefe_carrera`.`fk_usuario` = `usuario`.`pk_usuario`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_grupos`
--
DROP TABLE IF EXISTS `view_grupos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_grupos`  AS  select `grupo`.`pk_grupo` AS `pk_grupo`,`grupo`.`fk_usuario` AS `fk_usuario`,`grupo`.`fk_materia` AS `fk_materia`,`grupo`.`clave_grupo` AS `clave_grupo`,`grupo`.`grupo` AS `grupo`,`grupo`.`aula` AS `aula`,`grupo`.`periodo` AS `periodo`,`grupo`.`turno` AS `turno`,`grupo`.`alumnos` AS `alumnos`,`usuario`.`pk_usuario` AS `pk_usuario`,`usuario`.`fk_carrera` AS `fk_carrera`,`usuario`.`fk_rol` AS `fk_rol`,`usuario`.`clave_usuario` AS `clave_usuario`,`usuario`.`titulo` AS `titulo`,`usuario`.`nombre` AS `nombre`,`usuario`.`apellido_paterno` AS `apellido_paterno`,`usuario`.`apellido_materno` AS `apellido_materno`,`usuario`.`usuario` AS `usuario`,`usuario`.`contrasena` AS `contrasena`,`usuario`.`horas` AS `horas`,`usuario`.`telefono` AS `telefono`,`usuario`.`correo` AS `correo`,`materia`.`pk_materia` AS `pk_materia`,`materia`.`fk_carrera` AS `fk_carrera_materia`,`materia`.`clave_materia` AS `clave_materia`,`materia`.`nombre` AS `nombre_materia`,`materia`.`semestre` AS `semestre`,`materia`.`horas_t` AS `horas_t`,`materia`.`horas_p` AS `horas_p`,`materia`.`creditos` AS `creditos`,`carrera`.`pk_carrera` AS `pk_carrera`,`carrera`.`fk_departamento` AS `fk_departamento`,`carrera`.`nombre_carrera` AS `nombre_carrera`,`carrera`.`abreviatura_carrera` AS `abreviatura_carrera` from (((`grupo` left join `materia` on(`grupo`.`fk_materia` = `materia`.`pk_materia`)) left join `usuario` on(`grupo`.`fk_usuario` = `usuario`.`pk_usuario`)) left join `carrera` on(`materia`.`fk_carrera` = `carrera`.`pk_carrera`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_horarios`
--
DROP TABLE IF EXISTS `view_horarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_horarios`  AS  select `horario`.`pk_horario` AS `pk_horario`,`horario`.`fk_grupo` AS `fk_grupo`,`horario`.`fk_hora` AS `fk_hora`,`horario`.`dia` AS `dia`,`grupo`.`pk_grupo` AS `pk_grupo`,`grupo`.`fk_usuario` AS `fk_usuario`,`grupo`.`fk_materia` AS `fk_materia`,`grupo`.`clave_grupo` AS `clave_grupo`,`grupo`.`grupo` AS `grupo`,`grupo`.`aula` AS `aula`,`grupo`.`periodo` AS `periodo`,`grupo`.`turno` AS `turno`,`grupo`.`alumnos` AS `alumnos`,`hora`.`pk_hora` AS `pk_hora`,`hora`.`hora` AS `hora` from ((`horario` left join `grupo` on(`horario`.`fk_grupo` = `grupo`.`pk_grupo`)) left join `hora` on(`horario`.`fk_hora` = `hora`.`pk_hora`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_horas`
--
DROP TABLE IF EXISTS `view_horas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_horas`  AS  select `horario`.`fk_hora` AS `fk_hora`,`horario`.`dia` AS `dia`,`grupo`.`fk_usuario` AS `fk_usuario` from (`horario` left join `grupo` on(`horario`.`fk_grupo` = `grupo`.`pk_grupo`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_materias`
--
DROP TABLE IF EXISTS `view_materias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_materias`  AS  select `materia`.`pk_materia` AS `pk_materia`,`materia`.`fk_carrera` AS `fk_carrera`,`materia`.`clave_materia` AS `clave_materia`,`materia`.`nombre` AS `nombre`,`materia`.`semestre` AS `semestre`,`materia`.`horas_t` AS `horas_t`,`materia`.`horas_p` AS `horas_p`,`materia`.`creditos` AS `creditos`,`carrera`.`nombre_carrera` AS `nombre_carrera` from (`materia` left join `carrera` on(`materia`.`fk_carrera` = `carrera`.`pk_carrera`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_sabana`
--
DROP TABLE IF EXISTS `view_sabana`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_sabana`  AS  select `grupo`.`pk_grupo` AS `pk_grupo`,`grupo`.`fk_usuario` AS `fk_usuario`,`grupo`.`fk_materia` AS `fk_materia`,`grupo`.`clave_grupo` AS `clave_grupo`,`grupo`.`grupo` AS `grupo`,`grupo`.`aula` AS `aula`,`grupo`.`periodo` AS `periodo`,`grupo`.`turno` AS `turno`,`grupo`.`alumnos` AS `alumnos`,concat(`usuario`.`titulo`,' ',`usuario`.`nombre`,' ',`usuario`.`apellido_paterno`,' ',`usuario`.`apellido_materno`) AS `nombreMaestro`,`materia`.`clave_materia` AS `clave_materia`,`materia`.`nombre` AS `nombreMateria`,`materia`.`semestre` AS `semestre`,`materia`.`creditos` AS `creditos`,`carrera`.`pk_carrera` AS `pk_carrera`,`carrera`.`nombre_carrera` AS `nombre_carrera`,`carrera`.`abreviatura_carrera` AS `abreviatura_carrera` from (((`grupo` left join `usuario` on(`grupo`.`fk_usuario` = `usuario`.`pk_usuario`)) left join `materia` on(`grupo`.`fk_materia` = `materia`.`pk_materia`)) left join `carrera` on(`materia`.`fk_carrera` = `carrera`.`pk_carrera`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `view_usuarios`
--
DROP TABLE IF EXISTS `view_usuarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_usuarios`  AS  select `usuario`.`pk_usuario` AS `pk_usuario`,`usuario`.`fk_carrera` AS `fk_carrera`,`usuario`.`fk_rol` AS `fk_rol`,`usuario`.`clave_usuario` AS `clave_usuario`,`usuario`.`titulo` AS `titulo`,`usuario`.`nombre` AS `nombre`,`usuario`.`apellido_paterno` AS `apellido_paterno`,`usuario`.`apellido_materno` AS `apellido_materno`,`usuario`.`usuario` AS `usuario`,`usuario`.`contrasena` AS `contrasena`,`usuario`.`horas` AS `horas`,`usuario`.`telefono` AS `telefono`,`usuario`.`correo` AS `correo`,`rol`.`pk_rol` AS `pk_rol`,`rol`.`rol` AS `rol`,`carrera`.`pk_carrera` AS `pk_carrera`,`carrera`.`fk_departamento` AS `fk_departamento`,`carrera`.`nombre_carrera` AS `nombre_carrera`,`carrera`.`abreviatura_carrera` AS `abreviatura_carrera`,`departamento`.`pk_departamento` AS `pk_departamento`,`departamento`.`departamento` AS `departamento` from (((`usuario` left join `rol` on(`usuario`.`fk_rol` = `rol`.`pk_rol`)) left join `carrera` on(`usuario`.`fk_carrera` = `carrera`.`pk_carrera`)) left join `departamento` on(`carrera`.`fk_departamento` = `departamento`.`pk_departamento`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`pk_carrera`),
  ADD KEY `fk_departamento` (`fk_departamento`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`pk_departamento`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`pk_grupo`),
  ADD KEY `fk_usuario` (`fk_usuario`),
  ADD KEY `fk_materia` (`fk_materia`);

--
-- Indices de la tabla `hora`
--
ALTER TABLE `hora`
  ADD PRIMARY KEY (`pk_hora`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`pk_horario`),
  ADD KEY `fk_grupo` (`fk_grupo`),
  ADD KEY `fk_hora` (`fk_hora`);

--
-- Indices de la tabla `jefe_carrera`
--
ALTER TABLE `jefe_carrera`
  ADD PRIMARY KEY (`pk_jefe_carrera`),
  ADD KEY `fk_usuario` (`fk_usuario`),
  ADD KEY `fk_carrera` (`fk_carrera`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`pk_materia`),
  ADD KEY `fk_carrera` (`fk_carrera`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`pk_rol`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`pk_usuario`),
  ADD KEY `fk_carrera` (`fk_carrera`),
  ADD KEY `fk_rol` (`fk_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carrera`
--
ALTER TABLE `carrera`
  MODIFY `pk_carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `pk_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `pk_grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `hora`
--
ALTER TABLE `hora`
  MODIFY `pk_hora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `pk_horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `jefe_carrera`
--
ALTER TABLE `jefe_carrera`
  MODIFY `pk_jefe_carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `pk_materia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `pk_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `pk_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD CONSTRAINT `carrera_ibfk_1` FOREIGN KEY (`fk_departamento`) REFERENCES `departamento` (`pk_departamento`);

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `grupo_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`pk_usuario`),
  ADD CONSTRAINT `grupo_ibfk_2` FOREIGN KEY (`fk_materia`) REFERENCES `materia` (`pk_materia`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`fk_grupo`) REFERENCES `grupo` (`pk_grupo`),
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`fk_hora`) REFERENCES `hora` (`pk_hora`);

--
-- Filtros para la tabla `jefe_carrera`
--
ALTER TABLE `jefe_carrera`
  ADD CONSTRAINT `jefe_carrera_ibfk_1` FOREIGN KEY (`fk_usuario`) REFERENCES `usuario` (`pk_usuario`),
  ADD CONSTRAINT `jefe_carrera_ibfk_2` FOREIGN KEY (`fk_carrera`) REFERENCES `carrera` (`pk_carrera`);

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`fk_carrera`) REFERENCES `carrera` (`pk_carrera`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`fk_carrera`) REFERENCES `carrera` (`pk_carrera`),
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`fk_rol`) REFERENCES `rol` (`pk_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
