/*  MySQL statements with ISNULL
*/
--------------- 1 ------------------
SELECT Foods, Detergents, Household goods
FROM Shop
WHERE Household goods IS NULL;

--------------- 2 ------------------
SELECT Foods, Detergents, Household goods
FROM Shop
WHERE Foods, Detergents IS NOT NULL;
