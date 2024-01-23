use test;
create table Rooms(
id int auto_increment primary key,
number_romm int not null unique,
room_type varchar(30) not null,
has_TV bool not null,
price decimal not null
);
alter table Rooms rename column number_romm to number_room;

insert test.Rooms(number_room, room_type,has_tv, price)
values 
(100,'basic',false,100),
(101,'basic',false,100),
(102,'basic',false,100),
(103,'basic',false,100),
(104,'basic',false,100),
(310,'middle',false,250),
(311,'middle',true,300),
(312,'middle',false,250),
(313,'middle',true,300),
(340,'lux1',true,550),
(354,'lux2',true,650),
(327,'lux3',true,750),
(320,'lux4',true,650);

select room_type, avg(price) from test.Rooms group by room_type;
select room_type, avg(price) from test.Rooms where room_type='middle' group by room_type;
select room_type, avg(price) as avg_price 
	from test.Rooms 
    group by room_type 
    having avg_price>200 
    order by avg_price desc;