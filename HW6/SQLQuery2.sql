USE [University]
GO
/****** Object:  StoredProcedure [dbo].[AddSalary]    Script Date: 06-May-20 2:42:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
Create or alter   PROCEDURE [dbo].[AddSalary]
	-- Add the parameters for the stored procedure here
	@ID as char(7), 
	@amount as int 
AS
BEGIN
	update Teachers
	set Salary = Salary + @amount
	where ID=@ID;

	Update Teachers
	set Salary = Salary + @amount/2
	where ID <> @ID;
	
END
