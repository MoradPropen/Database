--Create Database
create database DbLab;

--Create Student Table
CREATE TABLE Students
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[DepartmentId] [int] NOT NULL,
	--CONSTRAINT PK_Students PRIMARY KEY ([Id])
);

-- Add primary key
ALTER TABLE Students
ADD CONSTRAINT PK_Students PRIMARY KEY ([Id]);


--Create Department Table
CREATE TABLE Departments
(
    [Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	CONSTRAINT PK_Departments PRIMARY KEY ([Id])
);

--Set Foreign Key

ALTER TABLE Students
ADD CONSTRAINT [FK_Students_Departments_DepartmentId] FOREIGN KEY ([DepartmentId]) REFERENCES Departments([Id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT }

