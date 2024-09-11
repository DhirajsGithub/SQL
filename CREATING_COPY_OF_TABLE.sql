-- USE sql_store;
-- creating copy of orders table, i.e. all it's rows and column will be copied to order_archieved table
-- but orders table properties won't get copied, i.e. properties like AI, NN, etc won't get to order_archieved
-- CREATE TABLE orders_archieved AS
-- SELECT * FROM orders;
-- deleting the orders_archieved table right click on order_archieved table then truncate the table

-- copying only subset or required amount from orders to existing table / orders_archieved
USE sql_store;
INSERT INTO orders_archieved
-- no need to specify columns name since we are having all columns from orders table
SELECT * 
FROM orders
WHERE order_date < '2019-01-01';

-- cool exercise
USE sql_invoicing;
CREATE TABLE invoicing_archieved AS
SELECT i.invoice_id, i.number, i.invoice_total, i.payment_total, i.invoice_date, i.payment_date,
 c.client_id, c.name
FROM invoices i
JOIN clients c USING(client_id)
WHERE i.payment_date IS NOT NULL










