select Name,Max(Avg_Departments) as Max_Average,Min(Avg_Departments) as Min_Average from (
SELECT        Departments.Name As Name,AVG(Taken_Courses.Grade) AS Avg_Departments
FROM            Taken_Courses LEFT JOIN
                         Courses ON Taken_Courses.CourseID = Courses.ID INNER JOIN
                         Departments ON Courses.DepartmentID = Departments.ID
GROUP BY Departments.Name,Taken_Courses.StudentID
) as s
group by Name
