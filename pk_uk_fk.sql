use startersql;
select * from users;
-- primary key and unique key
--  primary key cannot be null but unique key can be null
-- only on pk per table and multiple unique key can be there
 -- pk required uk optional
 
 -- foreign key
 
 drop table if exists addresses;
 
 create table addresses(
 id int auto_increment primary key,
 user_id int,
 street varchar(255),
 city varchar(100),
 state varchar(100),
 pincode varchar(10),
 constraint fk_user foreign key (user_id) references users(id) on
 delete cascade
 );
 -- used on delete cascade like if u dlt arrav his address wll be null then 
 
 insert into addresses (user_id,street,city,state,pincode)
 values
 (1, 'MG Road', 'Bhopal', 'Madhya Pradesh', '462001'),
(2, 'Park Street', 'Kolkata', 'West Bengal', '700016'),
(3, 'FC Road', 'Pune', 'Maharashtra', '411004'),
(4, 'Anna Nagar', 'Chennai', 'Tamil Nadu', '600040'),
(5, 'Sector 15', 'Noida', 'Uttar Pradesh', '201301'),
(6, 'Connaught Place', 'Delhi', 'Delhi', '110001'),
(7, 'Brigade Road', 'Bangalore', 'Karnataka', '560001'),
(8, 'Navrangpura', 'Ahmedabad', 'Gujarat', '380009'),
(9, 'Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(10, 'Civil Lines', 'Jaipur', 'Rajasthan', '302006');
 
 select * from addresses;
 
 