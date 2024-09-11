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
-- exercise
-- select all product with product is in order items or product id is null
SELECT p.product_id, p.name, oi.quantity 
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id;

-- @block 
-- outer joins between multiple tables
SELECT c.customer_id, c.first_name, o.order_id, sh.name AS shipper
FROM customers c
LEFT JOIN orders o
	ON o.customer_id = c.customer_id
LEFT JOIN shippers sh
	ON o.shipper_id = sh.shipper_id
ORDER BY c.customer_id;

-- @block
-- exercise
SELECT o.order_date, o.order_id, c.first_name, s.name AS shipper, os.name AS status
FROM orders o
LEFT JOIN customers c 
	ON o.customer_id = c.customer_id
LEFT JOIN shippers s
	ON s.shipper_id = o.shipper_id
LEFT JOIN order_statuses os 
	ON os.order_status_id = o.status
ORDER BY os.name;

-- self outer join
USE sql_hr;
SELECT e.employee_id, e.first_name, m.first_name as manager
FROM employees e
LEFT JOIN employees m 
	ON e.reports_to = m.employee_id











    
