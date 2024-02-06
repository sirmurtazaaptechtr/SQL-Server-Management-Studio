create database MyCompany;

use myCompany;

create table agents(
AGENT_CODE varchar(100) Primary key,
AGENT_NAME varchar(200),
WORKING_AREA varchar(200),
COMMISSION float(24),
PHONE_NO varchar(200),
COUNTRY varchar (200) default ('Pakistan')
);

insert into agents
(AGENT_CODE, AGENT_NAME,WORKING_AREA,COMMISSION, PHONE_NO, COUNTRY)
values
('A007','Ramasundar','Bangalore',0.15,'077-25814763',Null),
('A003','Alex', 'London',0.13,'075-12458969',Null),
('A008','Alford','New York',0.12,'044-25874365',Null),
('A011','Ravi Kumar','Bangalore',0.15,'077-45625874',Null),
('A010','Santakumar','Chennai',0.14,'007-22388644',Null),
('A012','Lucida','San Jose',0.12,'044-52981425',Null),
('A005','Anderson','Brisban',0.13,'045-21447739',Null),
('A001','Subbarao','Bangalore',0.14,'077-12346674',Null),
('A002','Mukesh','Mumbai',0.11,'029-12358964',Null),
('A006','McDen','London',0.15,'078-22255588',Null),
('A004','Ivan','Torento',0.15,'008-22544166',Null),
('A009','Benjamin','Hampshair',0.11,'008-22536178',Null);

insert into agents
(AGENT_CODE, AGENT_NAME,WORKING_AREA,COMMISSION, PHONE_NO)
values
('A013','Rabeea','Karachi',0.10,'021-34919046');

select *
from agents;

create table orders(
ORD_NUM int primary key,
ORD_AMOUNT money,
ADVANCE_AMOUNT money,
ORD_DATE date,
CUST_CODE varchar(100),
AGENT_CODE varchar(100) REFERENCES agents(AGENT_CODE),
ORD_DESCRIPTION varchar(1000)
);

insert into orders
(ORD_NUM,ORD_AMOUNT,ADVANCE_AMOUNT,ORD_DATE,CUST_CODE,AGENT_CODE)
values
(200114,3500,2000,'15-AUG-08','C00002','A008'),
(200122,2500, 400,'16-SEP-08','C00003','A004'),
(200118, 500, 100,'20-JUL-08','C00023','A006'),
(200119,4000, 700,'16-SEP-08','C00007','A010'),
(200121,1500, 600,'23-SEP-08','C00008','A004'),
(200130,2500, 400,'30-JUL-08','C00025','A011'),
(200134,4200,1800,'25-SEP-08','C00004','A005'),
(200108,4000, 600,'15-FEB-08','C00008','A004'),
(200103,1500, 700,'15-MAY-08','C00021','A005'),
(200105,2500, 500,'18-JUL-08','C00025','A011'),
(200109,3500, 800,'30-JUL-08','C00011','A010'),
(200101,3000,1000,'15-JUL-08','C00001','A008'),
(200111,1000, 300,'10-JUL-08','C00020','A008'),
(200104,1500, 500,'13-MAR-08','C00006','A004'),
(200106,2500, 700,'20-APR-08','C00005','A002'),
(200125,2000, 600,'10-OCT-08','C00018','A005'),
(200117, 800, 200,'20-OCT-08','C00014','A001'),
(200123, 500, 100,'16-SEP-08','C00022','A002'),
(200120, 500, 100,'20-JUL-08','C00009','A002'),
(200116, 500, 100,'13-JUL-08','C00010','A009'),
(200124, 500, 100,'20-JUN-08','C00017','A007'),
(200126, 500, 100,'24-JUN-08','C00022','A002'),
(200129,2500, 500,'20-JUL-08','C00024','A006'),
(200127,2500, 400,'20-JUL-08','C00015','A003'),
(200128,3500,1500,'20-JUL-08','C00009','A002'),
(200135,2000, 800,'16-SEP-08','C00007','A010'),
(200131, 900, 150,'26-AUG-08','C00012','A012'),
(200133,1200, 400,'29-JUN-08','C00009','A002'),
(200100,1000, 600,'08-JAN-08','C00015','A003'),
(200110,3000, 500,'15-APR-08','C00019','A010'),
(200107,4500, 900,'30-AUG-08','C00007','A010'),
(200112,2000, 400,'30-MAY-08','C00016','A007'),
(200113,4000, 600,'10-JUN-08','C00022','A002'),
(200102,2000, 300,'25-MAY-08','C00012','A012');

select *
from agents;

select *
from orders;

select *
from orders
where AGENT_CODE in (select AGENT_CODE
from agents
where WORKING_AREA='London');

select AGENT_CODE
from agents
where WORKING_AREA='London' ;

SELECT ord_num,ord_amount,ord_date,
cust_code, agent_code
FROM orders
WHERE agent_code NOT IN(
SELECT agent_code FROM agents
WHERE working_area='Bangalore')
order by AGENT_CODE;
