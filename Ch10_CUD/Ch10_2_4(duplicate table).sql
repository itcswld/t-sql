USE 教務系統 
GO
SELECT * INTO 課程備份 
FROM 課程

SELECT * INTO 課程備份2 
FROM 課程
WHERE 學分 = 3

--copy whole table
SELECT * INTO TABLE_COPY FROM SRC_TABLE

--turncate SRC table paste COPY to SRC table
DELETE SRC_TABLE
INSERT INTO SRC_TABLE  SELECT * FROM TABLE_COPY

