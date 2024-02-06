backup database Northwind
to disk = 'D:\SQLServerBackup\Northwind.bak';
backup database PetShopDb
to disk = 'D:\SQLServerBackup\PetShopDb.bak';
backup database AdventureWorks2019
to disk = 'D:\SQLServerBackup\AdventureWorks2019.bak';

drop database Northwind;
drop database PetShopDb;
drop database AdventureWorks2019;

restore database Northwind
from disk = 'D:\SQLServerBackup\Northwind.bak';
restore database PetShopDb
from disk = 'D:\SQLServerBackup\PetShopDb.bak';
restore database AdventureWorks2019
from disk = 'D:\SQLServerBackup\AdventureWorks2019.bak';

use Northwind;

create trigger dbo.t_select_insert
on Customers
after insert
as
select * from customers;

insert into Customers (CustomerID,CompanyName)
values ('ZFNSN','Zaffer and Sons');

drop trigger dbo.t_select_insret;

insert into Customers (CustomerID,CompanyName)
values ('NONSN','Noman and Sons');
