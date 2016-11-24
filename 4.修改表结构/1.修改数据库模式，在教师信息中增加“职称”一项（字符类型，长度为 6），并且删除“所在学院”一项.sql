-- 在教师信息中增加“职称”一项的 SQL 语句如下：
USE TeachManagement
ALTER TABLE Teacher ADD Position CHAR(6)
GO

-- 在 SQL 中，由于不能删除表的某一属性列，采用下面的替代方案，即先将所需列复制至备份表中，再删除原表。
if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[TeacherTemp]') and OBJECTPROPERTY(id,
N'IsUSErTable') = 1)
drop table [dbo].[TeacherTemp]
GO
CREATE TABLE [dbo].[TeacherTemp] (
    [Tno] [char] (6) COLLATE Chinese_PRC_CI_AS NOT NULL,
    [Tname] [char] (20) COLLATE Chinese_PRC_CI_AS NULL,
    [Position] [char] (6) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
INSERT INTO TeacherTemp(Tno,Tname) SELECT Tno,Tname FROM
Teacher
GO
if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[Teacher]') and OBJECTPROPERTY(id, N'IsUSErTable')
= 1)
drop table [dbo].[Teacher]
GO
CREATE TABLE [dbo].[Teacher] (
    [Tno] [char] (6) COLLATE Chinese_PRC_CI_AS NOT NULL,
    [Tname] [char] (20) COLLATE Chinese_PRC_CI_AS NULL,
    [Position] [char] (6) COLLATE Chinese_PRC_CI_AS NULL
) ON [PRIMARY]
GO
INSERT INTO Teacher(Tno,Tname) SELECT Tno,Tname FROM TeacherTemp
GO
if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[TeacherTemp]') and OBJECTPROPERTY(id,
N'IsUSErTable') = 1)
drop table [dbo].[TeacherTemp]
GO
