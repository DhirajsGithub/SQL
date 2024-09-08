USE sql_store;
-- joining two data bases, since we are currently pointed to sql_store so no need to sql_store.products
SELECT * FROM sql_store.order_items oi
JOIN products p
	ON oi.product_id = p.product_id