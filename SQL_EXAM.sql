use kartikdb;

-- WORKER TABLE --
create table worker(worker_id int primary key auto_increment, first_name varchar(30), last_name 
varchar(30), salary int, joining_date date, department varchar(20));
desc worker;

insert into worker(first_name, last_name, salary, joining_date, department) 
values('Monika', 'Arora', 100000, '2014-02-20', 'HR');
insert into worker(first_name, last_name, salary, joining_date, department) 
values('Niharika', 'Verma', 80000, '2014-06-11', 'Admin');
insert into worker(first_name, last_name, salary, joining_date, department) 
values('Vishal', 'Singhal', 300000, '2014-02-20', 'HR');
insert into worker(first_name, last_name, salary, joining_date, department) 
values('Amitabh', 'Singh', 500000, '2014-02-20', 'Admin');
insert into worker(first_name, last_name, salary, joining_date, department) 
values('Vivek', 'Bhati', 500000, '2014-06-11', 'Admin');
insert into worker(first_name, last_name, salary, joining_date, department) 
values('Vipul', 'Diwan', 200000, '2014-06-11', 'Account');
insert into worker(first_name, last_name, salary, joining_date, department) 
values('Satish', 'Kumar', 75000, '2014-01-20', 'Account');
insert into worker(first_name, last_name, salary, joining_date, department) 
values('Geetika', 'Chauhan', 90000, '2014-04-11', 'Admin');

select * from worker;

-- BONUS TABLE --

create table bonus(worker_ref_id int, bonus_date date, bonus_amount int, 
foreign key(worker_ref_id) references worker(worker_id));
desc bonus;

insert into bonus(worker_ref_id, bonus_date, bonus_amount) values(1, '2016-02-20', 5000);
insert into bonus(worker_ref_id, bonus_date, bonus_amount) values(2, '2016-06-11', 3000);
insert into bonus(worker_ref_id, bonus_date, bonus_amount) values(3, '2016-02-20', 4000);
insert into bonus(worker_ref_id, bonus_date, bonus_amount) values(1, '2016-02-20', 4500);
insert into bonus(worker_ref_id, bonus_date, bonus_amount) values(2, '2016-06-11', 3500);

select * from bonus;


-- TITLE TABLE --

create table title(worker_ref_id int, worker_title varchar(30), affected_from date, 
foreign key(worker_ref_id) references worker(worker_id));
desc title;

insert into title(worker_ref_id, worker_title, affected_from) values(1, 'Manager', '2016-02-20');
insert into title(worker_ref_id, worker_title, affected_from) values(2, 'Executive', '2016-06-11');
insert into title(worker_ref_id, worker_title, affected_from) values(8, 'Executive', '2016-06-11');
insert into title(worker_ref_id, worker_title, affected_from) values(5, 'Manager', '2016-06-11');
insert into title(worker_ref_id, worker_title, affected_from) values(4, 'Asst. Manager', '2016-06-11');
insert into title(worker_ref_id, worker_title, affected_from) values(7, 'Executive', '2016-06-11');
insert into title(worker_ref_id, worker_title, affected_from) values(6, 'Lead', '2016-06-11');
insert into title(worker_ref_id, worker_title, affected_from) values(3, 'Lead', '2016-06-11');

select * from title;

-- 1 --
select upper(first_name) from worker;

-- 2 --
select * from worker;
select distinct(department) from worker;

-- 3 --
select substr(first_name, 1, 3) from worker;

-- 4 --
select concat(first_name, ' ', last_name) 'COMPLETE NAME' from worker;

-- 5 --
select * from worker where first_name in ('Vipul' , 'Satish');

-- 6 --
select * from worker;
select * from worker where department = 'Admin';

-- 7 --
select * from worker where first_name like '%a%';

-- 8 --
select * from worker where first_name like '%h' and length(first_name) = 6;

-- 9 --
select count(worker_id) from worker where department = 'Admin';

-- 10 --
select count(worker_id), department from worker group by department order by count(worker_id) desc;

-- 11 --
select * from worker w join title t on w.worker_id = t.worker_ref_id where t.worker_title = 'Manager';

-- 12 --
select salary from worker order by salary desc limit 1 offset 2;

-- 13 --
select department, count(worker_id) from worker group by department having count(worker_id) < 5;

-- 14 --
select count(worker_id) 'workers in this department', department from worker group by department;

-- 15 --
select * from worker order by salary desc limit 8 offset 0;













