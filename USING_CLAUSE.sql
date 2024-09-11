USE sql_store;
SELECT o.order_id, 
	c.first_name, 
	sh.name AS shipper,
    p.name AS product
	
FROM orders o
JOIN customers c
	-- ON c.customer_id = o.customer_id
    USING (customer_id)
LEFT JOIN shippers sh
	USING(shipper_id)
LEFT JOIN products p
	USING(name);

-- NOTE When you use LEFT JOIN products p USING(name);, 
-- this join is evaluated against the combined result of all previous joins, not just a single table.

    
-- @block using compound join
SELECT * 
FROM order_items oi
JOIN order_item_notes oin
	-- ON oi.order_id = oin.order_id AND
		-- oi.product_id = oin.product_id
	USING(order_id, product_id);

-- @block exercise
USE sql_invoicing;
SELECT p.date, c.name AS client, p.amount, pm.name 
FROM payments p
JOIN clients c
	USING(client_id)
JOIN payment_methods pm
	ON p.payment_id = pm.payment_method_id















