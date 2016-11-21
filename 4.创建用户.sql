-- 教务员
USE master
GO

IF EXISTS (select * from dbo.syslogins where name='Dean')
DROP login Dean
GO
CREATE LOGIN [Dean]
WITH PASSWORD = N'Dean' MUST_CHANGE
, CHECK_EXPIRATION=ON
, CHECK_POLICY=ON
, DEFAULT_DATABASE=TeachManagement
GO

USE TeachManagement
GO

IF USER_ID('Dean') IS NOT NULL
DROP USER Dean 
GO
CREATE USER [Dean] FOR LOGIN [Dean]
GO

-- 学生
USE master
GO

IF EXISTS (select * from dbo.syslogins where name='Student')
DROP login Student
GO
CREATE LOGIN [Student]
WITH PASSWORD = N'[Student]' MUST_CHANGE
, CHECK_EXPIRATION=ON
, CHECK_POLICY=ON
, DEFAULT_DATABASE=TeachManagement
GO

USE TeachManagement
GO

IF USER_ID('Student') IS NOT NULL
DROP USER Student 
GO
CREATE USER [Student] FOR LOGIN [Student]
GO

-- 教师
USE master
GO

IF EXISTS (select * from dbo.syslogins where name='Teacher')
DROP login Teacher
GO
CREATE LOGIN [Teacher]
WITH PASSWORD = N'Student' MUST_CHANGE
, CHECK_EXPIRATION=ON
, CHECK_POLICY=ON
, DEFAULT_DATABASE=TeachManagement
GO

USE TeachManagement
GO

IF USER_ID('Teacher') IS NOT NULL
DROP USER Teacher 
GO
CREATE USER [Teacher] FOR LOGIN [Teacher]
GO
