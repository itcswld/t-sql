USE 教務系統 
GO
DECLARE @myName varchar(12)
DECLARE @myCity varchar(10)
SELECT @myName = 姓名, @myCity = 城市
FROM 員工 WHERE 薪水 >= 60000
SELECT @myName AS 姓名, @myCity AS 城市

DECLARE @name varchar(12)
declare @city varchar(10)
select @name = name, @city = city
from employee
WHERE salary >= 60000
select @name as name, @city as city

 





 































































