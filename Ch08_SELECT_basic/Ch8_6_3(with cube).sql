USE 教務系統 
GO
SELECT 教授編號, 課程編號, COUNT(學號) AS 總數
FROM 班級 
WHERE 教授編號 IN ('I001', 'I003')
--“WITH CUBE” 針對GROUP BY 指定的各欄位執行小計和加總
GROUP BY 教授編號, 課程編號 WITH CUBE






































