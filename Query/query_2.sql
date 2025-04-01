-- question 2
-- all products whose price is higher than the average price of all products.
SELECT name,
unit_price,
(SELECT AVG(unit_price) FROM products) AS avrege_price
FROM products;

SELECT *
FROM products
WHERE unit_price > (
	SELECT AVG(unit_price) 
    FROM products
);