use northwind;

select * from customers;

update Customers
set Address = 'Jamshed Road', City = 'Karachi', Country = 'Pakistan'
where CustomerID = 'ALFKI';

update Customers
set Address = 'Obere Str. 57', City = 'Berlin', Country = 'Germany'
where CustomerID = 'ALFKI';

select * from Products;

select max(UnitPrice) from Products;

select min(UnitPrice) from Products;

select * from Products
where UnitPrice = (select max(UnitPrice) from Products);

select * from Products
where UnitPrice = (select min(UnitPrice) from Products);

SELECT * FROM Customers
WHERE ContactName LIKE 'a%';

SELECT * FROM Customers
WHERE ContactName LIKE '%es';

SELECT * FROM Customers
WHERE ContactName LIKE '%mer%';

SELECT * FROM Customers
WHERE City LIKE '_ondon';

SELECT * FROM Customers
WHERE City LIKE 'L___on';

SELECT * FROM Customers
WHERE ContactName LIKE '[bsp]%'
order by ContactName;

SELECT * FROM Customers
WHERE ContactName LIKE '[a-f]%'
ORDER BY ContactName;

SELECT * FROM Customers
WHERE ContactName LIKE 'a___%';

SELECT * FROM Customers
WHERE ContactName LIKE '_r%';

update Customers
set ContactName = 'Ann Devon'
where CustomerID = 'EASTC';

