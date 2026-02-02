/*Purpose of EXCEPT
Find items that are the first query but not the second*/

-- EXCEPT Syntax

SELECT column_names
FROM table
EXCEPT
SELECT column_names
FROM table

-- Must have same number of columns, column types must line up
-- Removes duplicates

-- Find all countries that we customers in but no suppliers

SELECT country 
FROM customers
EXCEPT
SELECT country
FROM suppliers
ORDER BY country ASC;

-- EXCEPT ALL - Grab All Values

SELECT column_names
FROM table
EXCEPT ALL
SELECT column_names
FROM table

-- Find the number of customer that are in a country without suppliers

SELECT COUNT(*)
FROM
	(SELECT country 
	FROM customers
	EXCEPT ALL
	SELECT country
	FROM suppliers)
;

-- Cities we have a supplier with no customer

SELECT city 
FROM suppliers
EXCEPT 
SELECT city
FROM customers;

-- How many customers do we have in cities without suppliers

SELECT COUNT(*)
FROM 
	(SELECT city 
	FROM customers
	EXCEPT ALL
	SELECT city
	FROM suppliers) as lonely_customers
;