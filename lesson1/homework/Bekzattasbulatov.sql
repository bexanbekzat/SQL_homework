Lesson 1: Introduction to SQL Server and SSMS
Notes before doing the tasks:

Tasks should be solved using SQL Server.
Case insensitivity applies.
Alias names do not affect the score.
Scoring is based on the correct output.
One correct solution is sufficient.
Easy
Define the following terms: data, database, relational database, and table.
data is collection of facts, numbers, or information that can be processed or analyzed
database is a digital library, storing and organizing data in a structured way. 
relational database are structured around tables where each tables stores information about a specific entity
table is 
List five key features of SQL Server.
SQl server(T-Server)
OracleSQL
PostgreSQL
MySQL
SQLite
What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
windows authentification,
SQL Server Authentification
Medium
Create a new database in SSMS named SchoolDB.
Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).
Describe the differences between SQL Server, SSMS, and SQL.
SQL Server is the software that handles the database and the tables
SSMS is SQL Server Management Studio is the interface between the user and the database
SQL is a standard language for database creation and manipuliation
Hard
Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
1 DQL- data query language
commands: select 
2 DDL- data definition language: 
commands: create, drop, alter, truncate 
3- DML- data manupilation language: 
commands: insert, delete, update, 
4- DCL- data control language: 
commands: grant, revoke
5- TCL- transaction control language
commands: begin transaction,
commit transaction,
rollback transaction
Write a query to insert three records into the Students table.
Restore AdventureWorksDW2022.bak file to your server. (write its steps to submit) You can find the database from this link :https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2022.bak
