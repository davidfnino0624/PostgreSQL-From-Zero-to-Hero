-- INSERT INTO Syntax

INSERT INTO table_name
(column1, column2, column3, ...)
VALUES (value1, value2, value3, ...)

-- Create a New Order For customer 'VINET'

INSERT INTO orders
(orderid, customerid, employeeid, orderdate, requireddate, shipvia, freight, shipname, shipaddress, shipcity, shippostalcode, shipcountry)
VALUES (11078, 'VINET', 4, '2017-09-16','2017-09-30', 3, 42.5, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', '51100', 'France')

/* Insert an order detail for order we just created. Make it an quantity of 20 of 
Queso Cabrales (you will have to look up id) with a price of $14. */

INSERT INTO order_details
(orderid, productid, unitprice, quantity, discount)
VALUES (11078, 11, 14, 20, 0)
