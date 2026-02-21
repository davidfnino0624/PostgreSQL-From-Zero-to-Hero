-- INSERT INTO SELECT Syntax

INSERT INTO table2 (column1, column2, ...)
SELECT column1, column2, ....
FROM table1
WHERE condition;

-- Or if all fields match

INSERT INTO table2
SELECT * FROM table1
WHERE condition;

-- Add our suppliers in Brazil and Argentina to suppliers_northamerica

INSERT INTO suppliers_northamerica
SELECT * FROM suppliers
WHERE country IN ('Brazil', 'Argentina');

-- Add orders from December 2016 to table orders_1997

INSERT INTO orders_1997
SELECT * FROM orders
WHERE orderdate BETWEEN '2016-12-01' AND '2016-12-31';


INSERT INTO orders_1997
SELECT * FROM orders
WHERE orderdate BETWEEN '1996-12-01' AND '1996-12-31';

