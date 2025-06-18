CREATE TABLE sales (
    id INT,
    price DECIMAL(10, 2),
    quantity INT
);

SELECT 
    id,
    price,
    quantity,
    price * quantity AS total
FROM 
    sales;

SELECT 
    id,
    price,
    price * 1.15 AS price_with_tax
FROM 
    sales;

SELECT 
    EXP(SUM(LOG(price))) AS product_of_prices
FROM 
    sales
WHERE 
    price > 0;
