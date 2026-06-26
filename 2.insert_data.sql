use startersql;
select * from users;
insert into users values
('2003-05-10',1,'somya@gmail.com','somya','female',default);

insert into users (name,email,gender,date_of_birth) values
('Kushi','kushi@gmail.com','female','2004-10-05');

insert into users (name, email, gender, date_of_birth) values
('Ayush','Ayush@gmail.com','Male','2004-11-05'),
('Rashi','Rashi@gmail.com','female','2005-09-03'),
('Kuhu','kuhu@gmail.com','female','2005-05-02');


TRUNCATE TABLE users;