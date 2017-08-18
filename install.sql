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
DROP TABLE IF EXISTS `pr_line_translation`;
DROP TABLE IF EXISTS `pr_style`;
DROP TABLE IF EXISTS `pr_product_line`;
DROP TABLE IF EXISTS `pr_product`;
DROP TABLE IF EXISTS `pr_line`;
DROP TABLE IF EXISTS `pr_sport`;
DROP TABLE IF EXISTS `pr_category`;


-- Schema suarezcl_custom
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `suarezcl_custom` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci ;
USE `suarezcl_custom` ;

-- -----------------------------------------------------
-- Table `suarezcl_custom`.`co_sec_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`co_sec_role` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`co_sec_user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`co_sec_user` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(100) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  `remember_token` VARCHAR(70) NULL,
  `name` VARCHAR(150) NULL,
  `activation_code` VARCHAR(50) NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`co_sec_user_role_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`co_sec_user_role_list` (
  `user_id` INT UNSIGNED NOT NULL,
  `role_id` INT UNSIGNED NOT NULL,
  INDEX `fk_sec_user_role_list_sec_user_idx` (`user_id` ASC),
  INDEX `fk_sec_user_role_list_sec_role1_idx` (`role_id` ASC),
  PRIMARY KEY (`user_id`, `role_id`),
  CONSTRAINT `fk_sec_user_role_list_sec_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `suarezcl_custom`.`co_sec_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sec_user_role_list_sec_role1`
    FOREIGN KEY (`role_id`)
    REFERENCES `suarezcl_custom`.`co_sec_role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_sport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_sport` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_image_id` INT UNSIGNED NULL,
  `file_icon_id` INT UNSIGNED NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_category` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_icon_id` INT UNSIGNED NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_product` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_image_id` INT NOT NULL,
  `reference` VARCHAR(45) NOT NULL,
  `enabled` TINYINT(1) NOT NULL,
  `price` DECIMAL(11,2) NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_feature`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_feature` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_feature_value`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_feature_value` (
  `id` INT UNSIGNED NOT NULL,
  `feature_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pr_feature_value_pr_feature1_idx` (`feature_id` ASC),
  CONSTRAINT `fk_pr_feature_value_pr_feature1`
    FOREIGN KEY (`feature_id`)
    REFERENCES `suarezcl_custom`.`pr_feature` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_variation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_variation` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` INT UNSIGNED NOT NULL,
  `reference` VARCHAR(45) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `enabled` TINYINT(1) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pr_variation_pr_product1_idx` (`product_id` ASC),
  CONSTRAINT `fk_pr_variation_pr_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `suarezcl_custom`.`pr_product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_product_feature`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_product_feature` (
  `product_id` INT UNSIGNED NOT NULL,
  `feature_id` INT UNSIGNED NOT NULL,
  `for_variation` TINYINT(1) NOT NULL,
  INDEX `fk_pr_product_feature_pr_product1_idx` (`product_id` ASC),
  INDEX `fk_pr_product_feature_pr_feature1_idx` (`feature_id` ASC),
  PRIMARY KEY (`product_id`, `feature_id`),
  CONSTRAINT `fk_pr_product_feature_pr_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `suarezcl_custom`.`pr_product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pr_product_feature_pr_feature1`
    FOREIGN KEY (`feature_id`)
    REFERENCES `suarezcl_custom`.`pr_feature` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_variation_feature_value`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_variation_feature_value` (
  `variation_id` INT UNSIGNED NOT NULL,
  `feature_value_id` INT UNSIGNED NOT NULL,
  INDEX `fk_pr_variation_feature_value_pr_variation1_idx` (`variation_id` ASC),
  INDEX `fk_pr_variation_feature_value_pr_feature_value1_idx` (`feature_value_id` ASC),
  PRIMARY KEY (`variation_id`, `feature_value_id`),
  CONSTRAINT `fk_pr_variation_feature_value_pr_variation1`
    FOREIGN KEY (`variation_id`)
    REFERENCES `suarezcl_custom`.`pr_variation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pr_variation_feature_value_pr_feature_value1`
    FOREIGN KEY (`feature_value_id`)
    REFERENCES `suarezcl_custom`.`pr_feature_value` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_style`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_style` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pr_style_pr_product1_idx` (`product_id` ASC),
  CONSTRAINT `fk_pr_style_pr_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `suarezcl_custom`.`pr_product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_piece`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_piece` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `style_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pr_piece_pr_style1_idx` (`style_id` ASC),
  CONSTRAINT `fk_pr_piece_pr_style1`
    FOREIGN KEY (`style_id`)
    REFERENCES `suarezcl_custom`.`pr_style` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_sport_translation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_sport_translation` (
  `sport_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(250) NOT NULL,
  `description` TEXT NULL,
  PRIMARY KEY (`sport_id`, `language_id`),
  CONSTRAINT `fk_pr_sport_translation_pr_sport1`
    FOREIGN KEY (`sport_id`)
    REFERENCES `suarezcl_custom`.`pr_sport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`co_in_language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`co_in_language` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `code` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_category_translation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_category_translation` (
  `category_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NULL,
  INDEX `fk_pr_category_translation_pr_category1_idx` (`category_id` ASC),
  PRIMARY KEY (`language_id`, `category_id`),
  CONSTRAINT `fk_pr_category_translation_pr_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `suarezcl_custom`.`pr_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_product_feature_value`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_product_feature_value` (
  `product_id` INT UNSIGNED NOT NULL,
  `feature_value_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`product_id`, `feature_value_id`),
  INDEX `fk_pr_product_feature_value_pr_feature_value1_idx` (`feature_value_id` ASC),
  CONSTRAINT `fk_pr_product_feature_value_pr_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `suarezcl_custom`.`pr_product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pr_product_feature_value_pr_feature_value1`
    FOREIGN KEY (`feature_value_id`)
    REFERENCES `suarezcl_custom`.`pr_feature_value` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_product_translation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_product_translation` (
  `product_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(150) NOT NULL,
  `description` TEXT NULL,
  INDEX `fk_pr_product_translation_pr_product1_idx` (`product_id` ASC),
  PRIMARY KEY (`product_id`, `language_id`),
  CONSTRAINT `fk_pr_product_translation_pr_product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `suarezcl_custom`.`pr_product` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_style_translation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_style_translation` (
  `style_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NULL,
  INDEX `fk_pr_style_translation_pr_style1_idx` (`style_id` ASC),
  PRIMARY KEY (`language_id`, `style_id`),
  CONSTRAINT `fk_pr_style_translation_pr_style1`
    FOREIGN KEY (`style_id`)
    REFERENCES `suarezcl_custom`.`pr_style` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_piece_translation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_piece_translation` (
  `piece_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  INDEX `fk_pr_piece_translation_pr_piece1_idx` (`piece_id` ASC),
  PRIMARY KEY (`language_id`, `piece_id`),
  CONSTRAINT `fk_pr_piece_translation_pr_piece1`
    FOREIGN KEY (`piece_id`)
    REFERENCES `suarezcl_custom`.`pr_piece` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_feature_value_translation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_feature_value_translation` (
  `pr_feature_value_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(150) NOT NULL,
  INDEX `fk_pr_feature_value_translation_pr_feature_value1_idx` (`pr_feature_value_id` ASC),
  PRIMARY KEY (`language_id`, `pr_feature_value_id`),
  CONSTRAINT `fk_pr_feature_value_translation_pr_feature_value1`
    FOREIGN KEY (`pr_feature_value_id`)
    REFERENCES `suarezcl_custom`.`pr_feature_value` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_feature_translation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_feature_translation` (
  `feature_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`feature_id`, `language_id`),
  CONSTRAINT `fk_pr_feature_translation_pr_feature1`
    FOREIGN KEY (`feature_id`)
    REFERENCES `suarezcl_custom`.`pr_feature` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`co_rsc_file`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`co_rsc_file` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(250) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_color`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_color` (
  `id` INT UNSIGNED NOT NULL,
  `hexa` VARCHAR(6) NOT NULL,
  `enabled` TINYINT(1) NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`co_sec_menu_option`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`co_sec_menu_option` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `rout` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`co_sec_role_menu`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`co_sec_role_menu` (
  `role_id` INT UNSIGNED NOT NULL,
  `option_id` INT UNSIGNED NOT NULL,
  `option_root` INT NULL,
  PRIMARY KEY (`role_id`, `option_id`),
  INDEX `fk_co_sec_role_menu_co_sec_menu_option1_idx` (`option_id` ASC),
  CONSTRAINT `fk_co_sec_role_menu_co_sec_role1`
    FOREIGN KEY (`role_id`)
    REFERENCES `suarezcl_custom`.`co_sec_role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_co_sec_role_menu_co_sec_menu_option1`
    FOREIGN KEY (`option_id`)
    REFERENCES `suarezcl_custom`.`co_sec_menu_option` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`co_sec_operation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`co_sec_operation` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`co_sec_resource`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`co_sec_resource` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`co_sec_permission_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`co_sec_permission_list` (
  `role_id` INT UNSIGNED NOT NULL,
  `operation_id` INT UNSIGNED NOT NULL,
  `resource_id` INT UNSIGNED NOT NULL,
  INDEX `fk_co_sec_permission_list_co_sec_role1_idx` (`role_id` ASC),
  INDEX `fk_co_sec_permission_list_co_sec_operation1_idx` (`operation_id` ASC),
  INDEX `fk_co_sec_permission_list_co_sec_resource1_idx` (`resource_id` ASC),
  PRIMARY KEY (`role_id`, `operation_id`, `resource_id`),
  CONSTRAINT `fk_co_sec_permission_list_co_sec_role1`
    FOREIGN KEY (`role_id`)
    REFERENCES `suarezcl_custom`.`co_sec_role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_co_sec_permission_list_co_sec_operation1`
    FOREIGN KEY (`operation_id`)
    REFERENCES `suarezcl_custom`.`co_sec_operation` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_co_sec_permission_list_co_sec_resource1`
    FOREIGN KEY (`resource_id`)
    REFERENCES `suarezcl_custom`.`co_sec_resource` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_line`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_line` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sport_id` INT UNSIGNED NOT NULL,
  `category_id` INT UNSIGNED NOT NULL,
  `file_image_id` INT UNSIGNED NULL,
  `file_header_id` INT UNSIGNED NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pr_sport_line_pr_category1_idx` (`category_id` ASC),
  INDEX `fk_pr_sport_line_pr_sport1_idx` (`sport_id` ASC),
  CONSTRAINT `fk_pr_sport_line_pr_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `suarezcl_custom`.`pr_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pr_sport_line_pr_sport1`
    FOREIGN KEY (`sport_id`)
    REFERENCES `suarezcl_custom`.`pr_sport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suarezcl_custom`.`pr_line_translation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `suarezcl_custom`.`pr_line_translation` (
  `line_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `description` TEXT NOT NULL,
  PRIMARY KEY (`line_id`, `language_id`),
  INDEX `fk_pr_sport_line_translation_pr_line1_idx` (`line_id` ASC),
  CONSTRAINT `fk_pr_sport_line_translation_pr_line1`
    FOREIGN KEY (`line_id`)
    REFERENCES `suarezcl_custom`.`pr_line` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

TRUNCATE TABLE `pr_line_translation`

DROP TABLE pr_line_translation

DROP TABLE pr_line

CREATE TABLE IF NOT EXISTS `pr_line` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sport_id` INT UNSIGNED NOT NULL,
  `file_image_id` INT UNSIGNED NULL,
  `file_header_id` INT UNSIGNED NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pr_sport_line_pr_sport1_idx` (`sport_id` ASC),
  CONSTRAINT `fk_pr_sport_line_pr_sport1`
    FOREIGN KEY (`sport_id`)
    REFERENCES `pr_sport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pr_line_translation` (
  `line_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `name` TEXT NOT NULL,
  `description` TEXT NOT NULL,
  PRIMARY KEY (`line_id`, `language_id`),
  INDEX `fk_pr_sport_line_translation_pr_line1_idx` (`line_id` ASC),
  CONSTRAINT `fk_pr_sport_line_translation_pr_line1`
    FOREIGN KEY (`line_id`)
    REFERENCES `pr_line` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB

ALTER TABLE `pr_category` ADD `line_id` INT(10) UNSIGNED NOT NULL AFTER `id`, ADD INDEX (`line_id`) ;
ALTER TABLE `pr_category` ADD FOREIGN KEY (`line_id`) REFERENCES `pr_line`(`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE `pr_category` CHANGE `file_icon_id` `file_image_id` INT(10) UNSIGNED NOT NULL;
ALTER TABLE `pr_category` ADD `file_header_id` INT(10) UNSIGNED NOT NULL AFTER `file_image_id`;

ALTER TABLE `pr_sport` CHANGE `file_icon_id` `file_header_id` INT(10) UNSIGNED NULL DEFAULT NULL;
ALTER TABLE `pr_sport` CHANGE `file_image_id` `file_image_id` INT(10) UNSIGNED NOT NULL, CHANGE `file_header_id` `file_header_id` INT(10) UNSIGNED NOT NULL;


CREATE TABLE IF NOT EXISTS `pr_template` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` INT UNSIGNED NOT NULL,
  `file_pdf_id` INT UNSIGNED NOT NULL,
  `file_preview_id` INT UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL,
  `updated_at` DATETIME NULL,
  `deleted_at` DATETIME NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pr_template_pr_category1_idx` (`category_id` ASC),
  CONSTRAINT `fk_pr_template_pr_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `pr_category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pr_template_translation` (
  `template_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(150) NOT NULL,
  INDEX `fk_pr_template_translate_pr_template1_idx` (`template_id` ASC),
  PRIMARY KEY (`language_id`, `template_id`),
  CONSTRAINT `fk_pr_template_translate_pr_template1`
    FOREIGN KEY (`template_id`)
    REFERENCES `pr_template` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pr_design` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pr_design_translation` (
  `design_id` INT UNSIGNED NOT NULL,
  `language_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(145) NOT NULL,
  PRIMARY KEY (`language_id`, `design_id`),
  INDEX `fk_pr_design_translation_pr_design1_idx` (`design_id` ASC),
  CONSTRAINT `fk_pr_design_translation_pr_design1`
    FOREIGN KEY (`design_id`)
    REFERENCES `pr_design` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `pr_design_images` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `design_id` INT UNSIGNED NOT NULL,
  `file_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pr_design_images_pr_design1_idx` (`design_id` ASC),
  CONSTRAINT `fk_pr_design_images_pr_design1`
    FOREIGN KEY (`design_id`)
    REFERENCES `pr_design` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

ALTER TABLE `pr_sport` ADD `file_name_id` INT(10) UNSIGNED NOT NULL AFTER `file_header_id`;
ALTER TABLE `pr_line` ADD `file_name_id` INT(10) UNSIGNED NOT NULL AFTER `file_header_id`;
ALTER TABLE `pr_category` ADD `file_name_id` INT(10) UNSIGNED NOT NULL AFTER `file_header_id`;