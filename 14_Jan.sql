-- 14 JAN --
use kartikdb;

desc stu_countries_new;

-- FK at the time of table creation --

create table states_new (state_id int primary key auto_increment, 
state_name varchar(20), cnt_id int, 
foreign key(cnt_id) references stu_countries_new(country_id));

desc states_new;

select * from stu_countries_new;

insert into states_new (state_name, cnt_id) values ('Maharashtra', 1), ('Gujrat', 1), 
('Manchester', 2);

select * from states_new;


-- FK in an xisting table --

desc registration;

alter table registration add (countryid int, foreign key (countryid) 
references stu_countries_new(country_id));


-- UNIQUE KEY 	--

-- UK at table creation -- 

create table city(city_id int primary key auto_increment, city_name varchar(20), st_id int, 
foreign key (st_id) references states_new(state_id), unique(city_name));

desc city;

insert into city (city_name, st_id) values ('Pune', 1), ('Mumbai', 1), ('Ahmedabad', 2);

select * from city;


-- UK in existing table --

alter table registration add unique(user_email);
desc registration;


-- NOT NULL --

-- NN at table creation -- 

create table names(name_id int primary key auto_increment, stu_name varchar (20) not null, cty_id int);

insert into names (stu_name, city_id) values('Rock', 1), ('Tom', 1);


-- NN after table creation -- 

alter table stu_countries_new modify country_name varchar(20) not null;
desc country;

insert into stu_countries_new(country_name) values(null);
insert into stu_countries_new(country_name) values('Spain');

select * from stu_countries_new;


-- CHECK --

alter table registration add (age int, check(age>=18));

insert into registration (uname, user_email, countryid, age) values ('Kartik', 'kartik@gmail.com', 1, 22);
#insert into registration (uname, user_email, countryid, age) values ('Tom', 'tom@gmail.com', 1, 2);

select * from registration;


