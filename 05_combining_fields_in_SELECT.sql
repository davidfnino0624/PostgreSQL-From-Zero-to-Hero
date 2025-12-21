SELECT customerid, shippeddate - orderdate as diference_date
FROM orders
ORDER BY diference_date ASC;


SELECT orderid, unitprice * quantity
FROM order_details;

SELECT orderid, SUM(unitprice * quantity) AS total_order
FROM order_details
GROUP BY orderid
ORDER BY orderid DESC;