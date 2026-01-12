-- basic sintax

SELECT <column1>,<column2>, ...
FROM <table_name>
WHERE <column> LIKE <pattern>;

--Patterns With %
--% stands for zero, one or more characters
--WHERE suppliername LIKE 'a%'; all suppliers names that start with a
--WHERE suppliername LIKE '%e' all supplier names that end with e
--WHERE suppliername LIKE '%bob%' - all supplier names with bob in name somewhere
--WHERE suppliername LIKE 'A%i' - all supplier names that start with A and end with i

-- What Customers Have a contact whose first name starts with D?

SELECT *
FROM customers
WHERE contactname LIKE 'D%';

--Patterns With_
--stands for any single character
--WHERE suppliername LIKE '_a%'; has a as second letter
--WHERE suppliername LIKE 'E_%_%' starts with E and has at least 2 other letters

-- Which of Our Suppliers Have 'or' as the 2nd and 3rd letters in the company name

SELECT companyname
FROM suppliers
WHERE companyname LIKE '_or%';

-- Which customer company names end in 'er'?

SELECT companyname
FROM customers
WHERE companyname LIKE '%er';