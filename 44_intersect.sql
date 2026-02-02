-- INTERSECT Syntax

SELECT column_names
FROM table
INTERSECT
SELECT column_names
FROM table

/*Must have same number of columns, column types must line up
Removes duplicates*/

-- Find all countries that we have both customers and suppliers in

SELECT country 
FROM customers
INTERSECT
SELECT country
FROM suppliers
ORDER BY country ASC;

-- INTERSECT ALL - Grab All Values

SELECT column_names
FROM table
INTERSECT ALL
SELECT column_names
FROM table

/*Find the number of customer and supplier pairs that are in the same
country*/

SELECT COUNT(*)
FROM
	(SELECT country 
	FROM customers
	INTERSECT ALL
	SELECT country
	FROM suppliers)
;

-- Distinct cities that we have a supplier and customer located in

SELECT city 
FROM customers
INTERSECT
SELECT city
FROM suppliers;

/*The count of the number of customers and suppliers pairs that
 are in the same city.*/


SELECT COUNT(*)
FROM
	(SELECT city 
	FROM customers
	INTERSECT ALL
	SELECT city
	FROM suppliers)
;