/****** Script for SelectTopNRows command from SSMS  ******/
select Taken_Courses.CourseID , count(*) As Number_Rejected_Stydent
from Taken_Courses
where Grade < 10 
group by CourseID
