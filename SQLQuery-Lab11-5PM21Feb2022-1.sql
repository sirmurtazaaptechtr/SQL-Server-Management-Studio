use Northwind;

select * from Customers;

--Sales Representative

update Customers
set ContactTitle='Sales Representative'
where CustomerID='ALFKI';

create trigger update_ShowAll
on Customers
after update
as
select * from Customers;