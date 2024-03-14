-- -----------------------------------------------------------------------
-- Note: This is an example on a database that collects information from a 
-- facade photovoltaic system, its power generated during the day and the 
-- electrical energy it
-- -----------------------------------------------------------------------	

CREATE DATABASE IF NOT EXISTS `facade pv system`;

USE `facade pv system`;

CREATE TABLE IF NOT EXISTS `manufacturers` (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `manufacturer` VARCHAR(30) NOT NULL,
   `country_origin` VARCHAR(30) NOT NULL,
   `foundation_year` INT
);

CREATE TABLE IF NOT EXISTS `pvpanel` (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `manufacturer` VARCHAR(30) NOT NULL,
   `model` VARCHAR(30) NOT NULL,
   `picture` BLOB NULL,
   `price` DECIMAL(10, 2) NULL,
   `date_of_production` DATE NOT NULL,
   `date_of_first_exploitation` DATE NOT NULL,
   `addinfo` TEXT NULL,
   `nominal_voltage` INT,
   `nominal_power` INT,
   `efficiency_curve` INT,
   `manufacturers_id` INT,
   CONSTRAINT `fk_pvpanel_manufacturers`
      FOREIGN KEY (`manufacturers_id`)
      REFERENCES `manufacturers` (`id`)
);

CREATE TABLE IF NOT EXISTS `panels` (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `side_of_building` VARCHAR(30) NOT NULL,
   `power` INT,
   `coordinates_h` INT,
   `coordinates_w` INT,
   `coordinates_l` INT,
   `manufacturers_id` INT,
   CONSTRAINT `fk_panels_manufacturers`
      FOREIGN KEY (`manufacturers_id`)
      REFERENCES `manufacturers` (`id`)
);

CREATE TABLE IF NOT EXISTS `electronics_light` (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `sensor_manufacturer` VARCHAR(30) NOT NULL,
   `sensor_area` INT,
   `sensor_class` INT,
   `sensor_axis` INT,
   `manufacturers_id` INT,
   CONSTRAINT `fk_electronics_light_manufacturers`
      FOREIGN KEY (`manufacturers_id`)
      REFERENCES `manufacturers` (`id`)
);

CREATE TABLE IF NOT EXISTS `panel_motor` (
   `id` INT PRIMARY KEY AUTO_INCREMENT,
   `motor_manufacturer` VARCHAR(30) NOT NULL,
   `angle_north` INT,
   `angle_east` INT,
   `manufacturers_id` INT,
   CONSTRAINT `fk_panel_motor_manufacturers`
      FOREIGN KEY (`manufacturers_id`)
      REFERENCES `manufacturers` (`id`)
);
