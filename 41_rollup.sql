-- Rollup is shorthand

ROLLUP (e1, e2, e3, ...)

-- Same as

GROUPING SETS ((e1, e2, e3, ....),
(e1, e2),
(e1),
()
)

-- Let's do a rollup with customer, categories, and products

SELECT
    customers.companyname,
    categories.categoryname,
	products.productname,
    SUM(order_details.unitprice * quantity)
FROM categories
JOIN products USING (categoryid)
JOIN order_details USING (productid)
JOIN orders USING (orderid)
JOIN customers USING (customerid)
GROUP BY ROLLUP (
    customers.companyname,
    categories.categoryname,
	products.productname
)
ORDER BY
	companyname,
	categoryname,
	productname;

-- rollup of suppliers, products and customers

SELECT
    suppliers.companyname AS Supplier,
	products.productname,
	customers.companyname AS Buyer,
	SUM(order_details.unitprice * quantity)
FROM suppliers
JOIN products USING (supplierid)
JOIN order_details USING (productid)
JOIN orders USING (orderid)
JOIN customers USING (customerid)
GROUP BY ROLLUP (
    suppliers.companyname,
	products.productname,
	customers.companyname
)
ORDER BY
	suppliers.companyname,
	productname,
	customers.companyname;

SELECT
    suppliers.companyname AS Supplier,
	customers.companyname AS Buyer,
	products.productname,
	SUM(order_details.unitprice * quantity) 
FROM suppliers
JOIN products USING (supplierid)
JOIN order_details USING (productid)
JOIN orders USING (orderid)
JOIN customers USING (customerid)
GROUP BY ROLLUP (
    suppliers.companyname,
	customers.companyname,
	products.productname
)
ORDER BY
	suppliers.companyname,
	customers.companyname,
	productname;