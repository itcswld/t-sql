USE 教務系統 
GO
SELECT 高薪員工.姓名, 高薪員工.電話, 高薪員工.薪水
--Subquery = Nested Query
FROM (SELECT 身份證字號, 姓名, 電話, 薪水
      FROM 員工
      WHERE 薪水>50000) AS 高薪員工 


SELECT name, phone, salary 
FROM (select * FROM employee where salary > 50000) AS tmpTb

























































