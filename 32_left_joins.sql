-- Left Joins Pulls back all records in first table and any matching records in second table

-- Basic Left Join Syntax

SELECT column_names
FROM table1
LEFT JOIN table2 ON table1.column_name = table2.column_name

-- Connect Customers to Orders Bring back company name, and order id

SELECT companyname, orderid
FROM customers
LEFT JOIN orders ON customers.customerid = orders.customerid;

SELECT companyname, orderid
FROM customers
LEFT JOIN orders ON customers.customerid = orders.customerid
WHERE orderid IS NULL;

SELECT productname, orderid
FROM products
LEFT JOIN order_details ON products.productid = order_details.productid;

SELECT productname, orderid
FROM products
LEFT JOIN order_details ON products.productid = order_details.productid
WHERE orderid IS NULL;