use std_DB;

create table course(
cID int identity(1,1) primary key,
cName varchar(max),
"cDuration(days)" int,
cFee money
);

alter table course
alter column cName varchar(max) not null;

alter table course
add constraint CHK_DurFee check ("cDuration(days)" > 0 and cFee > 0);

alter table students
ADD CONSTRAINT df_City default 'Karachi' for city;
alter table students
ADD CONSTRAINT df_Provance default 'Sindh' for Provance;
alter table students
ADD CONSTRAINT df_countary default 'Pakistan' for Country;


create index idx_street
on students (Street);

alter table Students
add cid int foreign key references course(cID);

insert into course(cName,"cDuration(days)",cFee)
values('Pre-Medical',730,2400);

insert into course(cName,"cDuration(days)",cFee)
values
('Pre-Engineering',730,1800),
('General Science',730,3400),
('Humanities',730,1200),
('Commerce',730,1500);

select *
from course;

insert into students(FullName,FatherName,cid)
values('Zaki Usman','Usman Ghouri',3);

insert into students(FullName,FatherName,cid)
values
('Sardar Uzair','Muhammad Nazeer',3),
('Habib ur Rehman','Muhammad Junaid',3),
('Sadaf','Muhammad Hanif',2),
('Haleema Faisal','Muhammad Faisal',5);

select * 
from students;

truncate table students;