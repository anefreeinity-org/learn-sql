create schema if not exists ANEFreeInIty;

create table ANEFreeInIty.Members(
	memberId int,
	firstName varchar(255),
	lastName varchar(255),
	age int
);

insert into ANEFreeInIty.Members values(1, 'Rahul', 'Bhattacharya', 20);
insert into ANEFreeInIty.Members values(2, 'Ankan', 'Maity', 20);
insert into ANEFreeInIty.Members(memberId, firstName, age) values(3, 'Rounak', 20);
insert into ANEFreeInIty.Members values(10, 'Soma', 'Dey', 20);
insert into ANEFreeInIty.Members values(11, 'Soma', 'Dey', 21);
insert into ANEFreeInIty.Members values(12, 'Soma', 'Dey', 19);

delete from anefreeinity.members where memberId = 3;


