-- This query come back the number of orders that were ordered on or after january 01, 1998

SELECT COUNT (*)
FROM orders
WHERE orderdate >= '01-01-1998';

-- this query come back the number of order made before july 5 1997

SELECT COUNT (*)
FROM orders
WHERE shippeddate < '07-05-1997';

SELECT COUNT (*)
FROM orders
WHERE shippeddate < '1997-07-05';