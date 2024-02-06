use Northwind;
select * from Customers;

create database xyz_db;
use xyz_db;

create table users (
id int identity(1,1) primary key,
firstname varchar(50) not null,
lastname varchar(50) not null,
email varchar(100) not null unique,
address varchar(100),
city varchar(30) default 'Karachi',
country varchar(30) default 'Pakistan'
);

insert into users(firstname,lastname,email)
values 
('Ahsan','Ilyas','ahsankhan90@gmail.com'),
('Yaseen','Afridi','afridiy164@gmail.com'),
('Saqlain','Dejwani','saqlaindejwani@gmail.com');

select * from users;

update users
set address = 'Dhoraji'
where id = 3;

insert into users(firstname,lastname,email)
values 
('Aasdfahsan','fadfaIlyas','ahasdfasdsankhan90@gmail.com');

delete 
from users 
where id = 4;