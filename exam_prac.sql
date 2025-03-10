create database exam;
use exam;

-- 1 --
create table stu_countries (country_id int, country_name varchar(20), region_id int);

-- 2 --
create table stu_states(state_id int, state_name varchar(30), country_id int);

-- 3 --
create table stu_cities(city_id int, city_name varchar(20), state_id int);

-- 4 --
create table students(stu_id int, stu_fname varchar(30), stu_mname varchar(20), stu_lname varchar(20),
stu_email varchar(50), stu_mobile int, stu_category varchar(20), stu_subcategory varchar(20), 
stu_address varchar(100), stu_country varchar(30), stu_state varchar(30), stu_city varchar(20), 
stu_status varchar(20));

-- 5 --
create table stu_category(category_id int, category_name varchar(20));

-- 6 --
create table stu_subcategory(subcategory_id int, subcategory_name varchar(20), category_id int);

-- 7 --
create table stu_subject(subject_name varchar(20), category_id int, subcategory_id int);

-- 8 --
rename table stu_countries to stu_countries_new;

-- 9 --
rename table stu_states to stu_states_new;

-- 10 --
rename table stu_cities to stu_city_new;






-- DML --

-- 1--
create table  my_employee(id int, firstname varchar(20), lastname varchar(20), 
userid int, salary int);

-- 2 --
desc my_employee;

-- 3 --
alter table my_employee modify userid varchar(20);
insert into my_employee(id, firstname, lastname, userid, salary) values(1, 'Ralph', 'Patel',
'rpatel', 895);
insert into my_employee(id, firstname, lastname, userid, salary) values(2, 'Dancs', 'Betty',
'bdancs', 860);
insert into my_employee(id, firstname, lastname, userid, salary) values(3, 'Biri', 'Benn',
'bbiri', 1100);
insert into my_employee(id, firstname, lastname, userid, salary) values(3, 'Newman', 'Chass',
'cnewman', 750);

update my_employee set id = 4 where firstname = 'Newman';

insert into my_employee(id, firstname, lastname, userid, salary) values(5, 'Audrey', 'Ropeburn',
'aeopebur', 1550);

select * from my_employee;

-- 4 --
update my_employee set lastname = 'Drexler' where id = 3;

-- 5 --
update my_employee set salary = 1000 where salary < 901;

-- 6 --
select * from my_employee;

-- 7 --
delete from my_employee where lastname = 'betty';

select * from my_employee;



-- ROW --
-- 1 --
use kartikdb;
select * from emp;
select ename, sal from emp where sal not in (5000, 1200);

-- 2 --
select ename , sal from emp where sal > 2000;

-- 3 --
select ename, deptno from emp where deptno = 20 or deptno= 50;

-- 4 --
select ename, job from emp where mgr is null;

-- 5 --
select  ename, sal, comm from emp where comm is not null order by sal and comm desc;

-- 6 --
select ename from emp where ename like '%__a%';

-- 7 --
select ename from emp where ename like '%a%' and ename like '%e%';

-- 8 --
select ename, job, sal from emp where job in ('salesman', 'clerk') and sal not in (2500, 3500, 7000);
select * from emp;

-- 9 --
select ename, sal from emp where sal > 13000;

-- 10 --
select * from emp where ename like 's%';




-- JOINS --
-- 1 --
select distinct(e.deptno), d.dname, d.loc from emp e right join dept d on e.deptno = d.deptno where 
d.deptno < 31;
select * from dept;

-- 2 --
select ename, sal, job from emp order by sal desc;

-- 3 --
select e.ename 'employee name', e.mgr 'manager id', m.ename 'Manager name' from emp e join emp m 
on e.mgr = m.empno;
select * from emp;

-- 4 --
select distinct * from emp e join dept d on e.deptno = d.deptno where e.deptno = d.deptno 
and d.dname like 'S%';

-- 5 --
select distinct * from emp e join dept d on e.deptno = d.deptno where e.deptno = d.deptno 
and d.dname like 'R%';

-- 6 --
select distinct * from emp e join dept d on e.deptno = d.deptno;

-- 7 --
select * from dept where deptno in (40, 30);

-- 8 --
select e.ename, e.comm, d.dname, d.loc from emp e join dept d on e.deptno = d.deptno 
where e.comm is not null;

-- 9 --
select count(empno) 'employee working in this role', job from emp group by job;

-- 10 --
select e.ename, e.job, e.deptno, d.dname, d.loc from emp e join dept d on e.deptno = d.deptno
where d.loc = 'Newyork'; 


-- 1 --
select deptno, dname, loc from dept where deptno < 31;

-- 2 --
select e.ename, m.ename 'manager' from emp e join emp m on e.mgr = m.empno;

-- 3 --
select * from emp e left join dept d on e.deptno = d.deptno where d.dname like 'r%';

-- 4 --
select * from emp e right join dept d on e.deptno = d.deptno;

-- 5 --
select deptno, dname, loc from dept where deptno in (30, 40); 

-- 6 --
select count(empno), job from emp group by job;

-- 7 --
select e.ename, e.job, e.deptno, d.dname, d.loc from emp e join dept d on e.deptno = d.deptno
where d.loc = 'Newyork';




-- 5- Practise Qs --
-- 1 --
select * from employee; 

-- 2 --
select * from department;

-- 3 --
select * from location;

-- 4 --
select e.name, d.name from employee e join department d on e.department_id = d.department_id
where d.name = 'IT';

-- 5 --
select e.name, l.regional_group from employee e join department d on e.department_id =
d.department_id join location l on d.location_id = l.location_id where l.regional_group = 'Ahmedabad';

-- 6 --
select e.name, d.name from employee e join department d on e.department_id = d.department_id
where d.name = 'Account';

-- 7 --
select l.location_id, l.regional_group, d.department_id, d.name, e.empid, e.name from employee e 
join department d on e.department_id = d.department_id join location l on d.location_id = 
l.location_id;

-- 8 --
delete from employee where name = 'Ks';
select * from employee;

-- 9 --
delete e from employee e join department d on e.department_id = d.department_id where 
d.name = 'Account';

-- 10 --
select * from department;
update department set name = 'HR' where department_id = 4;

-- 11 --
select * from employee where name like 'A%';

-- 12 --
select * from employee where salary>10000;

-- 13 --
select * from employee where salary between 10000 and 20000;

-- 14 --
select sum(salary) 'total salary given' from employee;

-- 15 --
select count(department_id) from department;

-- 16 --
select * from employee order by salary desc;

-- 17 --
select * from location where regional_group like 'S%';

-- 18 --
select name, salary from employee;

-- 19 --
select * from location;
select * from department;
delete d from department d join location l on d.location_id =
l.location_id where l.regional_group = 'Mumbai';




-- SUB QUERIES --
select * from emp;

-- 1 --
select ename, sal from emp where sal>(select sal from emp where ename = 'Allen');

-- 2 --
select ename, job from emp where job = (select job from emp where empno=7499);

-- 3 --
select ename, job, sal from emp where sal = (select min(sal) from emp);

-- 4 --
 select deptno, sal from emp where sal = (select min(sal) from emp where deptno = 30);
 
 -- 5 --
 select ename, deptno, sal from emp where (deptno, sal) in (select deptno, sal from emp);
 
 -- 6 --
 select ename, sal from emp where sal > (select avg(sal) from emp);
 
 -- 7 --
 select empno, ename, sal from emp where mgr = (select empno from emp where ename = 'Jones');
 select * from emp;
 
 -- 8 --
 select deptno, ename, job from emp where deptno = (select deptno from dept where dname = 'sales');
 
 -- 9 --
 -- select ename, sal from emp where max(sal) < (select max(sal from emp); 
 select ename, sal from emp where max(sal) < (select sal from emp where max(sal) < 
(select max(sal) from emp));
select sal from emp order by sal desc limit 1 offset 2;
select sal from emp order by sal desc limit 1 offset 3;




-- AFTER THIS --
select * from cus_tbl;
select * from ord_tbl;
select * from product;

-- 1 --
select * from cus_tbl where join_date < '2022-03-25';

-- 2 --
select distinct(c.cust_name), p.prod_name from cus_tbl c join ord_tbl o on c.cust_id = o.cust_id join
product p on o.prod_id = p.prod_id where c.cust_name = 'Kim'; 

-- 3 --
select count(prod_id) from product;

-- 4 --
select avg(o.ttl_amnt) from ord_tbl o join cus_tbl c on o.cust_id = c.cust_id 
where c.join_date < '2022-03-25'; 

-- 5 --
select p.prod_name from product p join ord_tbl o on p.prod_id = o.prod_id join cus_tbl c
on o.cust_id = c.cust_id where c.join_date like '2022-04-%%';

-- 6 --
-- select sum(o.ttl_amnt) from ord_tbl o join cus_tbl c on o.cust_id = c.cust_id where 
select sum(ttl_amnt) from ord_Tbl where ord_date like '2022-05-%%';

-- 7 --
select c.cust_id, c.cust_name from cus_tbl c join ord_tbl o on c.cust_id = o.cust_id join product p 
on o.prod_id = p.prod_id group by o.cust_id having count(o.ord_id) > 1; 

-- 8 --
select sum(ttl_amnt) from ord_tbl where ord_date like '2022-04-%%';

-- 9 --
select * from product where unit_price between 50 and 400;

-- 10 --
select avg(o.ttl_amnt) from ord_tbl o join product p on o.prod_id = p.prod_id where p.prod_name=
'laptop';

-- 11 --
select p.prod_name from product p left join ord_tbl o on p.prod_id = o.prod_id where o.ord_id 
is null; 

-- 12 --
select avg(ttl_amnt) from ord_tbl where ord_date like '2022-05-%%';

-- 13 --





-- last --
-- 1 --
use exam;
use kartikdb;
create table customer(customer_id int primary key auto_increment, first_name varchar(20)
not null, last_name varchar(20) not null, email varchar(50), city varchar(20), comm int, unique(email));

-- 5 --
select ename, sal from emp where sal not between 500 and 1000;

-- 6 --
select * from emp;
select ename, job, hiredate from emp where hiredate between '1980-02-20' and '1981-05-01' 
order by hiredate;

-- 7 --

-- 8 --
select * from emp where ename like '_A%';

-- 10 --
create table player(id int primary key auto_increment, name varchar(40));


delimiter //
create trigger insert_into_player
after insert on player
for each row
begin
	insert into player(id, name) values(new.id, new.name);

end;
//
delimiter ;

insert into player(new.name) values('Messi');



-- string --
select concat(ename, ' earns ', sal) from emp;

-- substr --
select substr('a test today', 6, 3) from dual;
select substr('a test today', 6) from dual;
