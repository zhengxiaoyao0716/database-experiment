USE TeachManagement
if exists (select * from dbo.sysobjects where id =
object_id(N'[dbo].[Enrollment]') and OBJECTPROPERTY(id,
N'IsUSErTable') = 1)
delete from [dbo].[Enrollment]
GO
INSERT INTO Enrollment(Sno,Cno) VALUES('40533123','050304')
INSERT INTO Enrollment(Sno,Cno) VALUES('40533123','910201')
INSERT INTO Enrollment(Sno,Cno) VALUES('40533099','050304')
INSERT INTO Enrollment(Sno,Cno) VALUES('40533099','910201')
INSERT INTO Enrollment(Sno,Cno) VALUES('40533103','050304')
INSERT INTO Enrollment(Sno,Cno) VALUES('40533103','910201')
INSERT INTO Enrollment(Sno,Cno) VALUES('40525009','050304')
INSERT INTO Enrollment(Sno,Cno) VALUES('40525009','120509')
INSERT INTO Enrollment(Sno,Cno) VALUES('40525009','910201')
INSERT INTO Enrollment(Sno,Cno) VALUES('40525011','120509')
INSERT INTO Enrollment(Sno,Cno) VALUES('40525011','910201')
INSERT INTO Enrollment(Sno,Cno) VALUES('40525024','050304')
INSERT INTO Enrollment(Sno,Cno) VALUES('40525024','120509')
GO