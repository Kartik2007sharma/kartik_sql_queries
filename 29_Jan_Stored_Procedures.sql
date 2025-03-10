use kartikdb;

-- Insert --
call insert_country('XYZ');
call insert_country('India');
call insert_country('USA');
select * from country;

-- Update --
call update_country('UAE', 6);
select * from country;

-- Delete --
call delete_country('UAE');

-- select --
call select_country();


-- new category table
-- colums whatever new, id, name
select * from stu_category;
create table new_category(cat_id int, cat_name varchar(30));
select * from new_category;

