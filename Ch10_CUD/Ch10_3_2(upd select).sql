USE 教務系統 
GO
UPDATE 學生
SET 姓名 = (SELECT 姓名 FROM 員工
            WHERE 身份證字號='H098765432')
WHERE 學號 = 'S108'






