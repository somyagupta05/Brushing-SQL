use startersql;
-- set autocommit=0; so that you can use rollback incase u dlt something bymistakely
set autocommit=0;
select * from users;
-- with commit changes are made permanent 
commit;
delete from users where id=6;
-- it brings back all the deleted things back till the last commit 
rollback;
-- suppose i have deleted id =6 by mistakenly so by rollback i can  bring it back 

delete from users where id=5;
-- if i want to dlt it permanently remove  set autocommit=0; and wirte commit after query to dlt permanently
