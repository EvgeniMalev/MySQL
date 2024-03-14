CREATE DATABASE IF NOT EXISTS `Rivers_in_Europe`;

USE `Rivers_in_Europe`;

CREATE TABLE IF NOT EXISTS rivers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    country VARCHAR(30),
    length INT
);

CREATE TABLE IF NOT EXISTS bridges (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30)
);

ALTER TABLE rivers
ADD CONSTRAINT fk_rivers_bridges
FOREIGN KEY (bridge_id)
REFERENCES bridges(id);

INSERT INTO bridges (name)
VALUES ('Stambolov most'),
       ('Pokrit most'),
       ('Dunav most');

INSERT INTO rivers (name, country, length, bridge_id)
VALUES ('Yantra', 'Bulgaria', 286, 1),
       ('Osam', 'Bulgaria', 314, 2),
       ('Dunav', 'Europe', 2852, 3);

SELECT * FROM rivers;
