SELECT COUNT(region)
FROM customers;

SELECT COUNT(*)
FROM orders;

SELECT COUNT(DISTINCT region) as total_regions
FROM customers;

SELECT COUNT(DISTINCT city) as total_cities
FROM suppliers;

SELECT COUNT(DISTINCT productid) as total_products
FROM order_details;