use myFirstDB;
select * from student;
create table course(
cID int identity(1,1) primary key,
cName varchar(100) not null,
cDuration_Sessions int
);
select * from course;
alter table student add cid int references course(cID);
insert into course(cName,cDuration_Sessions)
values
('SQL',16),
('JavaScript',12),
('BootStrap',8),
('AngularJS',6),
('MS Office',20),
('Web Designing',30)
update student
set cID = 1
where stdID=2; 
insert into student(stdName,stdCNIC,contact,email,DOB,city,country,cid)
values('Mubashir','42101-2345678-9','0300-2218624','mubashirrehman@gmail.com','2003-12-17','Karachi','Pakistan',1);
select * from student;
insert into student(stdName,stdCNIC,contact,email,DOB,city,country,cid)
values('Faisal','42101-2345678-9','0316-2738199','faisalidea4@gmail.com','2000-2-20','Karachi','Pakistan',1);

insert into student(stdName,stdCNIC,contact,email,DOB,city,country,cid)
values('Zainab','42201-1234567-2','0335-3266391','zainabkhanz@hotmail.com','1992-06-01','Karachi','Pakistan',1);

insert into student(stdName,stdCNIC,contact,email,DOB,city,country,cid)
values('Yasmeen','42101-1492977-2','0340-0859254','yasmeenibrahim137@gmail.com','1998-11-13','Karachi','Pakistan',1);

delete 
from student
where stdID=2;

create trigger trStdInsert
on student
after insert
as 
select * from student;