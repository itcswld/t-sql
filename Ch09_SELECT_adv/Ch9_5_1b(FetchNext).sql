--取 第4筆後的5筆資料
USE 教務系統 
GO
SELECT 身份證字號, 姓名, 薪水
FROM 員工 
ORDER BY 身份證字號
--Offest: 第n筆後
OFFSET 3 ROWS
--Fetch Next: n筆資料
FETCH NEXT 5 ROWS ONLY

























































