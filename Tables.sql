----CREATE ----Database,Tables

---Database

----To Show Database

SELECT name, database_id, create_date  
FROM sys.databases ;  
Go

----To Create Database

Create Database Person
Go

----To Drop Database

Drop Database Person
GO

----Use Database

Use customer
Go

------CREATE TABLES-------------------------------------------

Use customer
Go
-------CREATE DIMENSION TABLES---------------
CREATE TABLE Person(
Person_ID CHAR not null PRIMARY KEY,
first_name VARCHAR(50) not null ,
surname VARCHAR(50) not null,
Age INT CHECK (Age >= 18),
email VARCHAR(50) not null DEFAULT 'not available',
Address_ VARCHAR not null,
Country VARCHAR CHECK (Country != 'Nigeria')
)
Go

CREATE TABLE PRODUCT(
Product_id INT NOT NULL PRIMARY KEY,
Product_Name VARCHAR(50) NOT NULL,
Brand VARCHAR(50) NOT NULL
);

CREATE TABLE DATE(
Date_ date not null
)

---------CREATE FACT TABLE ----------------

CREATE TABLE SALES(
Person_ID CHAR REFERENCES Person (Person_ID) ON DELETE CASCADE ,
Product_ID INT REFERENCES Product (Product_ID) ON DELETE CASCADE,
Quantity INT not null ,
Amount Money not null
);



---Check the Properties of a table-----------------------
EXEC sp_help Person;


----Check the constraint of a table--------------------

Select TABLE_NAME ,Constraint_type,Constraint_name
From INFORMATION_SCHEMA.TABLE_CONSTRAINTS
Where (TABLE_NAME = 'Product' )


-----Check the Table in a Datebase-------------
use customer

SELECT 
    *
FROM
    information_schema.tables;
