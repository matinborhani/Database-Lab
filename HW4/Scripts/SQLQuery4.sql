/****** Script for SelectTopNRows command from SSMS  ******/
Select avg(salary) as Average_Salary
from Teachers
where Teachers.ID in (select Available_Courses.TeacherID from Available_Courses);
