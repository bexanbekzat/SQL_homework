--create database bbbekzat3
use bbbekzat3



create database test12

-- table
create table Employees(EmpID int, Name varchar(50), Salary DECIMAL(10,2))

insert into Employees values(1, 'Assylbek', 5000)
insert into Employees values(2, 'Aiagoz', 3000)
insert into Employees values(3, 'Bekzat', 2000)

Select * from Employees

Update Employees
Set Salary=7000
where EmpID=1



delete from Employees
where EmpID=2

--drop: deletes SQL objects
--truncate: clears table
--delete: deletes spefics rows in table


--Alter

Alter table Employees 
alter column Name varchar(100)

Alter table Employees
add Departments varchar(50)

sp_rename 'Employees.Salary', 'Float', 'COLUMN'


create table Departments( DepartmentID int,  DepartmentName varchar(50))  



--truncate


truncate table Employees







insert into Departments values (1, 'HR')
insert into Departments values (2, 'IT')
insert into Departments values (3, 'Marketing')
insert into Departments values (4, 'Finance')
insert into Departments values (5, 'Logistics')



Select * from Departments




create table Empployees(EmpID int, Name varchar(100), Salary varchar(100), Department DECIMAL(10,2))


Select * from Empployees

 insert into Empployees values(1, 'Assylbek',7000, 'IT ')
 insert into Empployees values(2, 'Mike', 4800, 'Finance' )
 insert into Empployees values(3, 'Tony', 5500, 'Marketing')


 select * from Empployees



 Alter table Empployees
 alter column Salary varchar(50) 

 Alter table Empployees
 alter column Name varchar(50)


 Update Empployees
 Set Department= 'Management'
 where Salary >= 5000


 --truncate
 
 truncate table Empployees

 Select * from Empployees


 --Alter

 alter table Empployees
 drop column Department


 sp_rename 'Empployees', 'StaffMembers'


drop table Departments







--table 
create table  Products(ProductID int Primary Key,  ProductName varchar(100), Category varchar(50), Price DECIMAL(10,2))


Select * from Products


Alter table Products 
add Constraint chk_price_positive CHECK (price > 0)


Select * from Products



alter table Products
add StockQuantity int default 50

sp_rename 'Products.Category', 'ProductCategory', 'COLUMN'


insert into Products values(1, 'Laptop', 'Electronics', 1200, 'High-performance laptop'),
insert into Products values(2, 'Desk Chair', 'Furniture', 150, 'Ergonomic chair'),
insert into Products values(3, 'Water Bottle', 'Accessories', 20.00, 'Insulated bottle')
insert into Products values(4, 'Notebook', 'Stationery', 5, 'College-ruled notebook'),
insert into Products values(5, 'Headphones', 'Electronics', 99, 'Noise-cancelling headphones')






--Alter

 alter table Products
 drop column StockQuantity

 Select * into Products_Backup from Products


 sp_rename 'Products', 'Inventory'


 --Alter

alter table Inventory
Alter column Price FLOAT
