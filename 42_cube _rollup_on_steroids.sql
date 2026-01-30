-- Cube does all subsets

CUBE (a, b, c)

-- Same as

GROUPING SETS ((a,b,c),
(a,b), (a,c), (a),
(b,c), (b), (c),
(0))

-- Let's do a cube of total sales by customer, categories, and products

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
GROUP BY CUBE (
    customers.companyname,
    categories.categoryname,
	products.productname
)
ORDER BY
	companyname,
	categoryname,
	productname;

-- Do a cube of total sales by suppliers, products and customers

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
GROUP BY CUBE (
    suppliers.companyname,
	products.productname,
	customers.companyname
)
ORDER BY
	suppliers.companyname,
	productname,
	customers.companyname;



