USE master 
GO
IF  EXISTS (SELECT name FROM sys.databases WHERE name='edusys')
DROP DATABASE [edusys]
GO
--chinese
CREATE DATABASE [edusys] COLLATE Chinese_Taiwan_Stroke_CI_AS
GO

USE [edusys]
GO

CREATE TABLE [student] (
	[no] char(4) NOT NULL,
	[name] varchar(12) NOT NULL,
	[sex] varchar(2) NULL,
	[phone] varchar(15) NULL,
	[bd] date NULL,
  PRIMARY KEY ([no])
) 
GO

CREATE TABLE [course] (
	[no] char(5) NOT NULL,
	[title] varchar(30) NULL,
	[credits] int NULL,
  PRIMARY KEY ([no])
) 
GO

CREATE TABLE [proffessor] (
	[no] char(4) NOT NULL,
	[job] varchar(10) NULL,
	[dept] varchar(5) NULL,
	[emp_id] char(10) NOT NULL,
  PRIMARY KEY ([no])
) 
GO

CREATE TABLE [class] (
	[prof_no] char(4) NOT NULL,
	[stud_no] char(4) NOT NULL,
	[course_no] char(5) NOT NULL,	
	[time] datetime NULL,
	[room] varchar(8) NULL,
  PRIMARY KEY ([prof_no],[course_no],[stud_no])
) 
GO

CREATE TABLE [employee] (
	[id] CHAR(10) NOT NULL,
	[name] varchar(12) NULL,
	[city] char(5) NULL,
	[str] varchar(30) NULL,
	[phone] char(12) NULL,
	[salary] money NULL,
	[ins] money NULL,
	[tax] money NULL,
  PRIMARY KEY ([id])
) 
GO

ALTER TABLE [class]
  ADD FOREIGN KEY([stud_no]) REFERENCES [student] ([no])
GO
ALTER TABLE [class] 
  ADD FOREIGN KEY([course_no]) REFERENCES [course] ([no])  
GO
ALTER TABLE [class] 
  ADD FOREIGN KEY([prof_no]) REFERENCES [proffessor] ([no])   
GO
ALTER TABLE [proffessor] 
  ADD FOREIGN KEY([emp_id]) REFERENCES [employee] ([id])   
GO

INSERT INTO [student] 
VALUES('S001','陳會安','男','02-22222222','1999/09/03')
,('S002','江小魚','女','03-33333333','2000/02/02')
,('S003','張無忌','男','04-44444444','1998/05/03')
,('S004','陳小安','男','05-55555555','1998/06/13')
,('S005','孫燕之','女','06-66666666',NULL)
,('S006','周杰輪','男','02-33333333','1999/12/23')
,('S007','蔡一零','女','03-66666666','1999/11/23')
,('S008','劉得華','男','02-11111122','1999/02/23')

INSERT INTO [course] 
VALUES ('CS101','計算檮概論',4)
,('CS121','離散數學',4)
,('CS111','線性代數',4)
,('CS203','程式語言',3)
,('CS213','物件導向程式設計',2)
,('CS222','資料庫管理系統',3)
,('CS205','網頁程式設計',3)
,('CS349','物件導向分析',3)

INSERT INTO [employee] 
VALUES ('A123456789','陳慶新','台北','信義路',
        '02-11111111', 80000, 5000, 2000)
,('A222222222','楊金欉','桃園','中正路',
        '03-11111111', 80000, 4500, 2000)
,('H098765432','李鴻章','基隆','信四路',
        '02-33111111', 60000, 4000, 1500)
,('F213456780','陳小安','新北','新店區四維路',
        NULL, 50000, 3000, 1000)
,('A221304680','郭富城','台北','忠孝東路',
        '02-55555555', 35000, 1000, 800)
,('F332213046','張無忌','台北','仁愛路',
        '02-55555555', 50000, 1500, 1000)
,('D333300333','王心零','桃園','經國路',
        NULL, 50000, 2500, 1000)
,('D444403333','劉得華','新北','板橋區文心路',
        '04-55555555', 25000, 500, 500)
,('E444006666','小龍女','新北','板橋區中正路',
        '04-55555555', 25000, 500, 500)

INSERT INTO [proffessor] 
VALUES ('I001','教授',  'CS', 'A123456789')
,('I002','教授',  'CS', 'A222222222')
,('I003','副教授','CIS','H098765432')
,('I004','講師','MATH', 'F213456780')

INSERT INTO [class] 
VALUES ('I001','S001','CS101','12:00:00','180-M')
,('I001','S005','CS101','12:00:00','180-M')
,('I001','S006','CS101','12:00:00','180-M')
,('I002','S003','CS121','08:00:00','221-S')
,('I002','S008','CS121','08:00:00','221-S')
,('I004','S003','CS111','15:00:00','321-M')
,('I004','S002','CS111','15:00:00','321-M')
,('I004','S005','CS111','15:00:00','321-M')
,('I001','S003','CS213','09:00:00','622-G')
,('I001','S005','CS213','09:00:00','622-G')
,('I003','S001','CS213','12:00:00','500-K')
,('I003','S006','CS213','12:00:00','500-K')
,('I002','S001','CS222','13:00:00','100-M')
,('I002','S002','CS222','13:00:00','100-M')
,('I002','S004','CS222','13:00:00','100-M')
,('I003','S001','CS203','10:00:00','221-S')
,('I003','S006','CS203','10:00:00','221-S')
,('I003','S008','CS203','10:00:00','221-S')
,('I003','S002','CS203','14:00:00','327-S')
,('I001','S001','CS349','15:00:00','380-L')
,('I001','S003','CS349','15:00:00','380-L')

ALTER TABLE [class]
  ADD FOREIGN KEY([stud_no]) REFERENCES [student] ([no])
GO
ALTER TABLE [class] 
  ADD FOREIGN KEY([course_no]) REFERENCES [course] ([no])  
GO
ALTER TABLE [class] 
  ADD FOREIGN KEY([prof_no]) REFERENCES [proffessor] ([no])   
GO
ALTER TABLE [proffessor] 
  ADD FOREIGN KEY([emp_id]) REFERENCES [employee] ([id])   
GO 
