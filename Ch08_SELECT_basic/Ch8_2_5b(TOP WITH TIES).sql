USE 教務系統 
GO
--//WITH TIES平手， ORDER BY [指定那個欄位平手] 
SELECT TOP 3 WITH TIES * FROM 課程
ORDER BY 學分



