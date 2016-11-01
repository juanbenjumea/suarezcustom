DROP TABLE IF EXISTS `co_in_language`;
DROP TABLE IF EXISTS `co_rsc_file`;
DROP TABLE IF EXISTS `co_sec_permission_list`;
DROP TABLE IF EXISTS `co_sec_resource`;
DROP TABLE IF EXISTS `co_sec_role_menu`;
DROP TABLE IF EXISTS `co_sec_user_role_list`;
DROP TABLE IF EXISTS `pr_category_translation`;
DROP TABLE IF EXISTS `pr_color`;
DROP TABLE IF EXISTS `pr_feature_translation`;
DROP TABLE IF EXISTS `pr_feature_value_translation`;
DROP TABLE IF EXISTS `pr_piece_translation`;
DROP TABLE IF EXISTS `pr_product_feature`;
DROP TABLE IF EXISTS `pr_product_feature_value`;
DROP TABLE IF EXISTS `pr_product_sport`;
DROP TABLE IF EXISTS `pr_product_translation`;
DROP TABLE IF EXISTS `pr_sport_category`;
DROP TABLE IF EXISTS `pr_sport_translation`;
DROP TABLE IF EXISTS `pr_style_translation`;
DROP TABLE IF EXISTS `co_sec_operation`;
DROP TABLE IF EXISTS `co_sec_menu_option`;
DROP TABLE IF EXISTS `co_sec_role`;
DROP TABLE IF EXISTS `co_sec_user`;
DROP TABLE IF EXISTS `pr_piece`;
DROP TABLE IF EXISTS `pr_variation_feature_value`;
DROP TABLE IF EXISTS `pr_variation`;
DROP TABLE IF EXISTS `pr_feature_value`;
DROP TABLE IF EXISTS `pr_feature`;
DROP TABLE IF EXISTS `pr_sport`;
DROP TABLE IF EXISTS `pr_style`;
DROP TABLE IF EXISTS `pr_product`;
DROP TABLE IF EXISTS `pr_category`;
--
-- Base de datos: `suarezcl_custom`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_in_language`
--

CREATE TABLE IF NOT EXISTS `co_in_language` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `code` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_rsc_file`
--

CREATE TABLE IF NOT EXISTS `co_rsc_file` (
`id` int(10) unsigned NOT NULL,
  `url` varchar(250) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_sec_menu_option`
--

CREATE TABLE IF NOT EXISTS `co_sec_menu_option` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `rout` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_sec_operation`
--

CREATE TABLE IF NOT EXISTS `co_sec_operation` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_sec_permission_list`
--

CREATE TABLE IF NOT EXISTS `co_sec_permission_list` (
  `role_id` int(10) unsigned NOT NULL,
  `operation_id` int(10) unsigned NOT NULL,
  `resource_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_sec_resource`
--

CREATE TABLE IF NOT EXISTS `co_sec_resource` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_sec_role`
--

CREATE TABLE IF NOT EXISTS `co_sec_role` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_sec_role_menu`
--

CREATE TABLE IF NOT EXISTS `co_sec_role_menu` (
  `role_id` int(10) unsigned NOT NULL,
  `option_id` int(10) unsigned NOT NULL,
  `option_root` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_sec_user`
--

CREATE TABLE IF NOT EXISTS `co_sec_user` (
`id` int(10) unsigned NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `remember_token` varchar(70) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `activation_code` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `co_sec_user_role_list`
--

CREATE TABLE IF NOT EXISTS `co_sec_user_role_list` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_category`
--

CREATE TABLE IF NOT EXISTS `pr_category` (
`id` int(10) unsigned NOT NULL,
  `file_image_id` int(10) unsigned DEFAULT NULL,
  `file_header_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_category_translation`
--

CREATE TABLE IF NOT EXISTS `pr_category_translation` (
  `category_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_color`
--

CREATE TABLE IF NOT EXISTS `pr_color` (
  `id` int(10) unsigned NOT NULL,
  `hexa` varchar(6) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_feature`
--

CREATE TABLE IF NOT EXISTS `pr_feature` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_feature_translation`
--

CREATE TABLE IF NOT EXISTS `pr_feature_translation` (
  `feature_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_feature_value`
--

CREATE TABLE IF NOT EXISTS `pr_feature_value` (
  `id` int(10) unsigned NOT NULL,
  `feature_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_feature_value_translation`
--

CREATE TABLE IF NOT EXISTS `pr_feature_value_translation` (
  `pr_feature_value_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_piece`
--

CREATE TABLE IF NOT EXISTS `pr_piece` (
`id` int(10) unsigned NOT NULL,
  `style_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_piece_translation`
--

CREATE TABLE IF NOT EXISTS `pr_piece_translation` (
  `piece_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_product`
--

CREATE TABLE IF NOT EXISTS `pr_product` (
`id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `file_image_id` int(11) NOT NULL,
  `reference` varchar(45) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_product_feature`
--

CREATE TABLE IF NOT EXISTS `pr_product_feature` (
  `product_id` int(10) unsigned NOT NULL,
  `feature_id` int(10) unsigned NOT NULL,
  `for_variation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_product_feature_value`
--

CREATE TABLE IF NOT EXISTS `pr_product_feature_value` (
  `product_id` int(10) unsigned NOT NULL,
  `feature_value_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_product_sport`
--

CREATE TABLE IF NOT EXISTS `pr_product_sport` (
  `product_id` int(10) unsigned NOT NULL,
  `sport_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Deportes en los que está habilitado un producto';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_product_translation`
--

CREATE TABLE IF NOT EXISTS `pr_product_translation` (
  `product_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `name` varchar(150) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_sport`
--

CREATE TABLE IF NOT EXISTS `pr_sport` (
`id` int(10) unsigned NOT NULL,
  `file_image_id` int(10) unsigned DEFAULT NULL,
  `file_icon_id` int(10) unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_sport_category`
--

CREATE TABLE IF NOT EXISTS `pr_sport_category` (
  `sport_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Categorías habilitadas por deporte';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_sport_translation`
--

CREATE TABLE IF NOT EXISTS `pr_sport_translation` (
  `sport_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_style`
--

CREATE TABLE IF NOT EXISTS `pr_style` (
`id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_style_translation`
--

CREATE TABLE IF NOT EXISTS `pr_style_translation` (
  `style_id` int(10) unsigned NOT NULL,
  `language_id` int(10) unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_variation`
--

CREATE TABLE IF NOT EXISTS `pr_variation` (
`id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `reference` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pr_variation_feature_value`
--

CREATE TABLE IF NOT EXISTS `pr_variation_feature_value` (
  `variation_id` int(10) unsigned NOT NULL,
  `feature_value_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `co_in_language`
--
ALTER TABLE `co_in_language`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `co_rsc_file`
--
ALTER TABLE `co_rsc_file`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `co_sec_menu_option`
--
ALTER TABLE `co_sec_menu_option`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `co_sec_operation`
--
ALTER TABLE `co_sec_operation`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `co_sec_permission_list`
--
ALTER TABLE `co_sec_permission_list`
 ADD PRIMARY KEY (`role_id`,`operation_id`,`resource_id`), ADD KEY `fk_co_sec_permission_list_co_sec_role1_idx` (`role_id`), ADD KEY `fk_co_sec_permission_list_co_sec_operation1_idx` (`operation_id`), ADD KEY `fk_co_sec_permission_list_co_sec_resource1_idx` (`resource_id`);

--
-- Indices de la tabla `co_sec_resource`
--
ALTER TABLE `co_sec_resource`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `co_sec_role`
--
ALTER TABLE `co_sec_role`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `co_sec_role_menu`
--
ALTER TABLE `co_sec_role_menu`
 ADD PRIMARY KEY (`role_id`,`option_id`), ADD KEY `fk_co_sec_role_menu_co_sec_menu_option1_idx` (`option_id`);

--
-- Indices de la tabla `co_sec_user`
--
ALTER TABLE `co_sec_user`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email_UNIQUE` (`email`);

--
-- Indices de la tabla `co_sec_user_role_list`
--
ALTER TABLE `co_sec_user_role_list`
 ADD PRIMARY KEY (`user_id`,`role_id`), ADD KEY `fk_sec_user_role_list_sec_user_idx` (`user_id`), ADD KEY `fk_sec_user_role_list_sec_role1_idx` (`role_id`);

--
-- Indices de la tabla `pr_category`
--
ALTER TABLE `pr_category`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pr_category_translation`
--
ALTER TABLE `pr_category_translation`
 ADD PRIMARY KEY (`language_id`,`category_id`), ADD KEY `fk_pr_category_translation_pr_category1_idx` (`category_id`);

--
-- Indices de la tabla `pr_color`
--
ALTER TABLE `pr_color`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pr_feature`
--
ALTER TABLE `pr_feature`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pr_feature_translation`
--
ALTER TABLE `pr_feature_translation`
 ADD PRIMARY KEY (`feature_id`,`language_id`);

--
-- Indices de la tabla `pr_feature_value`
--
ALTER TABLE `pr_feature_value`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_pr_feature_value_pr_feature1_idx` (`feature_id`);

--
-- Indices de la tabla `pr_feature_value_translation`
--
ALTER TABLE `pr_feature_value_translation`
 ADD PRIMARY KEY (`language_id`,`pr_feature_value_id`), ADD KEY `fk_pr_feature_value_translation_pr_feature_value1_idx` (`pr_feature_value_id`);

--
-- Indices de la tabla `pr_piece`
--
ALTER TABLE `pr_piece`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_pr_piece_pr_style1_idx` (`style_id`);

--
-- Indices de la tabla `pr_piece_translation`
--
ALTER TABLE `pr_piece_translation`
 ADD PRIMARY KEY (`language_id`,`piece_id`), ADD KEY `fk_pr_piece_translation_pr_piece1_idx` (`piece_id`);

--
-- Indices de la tabla `pr_product`
--
ALTER TABLE `pr_product`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_pr_product_pr_category1_idx` (`category_id`);

--
-- Indices de la tabla `pr_product_feature`
--
ALTER TABLE `pr_product_feature`
 ADD PRIMARY KEY (`product_id`,`feature_id`), ADD KEY `fk_pr_product_feature_pr_product1_idx` (`product_id`), ADD KEY `fk_pr_product_feature_pr_feature1_idx` (`feature_id`);

--
-- Indices de la tabla `pr_product_feature_value`
--
ALTER TABLE `pr_product_feature_value`
 ADD PRIMARY KEY (`product_id`,`feature_value_id`), ADD KEY `fk_pr_product_feature_value_pr_feature_value1_idx` (`feature_value_id`);

--
-- Indices de la tabla `pr_product_sport`
--
ALTER TABLE `pr_product_sport`
 ADD PRIMARY KEY (`product_id`,`sport_id`), ADD KEY `fk_pr_product_sport_pr_product1_idx` (`product_id`), ADD KEY `fk_pr_product_sport_pr_sport1_idx` (`sport_id`);

--
-- Indices de la tabla `pr_product_translation`
--
ALTER TABLE `pr_product_translation`
 ADD PRIMARY KEY (`product_id`,`language_id`), ADD KEY `fk_pr_product_translation_pr_product1_idx` (`product_id`);

--
-- Indices de la tabla `pr_sport`
--
ALTER TABLE `pr_sport`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pr_sport_category`
--
ALTER TABLE `pr_sport_category`
 ADD PRIMARY KEY (`sport_id`,`category_id`), ADD KEY `fk_pr_sport_category_pr_sport1_idx` (`sport_id`), ADD KEY `fk_pr_sport_category_pr_category1_idx` (`category_id`);

--
-- Indices de la tabla `pr_sport_translation`
--
ALTER TABLE `pr_sport_translation`
 ADD PRIMARY KEY (`sport_id`,`language_id`);

--
-- Indices de la tabla `pr_style`
--
ALTER TABLE `pr_style`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_pr_style_pr_product1_idx` (`product_id`);

--
-- Indices de la tabla `pr_style_translation`
--
ALTER TABLE `pr_style_translation`
 ADD PRIMARY KEY (`language_id`,`style_id`), ADD KEY `fk_pr_style_translation_pr_style1_idx` (`style_id`);

--
-- Indices de la tabla `pr_variation`
--
ALTER TABLE `pr_variation`
 ADD PRIMARY KEY (`id`), ADD KEY `fk_pr_variation_pr_product1_idx` (`product_id`);

--
-- Indices de la tabla `pr_variation_feature_value`
--
ALTER TABLE `pr_variation_feature_value`
 ADD PRIMARY KEY (`variation_id`,`feature_value_id`), ADD KEY `fk_pr_variation_feature_value_pr_variation1_idx` (`variation_id`), ADD KEY `fk_pr_variation_feature_value_pr_feature_value1_idx` (`feature_value_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `co_in_language`
--
ALTER TABLE `co_in_language`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `co_rsc_file`
--
ALTER TABLE `co_rsc_file`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `co_sec_menu_option`
--
ALTER TABLE `co_sec_menu_option`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_sec_operation`
--
ALTER TABLE `co_sec_operation`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_sec_resource`
--
ALTER TABLE `co_sec_resource`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_sec_role`
--
ALTER TABLE `co_sec_role`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `co_sec_user`
--
ALTER TABLE `co_sec_user`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pr_category`
--
ALTER TABLE `pr_category`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pr_feature`
--
ALTER TABLE `pr_feature`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pr_piece`
--
ALTER TABLE `pr_piece`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pr_product`
--
ALTER TABLE `pr_product`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `pr_sport`
--
ALTER TABLE `pr_sport`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `pr_style`
--
ALTER TABLE `pr_style`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `pr_variation`
--
ALTER TABLE `pr_variation`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `co_sec_permission_list`
--
ALTER TABLE `co_sec_permission_list`
ADD CONSTRAINT `fk_co_sec_permission_list_co_sec_operation1` FOREIGN KEY (`operation_id`) REFERENCES `co_sec_operation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_co_sec_permission_list_co_sec_resource1` FOREIGN KEY (`resource_id`) REFERENCES `co_sec_resource` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_co_sec_permission_list_co_sec_role1` FOREIGN KEY (`role_id`) REFERENCES `co_sec_role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `co_sec_role_menu`
--
ALTER TABLE `co_sec_role_menu`
ADD CONSTRAINT `fk_co_sec_role_menu_co_sec_menu_option1` FOREIGN KEY (`option_id`) REFERENCES `co_sec_menu_option` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_co_sec_role_menu_co_sec_role1` FOREIGN KEY (`role_id`) REFERENCES `co_sec_role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `co_sec_user_role_list`
--
ALTER TABLE `co_sec_user_role_list`
ADD CONSTRAINT `fk_sec_user_role_list_sec_role1` FOREIGN KEY (`role_id`) REFERENCES `co_sec_role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_sec_user_role_list_sec_user` FOREIGN KEY (`user_id`) REFERENCES `co_sec_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_category_translation`
--
ALTER TABLE `pr_category_translation`
ADD CONSTRAINT `fk_pr_category_translation_pr_category1` FOREIGN KEY (`category_id`) REFERENCES `pr_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_feature_translation`
--
ALTER TABLE `pr_feature_translation`
ADD CONSTRAINT `fk_pr_feature_translation_pr_feature1` FOREIGN KEY (`feature_id`) REFERENCES `pr_feature` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_feature_value`
--
ALTER TABLE `pr_feature_value`
ADD CONSTRAINT `fk_pr_feature_value_pr_feature1` FOREIGN KEY (`feature_id`) REFERENCES `pr_feature` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_feature_value_translation`
--
ALTER TABLE `pr_feature_value_translation`
ADD CONSTRAINT `fk_pr_feature_value_translation_pr_feature_value1` FOREIGN KEY (`pr_feature_value_id`) REFERENCES `pr_feature_value` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_piece`
--
ALTER TABLE `pr_piece`
ADD CONSTRAINT `fk_pr_piece_pr_style1` FOREIGN KEY (`style_id`) REFERENCES `pr_style` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_piece_translation`
--
ALTER TABLE `pr_piece_translation`
ADD CONSTRAINT `fk_pr_piece_translation_pr_piece1` FOREIGN KEY (`piece_id`) REFERENCES `pr_piece` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_product`
--
ALTER TABLE `pr_product`
ADD CONSTRAINT `fk_pr_product_pr_category1` FOREIGN KEY (`category_id`) REFERENCES `pr_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_product_feature`
--
ALTER TABLE `pr_product_feature`
ADD CONSTRAINT `fk_pr_product_feature_pr_feature1` FOREIGN KEY (`feature_id`) REFERENCES `pr_feature` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_pr_product_feature_pr_product1` FOREIGN KEY (`product_id`) REFERENCES `pr_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_product_feature_value`
--
ALTER TABLE `pr_product_feature_value`
ADD CONSTRAINT `fk_pr_product_feature_value_pr_feature_value1` FOREIGN KEY (`feature_value_id`) REFERENCES `pr_feature_value` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_pr_product_feature_value_pr_product1` FOREIGN KEY (`product_id`) REFERENCES `pr_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_product_sport`
--
ALTER TABLE `pr_product_sport`
ADD CONSTRAINT `fk_pr_product_sport_pr_product1` FOREIGN KEY (`product_id`) REFERENCES `pr_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_pr_product_sport_pr_sport1` FOREIGN KEY (`sport_id`) REFERENCES `pr_sport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_product_translation`
--
ALTER TABLE `pr_product_translation`
ADD CONSTRAINT `fk_pr_product_translation_pr_product1` FOREIGN KEY (`product_id`) REFERENCES `pr_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_sport_category`
--
ALTER TABLE `pr_sport_category`
ADD CONSTRAINT `fk_pr_sport_category_pr_category1` FOREIGN KEY (`category_id`) REFERENCES `pr_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_pr_sport_category_pr_sport1` FOREIGN KEY (`sport_id`) REFERENCES `pr_sport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_sport_translation`
--
ALTER TABLE `pr_sport_translation`
ADD CONSTRAINT `fk_pr_sport_translation_pr_sport1` FOREIGN KEY (`sport_id`) REFERENCES `pr_sport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_style`
--
ALTER TABLE `pr_style`
ADD CONSTRAINT `fk_pr_style_pr_product1` FOREIGN KEY (`product_id`) REFERENCES `pr_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_style_translation`
--
ALTER TABLE `pr_style_translation`
ADD CONSTRAINT `fk_pr_style_translation_pr_style1` FOREIGN KEY (`style_id`) REFERENCES `pr_style` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_variation`
--
ALTER TABLE `pr_variation`
ADD CONSTRAINT `fk_pr_variation_pr_product1` FOREIGN KEY (`product_id`) REFERENCES `pr_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `pr_variation_feature_value`
--
ALTER TABLE `pr_variation_feature_value`
ADD CONSTRAINT `fk_pr_variation_feature_value_pr_feature_value1` FOREIGN KEY (`feature_value_id`) REFERENCES `pr_feature_value` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_pr_variation_feature_value_pr_variation1` FOREIGN KEY (`variation_id`) REFERENCES `pr_variation` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
