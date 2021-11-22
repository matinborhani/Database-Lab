USE [University]
GO

/****** Object:  View [dbo].[ViewUniversity]    Script Date: 19-May-20 6:13:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [dbo].[ViewUniversity]
as 
select FirstName,LastName,Title,CASE 
when Grade < 10 Then 'FAIL'
when Grade >= 10 Then 'PASS'
END AS 'Grade'
from Taken_Courses join Courses on Taken_Courses.CourseID = Courses.ID
				   join Students on Taken_Courses.StudentID = Students.StudentNumber


GO


