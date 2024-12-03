SELECT population
FROM citizens_book
WHERE population > 1500
LIMIT 3;

SELECT postcode
FROM citizens
WHERE population > 10000
LIMIT 4;

SELECT * 
FROM citizens
WHERE town = 'Brașov'
LIMIT 3;
