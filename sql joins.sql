/* CREATING DATABASE*/
   CREATE DATABASE first_db;

/* Use Databese*/
   USE first_db

 /* CREATING TABLE */
  
  CREATE TABLE  Employee(id int identity , ename varchar  (40),  managerID int)

/*INSERTING DATA INTO TABLE*/
  INSERT INTO Employee(ename,managerID) values 
  ('Amit Kumar', 2),
  ('Mohd Asad', 4), 
  ('Amir Khan', 1), 
  ('Raju Saini', 3), 
  ('Ranjan', 5), 
  ('Mukesh Kumar', 6

/*SELECT DATA FROM TABLE*/
SELECT * FROM Employee;

/*SELECT FROM TABLE (SELF INNER JOIN)*/
SELECT * FROM Employee as  E
     INNER JOIN Employee  as  B  on E.id=B.managerID

/*INNER JOIN (SELF INNER JOIN)*/
  select A.ename, B.id from Employee as A
INNER JOIN Employee  as  B  on A.id=B.managerID

/* CREATING DATABASE*/
   CREATE DATABASE myinfo_Db
   USE myinfo_Db

/*CREATING TABLE*/
    CREATE TABLE City(Id int not null primary key identity, CityName varchar(40) not null)
	SELECT * FROM City;

/*INSERTING DATA INTO TABLE*/
 INSERT INTO City(CityName) values
   ('kanpur'),
   ('Delhi'),
   ('Noida'),
   ('Up'),
   ('Panjab'),
   ('patna')


/*CREATING TABLE*/
CREATE TABLE Students (Id int primary key not null identity,
   SName  varchar (40) not null,
   Phone bigint, 
   CityId int ,
   constraint fk_ foreign  key (CityId)  references City(id));
   
SELECT * FROM Students;
SELECT * FROM City;

/*INSERTING VALUE INTO STUDENTS TABLE*/
INSERT INTO Students(SName, Phone, CityId) values 
   ('Adam Smith' , 500, 3),
   ('Geeta Kumar' , 500, 3),
   ('Adil khan' , 600, 2),
   ('Anikita Kumari' , 500, 3),
   ('Mohan Raj' , 700, 6),
   ('Mohd Asif' , 900, 1)

/*INNER JOIN*/

     SELECT  Students.SName , City.CityName , Students.Phone from Students  
	 INNER JOIN  City  on  Students.CityId = City.Id;

     SELECT  C.CityName, S.Phone  FROM City AS C
     INNER JOIN Students as s on C.Id=S.CityId