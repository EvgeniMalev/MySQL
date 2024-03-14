CREATE DATABASE `bookstore`,

CREATE TABLE bookstore
( 
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20) NOT NULL UNIQUE
);


CREATE TABLE salesman (
   id INT PRIMARY KEY AUTO_INCREMENT,
   first_name VARCHAR(20) NOT NULL UNIQUE,
   middle_name VARCHAR(20) NOT NULL UNIQUE,
   last_name VARCHAR(20) NOT NULL UNIQUE,
   salary INT,
   CONSTRAINT fk_salesman_bookstore
	   FOREIGN KEY (bookstore_id)
	      REFERENCES bookstores (id)
);

CREATE TABLE department(
   id INT PRIMARY KEY AUTO_INCREMENT
   content TEXT,
   genre VARCHAR(20) NOT NULL UNIQUE
   rating DECIMAL(10, 2) NOT NULL,
   picture_url VARCHAR(80) NOT NULL,
);

#----------------------1----------------------
SELECT DISTINCT `last_name`  FROM `salesman`
ORDER BY `salesman_id`;
#----------------------2----------------------
SELECT `first_name`, `last_name`, `job_title` FROM `salesman`
WHERE `salary` BETWEEN 1300 AND 2000
ORDER BY `employee_id`;
