USE TeachManagement
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[Course]')
and OBJECTPROPERTY(id,N'IsUSErTable') = 1)
delete from [dbo].[Course]
if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[Student]') and OBJECTPROPERTY(id, N'IsUSErTable')
= 1)
delete from [dbo].[Student]
if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[Teacher]') and OBJECTPROPERTY(id, N'IsUSErTable')
= 1)
delete from [dbo].[Teacher]
if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[TeachCourse]') and OBJECTPROPERTY(id,
N'IsUSErTable') = 1)
delete from [dbo].[TeachCourse]
GO
INSERT INTO Course (Cno,Cname,Credit) VALUES('050304',N'计算机科学导引','4')
INSERT INTO Course (Cno,Cname,Credit) VALUES ('120509',N'建筑力学','6')
INSERT INTO Course (Cno,Cname,Credit) VALUES('910201',N'世界科技史','3')
GO
INSERT INTO Student(Sno,Sname,Class) VALUES('40533123',N'诸葛飞扬',N'信息0519')
INSERT INTO Student(Sno,Sname,Class) VALUES('40533099',N'雷铭',N'信息0519')
INSERT INTO Student(Sno,Sname,Class) VALUES('40533103',N'贺舞',N'信息第103页0519')
INSERT INTO Student(Sno,Sname,Class) VALUES('40525009',N'卫小虎',N'建筑0501')
INSERT INTO Student(Sno,Sname,Class) VALUES('40525011',N'邵剑青',N'建筑0501')
INSERT INTO Student(Sno,Sname,Class) VALUES('40525024',N'欧阳雨晨',N'建筑0501')
GO
INSERT INTO Teacher(Tno,Tname,Tdept) VALUES('032011',N'向华泽',N'信息科学与技术学院')
INSERT INTO Teacher(Tno,Tname,Tdept) VALUES('032036',N'梅鹤',N'信息科学与技术学院')
INSERT INTO Teacher(Tno,Tname,Tdept) VALUES('011221',N'张天啸',N'文法学院')
INSERT INTO Teacher(Tno,Tname,Tdept) VALUES('011224',N'秦放',N'文法学院')
INSERT INTO Teacher(Tno,Tname,Tdept) VALUES('021121',N'萧雁鸣',N'建筑科学与工程学院')
GO
INSERT INTO TeachCourse(Class,Cno,Tno) VALUES('建筑0501','050304','032036')
INSERT INTO TeachCourse(Class,Cno,Tno) VALUES('建筑0501','120509','021121')
INSERT INTO TeachCourse(Class,Cno,Tno) VALUES('建筑0501','910201','011224')
INSERT INTO TeachCourse(Class,Cno,Tno) VALUES('信息0519','050304','032011')
INSERT INTO TeachCourse(Class,Cno,Tno) VALUES('信息0519','910201','011221')
GO