/****** Script for SelectTopNRows command from SSMS  ******/
SELECT        Departments.Name, AVG(Taken_Courses.Grade) AS Average_Departments
FROM            Taken_Courses LEFT JOIN
                         Courses ON Taken_Courses.CourseID = Courses.ID INNER JOIN
                         Departments ON Courses.DepartmentID = Departments.ID
GROUP BY Departments.Name