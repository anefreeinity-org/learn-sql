-- set-up

create schema if not exists ANEFreeInIty;

DROP table if exists ANEFreeInIty.Members;

create table ANEFreeInIty.Members(
	memberId int,
	firstName varchar(255),
	lastName varchar(255),
	age int
);

insert into ANEFreeInIty.Members values(1, 'Rahul', 'Bhattacharya', 20);
insert into ANEFreeInIty.Members values(2, 'Ankan', 'Maity', 20);
insert into ANEFreeInIty.Members(memberId, firstName, age) values(3, 'Rounak', 20);
insert into ANEFreeInIty.Members(memberId, firstName, age) values(4, 'DK', 22);
insert into ANEFreeInIty.Members(memberId, firstName, age) values(5, 'Ayan', 24);
insert into ANEFreeInIty.Members values(6, 'Sourav', 'Ghosh', 21);
insert into ANEFreeInIty.Members values(7, 'Arpan', 'Bairagi', 19);
insert into ANEFreeInIty.Members values(8, 'Amiya', 'Mandal', 19);
insert into ANEFreeInIty.Members values(9, 'Soma', 'Dey', 20);

-- select all from table

select * from anefreeinity.members;

-- select particular colums from table

select firstname, age from anefreeinity.members;

-- select particular colums with alias from table

select firstname as f_name, age from anefreeinity.members;

-- where clause

select * from anefreeinity.members where age > 20;

-- row and colums filter

select firstname as name, age from anefreeinity.members where age < 22;

-- in operator

select firstname as name, age from anefreeinity.members where age = 20 or age = 22;
select firstname as name, age from anefreeinity.members where age in(20,22);

-- between operator

select firstname as name, age from anefreeinity.members where age between 19 and 22;

-- like % operator

select firstname as name, age from anefreeinity.members where firstname like 'A%';
select firstname as name, age from anefreeinity.members where firstname like '%a';

-- order by asc/desc operator

select 
	firstname as name, 
	age from anefreeinity.members 
where 
	age in(19, 20, 21) 
	order by name asc;

select 
	firstname as name, 
	age from anefreeinity.members 
where 
	age in(19, 20, 21) 
	order by name desc;

-- multiple condition


select 
	firstname as name, 
	age from anefreeinity.members 
where 
	age in(19, 20, 21)
	and
	firstname like 'S%'
	order by name desc;

