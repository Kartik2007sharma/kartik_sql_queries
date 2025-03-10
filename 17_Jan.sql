use kartikdb;

-- 17 JAN --
select * from emp;

-- Aggregate Operators -- 

-- count -- 
select count(empno) from emp;
select count(*) from emp;

-- max --
select max(sal) from emp;

-- min --
select min(sal) from emp;

-- avg --
select avg(sal), 'Avg Sal' from emp;
select avg(sal) from emp where job = 'Clerk';
select avg(sal) from emp where deptno = 20;

-- sum --
select sum(sal) 'salary given' from emp;
select sum(sal) 'salesman salary given' from emp where job = 'Salesman';


-- GROUP BY --
select sum(sal) from emp group by job having job = 'salesman';
select sum(sal), deptno from emp group by deptno;
select avg(sal), job from emp group by job;

-- 	q 1 --
select * from emp;
select min(hiredate) 'starting hire date' , max(hiredate) 'ending hiredate' from emp;

-- q 2 --
select max(sal), deptno, job from emp group by deptno, job order by deptno;

-- q 3 --
select count(empno) 'employee working in this dept', deptno from emp group by deptno;

-- q 4 --
select sum(sal) 'total salary paid to this dept', deptno from emp group by deptno;

-- q 5 --
select count(empno) 'number of employees', sum(sal), deptno from emp group by deptno;

-- q 6 --
select * from emp;
select deptno, job, sum(sal) 'Sum of Salary' from emp group by deptno, job order by deptno;

-- q 7 --
select deptno, sum(sal) 'Sum of Salary' from emp group by deptno, mgr having mgr = 7902;

-- q 8 --
select deptno, count(empno) 'number of employees' from emp group by deptno having count(empno)> 2;



