---------------------------------------------------------------------------------
-- Note: entering data into a table related to city buses
---------------------------------------------------------------------------------
CREATE DATABASE autobus;

USE autobus;

CREATE TABLE bus (
    id INT NOT NULL,
    autobus_name VARCHAR(50) NOT NULL,
    registrationnumber INT(10) DEFAULT NULL,
    linenumber INT(10) DEFAULT NULL,
    CONSTRAINT pk_bus PRIMARY KEY (id)
);


INSERT INTO bus (id, autobus_name, registrationnumber, linenumber) VALUES (1, 'Iveco Crossway', 5551, 13);
INSERT INTO bus (id, autobus_name, registrationnumber, linenumber) VALUES (2, 'Iveco Crossway', 5441, 20);
INSERT INTO bus (id, autobus_name, registrationnumber, linenumber) VALUES (3, 'MAN', 3231, 5);
INSERT INTO bus (id, autobus_name, registrationnumber, linenumber) VALUES (4, 'Vanhool', 4551, 10);
INSERT INTO bus (id, autobus_name, registrationnumber, linenumber) VALUES (5, 'Isuzu', 1151, 2);
