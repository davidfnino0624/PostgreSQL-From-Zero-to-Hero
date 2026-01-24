/* Join (with inner join) together person, personphone, businessentity and phonenumber 
type in the persons schema.  Return first name, middle name, last name, phone number
and the name of the phone number type (home, office, etc.)  Order by business entity
id descending.*/

SELECT 
	person.firstname, 
	person.middlename, 
	person.lastname, 
	personphone.phonenumber, 
	phonenumbertype.name
FROM person.person
JOIN person.personphone USING (businessentityid)
JOIN person.businessentity USING (businessentityid)
JOIN person.phonenumbertype USING (phonenumbertypeid)
ORDER BY businessentityid DESC;

/* Join (Inner) productmodel, productmodelproductiondescriptionculture, 
productdescription and culture from the production schema.  Return the 
productmodel name, culture name, and productdescription description ordered by 
the product model name.*/

SELECT 
	productmodel.name,
	culture.name,
	productdescription.description
FROM production.productmodel
JOIN production.productmodelproductdescriptionculture USING (productmodelid)
JOIN production.productdescription USING (productdescriptionid)
JOIN production.culture USING (cultureid)
ORDER BY productmodel.name ASC;

/* Add a join to previous example to production.product and return the product name 
field in addition to other information.*/

SELECT 
	productmodel.name,
	culture.name,
	productdescription.description,
	product.name
FROM production.product
JOIN production.productmodel USING (productmodelid)
JOIN production.productmodelproductdescriptionculture USING (productmodelid)
JOIN production.productdescription USING (productdescriptionid)
JOIN production.culture USING (cultureid)
ORDER BY productmodel.name ASC;

/* Join product and productreview in the schema table.  Include every record from 
product and any reviews they have.  Return the product name, review rating and 
comments.  Order by rating in ascending order. */

SELECT name, rating, comments
FROM production.product
LEFT JOIN production.productreview USING (productid)
ORDER BY rating ASC;

/*Use a right join to combine workorder and product from production schema to bring
back all products and any work orders they have.  Include the product name and 
workorder orderqty and scrappedqty fields.  Order by productid ascending.*/

SELECT product.productid, name, orderqty, scrappedqty
FROM production.workorder 
RIGHT JOIN production.product USING (productid)
ORDER BY product.productid ASC;