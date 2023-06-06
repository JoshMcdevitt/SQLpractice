Use sakila;
show tables;
Describe film;
Select * from film;
-- all rows, selected columns
SELECT title, rating, length FROM film;
-- shows all ratings in table and orders it
SELECT DISTINCT rating 
FROM film
order by rating; 

-- looks for r rated movies 
select title, rating, length 
from film 
where rating = "R";
-- looks for r rated movies and movies shorter than 75 minutes 
select title, rating, length 
from film 
where rating = "R" and length < 75;

-- shows r rated movies and nc-17
select title, rating, length 
from film 
where rating in ("R", "NC-17");
-- shows any other movies not rated r or nc17
select title, rating, length 
from film 
where rating not in ("R", "NC-17");

-- sorting r and nc17 in longest to shortest
select title, rating, length 
from film 
where rating in ("R", "NC-17")
order by length desc; 

-- sorting top 5 r and nc17 in longest to shortest 
select title, rating, length 
from film 
where rating in ("R", "NC-17")
order by length desc
limit 5; 
-- shows the 5th to 10th longest movies in abc order 
select title, rating, length 
from film 
where rating in ("R", "NC-17")
order by length desc, title asc 
limit 5 offset 4; 