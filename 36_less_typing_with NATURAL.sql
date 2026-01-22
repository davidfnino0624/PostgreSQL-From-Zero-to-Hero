-- Syntax
 
FROM table1
NATURAL JOIN table2

-- NATURAL JOIN between orders and order_details

SELECT *
FROM orders
NATURAL JOIN order_details;

SELECT *
FROM customers
NATURAL JOIN orders
NATURAL JOIN order_details;