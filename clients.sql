--> C:/xampp/htdocs/company/clients.sql <--

create table clients (
    id int auto_increment,
    first_name varchar(25) not null,
    year_of_birth year not null,
    primary key (id) 
);

insert clients
(id, first_name, year_of_birth)
values
(1, 'John', 1995),
(2, 'Adam', 2010),
(3, 'Bill', 2003);

desc clients;

select * from clients;