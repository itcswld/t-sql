USE 教務系統 
GO
CREATE TABLE ##課程 (
   課程編號  char(5) ,
   名稱      varchar(30) ,
   學分      int
)
GO
INSERT INTO ##課程 
VALUES ('CS101','計算機概論',4)
GO
INSERT INTO ##課程 
VALUES ('CS121','離散數學',4)
GO




