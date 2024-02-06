use MyDB;
select * from Dept;
select * from person;
select FullName,DOB from person;

backup database MyDB
to disk ='D:\backup\MyDB.bak';

backup database MyDB
to disk ='D:\backup\MyDB.bak'
WITH DIFFERENTIAL;


truncate table person;

drop table person;

truncate table dept;

drop table dept;

use master;

drop database MyDB;

restore database MyDB
from disk = 'D:\backup\MyDB.bak';

restore database MyDB
from disk = 'D:\backup\MyDB.bak'
with replace;