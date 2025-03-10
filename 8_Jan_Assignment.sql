-- ASSIGNMENT 8 JAN --

use kartikdb;

-- Q.1 --
create table stu_countries (country_id int, country_name varchar(20), region_id int);
desc stu_countries;

-- Q.2 --
create table stu_states (state_id int, state_name varchar(20), country_id int);
desc stu_states;

-- Q.3 --
create table stu_cities (city_id int, city_name varchar(20), state_id int);
desc stu_cities;

-- Q.4 --
create table students (stu_id int, stu_fname varchar(20), stu_mname varchar(20), 
stu_lname varchar(20), stu_email varchar(50), stu_mobile varchar(20), stu_category varchar(20), 
stu_subcategory varchar(20), stu_address varchar(100), stu_country varchar(20), 
stu_state varchar(20), stu_city varchar(20), stu_status varchar(20));

desc students;

-- Q.5 --
create table stu_category (category_id int, category_name varchar(20));
desc stu_category;

-- Q.6 --
create table stu_subcategory (subCategory_id int, subCategory_name varchar(20), 
category_id int);
desc stu_subCategory;

-- 	Q.7 -- 
create table stu_subject (subject_id int, subject_name varchar(20), categoryId int, 
subCategoryId int);
desc stu_subject;

-- Q.8 --
rename table stu_countries to stu_countries_new;
desc stu_countries_new;

-- 	Q.9 --
rename table stu_states to stu_states_new;
desc stu_states_new;

-- Q.10 --
rename table stu_cities to stu_cities_new;
desc stu_cities_new;

-- END --

select * from stu_countries;
