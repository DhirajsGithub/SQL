USE sql_hr;

-- in sql_hr we have employees tables which contains employee id it's name and reports_to(manager)
-- we want to join employee with their manager, since reports_to can be an employee id
SELECT e.employee_id, e.first_name, m.first_name AS manager 
FROM employees e
JOIN employees m
	ON e.reports_to = m.employee_id