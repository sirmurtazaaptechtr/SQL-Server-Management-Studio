use Northwind;
select * from Customers;
select City,COUNT(CustomerID) from Customers group by City;

create procedure SACustomers
AS
select * from Customers
GO;
exec SACustomers;

drop procedure SACustomers;
drop procedure SelectAllCustomers;

create procedure SelectAllCustomers
AS
Select CustomerID,CompanyName,ContactName,ContactTitle,
CONCAT(Address,', ',City,', ',PostalCode,', ',Country) as MailAddress,Phone 
from Customers
GO;
exec SelectAllCustomers;

create procedure SelectCustomerofCity @City nvarchar(15)
AS
Select CustomerID,CompanyName,ContactName,ContactTitle,
CONCAT(Address,', ',City,', ',PostalCode,', ',Country) as MailAddress,Phone 
from Customers
where City = @City;
exec SelectCustomerofCity @City =  'Madrid';
exec SelectCustomerofCity @City =  'London';
exec SelectCustomerofCity @City =  'Buenos Aires';
exec SelectCustomerofCity @City =  'México D.F.';
exec SelectCustomerofCity @City =  'Sao Paulo';


use MyDB;

select * from person;

insert into 
Person(FullName,Gender,DOB,Contact,deptID)
values('Salman','Male','15-Aug-2003','0300-0001010',5);

create trigger dispInsert
on Person
AFTER INSERT
AS
select * from Person;

insert into 
Person(FullName,Gender,DOB,Contact,deptID)
values('Sahiba','Female','27-Jan-2003','0300-0001010',1);