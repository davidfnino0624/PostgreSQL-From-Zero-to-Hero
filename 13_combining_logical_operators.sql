-- this query shows how many orders are shipped to germany and freight charges < 50 or > 175

SELECT COUNT(*)
FROM orders
WHERE shipcountry = 'Germany' AND (freight < 50 OR freight > 175);

-- this query shows how many orders were shipped to Canada or Spain and shippeddate after may 1, 1997

SELECT COUNT(*)
FROM orders
WHERE (shipcountry = 'Canada' OR shipcountry = 'Spain') AND shippeddate > '05-01-1997';