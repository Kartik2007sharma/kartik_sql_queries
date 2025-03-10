use kartikdb;

-- 1 --
select *, d.dname, d.loc from emp e join dept d on e.deptno = d.deptno where e.deptno < 30;

-- 2 --
select e.ename, m.mgr, m.ename 'Manager' from emp e join emp m on e.mgr = m.empno;

-- 3 --
select * from dept;
select * from emp e right join dept d on e.deptno = d.deptno where d.dname like 'S%';

-- 4 --
select e.job, e.ename, e.sal, d.deptno from emp e join dept d on e.deptno = d.deptno;
-- join - takes non null values
-- left - takes null from left
-- right - takes null from right

-- 5 --
select e.ename, e.sal, e.job, e.deptno, d.dname, d.loc from emp e join dept d on e.deptno = d.deptno where e.deptno in (30, 40);

-- 6 --
select count(*) 'employees working', job from emp group by job;

-- 7 --
select * from dept;
select * from emp;
select e.ename, e.job, e.deptno, d.dname, d.loc from emp e join dept d on e.deptno = d.deptno where d.loc = 'Newyork';

