-- Inner Joins Pulls back records that have matching values in both tables.

-- Basic Join Syntax

SELECT column_names
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name


SELECT column_names
FROM table1
JOIN table2 ON table1.column_name = table2.column_name

-- We need a report that gives me customername, orderdate and shipcountry.
-- We know that that data is in two separate tables: customers and orders

SELECT companyname, orderdate, shipcountry
FROM orders
JOIN customers ON customers.customerid = orders.customerid;

-- Connect employees to orders and pull back first name, last name and order date for all orders

SELECT firstname, lastname, orderdate
FROM employees
JOIN orders ON orders.employeeid = employees.employeeid;

-- Connect products to suppliers and pull back company name, unit cost and units in stock

SELECT companyname, unitprice, unitsinstock
FROM products
JOIN suppliers ON products.supplierid = suppliers.supplierid;