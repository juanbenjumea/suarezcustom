-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2016 a las 23:33:56
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
(1, 'Classic-3.jpg', '2016-07-01 01:10:00', NULL, NULL),
(2, 'icono.png', '2016-07-01 01:10:00', NULL, NULL),
(3, 'cycling.png', '2016-07-01 01:10:00', NULL, NULL),
(4, 'ciclismo.png', '2016-07-01 01:10:00', NULL, NULL),
(5, 'triathlon.png', '2016-07-01 01:10:00', NULL, NULL),
(6, 'triatlon.png', '2016-07-01 01:10:00', NULL, NULL),
(7, 'speedskating.png', '2016-07-01 01:10:00', NULL, NULL),
(8, 'patinaje.png', '2016-07-01 01:10:00', NULL, NULL),
(9, 'running.png', '2016-07-01 01:10:00', NULL, NULL),
(10, 'products.png', '2016-10-28 04:11:00', NULL, NULL);

--
-- Volcado de datos para la tabla `pr_category`
--

INSERT INTO `pr_category` (`id`, `file_image_id`, `file_header_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 1, '2016-09-29 00:00:00', NULL, NULL);

--
-- Volcado de datos para la tabla `pr_category_translation`
--

INSERT INTO `pr_category_translation` (`category_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Performance', 'UNA NUEVA EXPERIENCIA, a eso le apuntamos con nuestra PRO LINE, llevamos a nuestros ciclistas lo mejor de nosotros, telas livianas y confortables, con un ajuste perfectamente anatómico y aerodinámico que hacen de nuestras prendas PRO una segunda piel.'),
(1, 2, 'Performance', 'A NEW EXPERIENCE, a eso le apuntamos con nuestra PRO LINE, llevamos a nuestros ciclistas lo mejor de nosotros, telas livianas y confortables, con un ajuste perfectamente anatómico y aerodinámico que hacen de nuestras prendas PRO una segunda piel.');

--
-- Volcado de datos para la tabla `pr_product`
--

INSERT INTO `pr_product` (`id`, `category_id`, `file_image_id`, `reference`, `enabled`, `price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 10, 'ab', 1, NULL, '2016-10-19 03:07:00', NULL, NULL),
(2, 1, 0, 'cd', 1, NULL, '2016-10-19 03:18:00', NULL, NULL);

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
(4, 3, 9, '2016-09-24 00:00:00', NULL, NULL);

--
-- Volcado de datos para la tabla `pr_sport_category`
--

INSERT INTO `pr_sport_category` (`sport_id`, `category_id`) VALUES
(1, 1);

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
