use kartikdb;

select * from emp;

-- Row Functions --

-- LOWER --
select lower(ename) from emp;

-- UPPER --
select upper(ename) from emp;

-- CONCATE - merge two strings --
-- we can use sub fucntion inside fucntion like - concat(lower(ename), " ", sal)--
select concat(ename, " is having salary of Rs- ", sal) from emp;

-- SUBSTR --
-- Starts index from 1 --
-- Syntax - substr('text', 2, 1) from dual; --
-- dual is predefind sql table to store texts --
select substr('This is a test', 6, 2) from dual;
select substr(ename, 2, 1) from emp;
select substr('This is a test', 6) from dual;
select substr(ename, 2) from emp;
select substr('TechOntheNet', 6, 4) from dual;
select substr('TechOntheNet', -3, 3) from dual;
select substr('TechOnTheNet', -8) from dual;


-- LENGTH - used to find length of characters --
select length(null) from dual;
select length('') from dual;
select length('') from dual;
select length('Tech') from dual;
select length(' Tech') from dual;
select length('Tech ') from dual;
select ename, length(ename) from emp;
select ename, length(ename), job, length(job) from emp;


-- INSTR - used to find index of specific characters --
select instr('Tech Net', 'e') from dual;
select ename, instr(ename, 'A') 'index of A in their name' from emp;

-- TRIM - used to remove characters from a string --
select trim(ename) from emp;
select trim('A' from ename) from emp;
select trim(leading '0' from '00123') from dual;
select trim(leading 0 from 00123) from dual;
select trim(trailing 0 from 123000) from dual;
select trim(trailing 0 from sal) from emp;
select trim(both 1 from 1231) from dual;
select ltrim(' SQL Example') from dual;
select rtrim('Sql Example  ') from dual;


-- Replace - replaces characters in a string --
select replace('222tech', '2', '3') from dual;
select replace(222 , 2, 1) from dual;
select replace('111 222 333', ' ',  '_') from dual;
select replace(ename, 'A', 'S') from emp;

-- Reverse- reverses a string --
select reverse('Kartik') from dual;

-- ROUND -round of the value --
select round(125.1) from dual;
select round(125.66) from dual;
select round(125.123, 0) from dual;
select round(125.123, 1) from dual;
select round(125.123, 2) from dual;
select round(-125.675) from dual; 


-- TRUNCATE - same like round but takes the occuring number only without considering --
select truncate(125.815, 0) from dual;
select truncate(125.815, 2) from dual;
select truncate(-125.815, 0) from dual;
select truncate(-125.815, 2) from dual;



-- CEILING - it doesnt show decimals but always gives round of value +1 whether -5+ in the number --
select ceil(32.65) from dual;
select ceil(32.1) from dual;
select ceil(-32.65) from dual; -- in the case for - num it will not add +1 to the num --
select ceil(-32.1) from dual;


-- Floor- opposite of ceiling num --
select floor(5.1) from dual;
select floor(5.9) from dual;
select floor(-6.1) from dual;
select floor(-6.9) from dual;
select floor(-6) from dual;


-- POWER- give power of any num --
select pow(2, 2) from dual;
select power(3, 3) from dual;
select pow(5, 2) from dual;


-- Square root --
select sqrt(16) from dual;
select sqrt(25) from dual;
select sqrt(7) from dual;


-- Current date and time --
select current_date() from dual;
select current_time() from dual;
select current_timestamp() from dual;


select concat(substr('kartik'), upper('k')) from dual;


