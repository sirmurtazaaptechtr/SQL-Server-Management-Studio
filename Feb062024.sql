create database Feb062024_db;

use Feb062024_db;

create table users(
id int identity(1,1) primary key,
name varchar(255) not null,
email varchar(255) unique,
dob date,
city varchar(100) default('Karachi'),
country varchar(100) check(country = 'Pakistan')
);

alter table users
drop constraint
DF__users__city__38996AB5;

alter table users
drop constraint
CK__users__country__398D8EEE;

alter table users
drop column
city,country;

alter table users
alter column
dob datetime;

create table cities(
id int identity(1,1) primary key,
city_name varchar(100) not null,
country varchar(100) not null
constraint UC_City unique(city_name,country)
);

alter table users
add 
city_id int references cities(id);

insert into cities
values
('Karachi','Pakistan');

insert into users
values
('Anshara Rizwan','anshararizwan48@gmail.com','03-Nov-2004',null);

select * from cities;

select * from users;

update users
set
city_id = 1
