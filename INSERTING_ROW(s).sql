USE sql_store;

-- inserting single row
-- without specifying column name
INSERT INTO customers
VALUES (DEFAULT, 'john', 'cena', '1990-02-09', NULL, 'cena address', 'cena city', 'CA', DEFAULT);
-- state must be 2 characters not more not less

-- with column name
INSERT INTO customers (last_name, first_name, birth_date, address, city, state)
VALUES ('borse', 'dhiraj', '1903-04-03', 'my address', 'my city', 'MH');
-- other fields will have auto value 
-- NOTE
-- VALUES (DFAULT, 'dhiraj', '1903-04-03', 'my address', 'my city', 'MH') -- this will give error, since last_name don't have any default value
-- VALUES (NULL, 'dhiraj', '1903-04-03', 'my address', 'my city', 'MH') -- this will give error, since last_name can't be null

-- inserting multiple rows
INSERT INTO shippers (name)
VALUES("shipper1"), ('shipper2'), ('shipper3');

INSERT INTO products(name, quantity_in_stock, unit_price)
VALUES('p1', 23, 45.89), ('p2', 78, 83.09), ('p3', 12, 56);

-- inserting rows into muliple table, or inserting hierarchical rows
INSERT INTO orders(customer_id, order_date, status)
VALUES(1, '2019-03-12', 2);

INSERT INTO order_items
VALUES(LAST_INSERT_ID(), 1, 1, 2.89) ,
	(LAST_INSERT_ID(), 2, 1, 2.95)













