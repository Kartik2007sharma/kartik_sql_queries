use kartikdb;

-- 16_JAN_ASSIGNMENT --

-- 1-- 
select * from emp;
select ename, sal from emp where sal not between 500 and 1200;

-- 2 --
select ename, sal from emp where sal > 2000;

-- 3 --
select ename, deptno from emp where deptno = 20 and 50 order by ename;

-- 4 -- 
select ename, job from emp where mgr is null;

-- 5 --
select ename, sal, comm from emp where comm is not null order by comm desc;

-- 6 --
select ename from emp where ename like '__A%';

-- 7 --
select ename from emp where ename like '%A%E%';

-- 8 -- Copied
select ename, job, sal from emp where (job = 'Salesman' or job = 'Clerk') 
and sal not in (2500, 3500, 7000);

-- 9 --
select ename, sal from emp where sal > 1200;

-- 10 --
select ename from emp where ename like 'A%';
