-- what was the avg freight of orders shipped to brazil

SELECT AVG(freight)
FROM orders
WHERE shipcountry = 'Brazil';

-- how many individual items of tofu (productid = 14) were ordered

SELECT SUM(quantity)
FROM order_details
WHERE productID = 14;

-- What was the average number of Steeleye Stout (productid=35) per order

SELECT AVG(quantity)
FROM order_details
WHERE productID = 35;
