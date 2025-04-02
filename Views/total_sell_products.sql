USE marketing;
CREATE OR REPLACE VIEW total_sell_product AS
	SELECT 
		oi.product_id,
		p.name,
		SUM(oi.quantity * oi.unit_price) AS total_sell
	FROM order_items oi
	JOIN products p USING (product_id)
	GROUP BY product_id
    ORDER BY total_sell DESC