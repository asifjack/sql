create database Example_Db
use AdoCrud_Db

/* Store Procedure 
sp: Set Of Sql Statements 
*/

insert into Emp values
                 ('asif'),('Aman')

create table Emp (id int primary key identity ,
                   EmpName varchar(122)
)
select * from Emp

create procedure spGetEmp
@id int 
as
begin
    select id, EmpName from Emp where id=@id;
end

execute spGetEmp 3


/*   Store Procedure With  Input parameter 
     Store Procedure With Output parameter
*/


insert into Students values
                 ('asif','male'),('Aman','male'),('raani','female')

create table Students (id int primary key identity ,
                  SName varchar(122),
				  Gender varchar(22)
)
select * from Students
select * from Emp

select Students.SName,Students.Gender,Emp.EmpName from Students  full join Emp on Students.id=Emp.id

create procedure SpGetStudents 
@gender varchar(100),
@StuCount int output
as 
begin
 select @StuCount  = Count(id) from Students  where gender=@gender
end	

	declare @TotStu int
	execute SpGetStudents 'male', @TotStu output
	select @TotStu








