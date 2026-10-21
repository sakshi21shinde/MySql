use student;
create table info(
student_id int,
student_name varchar(50),
city varchar(30),
course varchar(40),
marks int)
select * from info;
insert into info (student_id) value(101),(102),(103),(104),(105);
insert into info (student_name) value("Asha"),("Ravi"),("Meena"),("Kran"),("Sara");
truncate table info;
insert into info value(101,"Asha","Pune","Data Analytics",78);
insert into info value(102,"Ravi","Mumbai","Data Science",35);
insert into info value(103,"Meena","PChennai","Data Analytics",88);
insert into info value(104,"Karan","Delhi","Excel",29);
insert into info value(105,"Sara","Pune","Data Science",91);

alter table info add  column email varchar(200);

alter table info drop column city;

alter table info rename column marks to score;

alter table info modify score float;

rename table info to learners;

select * from learners;

-- insert into learners value(106,"Vikram","Nagpur","Excel",67);
insert into learners(student_id,student_name,course,score,email) value(106,"Vikram","Excel",67,NULL);

alter table learners add column city varchar(30);
-- insert into (city) value("Pune","Mumbai","Chennai","Delhi","Pune");
update learners set city="Pune" where student_id=101;
update learners set city="Mumbai" where student_id=102;
update learners set city="Chennai" where student_id=103;
update learners set city="Delhi" where student_id=104;
update learners set city="Pune" where student_id=105;
update learners set city="Mumbai" where student_id=106;
update learners set city="Hydrabad" where city="Chennai";
-- update learners set city="Hydrabad" where id=103;

delete from learners where score<40;

truncate table learners;
select * from learners;
drop table learners;



