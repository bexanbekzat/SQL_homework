 Importing Data (BULK INSERT, Excel, Text) ✅ Exporting Data (Excel, Text) ✅ Comments, Identity column, NULL/NOT NULL values ✅ Unique Key, Primary Key, Foreign Key, Check Constraint ✅ Differences between UNIQUE KEY and PRIMARY KEY

Notes before doing the tasks:

Tasks should be solved using SQL Server.
Case insensitivity applies.
Alias names do not affect the score.
Scoring is based on the correct output.
One correct solution is sufficient.
🟢 Easy-Level Tasks (10)
Define and explain the purpose of BULK INSERT in SQL Server.
bulk insert is SQl command import large data file into a SQL Server 
List four file formats that can be imported into SQL Server.
CSV(Comma-Separated Volumes
txt(plain text files)
xml(extensible markup language)
bulk insert
Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).
Insert three records into the Products table using INSERT INTO.
Explain the difference between NULL and NOT NULL.
null: represents a missing or unknown value. A column that allows null can contain	empty values
not null: enforces that a column must always contain a value; it cannot be left empty
Add a UNIQUE constraint to the ProductName column in the Products table.
Write a comment in a SQL query explaining its purpose.
Select * from Products
where Price >50
Add CategoryID column to the Products table.
Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
Explain the purpose of the IDENTITY column in SQL Server.
identity column  masalan ID 100 boshlanib keyingisida 10ga ortib boradi
🟠 Medium-Level Tasks (10)
Use BULK INSERT to import data from a text file into the Products table.
Create a FOREIGN KEY in the Products table that references the Categories table.
Explain the differences between PRIMARY KEY and UNIQUE KEY.
unique key bitta null qosha oladi va hohlagancha narsa yoza olamiz
primary key null qiymatini kirita olmaymiz va table bir marta qosha olamiz
Add a CHECK constraint to the Products table ensuring Price > 0.
Modify the Products table to add a column Stock (INT, NOT NULL).
Use the ISNULL function to replace NULL values in Price column with a 0.
Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
bir jadvaldagi qiymat boshqa jadvaldagi haqiqiy qiymatga mos kelishini taminlash orqali refrent yaxlitligini taminlaydi
🔴 Hard-Level Tasks (10)
Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.
Create a table with an IDENTITY column starting at 100 and incrementing by 10.
Write a query to create a composite PRIMARY KEY in a new table OrderDetails.
Explain the use of COALESCE and ISNULL functions for handling NULL values.
isnull(Price, 0) replaces null with 0
coalesce(discount,price,o) returns	first non-null
Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.
Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.



create table Products(ProductID int primary key, ProductName varchar(50), Price DECIMAL(10,2))

insert into Products values(1, 'Macbook pro', 999.99)
insert into Products values(2, 'Mouse', 25.99)
insert into Products values(3, 'Phone', 45.99)

select * from Products

alter table Products 
add constraint  uq_ProductName Unique (ProductName)

select * from Products

alter table Products
add CategoryID int

Select * from Products

create table Categories(CategoryID int  primary key, CategoryName varchar(50) unique)


create table assylbek(id int, name varchar(50), age int, work varchar(50))

bulk insert assylbek
from "C:\Users\User\Documents\assylbelk1.txt"
with(fieldterminator=',', rowterminator='\n', firstrow=2)

select * from assylbek

alter table Products 
add constraint fk_Products_Categories
foreign key(CategoryID) references Categories(CategoryID)

select * from Products
select * from Categories


alter table Products
add constraint chk_Price_Positive CHECK(Price >0)

alter table Products
add Stock int not null default 0


Select ProductID, ProductName, isnull(price, 0) as Price, Stock from Products


create table Customers(CustomerID int primary key, CustomerName varchar(100), age int, constraint chk_Customer_age CHECK(age>=18))


create table aiagoz(id int identity(100,10), name varchar(30))


create table OrderDetails(OrderID int, ProductID int, Quantity int, constraint PK_OrderDetails primary key (OrderID, ProductID))


create table Employees(EmpID int, name varchar (30), Email varchar(100) UNIQUE)


create table Orders(OrderID int primary key, CustomerID, OrderDate Date, constraint FK_Order_Customers foreign key (CustomerID) references Customers(CustomerID)
on delete cascade, on update cascade
