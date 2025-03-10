use kartikdb;

-- Creating all tables --
-- 1st table --
create table cus_tbl(cust_id int primary key auto_increment, 
cust_name varchar(30), email varchar(40), join_date date);
desc cus_tbl;
select * from cus_tbl;

insert into cus_tbl(cust_name, email, join_date) values('Sam', 'sam@email.com', '2022-01-15');
insert into cus_tbl(cust_name, email, join_date) values('Kim', 'kim@email.com', '2022-02-20');
insert into cus_tbl(cust_name, email, join_date) values('Kane', 'kane@email.com', '2022-03-25');
insert into cus_tbl(cust_name, email, join_date) values('Dave', 'dave@email.com', '2022-04-10');


-- 2nd table
create table ord_tbl(ord_id int primary key auto_increment, cust_id int, ord_date date, 
ttl_amnt int, foreign key(cust_id) references cus_tbl(cust_id));
desc ord_tbl;
alter table ord_tbl modify column ord_id int;
alter table ord_tbl modify column ttl_amnt float;
alter table ord_tbl add column prod_id int;
truncate table ord_tbl;
select * from ord_tbl;

insert into ord_tbl(ord_id, cust_id, ord_date, ttl_amnt, prod_id) 
values(101, 1, '2022-04-01', 100.00, 1);
insert into ord_tbl(ord_id, cust_id, ord_date, ttl_amnt, prod_id) 
values(102, 2, '2022-04-05', 75.50, 1);
insert into ord_tbl(ord_id, cust_id, ord_date, ttl_amnt, prod_id) 
values(103, 1, '2022-04-10', 45.25, 4);
insert into ord_tbl(ord_id, cust_id, ord_date, ttl_amnt, prod_id) 
values(104, 3, '2022-05-02', 150.75, 3);
insert into ord_tbl(ord_id, cust_id, ord_date, ttl_amnt, prod_id) 
values(105, 2, '2022-05-05', 65, 3);
insert into ord_tbl(ord_id, cust_id, ord_date, ttl_amnt, prod_id) 
values(106, 4, '2022-05-10', 200.50,2);

-- 3rd table --
create table product(prod_id int, prod_name varchar(20), unit_price float);
desc product;
alter table product modify column prod_id int primary key auto_increment;
select * from product;

insert into product(prod_name, unit_price) values('Laptop', 800.00);
insert into product(prod_name, unit_price) values('Phone', 400.00);
insert into product(prod_name, unit_price) values('Tablet', 300.00);
insert into product(prod_name, unit_price) values('Headphones', 50.00);
insert into product(prod_name, unit_price) values('Mouse', 15.00);
insert into product(prod_name, unit_price) values('Keyboard', 30.00);


-- 1 --
select cust_name from cus_tbl where join_date < '2022-03-25';

-- 2 --
select * from ord_tbl where cust_id = (select cust_id from cus_tbl where cust_name = 'Kim');

-- 3 --
select count(prod_name) from product;

-- 4 --
select avg(ttl_amnt) from ord_tbl o join cus_tbl c on o.cust_id = c.cust_id 
where join_date < '2022-03-25'; 

-- 5 --
select p.prod_id, p.prod_name from prod

-- 6 --
-- ect l_amnt) from ord_tbl where ord_date like '%-05-%';
-- ect l_amnt) from ord_tbl where ord_date like '%-05-%';

-- 7 wrong --
select * from cus_tbl c left join ord_tbl o on c.cust_id = o.cust_id group by
c.cust_id having count(cust_id) > 2;

-- 8 --
select sum(ttl_amnt) from ord_tbl where ord_date like '%-04-%';

-- 9 --
select * from product where unit_price between 50.00 and 400.00;

-- 10 --


-- 11 --


-- 12 --
select sum(ttl_amnt) from ord_tbl where ord_date like '%-05-%';

-- 13 --
select * from cus_tbl;

-- 14 --
select * from product;

-- 15 --
select * from ord_tbl;


-- prod_id = 1, 1, 4, 3, 3, 2


