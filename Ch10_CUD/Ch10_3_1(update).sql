USE 教務系統 
GO
UPDATE 課程
SET 名稱='資料庫系統（二）', 學分=4
WHERE 課程編號 = 'CS410'
GO

UPDATE 課程
SET 學分 = 學分 + 1
WHERE 課程編號 = 'CS410'



