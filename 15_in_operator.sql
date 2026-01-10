--this query shows how many suppiers are located in Germany, France, Spain or Italy

SELECT COUNT(*)
FROM suppliers 
WHERE country IN ('Germany', 'France', 'Spain', 'Italy');

-- how many products do we hace in categoryid 1, 4, 6 or 7

SELECT COUNT(*)
FROM products 
WHERE categoryid IN (1, 4, 6, 7);