-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2016 a las 01:09:06
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `suarezcl_custom`
--

--
-- Volcado de datos para la tabla `co_in_language`
--

INSERT INTO `co_in_language` (`id`, `name`, `code`) VALUES
(1, 'Español', 'es'),
(2, 'English', 'en');

--
-- Volcado de datos para la tabla `co_rsc_file`
--

INSERT INTO `co_rsc_file` (`id`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'products.png', '2016-10-28 04:11:00', NULL, NULL),
(3, 'cycling.jpg', '2016-07-01 01:10:00', NULL, NULL),
(4, 'ico_ciclismo.png', '2016-07-01 01:10:00', NULL, NULL),
(5, 'triathlon.jpg', '2016-07-01 01:10:00', NULL, NULL),
(6, 'ico_triatlon.png', '2016-07-01 01:10:00', NULL, NULL),
(7, 'speedskating.jpg', '2016-07-01 01:10:00', NULL, NULL),
(8, 'ico_patinaje.png', '2016-07-01 01:10:00', NULL, NULL),
(9, 'running.jpg', '2016-11-17 00:00:00', NULL, NULL),
(10, 'ico_running.png', '2016-07-01 01:10:00', NULL, NULL),
(11, 'cy_classic.jpg', '2016-11-17 00:00:00', NULL, NULL),
(12, 'cy_classic_h.jpg', '2016-11-17 00:00:00', NULL, NULL),
(13, 'cy_mtb.jpg', '2016-11-17 00:00:00', NULL, NULL),
(14, 'cy_mtb_h.jpg', '2016-11-17 00:00:00', NULL, NULL),
(15, 'cy_performance.jpg', '2016-11-17 00:00:00', NULL, NULL),
(16, 'cy_performance_h.jpg', '2016-11-17 00:00:00', NULL, NULL),
(17, 'cy_proline.jpg', '2016-11-17 00:00:00', NULL, NULL),
(18, 'cy_proline_h.jpg', '2016-11-17 00:00:00', NULL, NULL),
(19, 'cy_women.jpg', '2016-11-17 00:00:00', NULL, NULL),
(20, 'cy_women_h.jpg', '2016-11-17 00:00:00', NULL, NULL),
(21, 'ico_cat_classic.jpg', '2016-11-17 00:00:00', NULL, NULL),
(22, 'ico_cat_mtb.jpg', '2016-11-17 00:00:00', NULL, NULL),
(23, 'ico_cat_performance.jpg', '2016-11-17 00:00:00', NULL, NULL),
(24, 'ico_cat_proline.jpg', '2016-11-17 00:00:00', NULL, NULL),
(25, 'ico_cat_women.jpg', '2016-11-17 00:00:00', NULL, NULL);

--
-- Volcado de datos para la tabla `pr_category`
--

INSERT INTO `pr_category` (`id`, `file_icon_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 24, '2016-09-29 00:00:00', NULL, NULL),
(2, 23, '2016-11-08 00:00:00', NULL, NULL),
(3, 21, '2016-11-08 00:00:00', NULL, NULL),
(4, 22, '2016-11-08 00:00:00', NULL, NULL),
(5, 25, '2016-11-08 00:00:00', NULL, NULL);

--
-- Volcado de datos para la tabla `pr_category_translation`
--

INSERT INTO `pr_category_translation` (`category_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Pro Line', 'UNA NUEVA EXPERIENCIA, a eso le apuntamos con nuestra PRO LINE, llevamos a nuestros ciclistas lo mejor de nosotros, telas livianas y confortables, con un ajuste perfectamente anatómico y aerodinámico que hacen de nuestras prendas PRO una segunda piel.'),
(2, 1, 'Performance Line', 'CONSTANTE EVOLUCIÓN, así se desarrolla nuestra línea performance, una línea renovada, con un ajuste mejorado pensando en la comodidad del ciclista, tecnologías de avanzada que demuestran nuevamente porque siempre vamos un paso mas adelante; parte de esta evolución es la construcción de nuestras prendas PERFORMANCE; siempre queremos ir mas allá y adaptarnos a las necesidades de los ciclistas, no se nos escapa ningún detalle'),
(3, 1, 'Classic Line', 'UN BUEN COMIENZO, pensamos en todos, por eso nuestra línea CLASSIC, es el complemento ideal para quienes comienzan en este apasionante mundo del ciclismo, prendas con ajustes para cada necesidad, buen transporte de humedad, compresión para mejor irrigación; son algunas de las propiedades que caracterizan nuestra colección.'),
(4, 1, 'MTB Line', 'SIN LÍMITES, esta es la bandera de nuestra colección, llena de detalles que hacen de estas prendas las preferidas de los aventureros incansables; cortes láser y malla en prendas inferiores para mayor ventilación, velcros en cintura para un mejor ajuste, bolsillo lateral en busos; son algunas de las nuevas características que traemos.'),
(5, 1, 'Women Line', 'TODO POR EL TODO, a eso le apuestan nuestras ciclistas, mujeres arrolladoras, sin temores ni complejos, ellas fueron quienes nos inspiraron para crear nuestra colección femenina, porque en Suarez no nos conformamos con poco,  vanzamos con el fin de ofrecer prendas que representen la evolución por medio de nuevos tejidos, ajustes y cortes.'),
(1, 2, 'Pro Line', 'A NEW EXPERIENCE, a eso le apuntamos con nuestra PRO LINE, llevamos a nuestros ciclistas lo mejor de nosotros, telas livianas y confortables, con un ajuste perfectamente anatómico y aerodinámico que hacen de nuestras prendas PRO una segunda piel.'),
(2, 2, 'Performance Line', 'CONSTANT EVOLUTION, así se desarrolla nuestra línea performance, una línea renovada, con un ajuste mejorado pensando en la comodidad del ciclista, tecnologías de avanzada que demuestran nuevamente porque siempre vamos un paso mas adelante; parte de esta evolución es la construcción de nuestras prendas PERFORMANCE; siempre queremos ir mas allá y adaptarnos a las necesidades de los ciclistas, no se nos escapa ningún detalle'),
(3, 2, 'Classic Line', 'A GOOD START, pensamos en todos, por eso nuestra línea CLASSIC, es el complemento ideal para quienes comienzan en este apasionante mundo del ciclismo, prendas con ajustes para cada necesidad, buen transporte de humedad, compresión para mejor irrigación; son algunas de las propiedades que caracterizan nuestra colección.'),
(4, 2, 'MTB Line', 'NO LÍMITS, esta es la bandera de nuestra colección, llena de detalles que hacen de estas prendas las preferidas de los aventureros incansables; cortes láser y malla en prendas inferiores para mayor ventilación, velcros en cintura para un mejor ajuste, bolsillo lateral en busos; son algunas de las nuevas características que traemos.'),
(5, 2, 'Women Line', 'TODO POR EL TODO, a eso le apuestan nuestras ciclistas, mujeres arrolladoras, sin temores ni complejos, ellas fueron quienes nos inspiraron para crear nuestra colección femenina, porque en Suarez no nos conformamos con poco,  vanzamos con el fin de ofrecer prendas que representen la evolución por medio de nuevos tejidos, ajustes y cortes.');

--
-- Volcado de datos para la tabla `pr_line`
--

INSERT INTO `pr_line` (`id`, `sport_id`, `category_id`, `file_image_id`, `file_header_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 17, 18, '2016-11-17 00:00:00', NULL, NULL),
(2, 1, 2, 15, 16, '2016-11-17 00:00:00', NULL, NULL),
(3, 1, 3, 11, 12, '2016-11-17 00:00:00', NULL, NULL),
(4, 1, 4, 13, 14, '2016-11-17 00:00:00', NULL, NULL),
(5, 1, 5, 19, 20, '2016-11-17 00:00:00', NULL, NULL);

--
-- Volcado de datos para la tabla `pr_line_translation`
--

INSERT INTO `pr_line_translation` (`line_id`, `language_id`, `description`) VALUES
(1, 1, 'UNA NUEVA EXPERIENCIA, a eso le apuntamos con nuestra PRO LINE, llevamos a nuestros ciclistas lo mejor de nosotros, telas livianas y confortables, con un ajuste perfectamente anatómico y aerodinámico que hacen de nuestras prendas PRO una segunda piel.'),
(1, 2, 'A NEW EXPERIENCE, a eso le apuntamos con nuestra PRO LINE, llevamos a nuestros ciclistas lo mejor de nosotros, telas livianas y confortables, con un ajuste perfectamente anatómico y aerodinámico que hacen de nuestras prendas PRO una segunda piel.'),
(2, 1, 'CONSTANTE EVOLUCIÓN, así se desarrolla nuestra línea performance, una línea renovada, con un ajuste mejorado pensando en la comodidad del ciclista, tecnologías de avanzada que demuestran nuevamente porque siempre vamos un paso mas adelante; parte de esta evolución es la construcción de nuestras prendas PERFORMANCE; siempre queremos ir mas allá y adaptarnos a las necesidades de los ciclistas, no se nos escapa ningún detalle'),
(2, 2, 'CONSTANT EVOLUTION, así se desarrolla nuestra línea performance, una línea renovada, con un ajuste mejorado pensando en la comodidad del ciclista, tecnologías de avanzada que demuestran nuevamente porque siempre vamos un paso mas adelante; parte de esta evolución es la construcción de nuestras prendas PERFORMANCE; siempre queremos ir mas allá y adaptarnos a las necesidades de los ciclistas, no se nos escapa ningún detalle'),
(3, 1, 'UN BUEN COMIENZO, pensamos en todos, por eso nuestra línea CLASSIC, es el complemento ideal para quienes comienzan en este apasionante mundo del ciclismo, prendas con ajustes para cada necesidad, buen transporte de humedad, compresión para mejor irrigación; son algunas de las propiedades que caracterizan nuestra colección.'),
(3, 2, 'A GOOD START, pensamos en todos, por eso nuestra línea CLASSIC, es el complemento ideal para quienes comienzan en este apasionante mundo del ciclismo, prendas con ajustes para cada necesidad, buen transporte de humedad, compresión para mejor irrigación; son algunas de las propiedades que caracterizan nuestra colección.'),
(4, 1, 'SIN LÍMITES, esta es la bandera de nuestra colección, llena de detalles que hacen de estas prendas las preferidas de los aventureros incansables; cortes láser y malla en prendas inferiores para mayor ventilación, velcros en cintura para un mejor ajuste, bolsillo lateral en busos; son algunas de las nuevas características que traemos.'),
(4, 2, 'NO LIMITS, esta es la bandera de nuestra colección, llena de detalles que hacen de estas prendas las preferidas de los aventureros incansables; cortes láser y malla en prendas inferiores para mayor ventilación, velcros en cintura para un mejor ajuste, bolsillo lateral en busos; son algunas de las nuevas características que traemos.'),
(5, 1, 'TODO POR EL TODO, a eso le apuestan nuestras ciclistas, mujeres arrolladoras, sin temores ni complejos, ellas fueron quienes nos inspiraron para crear nuestra colección femenina, porque en Suarez no nos conformamos con poco,  vanzamos con el fin de ofrecer prendas que representen la evolución por medio de nuevos tejidos, ajustes y cortes.'),
(5, 2, 'TODO POR EL TODO, a eso le apuestan nuestras ciclistas, mujeres arrolladoras, sin temores ni complejos, ellas fueron quienes nos inspiraron para crear nuestra colección femenina, porque en Suarez no nos conformamos con poco,  vanzamos con el fin de ofrecer prendas que representen la evolución por medio de nuevos tejidos, ajustes y cortes.');

--
-- Volcado de datos para la tabla `pr_product`
--

INSERT INTO `pr_product` (`id`, `category_id`, `file_image_id`, `reference`, `enabled`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'ab', 1, NULL, '2016-10-19 03:07:00', NULL, NULL),
(2, 1, 1, 'cd', 1, NULL, '2016-10-19 03:18:00', NULL, NULL);

--
-- Volcado de datos para la tabla `pr_product_sport`
--

INSERT INTO `pr_product_sport` (`product_id`, `sport_id`) VALUES
(1, 1);

--
-- Volcado de datos para la tabla `pr_product_translation`
--

INSERT INTO `pr_product_translation` (`product_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Camiseta', NULL),
(1, 2, 't-shirt', NULL),
(2, 1, 'Pantaloneta', NULL),
(2, 2, 'Shorts', NULL);

--
-- Volcado de datos para la tabla `pr_sport`
--

INSERT INTO `pr_sport` (`id`, `file_image_id`, `file_icon_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 4, '2016-09-29 00:00:00', NULL, NULL),
(2, 5, 6, '2016-09-24 00:00:00', NULL, NULL),
(3, 7, 8, '2016-09-24 00:00:00', NULL, NULL),
(4, 9, 10, '2016-09-24 00:00:00', NULL, NULL);

--
-- Volcado de datos para la tabla `pr_sport_translation`
--

INSERT INTO `pr_sport_translation` (`sport_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Ciclismo', 'Descripción de ciclismo'),
(1, 2, 'Cycling', 'Cycling description'),
(2, 1, 'Triathlon', 'Descripción de Triathlon'),
(2, 2, 'Triathlon', 'Triathlon description'),
(3, 1, 'Patinaje', 'Descripción de patinaje'),
(3, 2, 'Speedskating', 'Speedskating description'),
(4, 1, 'Running', 'Descripción de Running'),
(4, 2, 'Running', 'Running description');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
