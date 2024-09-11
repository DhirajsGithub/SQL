USE sql_store;

-- join base on common column between two tables
-- avoid
SELECT o.order_id, c.first_name
FROM orders o
NATURAL JOIN customers c