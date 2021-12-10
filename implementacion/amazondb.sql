


create database amazondb
use amazondb
create table Categories(
    Id int PRIMARY KEY IDENTITY,
    Name NVARCHAR(30)
)

create table Products(
    ProductId int PRIMARY KEY IDENTITY,
    Name NVARCHAR(30),
    Price money, 
    CategoryFk int FOREIGN KEY REFERENCES Categories(CategoryId)
)

create table Customers(
    CustomerId int PRIMARY KEY IDENTITY,
    Name NVARCHAR(50),
    Email NVARCHAR(320),
    Password NVARCHAR(433),
    Registed DATE DEFAULT getdate()  
)

select * from Products
select * from Categories
EXEC sp_rename 'Categories.Id', 'CategoryId', 'COLUMN';

insert into Categories(Name) VALUES('bebidas')
insert into Categories(Name) VALUES('comida')
