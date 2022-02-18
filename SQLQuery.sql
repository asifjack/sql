create database student
use student
create table sdataa(id int not null identity, sname varchar(50), 
branch varchar(50), mobile bigint)
insert into sdataa(sname, branch, mobile) values 
('ratnesh','dotnet',56464646),
('shashi','dotnet',56464646),
('rahul','dotnet',56464646)
select * from sdataa