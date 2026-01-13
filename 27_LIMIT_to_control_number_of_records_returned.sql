-- this query find the 3 most expensive order details

SELECT productid, unitprice * quantity AS total_cost
FROM order_details
ORDER BY total_cost DESC
LIMIT 3;

-- Calculate the 2 products with the least inventory in stock by total dollar amount of inventory?

SELECT productid, productname, unitsinstock * unitprice AS total_dollar_amount
FROM products
ORDER BY total_dollar_amount ASC , productname ASC
LIMIT 2;

