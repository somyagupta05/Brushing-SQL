use startersql;
-- constraints
-- unique email  
 create table users(
id int auto_increment primary key,
name varchar(100) not null,
email varchar(100) unique not null,
gender enum('Male','Female','Other'),
date_of_birth date,
created_at timestamp default current_timestamp);

alter table users add constraint unique_email unique(email);
--  giving warning bcz have added uniqiue earlier while creating table 
select * from users;

alter table users add constraint chk_dob check (date_of_birth >'1920-01-01');

--  should give error bcz of dob 
insert into users(name,email,gender,date_of_birth) values
('arav','arrav@gmail.com','male','1905-05-14');



