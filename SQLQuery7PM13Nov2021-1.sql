use Northwind;

select * from Customers;

select * from Orders;

select odr.OrderID,odr.CustomerID,cust.ContactName,odr.OrderDate
from Orders odr
right join
Customers cust
on Odr.CustomerID = Cust.CustomerID;

create procedure odrWithCustName
as
select odr.OrderID,odr.CustomerID,cust.ContactName,odr.OrderDate
from Orders odr
right join
Customers cust
on Odr.CustomerID = Cust.CustomerID;


exec odrWithCustName;

select ContactName,Phone,Fax
from Customers
where CustomerID =(select CustomerID from Orders where OrderID = 10250);

create procedure findCustName @orderID int
as
select ContactName,Phone,Fax
from Customers
where CustomerID =(select CustomerID from Orders where OrderID = @orderID);

exec findCustName @orderID = 10251;

exec odrWithCustName;

use STD_R;

select * from STUDENTS;

delete from STUDENTS where STDID=7;

create trigger tri_del
on STUDENTS
after delete
as select * from STUDENTS;

select * from students;

delete from STUDENTS where STDID = 6;



