USE 教務系統 
GO
SELECT 學號, 姓名, 
       GETDATE() AS 今天,
       DATEDIFF(year, 生日, GETDATE()) AS 年齡
FROM 學生



