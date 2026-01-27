-- Basic Group By Syntax

SELECT column_names
FROM table
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s)

--How Many Customers Do we have in each country?

SELECT country,COUNT(country) 
FROM customers
GROUP BY country
ORDER BY country ASC;+

-- What is the number of products for each category?

SELECT categoryname, COUNT(*)
FROM products
RIGHT JOIN categories USING (categoryid)
GROUP BY categoryname
ORDER BY categoryname ASC;

SELECT 
	categories.categoryname,
	COUNT(products.categoryid)
FROM products
RIGHT JOIN categories USING (categoryid)
GROUP BY categoryname
ORDER BY categoryname ASC;

SELECT 
	categories.categoryname,
	COUNT(products.categoryid)
FROM products
RIGHT JOIN categories USING (categoryid)
GROUP BY categoryname
ORDER BY COUNT(products.categoryid) ASC;

SELECT 
	products.productname,
	AVG(order_details.quantity)
FROM order_details
JOIN products USING (productid)
GROUP BY productname
ORDER BY AVG(order_details.quantity) ASC;

-- how many suppliers do we have in each country?

SELECT 
	country,
	COUNT(*)
FROM suppliers
GROUP BY country
ORDER BY country ASC;

-- Total value of each product sold for year of 1997

SELECT 
	products.productname,
	SUM(order_details.unitprice * quantity) AS total_sold
FROM products
JOIN order_details USING (productid)
JOIN orders USING (orderid)
WHERE orderdate BETWEEN '1997-01-01' AND '1997-12-31'
GROUP BY productname
ORDER BY SUM(order_details.unitprice * quantity) DESC;

