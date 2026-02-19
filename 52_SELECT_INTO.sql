-- SELECT INTO Syntax

SELECT column1, column2, ...
INTO new_table
FROM old_table
WHERE condition;

/*Backup Suppliers
Let's backup all our suppliers in North America.*/

SELECT *
INTO suppliers_northamerica
FROM suppliers
WHERE country IN('USA', 'Canada')

SELECT *
FROM suppliers_northamerica

-- Backup orders in the year 1997 to a new table orders_1997

SELECT *
INTO orders_1997
FROM orders
WHERE orderdate BETWEEN '1997-01-01' AND '1997-12-31'

SELECT *
FROM orders_1997