-- UPDATE Syntax

UPDATE table_name
SET column1=value1, column2=value2, ....
WHERE condition;

--DON'T FORGET WHERE !!!!

/*Update the Order We Created They need it by 2017-09-20 (10 days earlier), and the 
shipping cost will increase to $50 */

UPDATE orders
SET requireddate = '2017-09-20', freight = 50
WHERE orderid = 11078;

/*They also want 40 Queso Cabrales instead of 20 and we are giving a discount of .05.
Trick is the WHERE clause to make sure we update the right order details since
there is no order detail id field.*/

UPDATE order_details
SET quantity = 40, discount = 0.5
WHERE orderid = 11078;