use Northwind;
select *
from Employees;

select LastName,HireDate
from Employees;

select * from Customers;
select City from Customers;
select distinct City from Customers;
select Country from Customers;
select distinct Country from Customers;
select COUNT(distinct Country) from Customers;
select COUNT(distinct Country) as "Total Countries" from Customers;

select * 
from Customers
where Country = 'Germany';

select * from Customers where CustomerID = 'BOTTM';

SELECT * FROM Customers
WHERE City IN ('Paris','London');

SELECT * FROM Customers
WHERE ContactName LIKE 'A__%';

SELECT * FROM Customers
WHERE ContactName LIKE '% Anders';

select * from Products;

select * from Products where Discontinued > 0;

SELECT * FROM Products
WHERE UnitPrice BETWEEN 1 AND 10;

select * from Customers
where Country = 'Brazil' AND City = 'Rio de Janeiro' OR city = 'Sao Paulo' ;
--Or you may write above query like below
select * from Customers
where Country = 'Brazil' and City in ('Rio de Janeiro', 'Sao Paulo') ;

select * from Customers where NOT Country IN( 'Brazil','Mexico');
--Or
select * from Customers where Country NOT IN( 'Brazil','Mexico');
--Or
SELECT * FROM Customers WHERE NOT Country='Brazil' AND NOT Country='Mexico';

