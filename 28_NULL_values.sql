--Basic Search Syntax

SELECT column_names
FROM table_name
WHERE column IS NULL


SELECT column_names
FROM table_name
WHERE column IS NOT NULL

-- How Many Customers Don't have a region value.

SELECT COUNT(*)
FROM customers
WHERE region IS NULL;

-- How Many Suppliers Have a region value.

SELECT COUNT(*)
FROM suppliers
WHERE region IS NOT NULL; 

-- How many orders did not have a ship region?

