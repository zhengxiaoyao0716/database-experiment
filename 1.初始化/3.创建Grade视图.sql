USE TeachManagement
GO

IF OBJECT_ID('dbo.Grade','V') IS NOT NULL
DROP VIEW dbo.Grade
GO

CREATE VIEW dbo.Grade
AS
SELECT
	dbo.Student.Class,
	dbo.Student.Sname,
	dbo.Course.Cname,
	dbo.Course.Credit,
	dbo.Enrollment.Grade
FROM dbo.Enrollment
INNER JOIN
	dbo.Course ON dbo.Enrollment.Cno = dbo.Course.Cno
INNER JOIN
	dbo.Student ON dbo.Enrollment.Sno = dbo.Student.Sno
