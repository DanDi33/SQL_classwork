create database netRestaurant;
use netRestaurant;
create table Customers
(id int primary key auto_increment,
age int,
firstName varchar(25) not null,
lastName varchar(25) not null,
Phone varchar(20) not null unique);

use netRestaurant;
create table Orders
(
id int primary key auto_increment,
customerId int,
createdAt date,
foreign key (customerId) references Customers (id) on delete cascade
);
insert netRestaurant.Customers (age, firstName, lastName, Phone)
	values(18,'Tom','Smith','89005554331'),
	(20,'Tim','Smith','89005554332'),
	(24,'Ram','Smith','89005554333'),
	(63,'Rom','Smith','89005554334');
select * from Customers;
insert netRestaurant.Orders (customerId, createdAt)
values (2,'2021-05-21'),
	(1,'2021-05-25'),
	(2,'2021-05-21'),
	(3,'2021-05-23'),
	(4,'2021-05-21'),
	(2,'2021-05-22');
    select * from netRestaurant.Customers, netRestaurant.Orders where netRestaurant.Customers.id = netRestaurant.Orders.customerId;
    delete from netRestaurant.Customers where id =2;