create database users;
use users;
CREATE TABLE Customers
(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    AccountSum DECIMAL
);
CREATE TABLE Employees
(
    Id INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL
);
  
INSERT INTO Customers(FirstName, LastName, AccountSum) 
VALUES
('Tom', 'Smith', 2000),
('Sam', 'Brown', 3000),
('Mark', 'Adams', 2500),
('Paul', 'Ins', 4200),
('John', 'Smith', 2800),
('Tim', 'Cook', 2800);
  
INSERT INTO Employees(FirstName, LastName)
VALUES
('Homer', 'Simpson'),
('Tom', 'Smith'),
('Mark', 'Adams'),
('Nick', 'Svensson');

select FirstName,LastName from Users.Customers
union all select FirstName,LastName from Users.Employees
order by FirstName desc;

select FirstName,LastName,AccountSum + AccountSum * 0.1 as TotalSum from Users.Customers
union select FirstName,LastName,AccountSum + AccountSum * 0.3 as TotalSum from Users.Customers;

select concat(FirstName,' ',LastName) as fullname from Users.Customers;
select concat_ws('---',FirstName,LastName,AccountSum) as fullname from Users.Customers;

select trim(' Test ');

select locate('om','Tomas');

select concat(FirstName,' ',LastName) as fullname, (select locate('t',FirstName) as IndexOf) from Users.Customers;
select lower('Test');
select left('test','1');
select round(1234.166635,2);
select truncate(1234.166635,2);
select floor(-123.45);
select ceil(-123.45);
select power(5,2);
select sign(-5);
select rand();
select sqrt(225);

select now();
select sysdate();
select current_timestamp();
select current_date();
select curdate();
select current_time();
select utc_time();

