USE TeachManagement
GO

SET NOCOUNT ON DECLARE @Class char(16), @Average float
PRINT N'-------- 各班成绩打印 --------'
PRINT ''
DECLARE print_cursor CURSOR FOR SELECT DISTINCT Class FROM Student ORDER BY Class
	OPEN print_cursor
		FETCH NEXT FROM print_cursor INTO @Class
		WHILE @@FETCH_STATUS= 0 BEGIN
			PRINT '--------'+@Class+N'班成绩--------'
			-- Get average
			SELECT @Average=AVG(Grade) FROM Enrollment, Student WHERE
			(Enrollment .Sno = Student.Sno)AND(Class=@Class)
			-- Print grade and average
			SELECT * FROM Grade WHERE Class=@Class
			PRINT @Class+N'班平均成绩:'+STR(@Average)
			PRINT ''
			-- Get the next Class
			FETCH NEXT FROM print_cursor INTO @Class
		END
	CLOSE print_cursor
DEALLOCATE print_cursor
GO
