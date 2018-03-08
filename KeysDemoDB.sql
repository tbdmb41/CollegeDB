IF EXISTS (SELECT * FROM sys.databases WHERE name = 'KeysDemoDB')
 DROP DATABASE KeysDemoDB
 GO

create database KeysDemoDB
Go

Use KeysDemoDB
Go

create table Parents(
ID int identity(1,1) Not Null CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED, 
ParentName varchar(30) Not Null
)

create table Children(
ID int identity(1,1) Not null constraint [PK_Children] PRIMARY KEY CLUSTERED, 
ChildName varchar(30) Not Null,
ParentsID int Not Null CONSTRAINT FK_Children_Parents FOREIGN KEY (ParentsID)     
    REFERENCES dbo.Parents(ID)
)

--Creating Clustered Index (only 1 allowed)
--CREATE CLUSTERED INDEX IX_Parents_ParentName ON dbo.Parents (ParentName);   

--Creating Non-Clustered Index
CREATE INDEX IX_Parents_ParentName ON dbo.Parents (ParentName);   

--Populate with sample data
insert into Parents(ParentName) values ('Frank Father'),('David Dad')

insert into Children(ChildName, ParentsID) 
values ('Debbie Downer', 1),
       ('Stuart Smart',  1),
	   ('Sam Son', 2)

--This script can be executed repeatedly ONLY if you change the DB dropdown list to any other DB.