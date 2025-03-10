--  9_Jan_Assignment  --

use kartikdb;

-- 	1  --
create table my_employee(id int, lastname varchar(20), firstname varchar(20), 
user_id varchar(20), salary int);
alter table my_employee modify column user_id varchar(20);

-- 2 --
desc my_employee;

-- 3 --
insert into my_employee(id, lastname, firstname, user_id, salary) 
values (1, 'Patel', 'Ralph', 'rpatel', 895), (2, 'Dancs', 'Betty', 'bdancs', 860), 
(3, 'Biri', 'Benn', 'bbiri', 1100), (4, 'Newman', 'Chass', 'cnewman', 750),
(5, 'Ropeburn', 'Audrey', 'aeopebur', 1550); 

select * from my_employee;

-- 4 --
update my_employee set lastname = 'Drexler' where id = 3;

-- 5 --
update my_employee set salary = 1000 where salary <= 900; 

-- 6 --
select * from my_employee;

-- 7 --
delete from my_employee where firstname = 'Betty';



