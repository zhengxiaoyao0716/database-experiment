USE TeachManagement
GO

if exists (select * from dbo.sysobjects where id = object_id
(N'[dbo].[FK_Enrollment_Course]') and OBJECTPROPERTY(id,
N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Enrollment] DROP CONSTRAINT
FK_Enrollment_Course
GO

if exists (select * from dbo.sysobjects where id = object_id
(N'[dbo].[FK_Enrollment_Student]') and OBJECTPROPERTY(id,
N'IsForeignKey') = 1)
ALTER TABLE [dbo].[Enrollment] DROP CONSTRAINT
FK_Enrollment_Student
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Course]')
and OBJECTPROPERTY(id, N'IsUSErTable') = 1)
drop table [dbo].[Course]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[Enrollment]') and OBJECTPROPERTY(id,
N'IsUSErTable') = 1)
drop table [dbo].[Enrollment]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[Student]') and OBJECTPROPERTY(id, N'IsUSErTable')
= 1)
drop table [dbo].[Student]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[TeachCourse]') and OBJECTPROPERTY(id,
N'IsUSErTable') = 1)
drop table [dbo].[TeachCourse]
GO

if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[Teacher]') and OBJECTPROPERTY(id, N'IsUSErTable')
= 1)
drop table [dbo].[Teacher]
GO

CREATE TABLE [dbo].[Course] (
[Cno] [char] (6) COLLATE Chinese_PRC_CI_AS NOT NULL PRIMARY
KEY ,
[Cname] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
[Credit] [int] NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Enrollment] (
[Sno] [char] (8) COLLATE Chinese_PRC_CI_AS NOT NULL,
[Cno] [char] (6) COLLATE Chinese_PRC_CI_AS NOT NULL ,
[Grade] [int] NULL,
PRIMARY KEY ([Sno], [Cno])
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Student] (
[Sno] [char] (8) COLLATE Chinese_PRC_CI_AS NOT NULL PRIMARY
KEY,
[Sname] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
[Class] [char] (16) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[TeachCourse] (
[Class] [char] (16) COLLATE Chinese_PRC_CI_AS NOT NULL,
[Cno] [char] (6) COLLATE Chinese_PRC_CI_AS NOT NULL ,
[Tno] [char] (6) COLLATE Chinese_PRC_CI_AS NOT NULL,
PRIMARY KEY ([Class], [Cno])
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[Teacher] (
[Tno] [char] (6) COLLATE Chinese_PRC_CI_AS NOT NULL PRIMARY
KEY ,
[Tname] [char] (20) COLLATE Chinese_PRC_CI_AS NULL ,
[Tdept] [char] (20) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
