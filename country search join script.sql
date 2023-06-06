-- this exercise is meant join two tables from two databases one being sakila cities and world cities
-- looking and comparing tables 
SELECT * FROM sakila.city;

SELECT * FROM world.city;
-- joining tables 
Select sakila.city.*, world.city.*
from sakila.city Inner Join world.city
ON sakila.city.city_id=world.city.ID;
-- cleaning it up 
Select sakila.city.city,sakila.city.last_update, world.city.*
from sakila.city Inner Join world.city
ON sakila.city.city_id=world.city.ID