create database sms;
use sms;
create table student
(
student_id int,
student_name varchar(8000),
student_address varchar(8000)
);
select *
from student;
alter table student add dob date;
alter table student drop column student_address;
alter table student add HouseOrFlatNo varchar(8000);
alter table student add StreetOrSecOrBlock varchar(8000);
alter table student add City varchar(8000),
State varchar(8000),Country varchar(8000); 
alter table student drop column City, State, Country;
drop table student;
drop database SMS;