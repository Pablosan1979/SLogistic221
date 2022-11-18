-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2022 a las 22:11:13
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `mantenimiento`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE IF NOT EXISTS `alquiler` (
  `id` int(11) NOT NULL,
  `codigo` varchar(200) NOT NULL,
  `concepto` varchar(200) NOT NULL,
  `fecha_alquiler` varchar(45) NOT NULL,
  `fecha_devolucion` varchar(45) NOT NULL,
  `proveedor` varchar(45) NOT NULL,
  `valor` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cotizaciones`
--

CREATE TABLE IF NOT EXISTS `cotizaciones` (
`id` int(11) NOT NULL,
  `codigo_cotizacion` int(11) NOT NULL,
  `concepto` varchar(200) NOT NULL,
  `proveedor` varchar(45) NOT NULL,
  `fecha_cotizacion` varchar(45) NOT NULL,
  `valor_cotizacion` double NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `cotizaciones`
--

INSERT INTO `cotizaciones` (`id`, `codigo_cotizacion`, `concepto`, `proveedor`, `fecha_cotizacion`, `valor_cotizacion`) VALUES
(1, 1, 'COTIZACION ALQUILER PERFILADORA', 'PLANTA', '01/01/2022', 25000000),
(2, 2, 'COTIZACION ALQUILER PUENTE GRUA 01', 'PLANTA', '01/01/2022', 25000000),
(3, 3, 'COTIZACION ALQUILER PUENTE GRUA 02', 'PLANTA', '01/01/2022', 25000000),
(4, 4, 'COTIZACION ALQUILER PUENTE GRUA 03', 'PLANTA', '01/01/2022', 25000000),
(5, 5, 'COTIZACION ALQUILER PUENTE GRUA 04', 'PLANTA', '01/01/2022', 25000000),
(6, 6, 'COTIZACION ALQUILER PUENTE GRUA 05', 'PLANTA', '01/01/2022', 25000000),
(7, 7, 'COTIZACION ALQUILER PUENTE GRUA 06', 'PLANTA', '01/01/2022', 25000000),
(8, 8, 'COTIZACION ALQUILER PUENTE GRUA 07', 'PLANTA', '01/01/2022', 25000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE IF NOT EXISTS `facturas` (
`id` int(11) NOT NULL,
  `codigo_factura` int(11) NOT NULL,
  `concepto` varchar(200) NOT NULL,
  `proveedor` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `codigo_factura`, `concepto`, `proveedor`, `fecha`, `valor`) VALUES
(1, 1, 'ALQUILER PERFILADORA', 'PLANTA', '19/08/2022', 25000000),
(2, 2, 'ALQUILER PUENTE GRUA 01', 'PLANTA', '19/08/2022', 25000000),
(3, 3, 'ALQUILER PUENTE GRUA 01', 'PLANTA', '19/08/2022', 25000000),
(4, 4, 'ALQUILER PUENTE GRUA 01', 'PLANTA', '19/08/2022', 25000000),
(5, 5, 'ALQUILER PUENTE GRUA 01', 'PLANTA', '19/08/2022', 25000000),
(6, 6, 'ALQUILER PUENTE GRUA 01', 'PLANTA', '19/08/2022', 25000000),
(7, 7, 'ALQUILER PUENTE GRUA 01', 'PLANTA', '19/08/2022', 25000000),
(8, 8, 'ALQUILER PUENTE GRUA 01', 'PLANTA', '19/08/2022', 25000000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gestion_proveedores`
--

CREATE TABLE IF NOT EXISTS `gestion_proveedores` (
`id` int(11) NOT NULL,
  `codigo_proveedor` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `gestion_proveedores`
--

INSERT INTO `gestion_proveedores` (`id`, `codigo_proveedor`, `nombre`, `ciudad`, `telefono`, `correo`, `direccion`) VALUES
(1, 1, 'PLANTA', 'PALMIRA', '6665150', 'PLANTA@ESTRUMETAL.COM.CO', 'KM 7 VIA PALMIRA CALI'),
(2, 2, 'MANTENIMIENTO', 'PALMIRA', '6665150', 'MANTENIMIENTO@ESTRUMETAL.COM.CO', 'KM 7 VIA PALMIRA CALI'),
(3, 3, 'PREPARACION', 'PALMIRA', '6665150', 'PREPARACION@ESTRUMETAL.COM.CO', 'KM 7 VIA PALMIRA CALI'),
(4, 4, 'PERFILES', 'PALMIRA', '6665150', 'PERFILES@ESTRUMETAL.COM.CO', 'KM 7 VIA PALMIRA CALI'),
(5, 5, 'ARMADO ', 'PALMIRA', '6665150', 'ARMADO@ESTRUMETAL.COM.CO', 'KM 7 VIA PALMIRA CALI'),
(6, 6, 'SOLDADURA', 'PALMIRA', '6665150', 'SOLDADURA@ESTRUMETAL.COM.CO', 'KM 7 VIA PALMIRA CALI'),
(7, 7, 'DESPACHOS', 'PALMIRA', '6665150', 'DESPACHOS@ESTRUMETAL.COM.CO', 'KM 7 VIA PALMIRA CALI'),
(8, 8, 'ADMINISTRACION', 'PALMIRA', '6665150', 'ADMINISTRACION@ESTRUMETAL.COM.CO', 'KM 7 VIA PALMIRA CALI');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maquinas`
--

CREATE TABLE IF NOT EXISTS `maquinas` (
`id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `maquinas`
--

INSERT INTO `maquinas` (`id`, `codigo`, `nombre`, `marca`) VALUES
(1, '0001', 'PERFILADORA', 'CHINA'),
(2, '0002', 'PUENTE GRUA 01', 'NITCHI'),
(3, '0003', 'PUENTE GRUA 02', 'SHAW BOX'),
(4, '0004', 'PUENTE GRUA 03', 'YALE'),
(5, '0005', 'PUENTE GRUA 04', 'NITCHI'),
(6, '0006', 'PUENTE GRUA 05', 'NITCHI'),
(7, '0007', 'PUENTE GRUA 06', 'CHINA'),
(8, '0008', 'PUENTE GRUA 07', 'CHINA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_mant`
--

CREATE TABLE IF NOT EXISTS `personal_mant` (
`id` int(11) NOT NULL,
  `codigo_empleado` int(11) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Volcado de datos para la tabla `personal_mant`
--

INSERT INTO `personal_mant` (`id`, `codigo_empleado`, `nombres`, `apellidos`, `cargo`, `sexo`) VALUES
(1, 1136251414, 'FRANCISCO', 'SUAREZ', 'TECNICO', 'MASCULINO'),
(2, 6480460, 'RUBEN', 'SANTAMARIA', 'TECNICO', 'MASCULINO'),
(3, 94587414, 'ALEXANDER', 'PALMA', 'TECNICO', 'MASCULINO'),
(4, 1138884110, 'JANIER', 'KLINGER', 'TECNICO', 'MASCULINO'),
(5, 94365251, 'VICTOR', 'QUINTERO', 'TECNICO', 'MASCULINO'),
(6, 1124100012, 'CARLOS', 'RODRIGUEZ', 'TECNICO', 'MASCULINO'),
(7, 94586321, 'ANDRES', 'DIAZ', 'JEFE', 'MASCULINO'),
(8, 94535117, 'PABLO', 'SANTACRUZ', 'COORDINADOR', 'MASCULINO'),
(9, 1152369850, 'JAIRO', 'CASTRO', 'TECNICO', 'MASCULINO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_pro`
--

CREATE TABLE IF NOT EXISTS `personal_pro` (
`id` int(11) NOT NULL,
  `codigo_empleado` int(11) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `personal_pro`
--

INSERT INTO `personal_pro` (`id`, `codigo_empleado`, `nombres`, `apellidos`, `cargo`, `sexo`) VALUES
(10, 10, 'CARLOS', 'HERRERA', 'INGENIERO DE PRODUCCION', 'MASCULINO'),
(11, 11, 'CARLOS ANDRES', 'SERRATO', 'LIDER PROCESO', 'MASCULINO'),
(12, 12, 'CRISTIAN', 'PATIÑO', 'AUXILIAR PRODUCCION', 'MASCULINO'),
(13, 13, 'FABIAN', 'URREGO', 'SUPERVISOR PROCESOS', 'MASCULINO'),
(14, 14, 'FABIO', 'OSPINA', 'INGENIERO DE PRODUCCION', 'MASCULINO'),
(15, 15, 'FELIPE', 'ARANGO', 'COORDINADOR CALIDAD', 'MASCULINO'),
(16, 16, 'GUSTAVO', 'CHAVARRIA', 'SUPERVISOR PROCESOS', 'MASCULINO'),
(17, 17, 'HARLY', 'PALACIOS', 'SUPERVISOR PATIOS', 'MASCULINO'),
(18, 18, 'JEISON', 'MONSALVE', 'AUXILIAR ALMACEN', 'MASCULINO'),
(19, 19, 'JHNO JAIRO', 'TROCHEZ', 'LIDER PROCESO', 'MASCULINO'),
(20, 20, 'JHON FERLEY', 'BUENAÑOS', 'SUPERVISOR PROCESOS', 'MASCULINO'),
(21, 21, 'JHONATAN', 'ZUÑIGA', 'AUXILIAR ALMACEN MONTAJE', 'MASCULINO'),
(22, 22, 'JOAN ANDRES', 'AÑEGRIA', 'ASISTENTE DE PROGRAMACION', 'MASCULINO'),
(23, 23, 'LUIS ALBERTO', 'GOMEZ', 'SUPERVISOR PROCESOS', 'MASCULINO'),
(24, 24, 'MARCELA', 'MINA', 'SUPERVISOR SSTMA', 'FEMENINO'),
(25, 25, 'MARTHA', 'MONTOYA', 'ASISTENTE DE COMPRAS', 'FEMENINO'),
(26, 26, 'NEIDER JAVIER', 'RAMOS', 'INGENIERO DE PRODUCCION', 'MASCULINO'),
(27, 27, 'ROBERT', 'CAICEDO', 'SUPERVISOR SSTMA', 'MASCULINO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pro_mant`
--

CREATE TABLE IF NOT EXISTS `pro_mant` (
`id` int(11) NOT NULL,
  `codigo_maquina` int(11) NOT NULL,
  `maquina` varchar(45) NOT NULL,
  `fecha_inicio` varchar(45) NOT NULL,
  `fecha_fin` varchar(45) NOT NULL,
  `ejecuta` varchar(45) NOT NULL,
  `tipo_mant` varchar(45) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `pro_mant`
--

INSERT INTO `pro_mant` (`id`, `codigo_maquina`, `maquina`, `fecha_inicio`, `fecha_fin`, `ejecuta`, `tipo_mant`) VALUES
(1, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE IF NOT EXISTS `servicios` (
`id` int(11) NOT NULL,
  `codigo_servicio` int(11) NOT NULL,
  `concepto` varchar(200) NOT NULL,
  `proveedor` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `valor` double DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `codigo_servicio`, `concepto`, `proveedor`, `fecha`, `valor`) VALUES
(1, 0, '', '', '', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE IF NOT EXISTS `solicitudes` (
`id` int(11) NOT NULL,
  `codigo_maquina` int(11) NOT NULL,
  `nombre_maquina` varchar(100) NOT NULL,
  `area` varchar(45) NOT NULL,
  `falla` varchar(100) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `solicitudes`
--

INSERT INTO `solicitudes` (`id`, `codigo_maquina`, `nombre_maquina`, `area`, `falla`) VALUES
(1, 0, '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(11) NOT NULL,
  `codigo_empleado` int(11) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `area` varchar(45) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `contraseña` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `codigo_empleado`, `nombres`, `apellidos`, `area`, `usuario`, `contraseña`) VALUES
(1, 1, 'PABLO', 'SANTACRUZ', 'Mantenimiento', '94535117', '94535117'),
(2, 2, 'ANDRES ', 'DIAZ', 'Mantenimiento', '94586321', '94586321'),
(3, 3, 'CARLOS', 'HERRERA', 'PRODUCCION', '100100', '100100'),
(4, 4, 'CRISTIAN ', 'PATIÑO', 'PRODUCCION', '100101', '100101'),
(5, 5, 'FABIO', 'OSPINA', 'PRODUCCION', '100102', '100102'),
(6, 6, 'MARCELA', 'MINA', 'SISOMAS', '100103', '100103'),
(7, 7, 'GENERICO', 'GENERICO', 'PRODUCCION', '100104', '100104');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
`id` int(11) NOT NULL,
  `codigo_venta` int(11) NOT NULL,
  `concepto` varchar(200) NOT NULL,
  `proveedor` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo_venta`, `concepto`, `proveedor`, `fecha`, `valor`) VALUES
(1, 0, '', '', '', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gestion_proveedores`
--
ALTER TABLE `gestion_proveedores`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maquinas`
--
ALTER TABLE `maquinas`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_mant`
--
ALTER TABLE `personal_mant`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_pro`
--
ALTER TABLE `personal_pro`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pro_mant`
--
ALTER TABLE `pro_mant`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cotizaciones`
--
ALTER TABLE `cotizaciones`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `gestion_proveedores`
--
ALTER TABLE `gestion_proveedores`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `maquinas`
--
ALTER TABLE `maquinas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `personal_mant`
--
ALTER TABLE `personal_mant`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `personal_pro`
--
ALTER TABLE `personal_pro`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT de la tabla `pro_mant`
--
ALTER TABLE `pro_mant`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
