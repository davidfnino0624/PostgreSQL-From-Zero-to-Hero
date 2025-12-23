-- find number of orders by employee with id of 3

SELECT COUNT(*)
FROM orders
WHERE employeeid = 3;

SELECT COUNT(DISTINCT orderid)
FROM orders
WHERE employeeid = 3;

-- select order with quantity greater than 20 units

SELECT orderid
FROM order_details
WHERE quantity > 20;

SELECT order_details.orderid, SUM(quantity)
FROM order_details
GROUP BY orderid
HAVING SUM(quantity) > 20;

-- how many orders had a freight costs equal to or greater than $250

SELECT COUNT (*)
FROM orders
WHERE freight >= 250;