-- HAVING Syntax
SELECT column_names
FROM table
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s)
 /*
 Difference Between Having and Where
Where filters records before grouping
Having filters records after grouping
 */

-- Find Products That sold less than $2000

SELECT 
	products.productname,
	SUM(order_details.unitprice * order_details.quantity) AS total_sold
FROM products
JOIN order_details USING (productid)
GROUP BY productname
HAVING SUM(order_details.unitprice * quantity) < 2000
ORDER BY total_sold DESC;

-- find Customers that have bought more than $5000 of products

SELECT 
	customers.companyname,
	SUM(order_details.unitprice * order_details.quantity) AS total_sold
FROM customers
JOIN orders USING (customerid)
JOIN order_details USING (orderid)
GROUP BY companyname
HAVING SUM(order_details.unitprice * order_details.quantity) > 5000
ORDER BY total_sold DESC;

-- same but this time between a timeframe using where before using group by

SELECT 
	customers.companyname,
	SUM(order_details.unitprice * order_details.quantity) AS total_sold
FROM customers
JOIN orders USING (customerid)
JOIN order_details USING (orderid)
WHERE orderdate BETWEEN '1997-01-01' AND '1997-06-30'
GROUP BY companyname
HAVING SUM(order_details.unitprice * order_details.quantity) > 5000
ORDER BY total_sold DESC;

