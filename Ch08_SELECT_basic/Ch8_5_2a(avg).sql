USE 教務系統 
GO
SELECT COUNT(*) AS 課程總數, 
        AVG(學分) AS 學分平均值 
FROM 課程 WHERE 課程編號 LIKE '%1%'

























