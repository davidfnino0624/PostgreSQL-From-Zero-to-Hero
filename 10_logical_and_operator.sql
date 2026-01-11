-- This query count how many order were shipped on germany and the freight is greater than 100

SELECT COUNT (*)
FROM orders
WHERE shipcountry = 'Germany' AND freight > 100;