use kartikdb;

-- ADD PK WHILE TABLE CREATION --
create table registration(reg_id int primary key, uname varchar(20), 
user_email varchar(30));

desc registration;

insert into registration(reg_id, uname, user_email) values (1, 'John', 'john@gmail.com'), 
(2, 'Roman', 'roman@gmail.com');

select * from registration;


-- ADD PK AFTER TABLE CREATION --

alter table employee_details add primary key(emp_id);

desc employee_details;


-- AUTO INCREMENT WHILE TABLE CREATION --

create table country(country_id int primary key auto_increment, country_name varchar(20));

desc country;

insert into country(country_name) values ('India'), ('USA'), ('UK');

select * from country;

delete from country where country_id = 2;

-- AUTO INCREMENT AFTER TABLE CREATION --

select * from registration;
alter table registration modify reg_id int auto_increment;
desc registration;



