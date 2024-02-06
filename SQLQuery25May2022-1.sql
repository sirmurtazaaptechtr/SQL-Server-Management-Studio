use Northwind;
SELECT * FROM Customers
WHERE CompanyName LIKE 'a%';
SELECT * FROM Customers
WHERE CompanyName LIKE '%or%';
SELECT * FROM Customers
WHERE CompanyName LIKE '_r%';
SELECT * FROM Customers
WHERE CompanyName LIKE '%o_n%';
SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';

SELECT distinct Country FROM Customers;
SELECT * FROM Customers WHERE Country IN (SELECT Country FROM Suppliers);
select * from Suppliers where Country in (select Country from Customers);

select * from Products;
SELECT * FROM Products WHERE UnitPrice BETWEEN 1 AND 10 
order by CategoryID;
SELECT * FROM Products WHERE UnitPrice BETWEEN 1 AND 10 AND CategoryID NOT IN (1,2,3)
order by CategoryID;
SELECT * FROM Products WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Ikura'
ORDER BY ProductName;
SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

select * from Customers;
select CompanyName as CustomerName from Customers;
SELECT CompanyName AS Company, ContactName AS [Contact Person]
FROM Customers;
SELECT CompanyName as Company,
Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS [Complete Address]
FROM Customers;