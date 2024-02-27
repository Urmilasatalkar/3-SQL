--1
create table jobs1(job_id int primary key,
				  job_title varchar(50) not null,
				  min_salary int not null,
				  max_salary int not null check (max_salary<25000)				  
				 )
insert into jobs1 values(
				1,'manager',1000,2000
)
insert into jobs1 values(
				2,'teacher',1000,300
)
insert into jobs1 values(
				3,'mam',1000,500
)
select * from jobs1
--3
alter table jobs1
rename to jobs_new1;

select * from jobs_new1;

--4
alter table jobs_new1 add column dept_id1 int unique
alter table jobs_new1 add column email varchar(30)
--2
update jobs_new1
set email='not available'
select * from jobs_new1;
--5
insert into jobs_new1 values(
				4,'manager',1000,24000
)
insert into jobs_new1 values(
				5,'employee',1000,6000
)
insert into jobs_new1 values(
				6,'student',1000,5000
)

select * from jobs_new1;

select job_title,job_id,dept_id from jobs_new1;
--7
select * from jobs_new1 
order by max_salary DESC
limit 1;
--8
select avg(min_salary),avg(max_salary),count(job_id) from jobs_new1;

--9
create table manager_details(
		manager_id int primary key,
		manager_name varchar(30) not null,
		dept_id int references jobs_new1(dept_id1)
)
select *from jobs_new1 
inner join manager_details
on jobs_new1.dept_id = manager_details.dept_id

--10
create table department1(
	dept_id int primary key,
	dept_name varchar(50)
)
insert into department1 values(1,'computetr')
insert into department1 values(2,'IT')
insert into department1 values(3, 'IT');

alter table jobs_new1 add column
emp_id1 int ;
select * from jobs_new1
insert into jobs_new1(job_id,job_title,min_salary,max_salary,dept_id,emp_id1)
values(7,'ITemp',2000,20000,3,1);
insert into jobs_new1(job_id,job_title,min_salary,max_salary,dept_id,emp_id1)
values(8,'ITemp',2000,21000,3,2);

select emp_id1 from jobs_new1 
where dept_id in (select dept_id from department1
				  where dept_name = 'IT'
				 );






