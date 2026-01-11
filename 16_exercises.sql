--Select all records from data_src which came from the journal named 'Food Chemistry'.

SELECT * 
FROM data_src
WHERE journal = 'Food Chemistry';

--Select record from nutr_def where nutrdesc is Retinol.

SELECT * 
FROM nutr_def
WHERE nutrdesc = 'Retinol';

--Find all the food descriptions (food_des) records for manufacturer Kellogg, Co. (must include punctuation for exact match).

SELECT * 
FROM food_des
WHERE manufacname = 'Kellogg, Co.';

--Find the number of records in data sources (data_src) that were published after year 2000 (it is numeric field).

SELECT COUNT(*) 
FROM data_src
WHERE year = 2000;

--Find the number of records in food description that have a fat_factor < 4.

SELECT COUNT(*) 
FROM food_des
WHERE fat_factor < 4;

--Select all records from weight table that have gm_weight of 190.

SELECT * 
FROM weight
WHERE gm_wgt = 190;

--Find the number of records in food description table that have pro_factor greater than 1.5 and fat_factor less than 5.

SELECT COUNT(*)
FROM food_des
WHERE pro_factor > 1.5 AND fat_factor < 5;

--Find the record in data source table that is from year 1990 and the journal Cereal Foods World.

SELECT *
FROM data_src
WHERE year = 1990 AND journal = 'Cereal Foods World';

--Select count of weights where gm_wgt is greater than 150 and less than 200.

SELECT COUNT(*)
FROM weight
WHERE gm_wgt BETWEEN 150 AND 200;

--Select the records in nutr_def table (nutrition definitions) that have units of kj or kcal.

SELECT *
FROM nutr_def
WHERE units IN ('kj','kcal');

--Select all records from data source table (data_src) that where from the year 2000 or the journal Food Chemistry.

SELECT *
FROM data_src
WHERE year >= 2000 OR journal = 'Food Chemistry';

--How many records in food_des are not about food group Breakfast Cereals.  The field fdgrp_cd is an id field and you will have to find it in fd_group for fddrp_desc = ' Breakfast Cereals'.

SELECT COUNT(*)
FROM food_des
WHERE NOT fdgrp_cd = '0800';

--Find all the records in data sources that where between 1990 and 2000 and either 'J. Food Protection' or 'Food Chemistry'.

SELECT *
FROM data_src
WHERE (year BETWEEN 1990 AND 2000) AND (journal = 'J. Food Protection' OR journal = 'Food Chemistry');

--Use BETWEEN syntax to find number of weight records that weight between 50 and 75 grams (gm_wgt).

SELECT COUNT(*)
FROM weight
WHERE gm_wgt BETWEEN 50 AND 75;

--Select all records from the data source table that were published in years 1960,1970,1980,1990, and 2000.  Use the IN syntax.

SELECT *
FROM data_src
WHERE year IN (1960,1970,1980,1990,2000);
