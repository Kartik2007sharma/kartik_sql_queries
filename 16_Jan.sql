use kartikdb;

-- JOINS -- 

-- INNER JOIN / JOIN --

select * from emp;
select * from dept;

-- joining both tables --
select * from emp join dept on emp.deptno = dept.deptno;

-- giving nickname to tables -- 
select * from emp e join dept d on e.deptno = d.deptno;

-- selecting particuar columns --
select e.empno, e.ename, e.sal, d.deptno, d.dname from emp e join dept d on e.deptno = d.deptno 
order by e.sal;


-- Left JOIN  --
select e.empno, e.ename, e.sal, e.deptno, d.dname from emp e left join dept d on e.deptno = d.deptno
order by e.sal;

-- Right Join
select e.empno, e.ename, e.sal, e.deptno, d.dname from emp e right join dept d on e.deptno = d.deptno
order by e.sal;

select * from city;
select * from states_new;
select * from country;

-- JOINING 3 TABLES --
select c.city_id, c.city_name, c.st_id, s.state_name, ctr.country_id , ctr.country_name from city c 
join states_new s on c.st_id = s.state_id join country ctr on ctr.country_id = s.cnt_id order by c.city_name;

-- SELF JOIN --
select e.empno, e.ename, e.job, m.ename 'manager name' from emp e join emp m on e.mgr = m.empno;

-- LIMIT --
select * from emp limit 4;

-- offset --
select * from emp limit 4 offset 5;       # it will give 4 rows after 1st 5 rows and only numerics no characters
select * from emp limit 5, 4;

-- Distinct --
select job from emp;
-- to fetch unique non repetitive values
select distinct job from emp;

