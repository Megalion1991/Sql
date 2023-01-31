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

EXEC sp_rename 
    @objname = 'dbo.Country', 
    @newname = 'State', 
    @objtype = 'COLUMN';