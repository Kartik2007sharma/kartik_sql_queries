use kartikdb;


-- SUB QUERY- 
-- query inside a query which runs 1st then the outer query runs --
-- always use where or having in a subquery --
select * from emp;
select * from emp where job = (select job from emp where empno= 7788) order by ename;

-- 1 --
select ename, sal from emp where sal>(select avg(sal) from emp) order by sal;

-- 2 --
select deptno from emp group by deptno having min(sal)>(select min(sal) from emp where deptno = 30);
select min(sal) from emp where deptno = 30;

-- IN- all of the given rows, --
-- ANY- any of the given rows,-- 
-- ALL- all of the given rows but greater than or less thab --

-- 3 --
select * from emp where sal in (select sal from emp where job = 'Clerk');
select sal from emp where job = 'Clerk';

-- 4 --
select * from emp where sal > all(select sal from emp where job = 'Clerk');

-- 5 --
select max(sal) from emp where sal <(select max(sal) from emp);

-- 6 --
select max(sal) from emp limit 1 offset 0;
select sal from emp order by sal desc limit 1 offset 2;
select distinct(sal) from emp order by sal desc limit 1 offset 2;