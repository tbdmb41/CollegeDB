IF EXISTS (SELECT * FROM sys.databases WHERE name = 'KeysDemoDB')
 DROP DATABASE KeysDemoDB
 GO

create database KeysDemoDB
Go

Use KeysDemoDB
Go


CREATE TABLE Parents(
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

CREATE TABLE PARENTS(
ID int IDENTITY(1,1) NOT NULL 
CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED, 
Fname VARCHAR(30) NOT NULL 
LName VARCHAR(30)
SSN int NOT NULL,
Address VARCHAR(30)NOT NULL,
City VARCHAR(30) NOT NULL,
STATE VARCHAR(30) NOT NULL,
Zip int NOT NULL
Phone int NOT NULL
);

CREATE TABLE PUBLIC PARENTS (
ID int IDENTITY (1,1) NOT NULL
CONSTRAINT [pk_NOT NULL]
ID int IDENTITY (1,1) NOT NULL CONSTRAINT
"JOHN PORTO" VARCHAR(25),
"GARY HARRY " VARCHAR(25),
"MARK MARKSMAN" VARCHAR(25),
"KAREN SHARIN" VARCHAR(25),
"ANONYMOUS FRESH FIG FINATIC VARCHAR(25))
);



CREATE TABLE STUDENTS  (
ID int IDENTITY (1,1) NOT NULL,
Fname VARCHAR(25) NOT NULL,
Lname VARCHAR(25) NOT NULL,
SSN int NOT NULL,
Address VARCHAR (25) NOT NULL
City VARCHAR (25) NOT NULL
State VARCHAR (25) NOT NULL
Zip int NOT NULL
Phone int NOT NULL
);
--ALTER TABLE Students
--ADD Lname varchar(30) NOT NULL;

CREATE TABLE Classes (
ID int IDENTITY (1,1) NOT NULL
CONSTRAINT [pk_Classes] PRIMARY KEY CLUSTERED,
StudentID int NOT NULL
FOREIGN KEY (StudentID) REFERENCES Students(ID),
TITLE varchar (50) NOT NULL
NUMBER int NOT NULL
DEPARTMENT varchar (15) NOT NULL
);

DROP TABLE Scores

CREATE TABLE Scores (
ID int IDENTITY (1,1) NOT NULL
CONSTRAINT [pk_Scores] PRIMARY KEY CLUSTERED, 
ClassesID int NOT NULL
FOREIGN KEY (ClassesID) REFERENCES Classes(ID),
TYPE VARCHAR (15) NOT NULL
DESCRIPTION VARCHAR (65) NOT NULL,
[Date SUBMITTED] DATETIME NOT NULL,
[Date ASSIGNED] DATETIME NOT NULL,
[POINTS EARNED] DATETIME NOT NULL,
[POINTS POSSIBLE] int NOT NULL,
[DATE DUE] int NOT NULL
);

USE College
GO


DROP TABLE scores 
CREATE TABLE scores

ID int IDENTITY (1,1) NOT NULL
CONSTRAINT [pk_scores] PRIMARY KEY CLUSTERED 
ClassesID int NOT NULL
FOREIGN KEY (ClassesId) REFERENCES Classes(Id)
TYPE VARCHAR (25) NOT NULL
DESCRIPTION VARCHAR (25) NOT NULL,

[Date Submitted] DATETIME NOT NULL
[Date Assigned] DATETIME NOT NULL
[Points Earned] int NOT NULL
[Points Possible] int NOT NULL
[Date Due] DATETIME NOT NULL
);





USE College 
GO
INSERT INTO Students(Fname, LName, [Address] Phone, City, [State], Zip, SSN)
VALUES ('Crowmagnum', 'Falcon Punch', '2214 Mashed Potato Way', 220-564-8777, Roxbury, FL, 83125, 554883652

INSERT INTO Students(Fname, LName, [Address] Phone, City, [State], Zip, SSN)
VALUES ('Slamburger', 'Rigatony', '4449 Angelos Bicycle Way', 457-887-9636, Compton, AZ, 63445, 2541142365

INSERT INTO Students(Fname, LName, [Address] Phone, City, [State], Zip, SSN)
VALUES ('And Slam', 'Green Eggs', '832 Main Street', 441-215-5559, Lucy, AK, 98756, 664958745

USE College 
GO
INSERT INTO Scores (ClassesId, [Date Assigned], [Description], [Date Submitted], [Points Possiblle], [Points Earned},
[Type]),
VALUES (8, '2-1-2018', 'Above Average', '2-1-2018', 45, 41, 'Test');

INSERT INTO Scores (ClassesId, [Date Assigned], [Description], [Date Submitted], [Points Possiblle], [Points Earned},
[Type]),
VALUES (41, '3-16-2018', 'Below Average', '3-16-2018', 10, 6, 'Quiz');

INSERT INTO Scores (ClassesId, [Date Assigned], [Description], [Date Submitted], [Points Possiblle], [Points Earned},
[Type]),
VALUES (41, '3-16-2018', 'Below Average', '3-16-2018', 10, 6, 'Quiz');

USE College
GO





INSERT INTO Classes (StudentId, Title, Department, Number)
VALUES (4, 'Your Grandpas Memories', 41, 'History');

INSERT INTO Classes (StudentId, Title, Department, Number)
VALUES (2, 'Birds of a Feather', 232, 'Birdhouse Building');

INSERT INTO Classes (StudentId, Title, Department, Number)
VALUES (1, 'Near Impossible', 894, 'Learning C#');

INSERT INTO Classes (StudentId, Title, Department, Number)
VALUES (9, 'FIGure It Out', 110, 'How to Grow Figs Properly');

SELECT * FROM Classes

USE College
GO

SELECT *
FROM Students 
INNER JOIN Classes ON Students.ID = Classes.StudentId
INNER JOIN Scores ON Scores.ClassesID = Classes.ID









































