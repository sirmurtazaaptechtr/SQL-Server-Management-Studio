use Feb062024_db;

select * from users;

select * from cities;

insert into users
values
('Hiba Farhan','hibakhan1587@gmail.com','06-Jul-2006',1),
('Shoaib Faisal','shoaibfaisal68@gmail.com','04-Feb-2004',1),
('Moiz ur Rehman','amoiz2074@gmail.com','26-Nov-2001',1),
('Affan Mansoor','affan26@gmail.com','10-Mar-2006',1),
('Muhammad Saad','muhammadsaad@gmail.com','01-Apr-2006',1),
('Khizar Mansoor','kizarmansoor21@gmail.com','13-Dec-2005',1),
('Junaid Kamran','junaidkamran89@gmail.com','29-Dec-2006',1),
('Mujtaba','mujtabakhanani@gmail.com','13-Feb-2002',1);

backup database Feb062024_db
to disk = 'd:\backup\Feb062024_db.bak';

use master;

drop database Feb062024_db;

restore database my_db
from disk = 'd:\backup\Feb062024_db.bak';

use my_db;

select * from users;

drop database my_db;