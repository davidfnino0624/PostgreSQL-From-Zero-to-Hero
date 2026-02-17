-- DELETE Syntax

DELETE FROM table_name
WHERE condition;

-- DON'T FORGET WHERE !!!!

/*DELETE Order_Detail
They cancel the order, so let's first delete the order_detail.*/

DELETE FROM order_details
WHERE orderid = 11078;

/*Delete the order for the customer using the order id.*/

DELETE FROM orders
WHERE orderid = 11078;
