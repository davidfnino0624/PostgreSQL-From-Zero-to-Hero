--Meaning of Term: Self Joins: Connect a table back to itself

--Why Would You Do This
-- Hierarchy - like employees who report to other employees
-- Looking for similarities or dissimilarities same column - everyone in same city or same birthdate

-- Since All The Columns Are Same Must use aliases to rename the tables so we can
-- differentiate which version of table we are referring to

-- Basic Self Join Syntax

SELECT column_names
FROM table AS t1
JOIN table AS t2 USING t1.column=t2.column
WHERE condition

-- find customer who are in the same city and order by city

SELECT contactname, city
FROM customers AS t1
JOIN customers AS t2 USING t1.city=t2.city
ORDER BY city ASC;

-- This is the proper way

SELECT 
	t1.contactname AS N1,
	t2.contactname AS N2,
	t1.city
FROM customers AS t1
JOIN customers AS t2 ON t1.city = t2.city
ORDER BY t1.city ASC;

-- now we don't want to customer being connected to the same customer

SELECT 
	t1.contactname AS N1,
	t2.contactname AS N2,
	t1.city
FROM customers AS t1
JOIN customers AS t2 ON t1.city = t2.city
WHERE t1.customerid	<> t2.customerid
ORDER BY t1.city ASC;

SELECT 
	t1.contactname  N1,
	t2.contactname AS N2,
	t1.country
FROM suppliers t1
JOIN suppliers t2 ON t1.country = t2.country
WHERE t1.supplierid	<> t2.supplierid
ORDER BY t1.country ASC;