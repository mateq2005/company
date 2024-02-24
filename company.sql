-- COMPANY --

drop database company;

create database company;

use company;

-- CUSTOMERS --

create table customers (
    CustomerID int auto_increment,
    FullName varchar(255) not null,
    Phone varchar(255) not null,
    Email varchar(255) not null,
    Address varchar(255) not null,
    primary key (CustomerID) 
);

insert into customers
(CustomerID, FullName, Phone, Email, Address)
values
(1, 'John Doe', '555-1234', 'john.doe@email.com', '123 Main St, Cityville'),
(2, 'Jane Smith', '555-5678', 'jane.smith@email.com', '456 Oak St, Townsville'),
(3, 'Bob Johnson', '555-9876', 'bob.johnson@email.com', '789 Pine St, Villageton'),
(4, 'Alice Williams', '555-4321', 'alice.williams@email.com', '321 Elm St, Hamletville'),
(5, 'Charlie Brown', '555-8765', 'charlie.brown@email.com', '654 Birch St, Countryside'),
(6, 'Eva Davis', '555-2345', 'eva.davis@email.com', '987 Cedar St, Suburbia'),
(7, 'Frank Miller', '555-7654', 'frank.miller@email.com', '234 Maple St, Metropolis'),
(8, 'Grace Taylor', '555-3456', 'grace.taylor@email.com', '567 Walnut St, Cityburg'),
(9, 'David Clark', '555-6543', 'david.clark@email.com', '876 Sycamore St, Townland'),
(10, 'Helen Martinez', '555-8765', 'helen.martinez@email.com', '1098 Oak St, Villagetown'),
(11, 'Olivia White', '555-1111', 'olivia.white@email.com', '765 Pine St, Suburbville'),
(12, 'James Turner', '555-2222', 'james.turner@email.com', '432 Elm St, Citytown'),
(13, 'Sophia Harris', '555-3333', 'sophia.harris@email.com', '987 Birch St, Townberg'),
(14, 'Daniel Martin', '555-4444', 'daniel.martin@email.com', '210 Walnut St, Villageburg'),
(15, 'Emily Anderson', '555-5555', 'emily.anderson@email.com', '543 Cedar St, Hamletland'),
(16, 'Liam Garcia', '555-6666', 'liam.garcia@email.com', '876 Oak St, Countrysideville'),
(17, 'Ava Martinez', '555-7777', 'ava.martinez@email.com', '321 Maple St, Metrotown'),
(18, 'Jackson Rodriguez', '555-8888', 'jackson.rodriguez@email.com', '654 Sycamore St, Suburbland'),
(19, 'Mia Young', '555-9999', 'mia.young@email.com', '1098 Pine St, Cityland'),
(20, 'Logan Taylor', '555-0000', 'logan.taylor@email.com', '543 Birch St, Villagesville');

desc customers;

select * from customers;

-- ORDERS --

create table orders (
    OrderID int auto_increment,
    CustomerID int not null,
    OrderName varchar(255) not null,
    OrderDate date not null,
    primary key (OrderID) 
);

insert into orders 
(OrderID, CustomerID, OrderName, OrderDate)
values
(1, 1, 'Widget X', '2024-02-22'),
(2, 2, 'Gadget Y', '2024-02-23'),
(3, 3, 'Accessory Z', '2024-02-24'),
(4, 4, 'Tool A', '2024-02-25'),
(5, 5, 'Equipment B', '2024-02-26'),
(6, 6, 'Product C', '2024-02-27'),
(7, 7, 'Item D', '2024-02-28'),
(8, 8, 'Material E', '2024-02-29'),
(9, 9, 'Device F', '2024-03-01'),
(10, 10, 'Part G', '2024-03-02'),
(11, 1, 'Accessory X', '2024-03-03'),
(12, 2, 'Tool Y', '2024-03-04'),
(13, 3, 'Equipment Z', '2024-03-05'),
(14, 4, 'Product A', '2024-03-06'),
(15, 5, 'Item B', '2024-03-07'),
(16, 6, 'Material C', '2024-03-08'),
(17, 7, 'Device D', '2024-03-09'),
(18, 8, 'Part E', '2024-03-10'),
(19, 9, 'Widget F', '2024-03-11'),
(20, 10, 'Gadget G', '2024-03-12');

desc orders;

select * from orders;

-- EMPLOYEES --

create table employees (
    EmployeeID int auto_increment,
    FullName varchar(255) not null,
    Phone varchar(255) not null,
    Email varchar(255) not null,
    primary key (EmployeeID) 
);

insert into employees 
(EmployeeID, FullName, Phone, Email)
values
(1, 'John Doe', '123-456-7890', 'john.doe@email.com'),
(2, 'Jane Smith', '987-654-3210', 'jane.smith@email.com'),
(3, 'Bob Johnson', '555-123-4567', 'bob.johnson@email.com'),
(4, 'Alice Williams', '111-222-3333', 'alice.williams@email.com'),
(5, 'Charlie Brown', '999-888-7777', 'charlie.brown@email.com');

desc employees;

select * from employees;

-- C:/xampp/htdocs/company/company.sql --
