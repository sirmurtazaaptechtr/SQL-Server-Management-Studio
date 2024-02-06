use Northwind;

select *
from Customers;

SELECT A.ContactName AS CustomerName1, B.ContactName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE 
A.CustomerID <> B.CustomerID 
AND 
A.City = B.City
ORDER BY A.City;
