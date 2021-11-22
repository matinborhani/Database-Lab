/****** Script for SelectTopNRows command from SSMS  ******/
select Teachers.ID,Teachers.LastName,Teachers.Salary
from Teachers
where Salary > (select avg(Salary) from Teachers);
