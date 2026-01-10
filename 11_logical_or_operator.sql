--the query show how many customers are in usa or canada

SELECT COUNT(*)
FROM customers
WHERE country = 'USA' OR country = 'Canada';

-- this query show how many suppliers are in germany or spain

SELECT COUNT(*)
FROM suppliers
WHERE country = 'Germany' OR country = 'Spain';

-- this query show how many orders were shipped to usa, brazil and argentina

SELECT COUNT(*)
FROM orders
WHERE shipcountry = 'USA' OR shipcountry = 'Brazil' OR shipcountry = 'Argentina'