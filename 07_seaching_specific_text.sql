-- allow us to see all the suppliers from the selected city as berlin

SELECT companyname
FROM suppliers
WHERE city = 'Berlin';

-- allow us to find all customer names and contacts that we have in mexico

SELECT companyname, contactname
FROM customers
WHERE country = 'Mexico';