-- Basic Syntax
-- SELECT <column1> AS alias_name
-- FROM <table_name>;

SELECT unitprice * quantity AS total_spend
FROM order_details;

SELECT unitprice * quantity AS total_spend
FROM order_details
ORDER BY total_spend ASC;

-- WHERE DOESN'T WORK WITH AS

-- Calculate our inventory value of products (need unitprice and unitsinstock fields) and return as Totallnventory and order by this column desc

SELECT unitprice * unitsinstock AS totalInventory
FROM products
ORDER BY totalInventory DESC;

