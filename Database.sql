---Database is an organised collection of datastored and assessed automatically,Relational Database contains Entity which is an object we stored something about e.g person
---Attribute: are the characteristics of an object e.g name ,Variables: are the data store in the column...customer(entity) name(attribute) tola(variable)


---show the list of database
SELECT name, database_id, create_date  
FROM sys.databases ;  

---drop database

DROP DATABASE my_test
DROP DATABASE tele_sales

---Create a database

CREATE DATABASE customer

----USE A DATABASE

USE customer

