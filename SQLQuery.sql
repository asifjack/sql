/*create database cmd*/
create database database_name_asif

/*FOR USING DATABASE*/
use database_name_asif


/* CREATE TABLE CMD */
CREATE TABLE Persons (
    PersonID int not null identity,
    LastName varchar(255),
    FirstName varchar(255),
    Address_Per varchar(255),
    City varchar(255)
);

/* INSERT RECORD IN  TABLE CMD*/

Insert into Persons(LastName,FirstName,Address_Per,City) values
('asif','md','noida','upnoida');

Insert into Persons values
('aniket','kumar','new delhi','Delhi');

/* SELECT ALL COLUNM FROM TABLE*/
Select * from Persons;

Select PersonId,LastName from Persons;

/*update tables data record*/
update Persons set FirstName='mr' where PersonID=2;

update Persons set Address_per='Bihar' , City='Nalanda' where PersonId=1;

/*DELETE RECORD FROM TABLE*/


delete from Persons where City='Nalanda';

