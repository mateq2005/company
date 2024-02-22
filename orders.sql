--> C:/xampp/htdocs/company/orders.sql <--

create table Orders (
    OrderID int auto_increment,
    CustomerID int not null,
    OrderName varchar(25) not null,
    OrderDate date not null,
    primary key (OrderID) 
);

insert into Orders 
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
(10, 10, 'Part G', '2024-03-02');

desc Orders;

select * from Orders;