Create database MyDb
use MyDb
/******* Rename Database ************/
/** ALTER DATABASE MyTestDatabase MODIFY NAME = MyTestDatabaseCopy; *************/
alter database Junaid Modify Name =JunaidDb;
use JunaidDb
/********* Create Table *************/

Create Table Emp(id int not null ,EName varchar(25))

Select * from Student

/*How Change Table Name*/
/*sp_rename 'Sales.SalesTerritory', 'SalesTerr';*/ 

 sp_rename 'Employee',Student
 insert into student values (1,'asif')
 /******Add Primary Key*********/

 /******
 ALTER TABLE Production.TransactionHistoryArchive
   ADD CONSTRAINT PK_TransactionHistoryArchive_TransactionID PRIMARY KEY CLUSTERED (TransactionID);
 *******/

 alter table Student ADD CONSTRAINT pk_student PRIMARY KEY(id);

 ALTER TABLE Emp add CONSTRAINT p_Emp primary key(id)

select * from emp

/******************HOW TO DELETE PRIMARY KEY *****************************/
ALTER TABLE PersonsDROP CONSTRAINT PK_Person;



/********HOW TO ADD NEW COLUMN IN EXISTING TABLE *********/











 


















