USE sakila; 

SELECT * FROM film;

-- counts the films and groups them by year
SELECT release_year, count(title) as film_count
FROM film
group by release_year; 

-- looks at what films are rented out the most
SELECT distinct title, avg(round(rental_duration, 2)) as average_rental
FROM film
group by title
ORDER BY average_rental desc;

-- counts to see how many movies we have by rating 
SELECT rating, count(title) AS rating_count
FROM film
GROUP BY rating
ORDER BY rating desc;

-- calculates the title and length from films into hours and rounds it
SELECT title, round(length / 60.0,2) as length_average
FROM film
ORDER BY length_average desc;
