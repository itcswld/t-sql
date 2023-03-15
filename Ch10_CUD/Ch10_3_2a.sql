USE 教務系統 
GO
UPDATE 課程備份
SET 學分 = 4
--將班級上課學生超過3位的課程改為4學分
FROM (SELECT 課程編號, COUNT(*) AS 學生數
FROM 班級 GROUP BY 課程編號) AS 上課
WHERE 課程備份.課程編號 = 上課.課程編號
    AND 上課.學生數 > 3








