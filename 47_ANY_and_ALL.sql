-- ANY Syntax

SELECT column_names
FROM table
WHERE column operator ANY (SELECT column_name FROM table_name WHERE condition)

Operator must be =, >, <, <=, >= or !=

-- With an order detail with more than 50 items in a single product

SELECT companyname
FROM customers
JOIN orders USING (customerid)
JOIN order_details USING (orderid)
WHERE orderdetails.quantity > 50

SELECT companyname
FROM customers
WHERE customerid = ANY (SELECT customerid
						FROM orders
						JOIN order_details USING(orderid)
						WHERE quantity > 50)
;

--Find all suppliers that have had an order with 1 item

SELECT companyname
FROM suppliers
WHERE supplierid = ANY (SELECT supplierid
						FROM products
						JOIN order_details USING(productid)
						WHERE quantity = 1 )
;

-- ALL Syntax

SELECT column_names
FROM table
WHERE column operator ALL (SELECT column_name FROM table_name WHERE condition)
Operator must be =, >, <, <=, >= or !=

-- Find Products Which had order amounts that were higher than the average of all the products

SELECT DISTINCT productname
FROM products
JOIN order_details USING (productid)
WHERE 
	order_details.unitprice * order_details.quantity > ALL (SELECT AVG (order_details.unitprice * order_details.quantity)
															FROM order_details
															GROUP BY productid						
);

/*Find all distinct customers that ordered more in one item than the average order
amount per item of all customers*/

SELECT DISTINCT companyname
FROM customers
JOIN orders USING (customerid)
JOIN order_details USING (orderid)
WHERE
order_details.unitprice * quantity > ALL (SELECT AVG (order_details.unitprice * quantity)
											FROM order_details
											JOIN orders USING (orderid)
											GROUP BY customerid
);
