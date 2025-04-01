-- question 1
-- all products whose price is higher than the price of product id number 3
SELECT *
FROM products
WHERE unit_price > (
	SELECT unit_price
	FROM products
	WHERE product_id = 3
);