use kartikdb;

select * from emp;

select empno, ename, job from emp;

-- to display data of specific columns by user defining column names --
select empno 'Employee num', ename 'Employee name', job 'Job role' from emp;

-- where --
select * from emp where ename = 'Smith';
select empno, ename, job, sal from emp where sal > 1500;
select * from emp where empno = 7788;
select * from emp where sal > 2000;
select * from emp where sal <= 1000;

-- between --
select * from emp where sal between 1000 and 2000;

-- in, not in --
select * from emp where sal in (1250, 1500);
select * from emp where sal not in (1250);

--  (=), (!=) --
select * from emp where sal = 1250;
select * from emp where sal != 1250;

-- (%A), (A%), (%A%), (_A%), (A%N) --
select * from emp where ename like '%D';
select * from emp where ename like 'A%';
select * from emp where ename like '_A%';
select * from emp where ename like '%L%';
select * from emp where ename like 'A%N';

-- is, is not --
select * from emp where comm is null;
select * from emp where comm is not null;

-- and, or --
select * from emp where sal < 3000 and job = 'Clerk';
select * from emp where sal < 3000 or job = 'Clerk';

-- order by (asc, desc) --
select * from emp order by sal;
select * from emp order by sal desc;
select * from emp where ename like '%A%' order by sal;


