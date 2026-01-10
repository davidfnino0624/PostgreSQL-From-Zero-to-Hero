-- this query show how many customers are not in france

SELECT COUNT(*)
FROM customers
WHERE NOT country = 'France';

-- this query show how many suppliers are not in USA

SELECT COUNT(*)
FROM suppliers
WHERE NOT country = 'USA';