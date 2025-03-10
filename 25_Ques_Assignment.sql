use kartikdb;

-- 1 --
create table customer(customer_id int primary key auto_increment, first_name varchar(20) not null, 
last_name varchar(20) not null, email varchar(50), city varchar(20), commission int, 
unique(email));
desc customer;

-- 2 --
insert into customer(first_name, last_name, email, city, commission) values('Kartik', 'Sharma', 
'kartik@gmail.com', 'Pune', 1170);
insert into customer(first_name, last_name, email, city, commission) values('Jhon', 'Cena', 
'jhon@gmail.com', 'LA', 2100);
insert into customer(first_name, last_name, email, city, commission) values('Leo', 'Nardo', 
'leo@gmail.com', 'Newyork', 3170);
insert into customer(first_name, last_name, email, city, commission) values('Tom', 'Hardy', 
'tom@gmail.com', 'Vegas', 1500);
insert into customer(first_name, last_name, email, city, commission) values('Roman', 'Reigns', 
'roman@gmail.com', 'Hawai', 1300);

-- 3 --
select email, city from customer;

-- 4 --
select * from emp;
select ename, deptno from emp where empno=7566;

-- 5 --
select ename, sal from emp where sal not between 500 and 1000;

-- 6 --
select ename, job, hiredate from emp where hiredate between '1998-02-20' 
and '1988-05-01' order by hiredate;

-- 7 --
select ename, deptno from emp where deptno in (20, 30) order by ename;

-- 8 --
select ename from emp where ename like '_A%';

-- 9 --
select ename, hiredate from emp where hiredate like '1981-%%-%%';
select ename, hiredate from emp where year(hiredate) = '1981';

-- 10 --
select ename, sal, comm from emp where sal = 0.4;

-- 11 --
select current_date() 'Date';

-- 12 --
select empno, ename, sal, round(sal * 0.15, 2), round(sal * 1.15, 2) as 'new sal' from emp;

-- 13 --
select ename, concat(upper(left(ename, 1)), lower(substring(ename, 2))) 'first_capital', 
length(ename) 'length' from emp where ename like 'J%' or ename like 'A%' or ename like 'M%' 
order by ename;

-- 14 DOUBT --
select concat(ename, ' earns ', sal, ' monthly but wants ', sal*3, ' monthly salary' ) 'dream salaries' 
from emp;

-- 15 doubt --
select e.job, d.loc from emp e join dept d on e.deptno = d.deptno where d.deptno = 30;
select * from dept;
-- union - 2 queries together without join --
select distinct job from emp where deptno = 30 
union 
select loc from dept where deptno = 10;
select * from dept;
select * from emp where deptno = 30;

-- 16 doubt --
select lower(e.ename), d.dname from emp e join dept d on e.deptno = d.deptno where e.ename 
like '%a%';

-- 17 --
select * from emp where mgr is null;

-- 18 wrong --
select e1.ename, e1.deptno, e2.deptno 'same department' from emp e1 join emp e2 on
e1.deptno = e2.deptno where e1.deptno = e2.deptno;

-- 19 --
select e.ename, d.dname 'job dept name', e.sal from emp e join dept d on e.deptno = d.deptno
order by sal;

-- 20 --
select ename, hiredate from emp where hiredate > (select hiredate from emp where ename = 
'SMITH');

-- 21 --
select e.ename 'Employee name', e.hiredate 'Emp Hiredate', m.ename 'Manager name', 
m.hiredate 'Mnager Hiredate' from emp e join emp m on e.mgr = m.empno  where e.hiredate
< m.hiredate order by e.hiredate;

-- 22 --
select max(sal) 'highest salary', min(sal) 'lowest salary', sum(sal) 'Sum salary', avg(sal)
'avg salary', round(avg(sal)) 'avg round salary' from emp;

-- 23 --
select job, max(sal), min(sal) from emp group by job order by job;

-- 24 --
select job, count(empno) 'emp in this job' from emp group by job order by job;

-- 25 --
select count(distinct mgr) 'number of mgr' from emp;


