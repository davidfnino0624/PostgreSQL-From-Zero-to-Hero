-- we've Already Been Using

Grouping set = country
SELECT COUNT(*), country
FROM customers
GROUP BY country
ORDER BY COUNT(*) DESC

-- Total sales grouped by product and category

SELECT 
	categories.categoryname,
	products.productname,
	SUM (order_details.unitprice * quantity)	
FROM order_details
JOIN products USING (productid)
JOIN categories USING (categoryid)
GROUP BY GROUPING SETS ((categoryname), (categoryname, productname))
ORDER BY categoryname, productname;

/* Find total sales by both customer's companyname renamed as buyerand supplier's 
companyname renamed as supplier and order by buyer and supplier.*/

SELECT 
	customers.companyname AS buyer,
	suppliers.companyname AS supplier,
	SUM (order_details.unitprice * quantity)	
FROM suppliers
JOIN products USING (supplierid)
JOIN order_details USING (productid)
JOIN orders USING (orderid)
JOIN customers USING (customerid)
GROUP BY GROUPING SETS ((buyer), (buyer, supplier))
ORDER BY buyer, supplier;

-- In SQL, the execution order is roughly:

FROM -> WHERE -> GROUP BY -> SELECT -> ORDER BY.

SELECT 
    customers.companyname AS buyer,
    suppliers.companyname AS supplier,
    SUM(order_details.unitprice * quantity) AS total_sales
FROM suppliers
JOIN products USING (supplierid)
JOIN order_details USING (productid)
JOIN orders USING (orderid)
JOIN customers USING (customerid)
GROUP BY GROUPING SETS (
    (customers.companyname),                      -- Use original name is safer
    (customers.companyname, suppliers.companyname) -- Use original names is safer
)
ORDER BY buyer, supplier; -- ORDER BY runs last, so aliases work here!

/* Find total sales grouped by customer companyname and categoryname 
(must link to tables), order by companyname, categoryname with NULLS FIRST*/

SELECT
	companyname,
	categories.categoryname,
	SUM(order_details.unitprice * quantity)
FROM categories
JOIN products USING (categoryid)
JOIN order_details USING (productid)
JOIN orders USING (orderid)
JOIN customers USING (customerid)
GROUP BY GROUPING SETS (
	(companyname),
	(companyname, categoryname)
)
ORDER BY 
	companyname,
	categoryname NULLS FIRST;
