use kartikdb;

select * from dept;
select * from emp;

-- 17 Jan Joins Assignment --

-- 1 --
select *, d.dname, d.loc from emp e join dept d on e.deptno = d.deptno where e.deptno < 30;


-- 2 --
select ename, sal, job from emp order by sal desc;

-- 3 --
select e.empno, e.ename, m.mgr 'Manager name' from emp e join emp m on e.mgr = m.empno;

-- 4 DIFFICULT --
select * from emp e join dept d on e.deptno = d.deptno where d.dname like 'P%';

-- 5 --
select d.name from department d join employee e on d.department_id = e.department_id join
location l on d.location_id = l.location_id where d.name like 'P%';

-- 6 --
select d.department_id,

-- 7 --
select depno, dname, loc from dept where depno = 40 and 50;

-- 8 --
select e.ename, e.deptno, d.loc from emp e join dept d on e.deptno = d.deptno 
where e.comm is not null;

-- 9 --
select count(empno) 'employee working in this role', job from emp group by job;

-- 10 --
select e.ename, e.job, e.deptno, d.dname, d.loc from emp e join dept d where 
d.loc = 'LONDON';

