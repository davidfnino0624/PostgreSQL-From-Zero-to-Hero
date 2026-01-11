-- this command will help you to connect directly to a DB from command line

psql --port=5432 --host=localhost --dbname=Northwind --username=postgres

-- then we could execute all the querys as we were running into the pgAdmin tool

SELECT * FROM orders;
