USE master
GO

IF DB_ID('TeachManagement') IS NOT NULL
DROP DATABASE TeachManagement
GO

CREATE DATABASE TeachManagement ON (
	NAME = TeachManagement_dat,
	FILENAME = 'E:\MyProject\VisualStudio\database-experiment\TeachManagement_dat.mdf',
	SIZE = 10,
	MAXSIZE = 50,
	FILEGROWTH = 5
)
LOG ON ( NAME = 'TeachManagement_log',
	FILENAME = 'E:\MyProject\VisualStudio\database-experiment\TeachManagement_log.ldf',
	SIZE = 5MB,
	MAXSIZE = 25MB,
	FILEGROWTH = 5MB
)
GO
