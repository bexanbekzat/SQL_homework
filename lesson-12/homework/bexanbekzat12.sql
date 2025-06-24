Combine Two Tables
Table: Person

| Column Name | Type    |
+-------------+---------+
| personId    | int     |
| lastName    | varchar |
| firstName   | varchar |
personId is the primary key (column with unique values) for this table. This table contains information about the ID of some persons and their first and last names.

Table: Address

| Column Name | Type    |
+-------------+---------+
| addressId   | int     |
| personId    | int     |
| city        | varchar |
| state       | varchar |

| personId | lastName | firstName |
+----------+----------+-----------+
| 1        | Wang     | Allen     |
| 2        | Alice    | Bob       |
Address table:

| addressId | personId | city          | state      |
+-----------+----------+---------------+------------+
| 1         | 2        | New York City | New York   |
| 2         | 3        | Leetcode      | California |
Output:


| firstName | lastName | city          | state    |
+-----------+----------+---------------+----------+
| Allen     | Wang     | Null          | Null     |
| Bob       | Alice    | New York City | New York |


select * from Person
select * from Address



select firstname, lastname, city, state from  Person p left join address  a on p.personid = a.personid

create table Employee (id int, name varchar(255), salary int, managerId int)

insert into Employee (id, name, salary, managerId) values ('1', 'Joe', '70000', '3')
insert into Employee (id, name, salary, managerId) values ('2', 'Henry', '80000', '4')
insert into Employee (id, name, salary, managerId) values ('3', 'Sam', '60000', NULL)
insert into Employee (id, name, salary, managerId) values ('4', 'Max', '90000', NULL)


select * from Employee


select *  
from Employee e1 join Employee e2 
on e1.managerid = e2.id and e1.salary>e2.salary


drop table Person


create table  Person (id int, email varchar(255))  
insert into Person (id, email) values ('1', 'a@b.com') 
insert into Person (id, email) values ('2', 'c@d.com') 
insert into Person (id, email) values ('3', 'a@b.com')

select * from Person


select email from person group by email having COUNT(*) >1 


drop table Person


create table Person (Id int, Email varchar(255))

insert into Person (id, email) values ('1', 'john@example.com')
insert into Person (id, email) values ('2', 'bob@example.com')
insert into Person (id, email) values ('3', 'john@example.com')

select * from Person

delete from person
where id not in(
select MIN(id) from person group by email)




create table boys (
    Id INT PRIMARY KEY,
    name VARCHAR(100),
    ParentName VARCHAR(100)
)

create table girls (
    Id INT PRIMARY KEY,
    name VARCHAR(100),
    ParentName VARCHAR(100)
);

insert into boys (Id, name, ParentName) 
values
(1, 'John', 'Michael'),  
(2, 'David', 'James'),   
(3, 'Alex', 'Robert'),   
(4, 'Luke', 'Michael'),  
(5, 'Ethan', 'David'),    
(6, 'Mason', 'George');  


insert into girls (Id, name, ParentName) 
values
(1, 'Emma', 'Mike'),  
(2, 'Olivia', 'James'),  
(3, 'Ava', 'Robert'),    
(4, 'Sophia', 'Mike'),  
(5, 'Mia', 'John'),      
(6, 'Isabella', 'Emily'),
(7, 'Charlotte', 'George')


select parentname from boys
except
select parentname from girls

select g.parentname from girls g left join boys b
on g.parentname = b.parentname where b.parentname  is null



select custid, SUM(unitprice*qty*(1-discount)), MIN(weight) from [TSQL2012].[Sales].[Orders] o
join [TSQL2012].[Sales].[OrderDetails] od
on o.orderid = od.orderid
where  weight >50
group by custid






create table Cart1
(
Item  VARCHAR(100) PRIMARY KEY
);
GO

create table  Cart2
(
Item  VARCHAR(100) PRIMARY KEY
);
GO

insert into Cart1 (Item)  values
('Sugar'),('Bread'),('Juice'),('Soda'),('Flour');
GO

insert into Cart2 (Item) values
('Sugar'),('Bread'),('Butter'),('Cheese'),('Fruit');
GO

select * from Cart1
select * from Cart2

select isnull(c1.item, ''), as [Item Cart1] , isnull(c2.item, '') as [Item Cart 2] from cart1 c1 full join cart2 c2 on c1.item = c2.item
order by c1.item desc


drop table Customers


create table Customers5 (id int, name varchar(255))
Create table Orders11 (id int, customerId int)

insert into Customers5(id, name) values ('1', 'Joe')
insert into Customers5 (id, name) values ('2', 'Henry')
insert into Customers5 (id, name) values ('3', 'Sam')
insert into Customers5 (id, name) values ('4', 'Max')

insert into Orders11 (id, customerId) values ('1', '3')
insert into Orders11 (id, customerId) values ('2', '1')



select name as Customers from Customers5 c left join orders11 o
on c.id = o.customerid where o.id is null


Select s.student_id, s.student_name, sb.subject_name, count(e.student_id) attended_exams from Students s cross join Subjects sb left join Examinations e on s.student_id = e.student_id and sb.subject_name = e.subject_name
group by s.student_id, s.student_name, sb.subject_name
order by s.student_id, student_name
