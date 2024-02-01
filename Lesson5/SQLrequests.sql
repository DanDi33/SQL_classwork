create database Market2;
use Market2;
create table Product(
id int auto_increment primary key,
productName varchar(30),
manufacture varchar(20),
productCount int default 0,
price decimal not null
);

create table Customers(
id int auto_increment primary key,
firstName varchar(30) not null
);

create table Orders(
id int auto_increment primary key,
productId int not null,
customersId int not null,
productCount int default 1,
price decimal  not null,
foreign key (productId) references Product(id) on delete cascade,
foreign key (customersId) references Customers(id) on delete cascade
);

insert Product(productName, manufacture,productCount, price)
values
('Iphone X','Apple',2,26000),
('Iphone 11','Apple',2,46000),
('Iphone 13','Apple',5,76000),
('Galaxy S20','Samsung',2,26000),
('Galaxy S10','Samsung',1,16000),
('Huawei P40 lite','Huawei',2,8000),
('Readme 10c','Readme',6,12000);

insert Customers(firstName)
values ('Tom'),
	('Bob'),
	('Sam');
insert Orders(productId,customersId,productCount,price)
values(
(select id from  Product where productName = 'Galaxy S20'),
(select id from Customers where firstName = 'Tom'),
1,
(select price from  Product where productName = 'Galaxy S20')
),
(
(select id from  Product where productName = 'Iphone X'),
(select id from Customers where firstName = 'Bob'),
1,
(select price from  Product where productName = 'Iphone X')
),
(
(select id from  Product where productName = 'Galaxy S10'),
(select id from Customers where firstName = 'Tom'),
1,
(select price from  Product where productName = 'Galaxy S10')
)
;