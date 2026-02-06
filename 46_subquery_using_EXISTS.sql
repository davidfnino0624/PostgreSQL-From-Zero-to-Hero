-- EXISTS Syntax

SELECT column_names
FROM table
WHERE EXISTS (SELECT column_name FROM table_name WHERE condition)

-- Find Customers With an order in April, 1997

SELECT customers.companyname
FROM customers
WHERE EXISTS 
    (SELECT customerid 
     FROM orders
     WHERE
        orders.customerid = customers.customerid AND
        orderdate BETWEEN '1997-04-01' AND '1997-04-30')
;

-- Is not efficient at all but works the same way as exists

SELECT DISTINCT customers.companyname -- DISTINCT es OBLIGATORIO para evitar duplicados
FROM customers
JOIN orders ON orders.customerid = customers.customerid
WHERE orderdate BETWEEN '1997-04-01' AND '1997-04-30';

-- But how would you find customers who didn't have an order in April, 1997

SELECT customers.companyname
FROM customers
WHERE NOT EXISTS 
    (SELECT customerid 
     FROM orders
     WHERE
        orders.customerid = customers.customerid AND
        orderdate BETWEEN '1997-04-01' AND '1997-04-30')
;

-- or anti - join

SELECT customers.companyname
FROM customers
LEFT JOIN orders ON 
    orders.customerid = customers.customerid AND 
    orders.orderdate BETWEEN '1997-04-01' AND '1997-04-30'
WHERE orders.orderid IS NULL;

-- What products didn't have an order in April, 1997

SELECT products.productname
FROM products
WHERE NOT EXISTS 
    (SELECT * 
     FROM order_details
	 JOIN orders ON order_details.orderid = orders.orderid
     WHERE
        products.productid = order_details.productid AND
        orderdate BETWEEN '1997-04-01' AND '1997-04-30')
;

-- ANTI-JOIN

SELECT products.productname
FROM products
LEFT JOIN (
    -- Primero creamos una "tabla virtual" SOLO con ventas de abril
    SELECT DISTINCT productid 
    FROM order_details
    JOIN orders ON order_details.orderid = orders.orderid
    WHERE orderdate BETWEEN '1997-04-01' AND '1997-04-30'
) AS ventas_abril ON products.productid = ventas_abril.productid
WHERE ventas_abril.productid IS NULL; -- Si no encontró match en la tabla virtual, es el que busco

-- Find all suppliers with a product that costs more than $200

SELECT companyname
FROM suppliers
WHERE EXISTS 
    (SELECT * 
     FROM products
     WHERE
        suppliers.supplierid = products.supplierid AND
        products.unitprice > 200)
;

-- Find all suppliers that don't have an order in December 1996

SELECT companyname
FROM suppliers
WHERE NOT EXISTS 
    (SELECT * 
     FROM products
	 JOIN order_details USING (productid)
	 JOIN orders USING (orderid)
     WHERE
        products.supplierid = suppliers.supplierid AND
        orderdate BETWEEN '1996-12-01' AND '1996-12-31')
;

