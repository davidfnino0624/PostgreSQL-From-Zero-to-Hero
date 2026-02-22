/*
Two Kinds Of Basic Index

INDEX - creates a lookup structure ordered on fields in the index

UNIQUE INDEX - same ordering but adds a check that prevents
duplicates on that field from being entered.
*/

-- CREATE INDEX Syntax

CREATE INDEX index_name
ON table_name (column1, ....);

Or

CREATE UNIQUE INDEX index_name
ON table_name (column1, ....);

-- Create Index On employeeid field of employees table. Should be UNIQUE

CREATE UNIQUE INDEX idx_employees_employeeid
ON employees (employeeid);

-- On orders create a single index on two fields customerid and orderid

CREATE INDEX idx_orders_orderid_customerid
ON orders (orderid, customerid);