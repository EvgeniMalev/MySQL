/* 
MySQL statements with ORDER BY 
*/

--------------- 1 ------------------
SELECT * FROM Automobiles
ORDER BY Engine;

--------------- 2 ------------------
SELECT * FROM Automobiles
ORDER BY Engine DESC;

--------------- 3 ------------------
SELECT * FROM Automobiles
ORDER BY Engine, CountryOrigin, Manufacturer;

--------------- 4 ------------------
SELECT * FROM Automobiles
ORDER BY Engine ASC, CountryOrigin ASC, Manufacturer DESC;

--------------- 5 -----------------

SELECT Engine, CountryOrigin, Manufacturer
FROM Automobiles
WHERE Manufacturer = 'Fiat'
ORDER BY Manufacturer DESC;

--------------- 6 -----------------

SELECT Engine, Tyres, Maximum speed
FROM Automobiles
ORDER BY RAND() 
LIMIT 3;
