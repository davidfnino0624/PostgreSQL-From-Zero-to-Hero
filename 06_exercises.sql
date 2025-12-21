-- Select all fields, and all records from actor table

SELECT * FROM actor;

-- Select all fields and records from film table

SELECT * FROM film;

-- Select all fields and records from the staff table

SELECT * FROM staff;

-- Select address and district columns from address table

SELECT address.address, district
FROM address;

-- Select title and description from film table

SELECT title, description
FROM film;

-- Select city and country_id from city table

SELECT city.city, country_id
FROM city;

-- Select all the distinct last names from customer table

SELECT DISTINCT last_name
FROM customer;

-- Select all the distinct first names from the actor table

SELECT DISTINCT first_name
FROM actor;

-- Select all the distinct inventory_id values from rental table

SELECT DISTINCT inventory_id
FROM rental;

-- Find the number of films ( COUNT ).

SELECT COUNT(*) 
FROM film;

-- Find the number of categories.

SELECT COUNT(DISTINCT category_id) 
FROM category;

SELECT COUNT(*) 
FROM category;

-- Find the number of distinct first names in actor table

SELECT COUNT(DISTINCT first_name)
FROM actor;

-- Select rental_id and the difference between return_date and rental_date in rental table

SELECT rental_id, return_date - rental_date
FROM rental;