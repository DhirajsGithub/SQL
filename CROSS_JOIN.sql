USE sql_store;
-- join every record from first table to every record from second table
SELECT p.name AS product, c.first_name as customer
FROM products p
CROSS JOIN customers c
-- FROM products p, customers c
-- instead of using CROSS JOIn
ORDER BY c.first_name;

-- @block 
SELECT p.name AS product,
		s.name AS shipper
-- FROM shippers s
-- CROSS JOIN products p
FROM shippers s, products p

