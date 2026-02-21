-- Add Returning Clause To Insert

INSERT INTO table (field2, field2) VALUES (value1, value2) RETURNING id

-- Insert a new employee returning the employeeid

INSERT INTO employees
(firstname, lastname, title, employeeid, reportsto)
VALUES ('Bob', 'Smith', 'Mr Big', 50, 2)
RETURNING employeeid

INSERT INTO employees
(firstname, lastname, title, employeeid, reportsto)
VALUES ('Bob', 'Smith', 'Mr Big', 50, 2)
RETURNING *

-- Insert a new order into table (I would use orderid=500) and return the orderid

INSERT INTO orders
(orderid, orderdate, shipcity, shipcountry, customerid, employeeid)
VALUES
    (500, '2024-01-15', 'Bogotá',     'Colombia', 'ALFKI', 5)
RETURNING *

-- Increase the unit price of Chai (productid=1) by 20% and return the new price and productid

UPDATE products
SET unitprice = unitprice * 1.2
WHERE productid = 1
RETURNING *;

/*Update order_details for orderid 10248 and productid 11 to double
the quantity ordered and return the new quantity*/

UPDATE order_details
SET quantity = quantity * 2
WHERE orderid = 10248 AND productid = 11
RETURNING *;

-- Delete the employee we just entered (employeeid=50) and return all the rows

DELETE FROM employees
WHERE employeeid = 50
RETURNING *;

-- Delete the order you entered (orderid=50) earlier and return all fields

DELETE FROM orders
WHERE orderid = 500
RETURNING *;