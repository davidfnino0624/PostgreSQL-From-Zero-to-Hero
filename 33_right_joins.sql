-- Basic Right Join Syntax

SELECT column_names
FROM table1
RIGHT JOIN table2 ON table1.column_name = table2.column_name;

SELECT companyname, orderid
FROM orders
RIGHT JOIN customers ON customers.customerid = orders.customerid
WHERE orderid IS NULL;

SELECT *
FROM customercustomerdemo
RIGHT JOIN public.customers ON customercustomerdemo.customerid = customers.customerid;