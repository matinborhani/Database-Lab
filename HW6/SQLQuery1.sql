-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE InsertCourse 
	-- Add the parameters for the stored procedure here
	@ID as INT,
	@title  as nvarchar(50),
	@credit as int,
	@DepartmentID as char(5)
AS
BEGIN
	INSERT INTO Courses Values(@ID,@title,@credit,@DepartmentID);
END
GO
