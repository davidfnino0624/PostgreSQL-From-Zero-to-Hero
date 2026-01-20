-- Full Joins
-- Pulls all records in first table and all records in second table

-- Basic Full Join Syntax

SELECT column_names
FROM table1
FULL JOIN table2 ON table1.column_name = table2.column_name


SELECT companyname, orderid
FROM orders
FULL JOIN customers ON customers.customerid = orders.customerid;

SELECT categoryname, productname
FROM products
FULL JOIN categories ON products.categoryid = categories.categoryid;
