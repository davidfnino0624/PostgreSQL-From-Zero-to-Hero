-- Combine the results of 2 or more queries.

-- UNION Syntax

SELECT column_names
FROM table
UNION
SELECT column_names
FROM table

-- Must have same number of columns, column types must line up
-- Removes duplicates

-- Get a list of all customer and supplier company names

SELECT companyname 
FROM customers
UNION
SELECT companyname
FROM suppliers;

-- UNION ALL - Grab All Values

SELECT column_names
FROM table
UNION ALL
SELECT column_names
FROM table

/*Find Cities Of all our customers and suppliers, with one record for
each companies city*/

SELECT companyname, city
FROM customers
UNION ALL
SELECT companyname, city
FROM suppliers;

/*Distinct countries of all our customers and suppliers in
alphabetical order*/

SELECT country 
FROM customers
UNION
SELECT country
FROM suppliers
ORDER BY country ASC;

/* All list of countries of our suppliers and customers,
 with a record for each one.*/

SELECT country 
FROM customers
UNION ALL
SELECT country
FROM suppliers
ORDER BY country ASC;
