USE CUSTOMER

EXEC sp_help Person

-----Alter Table--------------

----------Add column------------

Alter Table Person
Add District VARCHAR (50);

Select * from Person

--------Drop Column------------
Alter Table Person
Drop Column District

------Rename Column---------------

Select * from Person

exec sp_rename 'Person.first_name','First_name','Column'

----Rename for other database---------
--Alter Table tbl_name to new_name


----Alter/Modify Datatype-----

Alter table Person
Alter column First_name varchar(max)

Select * from Person

----Add or drop constraint---------

Alter table Person
Add constraint primary_change default(address_)

----Drop Constraint---------

Alter table Person
Drop constraint constraint_name  (check constraint list)
