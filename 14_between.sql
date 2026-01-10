-- this query shows how many orders have a unit price between 10$ and 20$

SELECT COUNT(*)
FROM order_details
WHERE unitprice BETWEEN 10 AND 20;

-- this query shows how many orders shipped between june 1, 1996 and september 30, 1996

SELECT COUNT(*)
FROM orders
WHERE shippeddate BETWEEN '06-01-1996' AND '09-30-1996';