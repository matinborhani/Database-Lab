begin
DECLARE @counter INT = 1;
DECLARE @number_ROW INT = (select count(*) from Taken_Courses);
DECLARE @credit INT
WHILE @counter <= @number_ROW
BEGIN
    set @credit = (select Credits from Courses where @@ROWCOUNT = @counter)
	if (@credit = 1)
	Begin 
		Alter table Taken_Courses add TotalCredits As (Taken_Courses.Grade * 1)
	end
	Else
	begin
		Alter table Taken_Courses add TotalCredits As (Taken_Courses.Grade * 3)
	end
    SET @counter = @counter + 1;
END


end


alter table Taken_Courses
drop column TotalGrades


update Taken_Courses
set TotalGrades = TotalGrades * 3