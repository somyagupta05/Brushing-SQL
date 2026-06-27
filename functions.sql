use startersql;
select count(*) from users where gender='male';
select min(salary) as min_salary , max(Salary) as max_salary from
users;

select sum(salary) as total from users;
select avg(salary) as avg_salary from users group by gender;

select sum(salary) as sum_salary from users group by gender;
select name, length(name) as name_len from users;
select lower(name) as lower from users;

-- to concat and to know month, day , year sepeartely from dob 
select lower(name) as lower,concat(lower(name),"567") as username
,year(date_of_birth) as yob, month(date_of_birth) as month,
day(date_of_birth) as day, now() as time from users;

-- to know how many years a person has lived 
select name ,datediff(curdate(),date_of_birth) as day from users;

 -- we have functions like 
 select salry,
 round(salary) as rounded,
 floor(salary) as floored,
 ceil(salary) as ceiled
 from users;
 
 select id, mod(id,2) as remainder from users;
 
 select name,gender,
 if(gender='female','yes','no') as is_female
 from users;