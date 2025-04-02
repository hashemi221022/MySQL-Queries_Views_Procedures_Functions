USE marketing;
CREATE OR REPLACE VIEW get_products_orders_order_items AS
	SELECT *
    FROM (
		SELECT 
		oi.order_id,
		oi.product_id,
		p.name,
		oi.quantity,
		oi.unit_price
	FROM order_items oi
	JOIN products p USING(product_id)
    ) AS t1
    JOIN orders USING (order_id)
