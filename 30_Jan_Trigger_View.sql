use kartikdb;

create table category(old_cat_id int primary key auto_increment, old_cat_name varchar(40));
desc category;

desc new_category;

DELIMITER 
//
create trigger after_category_insert
after insert on category
for each row
begin
	insert into new_category(cat_id, cat_name) -- inserting in new table
    values (new.old_cat_id, new.old_cat_name); -- values will be taken from old table
end;
//
DELIMITER ;

insert into category (old_cat_name) values ('Electronics');
select * from category; -- inserting in old table will also get inserted in new table
select * from new_category;

show tables;
show triggers;

DELIMITER //
create trigger after_delete_category
after delete on category
for each row
begin
	insert into new_category (cat_id, cat_name)
    values (old.old_cat_id, old.old_cat_name);
end;
//
DELIMITER ;

delete from category where old_cat_id = 1;
select * from category;
select * from new_category;
show triggers;

DELIMITER //
create trigger after_update_category
before update on category
for each row
begin
	insert into new_category (cat_id, cat_name)
    values (new.old_cat_id, new.old_cat_name);
end;
// 
DELIMITER ;

show triggers;
insert into category(old_cat_id, old_cat_name) values (1, 'Electronics');
update category set old_cat_name = 'Kitchen' where old_cat_id= 1 ; 
select * from category;
select * from new_category;


-- DEFAULT CONSTRAINT --
-- alter table tablename alter columnname set default 'defaultvalue' --
alter table country add status varchar(30) default 'unblock';
select * from country;
desc country;

insert into country(country_name, status) values('Japan', 'block'); -- we cn overide the default values when the time of inserting


-- VIEW - virtual table of an existing table --
-- same as table, updation will occur in view unlike trigger --
create view dept_30
as
select * from emp where deptno = 30;

select * from dept_30;

