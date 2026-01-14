--Return the name, weight, and productnumber of  all the products  ordered by weight from lightest to heaviest.  (Remember to use schema to reach table.  It is in production schema.)

SELECT name, weight, productnumber 
FROM production.product
ORDER BY weight ASC;

--Return the records from productvendor for productid = 407 in order of averageleadtime from shortest to longest. (You'll have to figure out which schema this is in.)

SELECT * 
FROM purchasing.productvendor
WHERE productid = 407
ORDER BY averageleadtime ASC;

--Find all the salesorderdetail records for productid 799 and order them by largest orderqty to smallest.

SELECT * 
FROM sales.salesorderdetail
WHERE productid = 799
ORDER BY orderqty DESC;

--What is the largest  discount percentage offered in the specialoffer table.

SELECT MAX(discountpct)
FROM sales.specialoffer;

--Find the smallest number of sickleavehours for an employee.

SELECT *
FROM humanresources.employee
ORDER BY sickleavehours ASC
LIMIT 1;

--Find the largest rejected quantity in the purchaseorderdetail table.

SELECT *
FROM purchasing.purchaseorderdetail
ORDER BY rejectedqty DESC
LIMIT 1; 

--Find the average rate from employeepayhistory table.

SELECT AVG(rate) AS average_payment
FROM humanresources.employeepayhistory;

--Find the average standardcost in the productcosthistory table for productid 738.

SELECT AVG(standardcost) AS average_standardcost
FROM production.productcosthistory
WHERE productid = 738;

--Find the sum of scrappedqty from the workorder table for productid 529.

SELECT SUM(scrappedqty) AS SUM_scrappedqty
FROM production.workorder;

--Find all vendor names with a name that starts with letter G.

SELECT name
FROM purchasing.vendor
WHERE name LIKE 'G%';

--Find all vendor names that have the word Bike in them.

SELECT name
FROM purchasing.vendor
WHERE name LIKE '%Bike%';

--Search the person table for every firstname that has t as a second letter.

SELECT firstname
FROM person.person
WHERE firstname LIKE '_t%';

--Return the first 20 records from emailaddress table.

SELECT *
FROM person.emailaddress
LIMIT 20;


--Return the first 2 records from productcategory table.

SELECT *
FROM production.productcategory
LIMIT 2;


--How many product records have a missing weight value.

SELECT COUNT(*)
FROM production.product
WHERE weight IS NULL;


--How many person records have an additionalcontactinfo field that has a value.

SELECT COUNT(*)
FROM person.person
WHERE additionalcontactinfo IS NOT NULL;