-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 24-12-2021 a las 10:01:36
-- Versión del servidor: 5.7.31
-- Versión de PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cooking`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lista`
--

DROP TABLE IF EXISTS `lista`;
CREATE TABLE IF NOT EXISTS `lista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) CHARACTER SET utf8 NOT NULL,
  `tiempo` varchar(250) CHARACTER SET utf8 NOT NULL,
  `porciones` varchar(250) CHARACTER SET utf8 NOT NULL,
  `ingredientes` text CHARACTER SET utf8 NOT NULL,
  `preparacion` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `lista`
--

INSERT INTO `lista` (`id`, `nombre`, `tiempo`, `porciones`, `ingredientes`, `preparacion`) VALUES
(16, 'Alfajores de Maicena', '60 Minutos', '22 Alfajores', 'Manteca: 150 gr. Azúcar: 150 gr. Huevos: 2Miel: 1 cucharada. Esencia de vainilla: c/n. Premezcla: 300 gr. Fécula de maíz o maicena: 300 gr. Polvo para hornear: 1 cucharada', '1. Mezclar la manteca con el azúcar hasta integrar.2. A la preparación anterior, agregar de a poco los huevos, la miel y la esencia de vainilla.3. Por otro lado, tamizar la premezcla con el polvo de hornear y a fécula de maíz. Una vez hecho esto, incorporar a la preparación anterior, de a poco, hasta lograr una masa suave y lisa.4. Dejar descansar la masa en la heladera por 20 minutos.5. Una vez transcurrido este tiempo, sacar de la heladera y estirar la masa con rodillo.6. Cortar las tapitas del tamaño que lo deseen y llevar al horno medio por 30 minutos aproximadamente.7. Cuando las tapitas estén cocidas, sacarlas del horno y dejarlas enfriar. Luego, unir las tapitas con dulce de leche sin gluten y pasar por coco rallado.'),
(17, 'Vitel Toné', '130 Minutos', '10', 'Peceto: 1kg. Atún: 6 latas Anchoas: 8 filets Zanahoria: 1 Mayonesa: 150gr. Caldo: 2 cucharadas Vino blanco: 1/2 vaso Perejil: 1 puñado Romero: 1 puñado Sal a gusto Pimienta a gusto Aceite de oliva: 2 cucharadas Laurel: 1 0 2 hojas Alcaparras en conserva: 1/2 vaso', '1. Cocinar la carne entera en una olla con agua, la zanahoria y el apio cortados y las hierbas. Agregarle un chorro de aceite de oliva y el vino blanco al agua de la cocción y también la sal y la pimienta. Poner todo junto en agua fría y cocina a fuego medio durante una hora y media aproximadamente, hasta que la carne esté tierna.  2. Cuando la carne de ternera esté cocida, sacarla y cuando entibia llevar a la heladera para que se enfríe. El caldo se cuela y se guarda en un recipiente para utilizar en otros platos y más adelante en otro paso de la receta del vitel toné tradicional.  3. Preparar la salsa para el vitel toné: en la licuadora poner la mayonesa, las anchoas, el atún, 1 cucharada de caldo (si es necesario agregarle otra después) y las alcaparras. Licuar todo hasta lograr una salsa homogénea, suave y sin grumos (hay que probar con una cucharadita).  4. Cuando la carne está bien fría es el momento de cortarla en rodajas finas (el grosor va a gusto personal o de acuerdo a la cantidad de porciones que se necesite) y disponerlas una al lado de la otra dentro de una fuente (o el plato en el que se va a servir).  5. Regar con la mayonesa de atún las rodajas de vitel toné hasta cubrirlas parcialmente o por completo. Decorar con alcaparras y servir.'),
(20, 'Helado de Frutilla', '30 Minutos', '4 Personas', '150 cm3 de leche 250 g de frutillas 1 cda. de azúcar 50 g de crema 2 cdas. de azúcar', '1. Poner las frutillas junto con el azúcar y dejar macerar por media hora. Reservar algunas frutillas en trozos para decorar. 2. Procesar el resto de las frutillas con la leche, el azúcar y la miel. 3. Batir a ½ punto la crema y el azúcar restante e incorporar a la preparación anterior. 4. Llenar los moldes y llevar al freezer.   Tips: se puede reemplazar la leche por yogurt de frutillas.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(1, 'cooking@gmail.com', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
