use kartikdb;

-- SUB QUERY PROBLEMS --

-- 1 --
select ename, sal from emp where sal>(select sal from emp where ename = 'Allen');
select sal from emp where ename = 'Allen';

-- 2 --
select * from emp;
select ename, job from emp where job =(select job from emp where empno = 7499);

-- 3 --
select ename, job, sal from emp where sal =(select min(sal) from emp);

-- 4 --
select deptno, sal from emp where sal =(select min(sal) from emp where deptno = 30);
select deptno from emp group by deptno having min(sal) = (select min(sal) from emp where deptno = 30);

-- 5 --
select ename,deptno, sal from emp where (deptno, sal) in (select deptno, sal from emp); 

-- 6 --
select empno, ename, sal from emp where sal > (select avg(sal) from emp) order by sal desc;

-- 7 --
select ename, sal from emp where mgr = (select empno from emp where ename = 'Jones'); 

-- 8 --
select * from emp;
select * from dept;
select deptno, ename, job from emp where deptno = (select deptno from dept where dname = 'Sales');

-- 9 --
select ename, sal from emp where max(sal) < (select ename, sal from emp where max(sal) < (select max(sal) from emp));

