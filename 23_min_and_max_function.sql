-- when was first order from Italy

SELECT MIN(orderdate)
FROM orders
WHERE shipcountry = 'Italy';

-- When Was Last Order Shipped to Canada

SELECT MAX(shippeddate)
FROM orders
WHERE shipcountry = 'Canada';

-- Find the slowest order sent to France based on order date versus ship date

SELECT MAX(shippeddate - orderdate)
FROM orders
WHERE shipcountry = 'France';