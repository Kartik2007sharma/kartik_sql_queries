create database jan_14;
use jan_14;

-- 1 --
create table category (category_id int primary key auto_increment, 
category_name varchar(20));

desc category;

insert into category(category_name) values ('General'), ('OBC'), ('SC');

select * from category;


-- 2 --
create table subcategory (subcat_id int primary key auto_increment, 
subcat_name varchar(20) not null, cat_id int, foreign key(cat_id) 
references category(category_id));

desc subcategory;

insert into subcategory(subcat_name, cat_id) values('Higher', 1), ('Medium', 2);

select * from subcategory;

-- 3 --
create table product(pr_id int primary key auto_increment, pr_name varchar(20) not null, 
pr_price int, pr_cat int, pr_subcat int, pr_qty int, check (pr_price > 100), check (pr_qty>2), 
foreign key(pr_cat) references category(category_id), foreign key(pr_subcat) 
references subcategory(subcat_id));

desc product;

insert into product(pr_name, pr_price, pr_cat, pr_subcat, pr_qty) values('Pen', 101, 3, 2, 5), 
('Notebook', 300, 2, 2, 3), ('Bag', 500, 1, 1, 3);

select * from product;

-- 4 --
create table userinfo(userid int primary key auto_increment, username varchar(20) not null, 
user_email varchar(50) unique not null, user_mobile varchar(20) unique, user_age int, 
check (user_age>=18));

desc userinfo;

insert into userinfo(username, user_email, user_mobile, user_age) values 
('Kartik', 'kartik@gmail.com', '1234567890', 22);
insert into userinfo(username, user_email, user_mobile, user_age) values 
('John', 'kartik@gmail.com', '1357913579', 25);

select * from userinfo;