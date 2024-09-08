USE sql_store;

-- @block
SELECT * FROM customers
ORDER BY first_name;

-- @block
SELECT * FROM customers
ORDER BY state, points;   -- first sort with state if state are similar then with points it will sort

-- @block 
SELECT * FROM customers
ORDER BY first_name DESC, birth_date;

-- @block
SELECT first_name, last_name FROM customers
ORDER BY points;

-- @block
SELECT * FROM customers
ORDER BY 1, 2;			-- order by column 1 and 2, should be avoided 

-- @block
SELECT *, quantity*unit_price AS 'total_price' FROM order_items
WHERE order_id = 2
-- ORDER BY quantity*unit_price DESC
ORDER BY total_price DESC



