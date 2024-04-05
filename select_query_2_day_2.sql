-- distinct clause

select distinct lastname, firstname, age from anefreeinity.members;

-- is null

select * from anefreeinity.members where lastname is null;

-- order by sorting multiple columns

select * from anefreeinity.members order by firstname asc, age desc;
select * from anefreeinity.members order by age desc, firstname;

-- AGGREGATE FUNCTIONS
-- count 

select count(age) as total_count from anefreeinity.members where age >= 20;

-- sum

select sum(age) as total_age from anefreeinity.members where age >= 20;

-- max and min

select max(age) as max_age, min(age) as min_age, count(lastname) as lastname_count from anefreeinity.members;

-- group by

select age, count(firstname) from anefreeinity.members group by age;

