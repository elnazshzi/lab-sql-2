-- 1
SELECT *
FROM sakila.actor 
WHERE first_name = 'Scarlett';

-- 2
select *
from sakila.actor
where last_name = 'Johansson';

-- 3
select count(film_id) from sakila.film;


-- 4
select count(rental_id) from sakila.rental;



-- 5
select min( rental_duration) as shortest_rental_period , max(rental_duration) as longest_rental_period 
from sakila.film;


-- 6
select max(length) as max_duration , min(length) as min_duration
from sakila.film;


-- 7
select avg(length) as average_movie_duration 
from sakila.film;


-- 8

SELECT FLOOR(AVG(length) / 60) as hour, FLOOR(AVG(length) % 60) as minute
FROM sakila.film;

SELECT CONCAT("(", FLOOR(AVG(length) / 60)," hours, ", FLOOR(AVG(length) % 60), " minutes)") as average_length
FROM sakila.film;


-- 9
select count(length) from sakila.film
where length > 180 ;


-- 10
select concat(upper(substring(first_name,1,1)),lower(substring(first_name,2)), ' ' ,upper(last_name), ' ' , '-' , concat(lower(first_name), lower(last_name), '@sakilacustomer.org', '.'))
 from sakila.customer;


-- 11
select max(length(title)) from sakila.film ;
