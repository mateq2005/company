--> C:/xampp/htdocs/company/clients.sql <--

create table Customers (
    CustomerID int auto_increment,
    FullName varchar(25) not null,
    Phone varchar(25) not null,
    Email varchar(25) not null,
    Address varchar(25) not null,
    primary key (CustomerID) 
);

insert into Customers
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
(10, 'Helen Martinez', '555-8765', 'helen.martinez@email.com', '1098 Oak St, Villagetown');

desc Customers;

select * from Customers;