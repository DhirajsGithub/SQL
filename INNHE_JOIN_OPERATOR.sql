
-- @block
SELECT * 
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;

-- INNER JOIN --> same as JOIN

-- @block
-- alias use, orders as o and customers as c
SELECT order_id, o.customer_id, first_name, last_name
FROM orders o 
JOIN customers c ON o.customer_id = c.customer_id;

-- @block
SELECT order_id, p.product_id, name AS 'product_name', quantity, oi.unit_price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id







