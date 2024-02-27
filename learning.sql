create table account(
	user_id SERIAL primary key,
	username varchar(50) unique not null,
	password varchar(50) not null,
	email varchar(50) unique not null,
	create_on timestamp not null,
	last_login timestamp
	);
	
create table job(
		job_id serial primary key,
		job_name varchar(200) unique not null
);

create table account_job(
	user_id integer references account(user_id),
	job_id integer references job(job_id),
	hire_date timestamp
);
--insert
--serial keep in mind the inseted row values must match up for the table including constraints
insert into account(username,password,email,create_on)
values('Ram','root','ram1@gmail.com',current_timestamp)
insert into account(username,password,email,create_on)
values('Ram1','r1','ram2@gmail.com',current_timestamp)
insert into account(username,password,email,create_on)
values('Rucha','r2','Rucha@gmail.com',current_timestamp)
insert into account(username,password,email,create_on)
values('Urmila','r3','Urmila@gmail.com',current_timestamp)

select * from account

insert into job(job_name)
values('Data scientist')
insert into job(job_name)
values('Data Analyst')
insert into job(job_name)
values('Software Engg')
insert into job(job_name) values('cowboy')

select * from job

insert into account_job(job_id,user_id,hire_date)
values(1,1,current_timestamp)

select * from account_job

--update
select * from account
update account set last_login=current_timestamp
where last_login is null
select * from job
select * from account_job

update account set last_login=create_on
returning account.user_id, last_login

update account_job set hire_date=account.create_on
from account
where account_job.user_id=account.user_id

select * from account_job

update account set last_login=current_timestamp
returning email,create_on,last_login

--delete
delete from job where job_name='cowboy'
returning job_id,job_name
select * from job

--alter
create table information(info_id serial primary key,
							title varchar(50) not null,
							person varchar(50) not null unique);
alter table information rename to new_info;
--rename column
select * from new_info
alter table new_info 
rename column person to people

alter table new_info 
alter column
people drop not null

insert into new_info(title) values('some_new_title')
alter table new_info
drop column people

alter table new_info
drop column if exists people

select * from new_info
--check