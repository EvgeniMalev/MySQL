---------------------------------------------------------------
-- Note: Logical operators in MySQL tables
---------------------------------------------------------------

SELECT * FROM Products
WHERE Machine='Screwdriver' AND Manufacturer='Bosch';

SELECT * FROM Products
WHERE Manufacturer='Makita' OR Manufacturer='Bosch';

SELECT * FROM Products
WHERE Manufacturer NOT IN ('Parkside', 'Sparky');

SELECT * FROM Products
WHERE NOT Manufacturer='Sparky';

WHERE NOT Machine='angle grinder';


