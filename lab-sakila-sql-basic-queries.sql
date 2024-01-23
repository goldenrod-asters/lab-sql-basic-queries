USE sakila;

#1 display all available tables in the Sakila database
SHOW TABLES FROM sakila;

#2 Retrieve all the data from the tables actor, film and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#3 Retrieve the specific columns from their respective tables:
SELECT title FROM film;

SELECT name AS language
FROM language;

SELECT first_name FROM staff;

#4 unique release years
SELECT DISTINCT release_year 
FROM film;

#5.1 number of stores that the company has
SELECT COUNT(store_id)
FROM store;

#5.2 number of employees that the company has
SELECT COUNT(staff_id)
FROM staff;

#5.3 how many films are available for rent and how many have been rented
SELECT COUNT(inventory_id)
FROM inventory;

-- TOTAL films rented ever. Unclear what timeframe we are looking for.
SELECT COUNT(rental_id)
FROM rental;

-- for own exploratory purposes
SELECT * FROM rental
ORDER BY return_date DESC;

#5.4 number of distinct last names of the actors in the database
SELECT COUNT(DISTINCT last_name)
FROM actor;

#6 10 longest films
SELECT length, title
FROM film
ORDER BY length DESC
LIMIT 10;

#7.1 Retrieve all actors with the first name "SCARLETT"
SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE '%SCARLETT%';

#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes
SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' AND length > 100;

#7.3 Determine the number of films that include Behind the Scenes content
SELECT special_features, COUNT(film_id)
FROM film
WHERE special_features LIKE '%Behind the Scenes%'
GROUP BY special_features;
#OR
SELECT COUNT(film_id)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';