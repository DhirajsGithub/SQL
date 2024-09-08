USE sql_store;
SELECT c.customer_id, c.first_name, o.order_id
FROM orders o
-- LEFT JOIN customers c ON c.customer_id = o.order_id
RIGHT JOIN customers c ON c.customer_id = o.order_id;
-- with LEFT we will have all order which are nulll
-- with RIGHT we will have all customers with order id null

-- JOIN customers c ON c.customer_id = o.order_id
-- with the above command we only see all the customer who has order id and vice versa
-- what if we want all cutomers whose order id is null or all orders with customer id as null


-- @block
-- select all product with product is in order items or product id is null
SELECT p.product_id, p.name, oi.quantity 
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id