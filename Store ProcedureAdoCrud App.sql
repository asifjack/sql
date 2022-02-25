use AdoCrud_Db

select * from Departments
select * from Employees

/*Creating Department Table*/
Create table Departments(id int primary key identity,
name varchar(max) 
) 

/*Creating Employee Table*/
Create table Employees
(id int primary key identity,
  Name varchar(max),
  Email varchar(max),
  Gender varchar(20),
  Mobile varchar(100),
  department_id int foreign key references Departments(id)
)

create Procedure SP_Departments
@action varchar(20),
@id int =0,
@name varchar(100)=null
as 
begin
if(@action='CREATE')
begin
insert into Departments(Name) values(@Name)
select 1 as result
end
else if(@action='SELECT')
begin
select * from Departments
end
else if(@action='DELETE')
begin
delete from Departments where id=@id
select 1 as result
end
else if(@action='UPDATE')
begin
update Departments set Name=@Name Where id=@id
select 1 as result 
end
end

/****Execute *****/

exec SP_Departments 'SELECT'
exec SP_Departments 'CREATE',0,'Salesfff'
exec SP_Departments 'CREATE',0,'HR TEAM'
exec SP_Departments 'UPDATE',2,'HR TEAMS'
exec SP_Departments 'DELETE',3

/************************** Employee ******************************************************/
/*Creating Employee Table*/
Create table Employees
(id int primary key identity,
  Name varchar(max),
  Email varchar(max),
  Gender varchar(20),
  Mobile varchar(100),
  department_id int foreign key references Departments(id)
)

/*Create Procedure SP_Employee*/
alter Procedure SP_Employee
@action varchar(40),
@id int =0,
@Name varchar(100)=null,
@Email varchar(100)=null,
@Mobile varchar(100)=null,
@Gender varchar(100)=null,
@department_id int =0
as
begin
if(@action='CREATE')
begin
INSERT INTO Employees(Name,Email,Mobile,Gender,department_id) values
(@name,@Email,@Mobile,@Gender,@department_id)
select 1 as result
end

else if(@action='DELETE')
begin
delete from Employees where id=@id
select 1 as result 
end
else if(@action='SELECT')
begin
select * from Employees
end
else if(@action='UPDATE')
begin
update Employees set Name=@Name,Email=@Email,Mobile=@Mobile,
Gender=@Gender,department_id=@department_id where id = @id
select 1 as result
end 

else if(@action='SELECT_JOIN')
begin
select E.id, E.Name,E.Email,E.Mobile,Gender,D.Name as Department from Employees E inner join 
Departments D on E.id=D.id
end
end

exec SP_Employee 'SELECT'
exec SP_Employee 'SELECT_JOIN'
exec SP_Employee 'CREATE',0,'asif','asif@gmil.com','Male','8523697417',1

exec SP_Employee 'UPDATE',2,'HR TEAMS'
exec SP_Employee 'DELETE',3