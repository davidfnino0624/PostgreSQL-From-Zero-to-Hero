-- LIST OF COUNTRIES OF SUPPLIERS

SELECT DISTINCT(country)
FROM suppliers
ORDER BY country ASC;

SELECT DISTINCT(country)
FROM suppliers
ORDER BY country DESC;

-- countries and cities

SELECT DISTINCT country, city
FROM suppliers
ORDER BY country ASC, city ASC;

-- Get a list of product names and unit prices order by price highest to lowest and product name a to z (if they have same price)

SELECT productname, unitprice
FROM products
ORDER BY unitprice DESC, productname ASC;