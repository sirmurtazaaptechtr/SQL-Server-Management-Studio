use Northwind;
select * from Products;
select Products.ProductName,Suppliers.CompanyName,Categories.CategoryName,Products.UnitPrice
from Products
join Categories on Products.CategoryID = Categories.CategoryID
join Suppliers on Products.SupplierID = Suppliers.SupplierID
order by Products.ProductName;

create procedure ProductsNames
as
select Products.ProductName,Suppliers.CompanyName,Categories.CategoryName,Products.UnitPrice
from Products
join Categories on Products.CategoryID = Categories.CategoryID
join Suppliers on Products.SupplierID = Suppliers.SupplierID
order by Products.ProductName
go

execute ProductsNames;
drop procedure ProductsNames;
execute ProductsNames;

create procedure ProductsByNames @PName nvarchar(40)
as
select Products.ProductName,Suppliers.CompanyName,Categories.CategoryName,Products.UnitPrice
from Products
join Categories on Products.CategoryID = Categories.CategoryID
join Suppliers on Products.SupplierID = Suppliers.SupplierID
where Products.ProductName like @PName
order by Products.ProductName
go

execute ProductsByNames @PName = '%';
execute ProductsByNames @PName = 'C%';
execute ProductsByNames @PName = 'Chai';