USE 教務系統 
GO
SELECT 課程編號, COUNT(*) AS 學生數
FROM 班級 
WHERE 教授編號 = 'I003'
GROUP BY 課程編號
HAVING COUNT(*) >= 2



































