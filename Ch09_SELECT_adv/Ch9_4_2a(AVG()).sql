USE 教務系統 
GO
SELECT 身份證字號, 姓名, 電話, 薪水 FROM 員工 
WHERE 薪水 >= 
(SELECT AVG(薪水) FROM 員工)

SELECT id, name, phone, salary FROM employee
WHERE salary >= (select AVG(salary) FROM employee)














































