create table results(
tid int identity(1,1) primary key,
sid int foreign key references students(stdID),
tdate date,
eng1 int,
urd1 int,
che int,
pakStd int,
sindhi int,
bioORcom int,
p_che int,
p_bioORcom int,
eng2 int,
urd2 int,
phy int,
mat int,
isl int,
p_phy int,
total int,
per int
);

create trigger setTotalnPer 
on results for INSERT, UPDATE, DELETE
as
select * from results;

select *
from students;

insert into students (FullName,FatherName,cid,gender)
values('Hamza Malik','Maqsood Hussain',1,'male');

insert into results (sid,tdate,eng1,eng2,urd1,urd2,che,phy,mat,bioORcom,
pakStd,isl,sindhi,p_bioORcom,p_che,p_phy)
values(2,'2023-01-14',10,20,30,40,50,60,70,80,90,70,60,20,20,20);

update results
set p_bioORcom = 20
where tid=1;