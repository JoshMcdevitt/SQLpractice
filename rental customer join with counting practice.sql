use sakila; 
-- looking to see who has rented the most movies 
SELECT concat(first_name, " ",last_name) as customer_name, count(rental_date)
from customer
Inner join rental on customer.customer_id = rental.customer_id
group by customer_name
order by count(rental_date) desc;

-- looks to see if someone returned there movies the most 
SELECT concat(first_name, " ",last_name) as customer_name, count(return_date)
from customer
Inner join rental on customer.customer_id = rental.customer_id
group by customer_name
order by count(return_date) desc;

-- looks to see if anyone has any movies rented out 
SELECT concat(first_name, " ",last_name) as customer_name, 
count(rental_date) - count(rental_date) as movies_not_collected
from customer
Inner join rental on customer.customer_id = rental.customer_id
group by customer_name
order by count(rental_date) - count(rental_date) desc;
