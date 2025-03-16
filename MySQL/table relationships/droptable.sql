DROP TABLE IF EXISTS models, manufacturers;

CREATE TABLE `manufacturers` (
	`manufacturer_id` INT UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) UNIQUE NOT NULL,
    `established_on` DATE NOT NULL,
    PRIMARY KEY (`manufacturer_id`)
);

CREATE TABLE `models` (
	`model_id` INT UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(30) NOT NULL,
    `manufacturer_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`model_id`),
    FOREIGN KEY (`manufacturer_id`)
        REFERENCES `manufacturers` (`manufacturer_id`)
) AUTO_INCREMENT=101;

INSERT INTO `manufacturers` (`name`, `established_on`)
VALUES 
    ('Pentium 1', '1991-03-01'),
    ('Pentium 2', '1995-03-01'),
    ('Pentium 4', '1996-05-01'),
    ('Pentium 5', '1999-03-01');

INSERT INTO `models` (`name`, `manufacturer_id`)
VALUES
    ('Intel P1', 1),
    ('Intel P2', 1),
    ('Intel P3', 2);
