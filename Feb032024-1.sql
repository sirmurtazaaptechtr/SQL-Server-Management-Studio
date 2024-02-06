create database Feb032024_db;

use Feb032024_db;

create table students(
id int identity(1,1) primary key,
name varchar(255) not null,
email varchar(255),
gender varchar(25),
dob datetime
);

alter table students
drop column
name;

alter table students
add
firstname varchar(50) not null,
middlename varchar(50),
lastname varchar(50);

select * from students;

insert into students
values
('amoiz2074@gmail.com','male','26-Nov-2001','Moiz','ur','Rehman');

insert into students (firstname)
values
('Hiba');

insert into students
values
('muhammadali@gmail.com','male','08-Apr-2004','Muhammad',null,'Ali'),
('affanmansoor@gmail.com','male','10-Mar-2006','Affan',null,null),
('shoaibfaisal98@gmail.com','male','04-Feb-2004','Shoaib','Faisal','Wazir'),
('junaidkamran89@gmail.com','male','29-Dec-2006','Junaid',null,'Kamran'),
('muhammadali@gmail.com','male','08-Apr-2004','Muhammad',null,'Ali');

update students
set 
gender = 'female', 
dob = '06-Jul-2006'
where 
id = 2;

delete from students
where id = 2

truncate table students;

drop table students;

drop database Feb032024_db;


