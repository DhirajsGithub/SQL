USE sql_store;

-- union of multiple rows from same table
-- NOTE number of columns must be same for both union
-- column name will be take from the first Select
SELECT order_id, 
		order_date,
		'ACTIVE' as status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT order_id,
		order_date,
		'ARCHIEVED' AS status
FROM orders
WHERE order_date < '2019-01-01';

-- union of multiple rows from different table
SELECT name
FROM shippers
UNION
SELECT first_name 
FROM customers;

-- exercise
SELECT c.customer_id, c.first_name, c.points, 'BRONZE' AS status
FROM customers c
WHERE c.points <= 2000

UNION
SELECT c.customer_id, c.first_name, c.points, 'SILVER' AS status
FROM customers c
-- WHERE c.points > 2000 AND c.points <=3000
WHERE c.points BETWEEN 200 AND 3000
UNION
SELECT c.customer_id, c.first_name, c.points, 'GOLD' AS status
FROM customers c
WHERE c.points > 3000

ORDER BY first_name
-- ORDER BY c.first_name will give the erro since it will confuse which column to take













