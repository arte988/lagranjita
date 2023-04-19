-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 18-04-2023 a las 20:01:29
-- Versión del servidor: 5.7.41
-- Versión de PHP: 8.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tierra`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_cliente` varchar(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `monto` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `fecha`, `id_cliente`, `descripcion`, `monto`) VALUES
(27, '2023-04-18', '9', 'No se', '0.99'),
(28, '2023-04-18', '9', 'No se', '35.97');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmp`
--

CREATE TABLE `tmp` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tmp`
--

INSERT INTO `tmp` (`id`, `descripcion`, `cantidad`, `precio`) VALUES
(86, 'Sushi', 3, '11.99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` varchar(30) NOT NULL,
  `inventario` varchar(30) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userid`, `nombre`, `descripcion`, `precio`, `inventario`, `foto`) VALUES
(11, 'Plato de carne', 'Carne, arroz, ensalada y jugo', '6.99', '23', 'https://img.freepik.com/fotos-premium/plato-verduras-carne-asada_538646-4110.jpg'),
(12, 'Sushi', 'Pescado envuelto en arroz, versuras y exquisitas especias o aderezos', '11.99', '9', 'https://s1.eestatic.com/2015/05/11/cocinillas/cocinillas_32506750_116175093_1706x960.jpg'),
(16, 'Coctel de camarones', 'Preparado con gambas o camarones hervidos y pelados, usualmente con especias, jugo de limÃ³n, alguna salsa y una variedad de verduras, como lechuga, aguacate o tomate.', '10.99', '12', 'https://pronacatqma.com/images/com_yoorecipe/banner_superior/1307_1.jpg'),
(17, 'Hamburguesa', 'Deliciosa carne a la parrilla con aderezos y verduras de calidad entre tpan.', '7.99', '20', 'https://www.pequerecetas.com/wp-content/uploads/2013/07/hamburguesas-caseras-receta.jpg'),
(18, 'Choripan', 'Delicioso pan + salchica y aderesos de la casa y cebolla al gusto', '1.10', '60', 'https://img.taste.com.au/HdaTemcR/w643-h428-cfill-q90/taste/2016/11/argentinian-choripan-109514-1.jpeg'),
(19, 'Sopa de gallina india', ' con trozos de carne o con granos de arroz o cebada, pasta, zanahoria, papa amarilla, apio, cebolla blanca, etc.â€‹ Se considera tambiÃ©n un remedio curativo y reconfortante contra la gripe y catarros en general.', '4.99', '30', 'https://www.recetassalvador.com/base/stock/Recipe/181-image/181-image_web.jpg'),
(20, 'Sopa de mondongo', 'callos cortados en cubitos cocidos a fuego lento con verduras como pimientos, cebollas, zanahorias, repollo, apio, tomates, cilantro, ajo o tubÃ©rculos.', '4.99', '27', 'https://www.recetashonduras.com/base/stock/Recipe/166-image/166-image_web.jpg'),
(21, 'Pupusa c/u', 'Tortillas hechas de masa de maÃ­z o de arroz rellenas con queso, chicharrÃ³n (extracciÃ³n de la carne de cerdo), frijoles y a las que llamamos â€œrevueltasâ€ (chicharrÃ³n con frijoles y queso), camarÃ³n y pescado.', '0.99', '100', 'https://www.recetassalvador.com/base/stock/Recipe/32-image/32-image_web.jpg'),
(22, 'Sopa de frijoles rojo', 'Contiene elementos principales de las comidas salvadoreÃ±as como el frijol rojo y costilla de cerdo.', '4.99', '27', 'https://www.daisybrand.com/wp-content/uploads/2019/12/black-bean-soup770x628_4660.jpg'),
(23, 'Pollo a la plancha', 'Carne de pollo a la plancha acompaÃ±ado de arroz y reodajas de tomate y cilantro.', '6.99', '25', 'https://www.mycolombianrecipes.com/wp-content/uploads/2014/03/colombian-style-grilled-chicken.jpg'),
(24, 'Tacos de Chorizo', 'Ricos tacos en tortilla de harina salvadoreÃ±a, del comal a tu mesa, de doÃ±a Pelos', '0.99', '1000', 'https://productoschata.com/wp-content/uploads/2021/05/Tacos-de-chorizo-chata-con-pina.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_form`
--

CREATE TABLE `user_form` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `direccion` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user_form`
--

INSERT INTO `user_form` (`id`, `email`, `password`, `direccion`) VALUES
(1, 'google@gmail.com', 'microsoft', 'Psj 4, #1, Sillicon Valley');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `correo` varchar(255) NOT NULL,
  `palabra_secreta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `palabra_secreta`) VALUES
(1, 'mango@gmail.com', '$2y$10$HBQLsa1TSYFseqLOA6eEBeVRcl6XYeAgP76ixVbytMEAfjNUssOUG'),
(2, 'google@gmail.com', '$2y$10$ru44MkugqlyxLEdCOWm6d.dUs/JrCOHqdau0I89kPCHhMA4Kz7QnG'),
(3, 'jocote@gmail.com', '$2y$10$OhSQARR5thDI6t9HaMO70OPbftjOlG1dioBeTes7stK3XciAaC/s.'),
(4, 'jocotee@gmail.com', '$2y$10$JN2VLisaUSSczQCjdjJcV.6IyEwgRe5R45uYpq2OJbI7fcY1L/zgG'),
(5, 'eusebio@hotmail.com', '$2y$10$Hgm3xhU7MTEEFZJGJbS0DOd1E0ZChdXwJbQ2cRh8dA5T/xSb9eTOu'),
(6, 'uva@gmail.com', '$2y$10$tlLksCMyJigRNyKkOcaiAuo8s4wtBkBNYLKgfk7WxcyDcIuRScJL6');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tmp`
--
ALTER TABLE `tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indices de la tabla `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `tmp`
--
ALTER TABLE `tmp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
