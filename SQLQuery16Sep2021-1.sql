use sms;

insert into student
values(1,'Ramsha','18-Aug-2002','401','Street 4','Karachi','Sindh','Pakistan');

insert into student(student_id,student_name,dob)
values(2,'Rabeea','19-Apr-1999');

insert into student(dob,student_id,City,student_name)
values('7-Nov-2000',3,'Karachi','Tooba');

insert into student(dob,student_id,city,student_name)
values('30-nov-2003',4,'karachi','Ardil');

insert into student(dob,student_id,city,student_name)
values('24-may-2004',5,'karachi','wasay');

insert into student(dob,student_id,city,student_name)
values('31-July-2001',6,'Karachi','Syed Saad');

select *
from student;

truncate table student;

delete from student
where student_id >= 3;