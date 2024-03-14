------------------------------------------------------------------------
-- Note: example of tables related to passenger flow in the Sofia metro 
-- and its distribution by stops
------------------------------------------------------------------------
CREATE DATABASE `subway_system`;

CREATE TABLE `passangers` (
    `id` INT PRIMARY KEY,
	`male` INT,
	`female` INT,
	`child` INT,
    `stations` VARCHAR(20) NOT NULL,
	`lines` VARCHAR(4) NOT NULL,
);

   CREATE TABLE `stations` (
    `id` INT PRIMARY KEY,
	`line` VARCHAR(4) NOT NULL,
	`passangers_get_on` INT,
	`passangers_get_off,
);
