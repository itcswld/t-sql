USE 教務系統 
GO
SELECT 姓名, 薪水 FROM 員工 
--All: 滿足所有條件值（// 滿足最大值）
WHERE 薪水 >= ALL
(SELECT 薪水 FROM 員工 WHERE 城市='台北')



SELECT name, salary from employee
WHERE salary >= ALL(select salary from employee where city='台北')

select salary from employee where city='台北'




















































