--Tired Of Typing Out ON Part

ON customers.customerid=orders.customerid

--Lot of typing!!!! Shorcut:

USING (customerid)

-- Join 2 tables

SELECT *
FROM orders
JOIN order_details USING (orderid);

-- join 3 tables

SELECT *
FROM orders
JOIN order_details USING (orderid)
JOIN products USING (productid);