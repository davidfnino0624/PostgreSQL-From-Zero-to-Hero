-- IN Subquery Syntax

SELECT column_names
FROM table
WHERE column IN (SELECT statement)

-- Find Customers That are in the same countries as the suppliers

SELECT companyname
FROM customers
WHERE country IN (SELECT country FROM suppliers)
;

-- Find all suppliers that are in the same city as a customer

SELECT companyname
FROM suppliers
WHERE city IN (SELECT city FROM customers)
;
