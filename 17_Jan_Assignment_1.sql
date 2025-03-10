use kartikdb;

-- 17 Jan Assignment --

-- creating all 3 tables --
create table location(location_id int primary key auto_increment, regional_group varchar(30));
desc location;
insert into location(regional_group) values('Ahmedabad');
insert into location(regional_group) values('Surat');
insert into location(regional_group) values('Baroda');

select * from location;


create table department(department_id int primary key auto_increment, name varchar(30), 
location_id int, foreign key(location_id) references location(location_id));
desc department;
insert into department(name, location_id) values('IT', 1);
insert into department(name, location_id) values('HR', 2);
insert into department(name, location_id) values('Account', 1);

select * from department;


create table employee(empid int primary key auto_increment, name varchar(30), department_id int, 
salary int, foreign key (department_id) references department(department_id));
desc employee;
insert into employee(name, department_id, salary) values ('ABC', 1, 10000);
insert into employee(name, department_id, salary) values ('XYZ', 2, 7000);
insert into employee(name, department_id, salary) values ('PQR', 1, 5000);
insert into employee(name, department_id, salary) values ('BCD', 3, 25000);
insert into employee(name, department_id, salary) values ('RTS', 1, 15000);

select * from employee;

-- 1 --
select * from employee;

-- 2 --
select * from department;

-- 3 -- 
select * from employee;

-- 4 --
select e.empid, e.name, d.name 'Department name' from employee e join department d 
on e.department_id = d.department_id join location l on d.location_id = l.location_id
where d.name = 'IT';

-- 5 --
select e.empid, e.name, l.regional_group 'Location' from employee e join department d 
on e.department_id = d.department_id join location l on d.location_id = l.location_id
where l.regional_group = 'Ahmedabad';

-- 6 --
select e.empid, e.name, d.name from employee e left join department d on e.department_id =
d.department_id where d.name = 'Account';

-- 7 --
select l.location_id, l.regional_group 'Location name', d.department_id, d.name 
'Department name', e.empid, e.name 'Employee name' from employee e join department d on 
e.department_id = d.department_id join location l on d.location_id = 
l.location_id order by e.empid;

-- 8 --
insert into location(regional_group) values('Mumbai');
select * from location;

insert into department(name, location_id) values('Account', 4);
select * from department;

insert into employee(name, department_id, salary) values('KS', 4, 77000);
select * from employee;

-- 9 --
delete e from employee e join department d on e.department_id = d.department_id
where d.name = 'HR';
select * from employee;

-- 10 --
update department set name = 'PAYROLL' where name = 'HR';
select * from department;

-- 11 --
select * from employee where name like 'A%'; 

-- 12 --
select * from employee where salary> 10000;

-- 13 --
select * from employee where salary between 10000 and 20000;

-- 14 --
select sum(salary) 'Total Salary' from employee;

-- 15 --
select count(department_id) from department;

-- 16 --
select * from employee order by salary desc;

-- 17 --
select * from location where regional_group like 'S%';

-- 18 --
select name, salary from employee;

-- 19 --
delete d from department d join location l on d.location_id = l.location_id where 
l.regional_group = 'Baroda';
select * from department;







