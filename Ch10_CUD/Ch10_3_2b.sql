USE 教務系統 
GO
UPDATE 課程備份
SET 學分 = 5
WHERE 課程編號 IN (
   SELECT 課程編號 FROM 課程備份2)








