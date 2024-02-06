use Northwind;

create procedure SelectAllCustomers
as
select * from customers;

execute SelectAllCustomers;

ALTER procedure SelectAllCustomers
as
select ContactName from customers;

execute SelectAllCustomers;

drop procedure SelectAllCustomers;

CREATE PROCEDURE SelectCustomersByCity @City nvarchar(15)
AS
SELECT * FROM Customers WHERE City = @City;

execute SelectCustomersByCity @city = 'London';