USE 教務系統 
GO
DECLARE @c_no varchar(5)
SELECT @c_no = 'CS101' 
SELECT 課程編號, 名稱, 學分 
FROM 課程
WHERE 課程編號 = @c_no






 































































