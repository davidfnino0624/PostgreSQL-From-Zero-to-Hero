-- Basic Syntax

SELECT column_names
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name
INNER JOIN table3 ON table3.column_name = table1.column_name


SELECT column_names
FROM table1
JOIN table2 ON table1.column_name = table2.column_name
JOIN table3 ON table3.column name = table2.column name+

-- Connect Customers, Orders, OrderDetails
-- Bring back company name, order date, productid, unit price, and quantity

SELECT companyname, orderdate, productid, unitprice, quantity
FROM customers
JOIN orders ON customers.customerid = orders.customerid
JOIN order_details ON orders.orderid = order_details.orderid

SELECT
    customers.companyname, 
    products.productname, 
    orders.orderdate, 
    products.productid,
    order_details.unitprice,  
    order_details.quantity
FROM customers
JOIN orders ON customers.customerid = orders.customerid
JOIN order_details ON orders.orderid = order_details.orderid
JOIN products ON order_details.productid = products.productid


SELECT
    customers.companyname, 
    products.productname,
    categories.categoryname
    orders.orderdate, 
    products.productid,
    order_details.unitprice,  
    order_details.quantity
FROM customers
JOIN orders ON customers.customerid = orders.customerid
JOIN order_details ON orders.orderid = order_details.orderid
JOIN products ON order_details.productid = products.productid
JOIN categories ON products.categoryid = categories.categoryid


SELECT
    customers.companyname, 
    products.productname,
    categories.categoryname,
    orders.orderdate, 
    products.productid,
    order_details.unitprice,  
    order_details.quantity
FROM customers
JOIN orders ON customers.customerid = orders.customerid
JOIN order_details ON orders.orderid = order_details.orderid
JOIN products ON order_details.productid = products.productid
JOIN categories ON products.categoryid = categories.categoryid
WHERE categoryname = 'Seafood' AND (order_details.unitprice * order_details.quantity) >= 500;
