CREATE TABLE `television show`(
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(200) NOT NULL,
    `length` DOUBLE(10,2),
    `participants` INT,
    `musicians` INT,
    `actors` INT,
    `auditory` CHAR(1) NOT NULL,
    `holiday episode` DATE NOT NULL,
    `about` TEXT
);

INSERT INTO `television show` (`holiday episode`)
VALUES 
('Ivan Ivanov'),
('Kostadin Dinkov');

INSERT INTO `television show` (`actor`)
VALUES 
(DATE(YESTERDAY)),
(DATE('2000','June','21')),
(DATE('2012','July','12'));
