use sms;
select * from student;

alter table student 
add constraint un_stdID unique(student_id);

insert into 
student(student_id,student_name)
values(null,'Saleem');

alter table student
drop constraint un_stdID;

delete from student
where student_name ='Saleem';

alter table student
alter column  student_id int not null;

create table course(
course_Id int identity(1,1) primary key,
course_name varchar(8000) not null
);

create table std_take_course
(	
	std_id int FOREIGN KEY REFERENCES stdInfo(stdID),
	c_id int FOREIGN KEY REFERENCES course(course_id)
);
alter table std_take_course
alter column std_id int not null;

alter table std_take_course
alter column c_id int not null;

alter table std_take_course
add constraint PK_stc
primary key (std_id,c_id);






