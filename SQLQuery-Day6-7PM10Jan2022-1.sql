--subQuery
use Northwind;
select *
from Products;
select *
from [Order Details];
select *
from [Order Details]
where ProductID=11;
select ProductID
from [Order Details]
where Quantity>=48;
select *
from Products
where ProductID 
in (
select ProductID
from [Order Details]
where Quantity>=100
);
--StoredProcedures
select *
from Customers;

create procedure selectAllCust
as select * from Customers;

exec selectAllCust;

create procedure SelectCustofCity @City nvarchar(15)
as select * from Customers where City = @City;

exec SelectCustofCity @City='London';
exec SelectCustofCity @City='Madrid';