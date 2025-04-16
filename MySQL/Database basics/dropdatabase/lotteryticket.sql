DROP DATABASE IF EXISTS lottery_numbers;

CREATE DATABASE lottery_numbers;

USE lottery_numbers;


CREATE TABLE draws (
    id INT AUTO_INCREMENT PRIMARY KEY,
    draw_date DATE NOT NULL,
    numbers VARCHAR(20) NOT NULL, 
    bonus_number INT DEFAULT NULL
);


INSERT INTO draws (draw_date, numbers, bonus_number) VALUES
('2025-04-01', '05,12,23,34,45,48', 10),
('2025-04-08', '01,09,17,22,35,41', 7),
('2025-04-15', '03,11,26,29,38,44', 12);
