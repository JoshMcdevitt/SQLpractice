USE sakila; 
SELECT * FROM customer;

-- returns customers with the first name that starts with M
SELECT customer_id, first_name, last_name as M_name_search
FROM customer
WHERE first_name LIKE "M%";

-- returns customers with the first name that starts with M and
-- last name starts with M 
SELECT customer_id, first_name, last_name
FROM customer
WHERE first_name LIKE "M%" and last_name LIKE "M%";

-- returns names with the second letter not being "A"
-- in their first name 
SELECT first_name, last_name 
FROM customer 
WHERE first_name not like "_A%";

-- orders first names in abc order 
SELECT first_name, last_name as fname_abc_order 
FROM customer 
ORDER BY first_name asc;
