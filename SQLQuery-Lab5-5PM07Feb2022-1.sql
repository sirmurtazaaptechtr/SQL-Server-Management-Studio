use Northwind;

select * 
from Customers;

select distinct City
from customers;

select *
from Customers
where CustomerID='FURIB';

select *
from Customers
where City='London';

select *
from Customers
where Country='Mexico' and ContactTitle='Owner';

select *
from Customers
where Country='Mexico' or ContactTitle='Owner';

SELECT * FROM Customers
WHERE NOT Country in ('Germany','Mexico','Spain','USA');

SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='Mexico'  AND NOT Country='Spain' AND NOT Country='USA';

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT * FROM Customers
ORDER BY Country;

SELECT * FROM Customers
ORDER BY Country DESC;

SELECT * FROM Customers
ORDER BY Country, ContactName;

SELECT * FROM Customers
ORDER BY Country ASC, ContactName DESC;






