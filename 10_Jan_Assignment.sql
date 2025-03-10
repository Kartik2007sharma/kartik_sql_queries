use kartikdb;

-- 10 JAN ASSIGNMENT --

-- 1-- 
select * from stu_countries_new; 
desc stu_countries_new;

alter table stu_countries_new add primary key (country_id);

alter table stu_countries_new modify country_id int auto_increment;

insert into stu_countries_new(country_name, region_id) values ('India', 91), ('UK', 11);

-- 2 -- 
select * from stu_states_new;
desc stu_states_new;

alter table stu_states_new add primary key (state_id);
alter table stu_states_new modify state_id int auto_increment;

insert into stu_states_new(state_name, country_id) values ('Maharashtra', 4), ('Punjab', 14);

-- 3 -- 
desc stu_cities_new;
select * from stu_cities_new;

alter table stu_cities_new add primary key (city_id);
alter table stu_cities_new modify city_id int auto_increment;

insert into stu_cities_new(city_name, state_id) values ('Pune', 4), ('Mumbai', 1);

-- 4 -- 
desc students;

alter table students add primary key (stu_id);
alter table students modify stu_id int auto_increment;

insert into students(stu_fname, stu_mobile) values ('Kartik', 1234567890), 
('John', 1357913579);

select * from students;

-- 5 --
desc stu_category;

alter table stu_category add primary key (category_id);
alter table stu_category modify category_id int auto_increment;

insert into stu_category (category_name) values ('General');

select * from stu_category;

-- 6 -- 
desc stu_subcategory;

alter table stu_subcategory add primary key (subCategory_id);
alter table stu_subcategory modify subCategory_id int auto_increment;

insert into stu_subcategory (subCategory_name, category_id) values ('OBC', 2), 
('General', 1);

select * from stu_subcategory;

-- 7 --
desc stu_subject;

alter table stu_subject add primary key (subject_id);
alter table stu_subject modify subject_id int auto_increment;

insert into stu_subject (subject_name, categoryId) values ('CS', 1), ('DBMS', 2);

select * from stu_subject;


-- ASSIGNMENT 2 -- 

-- 1 --
desc my_employee;

alter table my_employee add primary key (id);
alter table my_employee modify id int auto_increment;

insert into my_employee (lastname, firstname) values ('Sharma', 'Kartik'), ('Wick', 'John');

select * from my_employee;





