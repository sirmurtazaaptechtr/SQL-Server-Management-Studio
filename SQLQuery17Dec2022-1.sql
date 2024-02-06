sp_renamedb students, std_DB;
use std_DB;

create table students(
stdID int identity(1,1) primary key,
FullName varchar(max) not null,
FatherName varchar(max) not null,
DOB date,
Phone varchar(200),
email varchar(200)
);

alter table students
add Mail_Address varchar(max);

alter table students
drop column Mail_Address;

alter table students
add 
Street varchar(100),
City varchar(100),
Provance varchar(100),
Country varchar(100);

backup database ProductionTracking 
to disk = 'D:\backup\ProductionTracking.bak';

backup database std_DB 
to disk = 'D:\backup\std_DB.bak';

backup database ProductionTracking 
to disk = 'D:\backup\ProductionTracking.bak'
with differential;

drop table students;

use productiontracking;

drop database std_DB;

drop table ProductionUnits,rawmaterials,lot;

use master;

drop database ProductionTracking;