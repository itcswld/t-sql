USE 教務系統 
GO
INSERT INTO 學生 
--
SELECT 學號, 姓名, 性別, 電話, 生日
FROM 通訊錄
