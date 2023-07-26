-- Active: 1690283770067@@127.0.0.1@3306@EcommerceDB
-- -----------------------------------------------------
-- Schema EcommerceDB
-- -----------------------------------------------------

USE `EcommerceDB` ;

-- -----------------------------------------------------
-- Table `EcommerceDB`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EcommerceDB`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `EcommerceDB`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EcommerceDB`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(255) DEFAULT NULL,
  `price` DECIMAL(13,2) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
)
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('BOOKS');

INSERT INTO product (product_name, price, category_id)
VALUES ('JavaScript - The Fun Parts', 100, 1);

INSERT INTO product (product_name, price, category_id)
VALUES ('C# - The Fun Parts', 200, 1);

INSERT INTO product_category(category_name) VALUES ('COFFEE');

INSERT INTO product (product_name, price, category_id)
VALUES ('Mocha', 100, 2);

INSERT INTO product (product_name, price, category_id)
VALUES ('Latte', 200, 2);
