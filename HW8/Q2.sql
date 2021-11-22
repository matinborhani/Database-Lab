/****** Script for SelectTopNRows command from SSMS  ******/
select FirstName,LastName,ROW_NUMBER() OVER (ORDER BY BirthDay) as PartitionBirthDay
,ID,DepartmentID,Salary
from Teachers
