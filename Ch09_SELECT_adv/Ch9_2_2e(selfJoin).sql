--self join: 同city有其他員工存在
USE 教務系統 
GO
SELECT DISTINCT 員工.姓名, 員工.城市, 員工.街道
--AS 可略
FROM 員工 INNER JOIN 員工 AS 員工1 
ON ( 員工.城市 = 員工1.城市 AND
     員工.身份證字號 <> 員工1.身份證字號 )
ORDER BY 員工.城市



select distinct a.name, a.city, a.[str] FROM employee a
INNER JOIN employee b
ON b.city = a.city and b.id != a.id
ORDER by a.city




















































