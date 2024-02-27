create table teachers(teacher_id serial primary key, 
					  first_name varchar(50) not null,
					 last_name varchar(50) not null,
					  homeroom_number int not null,
					  department varchar(50) not null,
					  email varchar(50) unique not null,
					 phone varchar(50) unique not null);
select * from teachers

create table students(student_id serial primary key, 
					  first_name varchar(50) not null,
					 last_name varchar(50) not null,
					  homeroom_number int not null,
					  phone varchar(50) unique not null,
					 email varchar(50) unique not null,
					 graduation_year timestamp);
select * from students					 

alter table students 
drop graduation_year
alter table students
add graduation_year int

insert into students values(1,'Rahul','Galande',5,'7775551234','Rahul.galande@gmail.com.',2023);
select * from students

insert into teachers values(1,'Chandrashekhar','gogte',5,'Biology','Chandrashekhar.gogte@gamil.com ','7775554321');
select * from teachers

alter table students 
rename column graduation_year to grad_year;
select * from students


