/****** Script for SelectTopNRows command from SSMS  ******/
alter table Taken_Courses
add Term As (CONCAT(CONVERT(NVARCHAR(20),YEAR),' ',Semester))

