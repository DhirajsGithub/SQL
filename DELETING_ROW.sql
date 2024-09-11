USE sql_invoicing;
-- updating a single row
UPDATE invoices
-- SET payment_total = 10, payment_date = '2019-03-01'
-- SET payment_total = DEFAULT, payment_date = NULL
SET payment_total = invoice_total*0.5, payment_date = due_date
WHERE invoice_id = 1;


-- updating multiple rows
UPDATE invoices
SET payment_total = invoice_total*0.5, payment_date = due_date
-- WHERE client_id = 5;		-- since client_id can be same in multiple row all rows with client id can be updated
WHERE client_id IN (3, 4);

-- give all customers extra points who bord befor 1990
USE sql_store;
UPDATE customers
SET points = points + 50 
WHERE birth_date < '1990-01-01';

-- using subqueries in updates
USE sql_invoicing;
UPDATE invoices
SET payment_total = payment_total + 10
WHERE client_id IN 		-- IN coz multiple rows, if one row guranteed then use =
				(SELECT client_id 
				FROM clients 
				WHERE state IN ("CA", "NY"));


-- exercise update comments from orders table, of customers having more than 3000 points
USE sql_store;
UPDATE orders
SET comments = "more than 3000 points"
WHERE customer_id IN 
					(SELECT customer_id
					FROM customers
					WHERE points > 3000);
                    

-- deleting a row
-- note we cannot delete a row with foreign key constrain
USE sql_store;
DELETE FROM customers
-- WHERE customer_id = 27
WHERE last_name IN ("cena", "borse")






