SELECT * FROM sakila.rental;

SELECT * FROM sakila.customer;

SELECT sakila.rental.*, sakila.customer.*
FROM sakila.rental INNER JOIN sakila.customer
ON sakila.rental.customer_id=sakila.customer.customer_id;
-- using an inner join here to get rid of unecessary data want to make a join here to see who made the rentals and their contact with email
SELECT sakila.rental.rental_id, sakila.rental.rental_date, sakila.rental.return_date, sakila.customer.*
FROM sakila.rental INNER JOIN sakila.customer
ON sakila.rental.customer_id=sakila.customer.customer_id;