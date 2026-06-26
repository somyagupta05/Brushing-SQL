use startersql;
select name, gender from users where gender='female';
select name, gender from users where gender<>'male';
select * from users where id>12;
select * from users where date_of_birth is not null;
select * from users where date_of_birth between '2004-01-01' and
'2005-01-01';

select * from users where gender in('male','female');

select * from users where gender='male' order by date_of_birth
asc;

select * from users where gender='male' order by date_of_birth
asc limit 5;