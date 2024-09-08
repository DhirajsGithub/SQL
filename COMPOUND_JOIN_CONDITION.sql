USE sql_store;
-- joining two tables one using composite primary key
SELECT * 
FROM order_items oi 
JOIN order_item_notes oin 
	ON oi.order_id = oin.order_id
    AND oi.product_id = oin.product_id